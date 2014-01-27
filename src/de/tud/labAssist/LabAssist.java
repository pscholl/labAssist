package de.tud.labAssist;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.util.Scanner;

import android.content.Context;
import android.media.AudioManager;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.Toast;

import com.google.android.glass.media.Sounds;
import com.google.android.glass.widget.CardScrollView;

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
  protected static final String DONE = "mark as done";
  protected static final String MARK = "mark";
  protected static final String CHECK = "check";
  protected static final String GOFORWARD = "go forward";
  protected static final String GOBACK = "go back";

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

    mVoiceMenu = new VoiceMenu(this, "ok glass", NEXT, PREVIOUS,
        DONE, MARK, CHECK, GOFORWARD, GOBACK);
    
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

    
    LabMarkdown lm = new LabMarkdown(this, mdown);
    mCardScrollView = (CardScrollView) findViewById(R.id.cardscroll);
    mCardScrollView.setAdapter(lm);
    mCardScrollView.setOnItemClickListener(new LabOnClickListener());
    mCardScrollView.setOnItemSelectedListener(new LogItemSelecter());

    mAudio = (AudioManager) getSystemService(Context.AUDIO_SERVICE);
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
  
  public class LabOnClickListener implements OnItemClickListener {

    @Override
    public void onItemClick(AdapterView<?> parent, View view, int cur, long id) {
      ProtocolStep step = (ProtocolStep) mCardScrollView.getItemAtPosition(cur);

      mAudio.playSoundEffect(Sounds.TAP);
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
  
  public class LogItemSelecter implements OnItemSelectedListener {

    @Override
    public void onItemSelected(AdapterView<?> av, View v, int pos, long id) {
      Log.w(TAG, String.format("switched to item %d", pos));
    }

    @Override
    public void onNothingSelected(AdapterView<?> arg0) {
    }
  }

  
  @Override
  public void onItemSelected(String literal) {
    try {
      if (GOBACK.equals(literal) || PREVIOUS.equals(literal)) {
        int cur = mCardScrollView.getSelectedItemPosition();
        callAnimateTo(cur - 1, ANIMATE_GOTO);
      }

      else if (GOFORWARD.equals(literal) || NEXT.equals(literal)) {
        int cur = mCardScrollView.getSelectedItemPosition();
        callAnimateTo(cur + 1, ANIMATE_GOTO);
      }

      else if (CHECK.equals(literal) || DONE.equals(literal) || MARK.equals(literal)) {
        int cur = mCardScrollView.getSelectedItemPosition();
        ProtocolStep step = (ProtocolStep) mCardScrollView
            .getItemAtPosition(cur);
        
        markAsDone(step, cur);
      } else {
        mAudio.playSoundEffect(Sounds.ERROR);
        return;
      }
    } catch (Exception e) {
      Log.e(TAG, e.toString());
    }
  }

}