package de.tud.ess;

import java.util.Random;

import de.tud.labAssist.R;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Gravity;
import android.view.View;
import android.widget.LinearLayout;

public class VerticalBars extends LinearLayout {

  protected static final String TAG = "VerticalBars";
  protected static final long BAR_FREQ_MS = 400;
  protected static final int MAX_DELAY_inS = 240;
  protected static final int MIN_DELAY_inS = 40;
  protected static final int MIN_HEIGHT = 10;
  
  public class ColorChanger implements Runnable {
    protected Random mRand = new Random();
    public String mCurrentColor = "blue";
    
    @Override
    public void run() {            
      View v = getChildAt(0);
      int bc = ((ColorDrawable) v.getBackground()).getColor();
      
      if (bc == getResources().getColor(R.color.blue)) {
        bc = getResources().getColor(R.color.red);
        mCurrentColor = "red";
        Log.e(TAG, "bar color changed to RED");
      } else {
        bc = getResources().getColor(R.color.blue);
        mCurrentColor = "blue";
        Log.e(TAG, "bar color changed to BLUE");
      }
      
      for (int i=0; i<getChildCount(); i++) {
        v = getChildAt(i);
        v.setBackgroundColor(bc);
      }
     
      postDelayed(this, (MIN_DELAY_inS + mRand.nextInt(MAX_DELAY_inS-MIN_DELAY_inS))*1000);
    }

  }

  public final String[] pos = new String[] { "left", "middle", "right" };
  public class BarAnimator implements Runnable {
    protected Random mRand = new Random();
    protected int mWithMaxHeight = -1;
    public String mCurrentBar = null;
    
    @Override
    public void run() {
      int withmaxheight = 0;
      
      if (getHeight()==0) {
        Log.e(TAG, "getHeight()==0, refusing to work! put into layout with enough space.");
        return;
      }
      
      for (int i=0; i<getChildCount(); i++) {
        View v = getChildAt(i);
        LayoutParams p = (LayoutParams) v.getLayoutParams();
        
        if (mBarGoals[i] < p.height) {
          if (mBarGoals[i] == p.height - 1)
            mBarGoals[i] = p.height + mRand.nextInt(getHeight() - p.height + 1);
          p.height -= 1;
        } else if (mBarGoals[i] > p.height) {
          if (mBarGoals[i] == p.height + 1)
            mBarGoals[i] = MIN_HEIGHT + mRand.nextInt(p.height - MIN_HEIGHT);
          p.height += 1;
        } else {
          mBarGoals[i] = MIN_HEIGHT + mRand.nextInt(getHeight() - MIN_HEIGHT);
          p.height = MIN_HEIGHT + mRand.nextInt(getHeight() - MIN_HEIGHT);
        }
        
        v.setLayoutParams(p);
   
        if (getChildAt(withmaxheight).getHeight() < v.getHeight())
          withmaxheight = i;
      }
      
      if (mWithMaxHeight != withmaxheight) {
        mWithMaxHeight  = withmaxheight;
        Log.e(TAG, String.format("max height changed to %d", mWithMaxHeight));
        
        if (withmaxheight<pos.length)
          mCurrentBar = pos[withmaxheight];
      }
      
      postDelayed(this, BAR_FREQ_MS);
    }
  }

  protected BarAnimator mBarAnimator;
  protected ColorChanger mColorChanger;
  protected int[] mBarGoals   = null;

  public void setNumberOfBars(int num) {
    if (num <= 0)
      return;
        
    mBarGoals   = new int[num];   
    removeAllViews();
    setOrientation(LinearLayout.HORIZONTAL);
    setGravity(Gravity.BOTTOM);
    
    for (int i=0; i<num; i++) {
      View bar = new View(getContext());
      LayoutParams p = new LayoutParams(LayoutParams.WRAP_CONTENT, 0,1F);
      p.setMargins(0, 0, 5, 0);
      bar.setId(i);
      bar.setBackgroundResource(R.color.blue);
      addView(bar, p);
    }
  }
  
  @Override
  protected void onVisibilityChanged(View changedView, int visibility) {
    super.onVisibilityChanged(changedView, visibility);
    
    if (visibility==VISIBLE) {
      if (mBarAnimator==null) 
        mBarAnimator = new BarAnimator();
      if (mColorChanger==null)
        mColorChanger = new ColorChanger();
      
      postDelayed(mColorChanger, (MIN_DELAY_inS + (new Random()).nextInt(MAX_DELAY_inS-MIN_DELAY_inS))*1000);
      postDelayed(mBarAnimator, BAR_FREQ_MS);
    } else {
      removeCallbacks(mBarAnimator);
      removeCallbacks(mColorChanger);
    }
  }
  
  public VerticalBars(Context context, AttributeSet attrs, int defStyle) {
    super(context, attrs, defStyle);
    setNumberOfBars(3);
  }

  public VerticalBars(Context context, AttributeSet attrs) {
    super(context, attrs);
    setNumberOfBars(3);
  }
  
  public VerticalBars(Context context) {
    super(context);
    setNumberOfBars(3);
  }

  public String getCurrentColor() {
    return mColorChanger.mCurrentColor;
  }

  public String getCurrentBar() {
    return mBarAnimator.mCurrentBar;
  }
}
