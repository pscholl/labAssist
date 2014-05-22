package de.tud.labAssist;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.Activity;
import android.content.Context;
import android.media.AudioManager;
import android.os.Bundle;
import android.os.Handler;
import android.speech.tts.TextToSpeech;
import android.view.View;
import android.widget.TextView;

import com.google.android.glass.media.Sounds;

public class PersuasiveFeedback extends Activity {

  protected View mImIn;
  protected View mImOut;
  private AudioManager mAudio;
  protected int mSoundEffect;
  private TextToSpeech mTts;
  protected TextView mTextView;
  final static protected int mAnimationDuration = 10000;
  final static protected int mStartupDelay = 500;
  public static final String STATE_ARGUMENT = "state";
  public static final String NUM_ARGUMENT = "num";

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    
    boolean is_optimistic = getIntent().getBooleanExtra(STATE_ARGUMENT, false);
    int num_feedback = getIntent().getIntExtra(NUM_ARGUMENT, 0);
    
    if (num_feedback == 0)
      is_optimistic = true;
      
    if (is_optimistic) {
      setContentView(R.layout.persuade_positive);
      mSoundEffect = Sounds.SUCCESS;
    } else { // pessimistic :)
      setContentView(R.layout.persuade_negative);
      mSoundEffect = Sounds.ERROR;
    }
    
    mTextView = (TextView) findViewById(R.id.textView);
    //mTextView.setTypeface(RobotoTypefaces.getTypeface(this, RobotoTypefaces.WEIGHT_THIN));
    
    //if (num_feedback == 0)
    mTextView.setText("Katalysator bitte sachgerecht verstauen");
    
    mImIn  = findViewById(R.id.image_in);
    mImOut = findViewById(R.id.image_out);
    mAudio = (AudioManager) getSystemService(Context.AUDIO_SERVICE);
    
//    mTts = new TextToSpeech(this, new OnInitListener() {
//      @Override
//      public void onInit(int status) {
//        Log.e("vc", "onInit in TTS");
//        //mTts.setLanguage(Locale.GERMANY);
//        mTts.speak((String) mTextView.getText(), TextToSpeech.QUEUE_FLUSH, null);
//      }
//    });
  }
  
  protected void onResume() {
    super.onResume();
    
    new Handler().postDelayed(new Runnable() {
      @Override
      public void run() { crossfade(); }
    }, mStartupDelay);
    
  }
  
  protected void crossfade() {
    mImIn.setAlpha(0);
    mImIn.setVisibility(View.VISIBLE);
    
    mImIn.animate()
      .alpha(1f)
      .setDuration(mAnimationDuration)
      .setListener(null);
    
    mImOut.animate()
      .alpha(0f)
      .setDuration(mAnimationDuration)
      .setListener(new AnimatorListenerAdapter() {
        @Override
        public void onAnimationEnd(Animator animation) {
          mImOut.setVisibility(View.GONE);
        }
      });
    
    new Handler().postDelayed(new Runnable() {
      @Override
      public void run() {
        finish();
      }
    }, mStartupDelay + mAnimationDuration);
    
    mAudio.playSoundEffect(mSoundEffect);
  }
}
