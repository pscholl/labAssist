package de.tud.labAssist;

import com.google.android.glass.media.Sounds;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.Activity;
import android.content.Context;
import android.media.AudioManager;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;

public class PersuasiveFeedback extends Activity {

  protected View mImIn;
  protected View mImOut;
  private AudioManager mAudio;
  protected int mSoundEffect;
  final static protected int mAnimationDuration = 2000;
  final static protected int mStartupDelay = 500;
  public static final String STATE_ARGUMENT = "state";

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    
    boolean is_optimistic = getIntent().getBooleanExtra(STATE_ARGUMENT, false);
      
    if (is_optimistic) {
      setContentView(R.layout.persuade_positive);
      mSoundEffect = Sounds.SUCCESS;
    } else { // pessimistic :)
      setContentView(R.layout.persuade_negative);
      mSoundEffect = Sounds.ERROR;
    }
    
    mImIn  = findViewById(R.id.image_in);
    mImOut = findViewById(R.id.image_out);
    mAudio = (AudioManager) getSystemService(Context.AUDIO_SERVICE);
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
    }, mStartupDelay * 2 + mAnimationDuration);
    
    mAudio.playSoundEffect(mSoundEffect);
  }
}
