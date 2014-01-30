package de.tud.labAssist;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import java.util.Scanner;

import android.content.Context;
import android.media.AudioManager;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import android.view.View;
import android.view.WindowManager.LayoutParams;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.TextView;
import android.widget.Toast;

import com.google.android.glass.media.Sounds;
import com.google.android.glass.widget.CardScrollView;

import de.tud.ess.HeadImageView;
import de.tud.ess.VoiceMenu;
import de.tud.ess.VoiceMenu.VoiceMenuListener;
import de.tud.labAssist.LabMarkdown.ProtocolStep;

public class LabAssist extends FragmentActivity implements VoiceMenuListener {
  private static final String TAG = "labAssist";
  private AudioManager mAudio;
  protected CardScrollView mCardScrollView;
  protected VoiceMenu mVoiceMenu;
  
  protected static final String NEXT = "next";
  protected static final String PREVIOUS = "previous";
  protected static final String GOFORWARD = "go forward";
  protected static final String GOBACK = "go back";
  protected static final String DONE = "mark as done";
  protected static final String CHECK = "check";
  protected static final String MARK = "mark";
  protected static final String ZOOM_IN = "grow";
  protected static final String ZOOM_OUT = "shrink";
  protected static final String LEFT   = "left";
  protected static final String MIDDLE = "middle";
  protected static final String RIGHT  = "right";
  protected static final String RED    = "red";
  protected static final String BLUE   = "blue";
  protected static final String[] STATIC_VOICECOMMANDS = new String[]
      { NEXT, PREVIOUS, GOFORWARD, GOBACK  };

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    
    if (!getIntent().hasExtra(Launcher.FILENAME))
    {
      Log.e(TAG, String.format("missing argument for '%s'", Launcher.FILENAME));
      Toast.makeText(this, "no document supplied", Toast.LENGTH_LONG).show();
      return;
    }
    
    setContentView(R.layout.main);

    String file = getIntent().getExtras().getString(Launcher.FILENAME);
    
    if (file==null)
    {
      Toast.makeText(this, "file not found", Toast.LENGTH_LONG).show();
      return;      
    }
    
    String mdown = null; 
    
    try {
      mdown = toString(getAssets().open(file));
    } catch (IOException e) {
      File ext = getExternalFilesDir(null);
      if (ext == null) {
        Log.e(TAG, "external storage not mounted");
        return;
      }
      try {
        mdown = toString(new FileInputStream(new File(ext,file)));
      } catch (FileNotFoundException e1) {
        e1.printStackTrace();
      }
      e.printStackTrace();
    }

    mVoiceMenu = new VoiceMenu(this, "ok glass");
    
    LabMarkdown lm = new LabMarkdown(this, mdown);
    mCardScrollView = (CardScrollView) findViewById(R.id.cardscroll);
    mCardScrollView.setAdapter(lm);
    mCardScrollView.setOnItemClickListener(new LabOnClickListener());
    mCardScrollView.setOnItemSelectedListener(new ItemSwitchLogger());
    mCardScrollView.setOnItemSelectedListener(new VoiceConfigChanger());

    mAudio = (AudioManager) getSystemService(Context.AUDIO_SERVICE);
    
