package de.tud.labAssist;

import com.google.glass.input.VoiceInputHelper;
import com.google.glass.input.VoiceListener;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.util.PowerHelper;
import com.google.glass.voice.VoiceCommand;
import com.google.glass.voice.VoiceConfig;
import com.google.glass.voice.VoiceConfig.LetterToSoundModel;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.util.Log;
import android.view.Menu;

public class Main extends FragmentActivity {

  public static final int NUM_ITEMS = 5;
  protected static final float SWIPE_TRESHOLD = 400;
  private ViewPager mPager;
  private PagerAdapter mPagerAdapter;
  private VoiceInputHelper voiceInputHelper;
   

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    setContentView(R.layout.activity_main);
    
    mPager = (ViewPager) findViewById(R.id.pager);
    mPagerAdapter = new ScreenSlidePagerAdapter(getSupportFragmentManager());
    mPager.setAdapter(mPagerAdapter);
    
    voiceInputHelper = new VoiceInputHelper(this, new PageFlipper(),
        VoiceInputHelper.newUserActivityObserver(this));
    voiceInputHelper.addVoiceServiceListener();
  }

  @Override
  public boolean onCreateOptionsMenu(Menu menu) {
    // Inflate the menu; this adds items to the action bar if it is present.
    getMenuInflater().inflate(R.menu.main, menu);
    return true;
  }
  
  private class ScreenSlidePagerAdapter extends FragmentPagerAdapter {
    public ScreenSlidePagerAdapter(android.support.v4.app.FragmentManager fm) {
      super(fm);
    }

    @Override
    public Fragment getItem(int num) {
      ScreenSlidePageFragment f = new ScreenSlidePageFragment();
      f.setNum(num);
      return f;
    }

    @Override
    public int getCount() {
      return NUM_ITEMS;
    }
  }
  
  private class PageFlipper extends StubVoiceListener {
    private final VoiceConfig INITIAL_VC = new VoiceConfig(
        "pageflipper", new String[]{"back", "forward", "next"});
    private PowerHelper mPower;
    
    @Override
    public void onVoiceServiceConnected() {
      mPower = new PowerHelper(getApplicationContext());
      voiceInputHelper.setVoiceConfig(INITIAL_VC, false); // screenoff=true
    }
    
    @Override
    public void onVoiceServiceDisconnected() {
      mPower = null;
    }
    
    @Override
    public VoiceConfig onVoiceCommand(VoiceCommand vc) {
      String literal = vc.getLiteral();
      mPower.stayAwake(5*1000); // stay awake for the next 5s
      
      if ( "back".equals(literal) ) {
        int cur = mPager.getCurrentItem() - 1;
        if (cur < 0) cur = 0;
        mPager.setCurrentItem(cur, true);
        return null;
      }
      
      else if ( "forward".equals(literal) || "next".equals(literal)) {
        int cur = mPager.getCurrentItem() + 1;
        if (cur >= NUM_ITEMS) cur = NUM_ITEMS;
        mPager.setCurrentItem(cur,true);
        return null;
      }
     
      return null;
    }
  }
}
