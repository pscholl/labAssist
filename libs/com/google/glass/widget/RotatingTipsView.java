package com.google.glass.widget;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.ViewPropertyAnimator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import com.google.glass.predicates.Assert;
import java.util.ArrayList;
import java.util.List;

public class RotatingTipsView extends TipsView
{
  private static final long DEFAULT_TIP_DURATION_MS = 4000L;
  private static final long INITIAL_DELAY_MS = 1000L;
  private static final int MSG_SHOW_DEFAULT_TIP = 0;
  private static final int MSG_SHOW_INITIAL_TIP = 2;
  private static final int MSG_SHOW_NEXT_TIP = 1;
  private static final long SWAP_TEXT_ANIMATION_DURATION_MS = 200L;
  private static final long TIP_DURATION_MS = 3000L;
  private final Animator.AnimatorListener animateOutListener = new AnimatorListenerAdapter()
  {
    public void onAnimationEnd(Animator paramAnonymousAnimator)
    {
      RotatingTipsView.this.setText(RotatingTipsView.this.nextTip.getText());
      RotatingTipsView.this.setTextSize(0, RotatingTipsView.this.nextTip.getTextSize());
      RotatingTipsView.this.setTypeface(RotatingTipsView.this.nextTip.getTypeface());
      RotatingTipsView.this.animateIn();
    }
  };
  private int currentIndex;
  private final Handler handler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      switch (paramAnonymousMessage.what)
      {
      default:
        return;
      case 0:
        RotatingTipsView.this.showDefaultTip();
        sendEmptyMessageDelayed(1, 4000L);
        return;
      case 1:
        RotatingTipsView.this.animateToNextTip();
        sendEmptyMessageDelayed(0, 3000L);
        return;
      case 2:
      }
      sendEmptyMessage(1);
    }
  };
  private boolean isRotating;
  private Tip nextTip = getDefaultTip();
  private List<Tip> tips = new ArrayList();

  public RotatingTipsView(Context paramContext)
  {
    this(paramContext, null);
  }

  public RotatingTipsView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public RotatingTipsView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  private void animateIn()
  {
    animate().translationY(0.0F).setInterpolator(new DecelerateInterpolator()).setDuration(200L).setListener(null);
  }

  private void animateOut()
  {
    animate().translationY(getContext().getResources().getDisplayMetrics().heightPixels).setInterpolator(new AccelerateInterpolator()).setDuration(200L).setListener(this.animateOutListener);
  }

  private void animateToNextTip()
  {
    this.currentIndex = (1 + this.currentIndex);
    if (this.currentIndex >= this.tips.size())
      this.currentIndex = 0;
    animateToTip((Tip)this.tips.get(this.currentIndex));
  }

  private void animateToTip(Tip paramTip)
  {
    if ((this.nextTip != null) && (this.nextTip.getText().equals(paramTip.getText())))
      return;
    this.nextTip = paramTip;
    onShowTip(this.nextTip);
    animateOut();
  }

  private void clearHandlerMessages()
  {
    this.handler.removeMessages(2);
    this.handler.removeMessages(0);
    this.handler.removeMessages(1);
  }

  private Tip getDefaultTip()
  {
    return new Tip(getTip(), getTipTextSize(), getTipTypeface(), true);
  }

  private void startIfReady()
  {
    if ((!this.tips.isEmpty()) && (this.isRotating) && (!this.handler.hasMessages(2)))
      this.handler.sendEmptyMessageDelayed(2, 1000L);
  }

  private void stopIfDone()
  {
    if (this.tips.isEmpty())
    {
      clearHandlerMessages();
      clearAnimation();
      showDefaultTip();
    }
  }

  public void addTip(Tip paramTip)
  {
    if (!this.tips.contains(paramTip))
    {
      this.tips.add(paramTip);
      startIfReady();
    }
  }

  protected boolean isDefaultTipShown()
  {
    return getText().toString().contentEquals(getTip());
  }

  protected void onShowTip(Tip paramTip)
  {
  }

  public void removeTip(Tip paramTip)
  {
    this.tips.remove(paramTip);
    stopIfDone();
  }

  protected void showDefaultTip()
  {
    animateToTip(getDefaultTip());
  }

  public void startRotating()
  {
    Assert.assertFalse(this.isRotating);
    this.isRotating = true;
    this.currentIndex = 0;
    showDefaultTip();
    startIfReady();
  }

  public void stopRotating()
  {
    Assert.assertTrue(this.isRotating);
    this.isRotating = false;
    clearHandlerMessages();
    clearAnimation();
  }

  public static class Tip
  {
    private final boolean isDefault;
    private final String text;
    private final float textSize;
    private final Typeface typeface;

    public Tip(String paramString, float paramFloat, Typeface paramTypeface, boolean paramBoolean)
    {
      this.text = paramString;
      this.textSize = paramFloat;
      this.typeface = paramTypeface;
      this.isDefault = paramBoolean;
    }

    public String getText()
    {
      return this.text;
    }

    public float getTextSize()
    {
      return this.textSize;
    }

    public Typeface getTypeface()
    {
      return this.typeface;
    }

    public boolean isDefault()
    {
      return this.isDefault;
    }
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.widget.RotatingTipsView
 * JD-Core Version:    0.6.2
 */