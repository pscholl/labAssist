package de.tud.labAssist;

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

import com.google.android.glass.media.Sounds;
import com.google.android.glass.widget.CardScrollView;
import com.google.glass.input.VoiceInputHelper;
import com.google.glass.util.PowerHelper;
import com.google.glass.voice.VoiceCommand;
import com.google.glass.voice.VoiceConfig;

import de.tud.ess.StubVoiceListener;
import de.tud.labAssist.LabMarkdown.ProtocolStep;

public class LabAssist extends FragmentActivity {
  private static final String TAG = "labAssist";
  private VoiceInputHelper mVoiceInputHelper;
  private AudioManager mAudio;
  protected CardScrollView mCardScrollView;

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    setContentView(R.layout.main);

    mVoiceInputHelper = new VoiceInputHelper(this, new StepSwitcher(),
        VoiceInputHelper.newUserActivityObserver(this));

    LabMarkdown lm = new LabMarkdown(this,
        getAssetAsString("dna_extraction_from_onions.pd"));
    mCardScrollView = (CardScrollView) findViewById(R.id.scrollview);
    mCardScrollView.setAdapter(lm);
    mCardScrollView.setOnItemClickListener(new LabOnClickListener());
    mCardScrollView.setOnItemSelectedListener(new LogItemSelecter());

    mAudio = (AudioManager) getSystemService(Context.AUDIO_SERVICE);
  }

  private String getAssetAsString(String filename) {
    try {
      InputStream is = getAssets().open(filename);
      Scanner scanner = new Scanner(is, "UTF-8").useDelimiter("\\A");
      String str = scanner.hasNext() ? scanner.next() : "";
      scanner.close();
      return str;
    } catch (IOException e) {
      Log.e(TAG, String.format("error while opening %s", filename), e);
      return "";
    }
  }

  @Override
  protected void onResume() {
    super.onResume();
    mCardScrollView.activate();
    mVoiceInputHelper.addVoiceServiceListener();
    
    Log.w(TAG, "onResume");
  }

  @Override
  protected void onPause() {
    mVoiceInputHelper.removeVoiceServiceListener();
    mCardScrollView.deactivate();
    super.onPause();
    
    Log.w(TAG, "onPause");
  }

  protected Method mAnimateFunc;
  protected static final int ANIMATE_GOTO = 2;

  protected class StepSwitcher extends StubVoiceListener {
    protected static final String NEXT = "next";
    protected static final String PREVIOUS = "previous";
    protected static final String DONE = "mark as done";
    protected static final String MARK = "mark";
    protected static final String CHECK = "check";
    protected static final String GOFORWARD = "go forward";
    protected static final String GOBACK = "go back";
    protected final VoiceConfig INITIAL_VC = new VoiceConfig("pageflipper",
        new String[] { GOBACK, GOFORWARD, NEXT, PREVIOUS, CHECK, DONE });
    protected PowerHelper mPower;

    @Override
    public void onVoiceServiceConnected() {
      mPower = new PowerHelper(getApplicationContext());
      mVoiceInputHelper.setVoiceConfig(INITIAL_VC, false); // screenoff=true
    }

    @Override
    public void onVoiceServiceDisconnected() {
      mPower = null;
    }

    @Override
    public VoiceConfig onVoiceCommand(VoiceCommand vc) {
      String literal = vc.getLiteral();
      mPower.stayAwake(5 * 1000); // stay awake for the next 5s

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
          return null;
        }
      } catch (Exception e) {
        Log.e(TAG, e.toString());
      }

      return INITIAL_VC;
    }
  }
  

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
      // TODO Auto-generated method stub

    }
  }

}