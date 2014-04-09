package com.google.glass.widget;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.common.R.dimen;
import com.google.glass.input.SwipeDirection;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.util.Clock;
import com.google.glass.util.Clock.Impl;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import junit.framework.Assert;

public class ValueSlider extends LinearLayout
  implements FillBar.Listener
{

  @VisibleForTesting
  static final int ALLOW_SWIPE_TIMEOUT_MILLIS = 200;
  private static final float FILL_BAR_FLING_MIN_FRACTION = 0.33F;
  private static final int ICON_BAR_PADDING_PX = 40;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private Clock clock = createClock();
  private int defaultIconResource;
  private FillBar fillBar;
  private long firstFingerDownTime;
  private ImageView iconView;
  private float lastFillValue = -1.0F;
  private List<Listener> listeners = new ArrayList();
  private int numValues;
  private int selectedValue;
  private Map<Integer, Integer> valueToIconResource;

  public ValueSlider(Context paramContext)
  {
    this(paramContext, null, 0);
  }

  public ValueSlider(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public ValueSlider(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setOrientation(1);
    setGravity(17);
    this.iconView = new ImageView(paramContext);
    addView(this.iconView);
    this.iconView.setPadding(0, 0, 0, 40);
    this.fillBar = new FillBar(paramContext);
    Resources localResources = getContext().getResources();
    addView(this.fillBar, new LinearLayout.LayoutParams((int)localResources.getDimension(R.dimen.fill_bar_width), (int)getContext().getResources().getDimension(R.dimen.fill_bar_height)));
    this.fillBar.addListener(this);
  }

  private void updateIcon()
  {
    if (this.valueToIconResource != null)
    {
      Integer localInteger = (Integer)this.valueToIconResource.get(Integer.valueOf(this.selectedValue));
      if (localInteger == null)
        localInteger = Integer.valueOf(this.defaultIconResource);
      this.iconView.setImageResource(localInteger.intValue());
    }
  }

  private void updateSelectedValue()
  {
    if (this.lastFillValue < 0.0F);
    label154: 
    while (true)
    {
      return;
      int i = this.selectedValue;
      this.selectedValue = Math.round(this.lastFillValue * (-1 + this.numValues));
      if (this.numValues > 2)
      {
        if (this.selectedValue != 0)
          break label120;
        if (this.lastFillValue <= 0.0F);
      }
      for (this.selectedValue = 1; ; this.selectedValue = (-2 + this.numValues))
        label120: 
        do
        {
          if (this.selectedValue == i)
            break label154;
          updateIcon();
          int j = 0;
          int k = this.listeners.size();
          while (j < k)
          {
            ((Listener)this.listeners.get(j)).onValueChanged(this.selectedValue);
            j++;
          }
          break;
        }
        while ((this.selectedValue != -1 + this.numValues) || (this.lastFillValue >= 1.0F));
    }
  }

  public void addListener(Listener paramListener)
  {
    Assert.assertNotNull(paramListener);
    this.listeners.add(paramListener);
  }

  @VisibleForTesting
  Clock createClock()
  {
    return new Clock.Impl();
  }

  public int getFillBarOverScrollPixels()
  {
    return this.fillBar.getOverScrollPixels();
  }

  public void init(Map<Integer, Integer> paramMap, int paramInt1, int paramInt2, int paramInt3)
  {
    boolean bool1;
    int i;
    if (paramInt2 > 1)
    {
      bool1 = true;
      Assert.assertTrue(bool1);
      i = Math.max(0, Math.min(paramInt2 - 1, paramInt3));
      this.valueToIconResource = paramMap;
      this.defaultIconResource = paramInt1;
      this.numValues = paramInt2;
      if (i != 0)
        break label126;
      this.fillBar.setFillValue(0.0F);
      label55: if (this.selectedValue != i)
        break label163;
    }
    label163: for (boolean bool2 = true; ; bool2 = false)
    {
      Assert.assertTrue(bool2);
      updateIcon();
      requestLayout();
      FormattingLogger localFormattingLogger = logger;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(i);
      arrayOfObject[1] = Integer.valueOf(paramInt2);
      localFormattingLogger.d("Initialized value slider to initial value: %d / %d", arrayOfObject);
      return;
      bool1 = false;
      break;
      label126: if (i == paramInt2 - 1)
      {
        this.fillBar.setFillValue(1.0F);
        break label55;
      }
      this.fillBar.setFillValue(i / (paramInt2 - 1));
      break label55;
    }
  }

  public void onFillValueChanged(float paramFloat)
  {
    if (this.lastFillValue != paramFloat)
    {
      this.lastFillValue = paramFloat;
      updateSelectedValue();
    }
  }

  public void onFingerCountChanged(int paramInt, boolean paramBoolean)
  {
    if ((paramInt != 0) && (paramBoolean))
      this.firstFingerDownTime = this.clock.uptimeMillis();
    if ((paramInt == 0) && (!paramBoolean))
      this.fillBar.commitFillOffset();
  }

  public void onPrepareSwipe(float paramFloat)
  {
    this.fillBar.setFillOffset(paramFloat / this.fillBar.getWidth());
  }

  public boolean onSwipe(SwipeDirection paramSwipeDirection)
  {
    int i;
    int j;
    if (this.clock.uptimeMillis() - this.firstFingerDownTime < 200L)
    {
      i = 1;
      if (Math.abs(this.fillBar.getFillOffset()) <= 0.33F)
        break label80;
      j = 1;
    }
    while (true)
      if ((i != 0) && (j != 0))
      {
        if (paramSwipeDirection == SwipeDirection.LEFT)
        {
          if (this.fillBar.isAtMin())
            break label111;
          this.fillBar.setToMin();
          return true;
          i = 0;
          break;
          label80: j = 0;
          continue;
        }
        if ((paramSwipeDirection == SwipeDirection.RIGHT) && (!this.fillBar.isAtMax()))
        {
          this.fillBar.setToMax();
          return true;
        }
      }
    label111: return false;
  }

  public void removeListener(Listener paramListener)
  {
    Assert.assertNotNull(paramListener);
    this.listeners.remove(paramListener);
  }

  public static abstract interface Listener
  {
    public abstract void onValueChanged(int paramInt);
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.widget.ValueSlider
 * JD-Core Version:    0.6.2
 */