    //recreateVoiceMenu((ProtocolStep) mCardScrollView.getItemAtPosition(0));
  }

  private String toString(InputStream is) {
    Scanner scanner = new Scanner(is, "UTF-8").useDelimiter("\\A");
    String str = scanner.hasNext() ? scanner.next() : "";
    scanner.close();
    return str;
  }

  @Override
  protected void onResume() {
    super.onResume();
    mCardScrollView.activate();
    mVoiceMenu.setListener(this);
    getWindow().addFlags(LayoutParams.FLAG_KEEP_SCREEN_ON);
    
    Log.w(TAG, "onResume");
  }

  @Override
  protected void onPause() {
    mVoiceMenu.setListener(null);
    mCardScrollView.deactivate();
    super.onPause();
    
    Log.w(TAG, "onPause");
  }

  protected Method mAnimateFunc;
  protected static final int ANIMATE_GOTO = 2;
  protected static final float SCALE_STEP = 0.5F;
  
  public class LabOnClickListener implements OnItemClickListener {
    @Override
    public void onItemClick(AdapterView<?> parent, View view, int cur, long id) {
      ProtocolStep step = (ProtocolStep) mCardScrollView.getItemAtPosition(cur);
      
      mAudio.playSoundEffect(Sounds.TAP);
      if (step.hasZoomAbleImage()) {
        HeadImageView v = (HeadImageView) view.findViewById(R.id.imview);
        v.setScaleFactor(v.getScaleFactor() + SCALE_STEP);
      }
      else if (step.hasCheckableItems()) 
        markAsDone(step, cur);
    }

  }

  protected void callAnimateTo(int position, int animate) {
    if (mAnimateFunc == null)
      for (Method m : mCardScrollView.getClass().getDeclaredMethods())
        if (m.getName().equals("animateToSelection")) {
          mAnimateFunc = m;
          break;
        }
    
    try {
      mAnimateFunc.invoke(mCardScrollView, position, animate);
    } catch (Exception e) {
      Log.e(TAG, e.toString());
    }
  }

  protected void markAsDone(ProtocolStep step, int pos) {
    boolean done = step.markAsDone();
    mCardScrollView.getAdapter().getView(pos, mCardScrollView.getSelectedView(), null);
    if (done)
      callAnimateTo(pos + 1, ANIMATE_GOTO);
    
    Log.w(TAG, String.format("marked item %d as done (%b)", pos, done));
  }
  
  public class ItemSwitchLogger implements OnItemSelectedListener {
    @Override
    public void onItemSelected(AdapterView<?> av, View v, int pos, long id) {
      Log.w(TAG, String.format("switched to item %d", pos));
    }
    @Override
    public void onNothingSelected(AdapterView<?> arg0) {
    }
  }
  
  public class VoiceConfigChanger implements OnItemSelectedListener {
    @Override
    public void onItemSelected(AdapterView<?> parent, View view, int position,
        long id) {
      ProtocolStep s = (ProtocolStep) parent.getItemAtPosition(position);
      recreateVoiceMenu(s);
    }

    @Override
    public void onNothingSelected(AdapterView<?> parent) {
    }
  }

  
  @Override
  public void onItemSelected(String literal) {
    try {
      int cur = mCardScrollView.getSelectedItemPosition();
      ProtocolStep step = (ProtocolStep) mCardScrollView
          .getItemAtPosition(cur);
      HeadImageView im = (HeadImageView) mCardScrollView
          .getSelectedView().findViewById(R.id.imview);
      TextView barText = (TextView) mCardScrollView
          .getSelectedView().findViewById(R.id.bartext);
      
      if (GOBACK.equals(literal) || PREVIOUS.equals(literal))
        callAnimateTo(cur - 1, ANIMATE_GOTO);
      else if (GOFORWARD.equals(literal) || NEXT.equals(literal))
        callAnimateTo(cur + 1, ANIMATE_GOTO);
      else if (CHECK.equals(literal) || DONE.equals(literal) || MARK.equals(literal))
        markAsDone(step, cur);
      else if (ZOOM_IN.equals(literal))
        im.setScaleFactor( im.getScaleFactor() + SCALE_STEP );
      else if (ZOOM_OUT.equals(literal))
        im.setScaleFactor( im.getScaleFactor() - SCALE_STEP );
      else if (RED.equals(literal) || BLUE.equals(literal))
        updateBarText(barText, literal, null);
      else if (LEFT.equals(literal) || RIGHT.equals(literal) || MIDDLE.equals(literal))
        updateBarText(barText, null, literal);
      else
        mAudio.playSoundEffect(Sounds.ERROR);
    } catch (Exception e) {
      Log.e(TAG, e.toString());
    }
  }

  protected String mBarColor = "";
  protected String mBarPosition = "";
  protected void updateBarText(TextView barText, String color, String position) {
    String[] cur = barText.getText().toString().split("-");
    String mBarColor = "", mBarPosition = "";
    
    if (cur.length==1)
      mBarColor = cur[0];
    else if (cur.length==2) {
      mBarColor = cur[0];
      mBarPosition = cur[1];
    }
    
    if (color != null) {
      mBarColor = color;
      Log.e(TAG, String.format("user gave new color: %s", color));
    }
    
    if (position != null) {
      mBarPosition = position;
      Log.e(TAG, String.format("user gave new position: %s", position));
    }
    
    barText.setText(String.format("%s - %s",mBarColor, mBarPosition));
  }

  protected void recreateVoiceMenu(ProtocolStep s) {
    List<String> c = new LinkedList<String>(Arrays.asList(STATIC_VOICECOMMANDS));
    
    if (s.hasZoomAbleImage()) {
      c.add(ZOOM_IN);
      c.add(ZOOM_OUT);
    }
    if (s.hasCheckableItems()) {
      c.add(MARK);
      c.add(CHECK);
      c.add(DONE);
    }
    if (s.hasAttentionChallenge()) {
      c.add(LEFT);
      c.add(MIDDLE);
      c.add(RIGHT);
      
      c.add(RED);
      c.add(BLUE);
    }
    
    mVoiceMenu.setCommands((String[]) c.toArray(new String[c.size()]));
  }

}