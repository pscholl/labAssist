package de.tud.labAssist;

import java.io.IOException;
import java.io.InputStream;
import java.util.Scanner;

import android.content.res.AssetManager;
import android.graphics.Point;
import android.graphics.Rect;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.util.Log;
import android.view.Menu;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;

import com.google.glass.input.VoiceInputHelper;
import com.google.glass.util.PowerHelper;
import com.google.glass.voice.VoiceCommand;
import com.google.glass.voice.VoiceConfig;

public class Main extends FragmentActivity {
  protected static final float SWIPE_TRESHOLD = 400;
  private static final String TAG = "labAssist";
  private ViewPager mPager;
  private PagerAdapter mPagerAdapter;
  private VoiceInputHelper mVoiceInputHelper;
  private ScreenSlideScroller mScroller;
   

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    setContentView(R.layout.activity_main); 
    
    mPager = (ViewPager) findViewById(R.id.pager);
    mPagerAdapter = new MarkdownPager(
        getSupportFragmentManager(),
        getAssetAsString("dna_extraction_from_onions.pd"));
    mPager.setAdapter(mPagerAdapter);
    
    mVoiceInputHelper = new VoiceInputHelper(this, new PageFlipper(),
        VoiceInputHelper.newUserActivityObserver(this));
    
    mScroller = new ScreenSlideScroller(mPager);
  }
  
  private String getAssetAsString(String filename) {
    try {
      InputStream is = getAssets().open(filename);
      Scanner scanner = new Scanner(is,"UTF-8").useDelimiter("\\A");
      String str = scanner.hasNext() ? scanner.next() : "";
      scanner.close();
      return str;
    } catch (IOException e) {
      Log.e(TAG, String.format("error while opening %s",filename), e);
      return "";
    }
  }

  @Override
  protected void onResume() {
    super.onResume();
    mVoiceInputHelper.addVoiceServiceListener();
    mScroller.start();
  }
  
  @Override
  protected void onPause() {
    super.onPause();
    mVoiceInputHelper.removeVoiceServiceListener();
    mScroller.stop();
  }

  @Override
  public boolean onCreateOptionsMenu(Menu menu) {
    getMenuInflater().inflate(R.menu.main, menu);
    return true;
  }
  
  private class ScreenSlideScroller implements SensorEventListener {

    private static final int SENSOR_RATE_uS = 20000;
    private static final float TO_ANGLE_RAD = .1F; // must be positive
    private static final float FROM_ANGLE_RAD = -.1F;
    private final float TOTAL_ANGLE = Math.abs(FROM_ANGLE_RAD) + TO_ANGLE_RAD;
    private Sensor mSensor;
    private int mLastAccuracy;
    private SensorManager ss;
    private PowerHelper mPower;
    private int mLastNum;
    private ScrollView mScrollView;
    private View mChildView;
    private ViewPager mPager;
    
    public ScreenSlideScroller(ViewPager pager) {
      ss = (SensorManager) getSystemService(SENSOR_SERVICE);
      mSensor = ss.getDefaultSensor(Sensor.TYPE_ROTATION_VECTOR);
      mPower = new PowerHelper(getApplicationContext());
      mPager = pager;
    }
    
    public void start() {
      if (mSensor == null)
        return;
      
      ss.registerListener(this, mSensor, SENSOR_RATE_uS);
    }
    
    public void stop() {
      ss.unregisterListener(this);
    }
    
    @Override
    public void onAccuracyChanged(Sensor sensor, int accuracy) {
      mLastAccuracy = accuracy;
    }
    
    private void switchViews(int num) {
      if (num == mLastNum  && mScrollView != null)
        return; // nothing to do
      
      mScrollView = (ScrollView) mPager.findViewWithTag(MarkdownPager.MarkdownFragment.getScrollViewTag(num));
      mChildView  = mScrollView.getChildAt(0);
      mLastNum    = num;
    }

    @Override
    public void onSensorChanged(SensorEvent event) {
      if (mLastAccuracy == SensorManager.SENSOR_STATUS_UNRELIABLE)
        return;
      
      float[] mat = new float[9], orientation = new float[3];
      
      // the remapping here is to fix the rotation order to Y-X-Z (in glass coordinates)
      SensorManager.getRotationMatrixFromVector(mat, event.values);
      SensorManager.remapCoordinateSystem(mat, SensorManager.AXIS_X, SensorManager.AXIS_Z, mat);
      SensorManager.getOrientation(mat, orientation);
      
      float cur = orientation[1];
      
      if (cur < FROM_ANGLE_RAD || cur > TO_ANGLE_RAD) 
        return; // nothing to do
      
      switchViews(mPager.getCurrentItem());
      
      if (mScrollView == null)
        return; // nothing to do
      
      int displayed_size = mScrollView.getHeight(),
            content_size = mChildView.getHeight();
      
      if (content_size < displayed_size)
        return; // nothing to do
      
      mPower.stayAwake(3*1000); // keep awake for 3 additional secs
      
      float factor = (((float) (content_size - displayed_size))/TOTAL_ANGLE);
      mScrollView.scrollTo(0, (int) Math.ceil((cur-FROM_ANGLE_RAD)*factor));
    }
  }
  
  private class PageFlipper extends StubVoiceListener {
    private final VoiceConfig INITIAL_VC = new VoiceConfig(
        "pageflipper", new String[]{"back", "forward", "next"});
    private PowerHelper mPower;
    
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
      mPower.stayAwake(5*1000); // stay awake for the next 5s
      
      if ( "back".equals(literal) ) {
        int cur = mPager.getCurrentItem() - 1;
        if (cur < 0) cur = 0;
        mPager.setCurrentItem(cur, true);
        return null;
      }
      
      else if ( "forward".equals(literal) || "next".equals(literal)) {
        int cur = mPager.getCurrentItem() + 1;
        if (cur >= mPagerAdapter.getCount()) cur = mPagerAdapter.getCount();
        mPager.setCurrentItem(cur,true);
        return null;
      }
     
      return null;
    }
  }
}
