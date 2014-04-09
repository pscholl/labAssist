package com.google.glass.gesture;

import android.content.Context;
import com.google.android.glass.head.HeadGestureManager;
import com.google.glass.predicates.Assert;

public class HeadGestureUtils
{
  private static HeadGestureManager managerForTest;

  private static HeadGestureManager getGestureManager(Context paramContext)
  {
    if ((Assert.isTest()) && (managerForTest != null))
      return managerForTest;
    return HeadGestureManager.from(paramContext);
  }

  public static boolean isGlobalLookUpGestureEnabled(Context paramContext)
  {
    return getGestureManager(paramContext).isGlobalLookUpGestureEnabled();
  }

  public static boolean setGlobalLookUpGestureEnabled(Context paramContext, boolean paramBoolean)
  {
    return getGestureManager(paramContext).setGlobalLookUpGestureEnabled(paramBoolean);
  }

  public static boolean setGlobalLookUpGestureParameters(Context paramContext, float paramFloat1, float paramFloat2)
  {
    return getGestureManager(paramContext).setGlobalLookUpGestureParameters(paramFloat1, paramFloat2);
  }

  public static void setManagerForTest(HeadGestureManager paramHeadGestureManager)
  {
    Assert.assertIsTest();
    managerForTest = paramHeadGestureManager;
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.gesture.HeadGestureUtils
 * JD-Core Version:    0.6.2
 */