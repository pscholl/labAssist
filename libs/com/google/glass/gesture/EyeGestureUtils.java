package com.google.glass.gesture;

import android.content.Context;
import android.os.AsyncTask;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import com.google.android.glass.eye.EyeGesture;
import com.google.android.glass.eye.EyeGestureManager;
import com.google.glass.async.PriorityThreadFactory;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.predicates.Assert;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

public class EyeGestureUtils
{
  public static final String ACTION_EYE_GESTURE = "com.google.glass.action.EYE_GESTURE";
  public static final String ACTION_ON_HEAD_CALIBRATION = "com.google.glass.action.ACTION_ON_HEAD_CALIBRATION";
  public static final String ACTION_PRELOAD_RESOURCES = "com.google.glass.gesture.action.PRELOAD_RESOURCES";
  public static final String ACTION_WINK_CALIBRATION = "com.google.glass.action.ACTION_WINK_CALIBRATION";
  public static final String ACTION_WINK_CALIBRATION_TIPS = "com.google.glass.action.ACTION_WINK_CALIBRATION_TIPS";
  public static final String EXTRA_EYE_GESTURE = "gesture";
  private static final long MAX_WAKE_LOCK_DURATION_MILLIS = TimeUnit.SECONDS.toMillis(10L);
  private static final Executor SERIAL_EXECUTOR;
  public static final String TAG = EyeGestureUtils.class.getSimpleName();
  private static final FormattingLogger logger = FormattingLoggers.getLogger(TAG);
  private static EyeGestureManager managerForTest;
  private static PowerManager.WakeLock wakeLockSingleton;

  static
  {
    SERIAL_EXECUTOR = Executors.newSingleThreadExecutor(new PriorityThreadFactory(5, TAG + ":AsyncSerialExecutor"));
  }

  public static void activateGazeServiceLogging(Context paramContext, boolean paramBoolean)
  {
    getEyeGestureManager(paramContext).activateGazeLogging(paramBoolean);
  }

  public static boolean applyAndSaveCalibrationForEyeGesture(Context paramContext, EyeGesture paramEyeGesture)
  {
    return getEyeGestureManager(paramContext).applyAndSaveCalibration(paramEyeGesture);
  }

  public static boolean clearCalibrationForEyeGesture(Context paramContext, EyeGesture paramEyeGesture)
  {
    return getEyeGestureManager(paramContext).clearCalibration(paramEyeGesture);
  }

  public static boolean enableEyeGestureDetectorPersistently(Context paramContext, EyeGesture paramEyeGesture, boolean paramBoolean)
  {
    return enableEyeGestureDetectorPersistently(paramContext, paramEyeGesture, paramBoolean, true);
  }

  public static boolean enableEyeGestureDetectorPersistently(Context paramContext, EyeGesture paramEyeGesture, boolean paramBoolean1, boolean paramBoolean2)
  {
    return getEyeGestureManager(paramContext).enableDetectorPersistently(paramEyeGesture, paramBoolean1, paramBoolean2);
  }

  private static void enableGazeService(Context paramContext, boolean paramBoolean)
  {
    Assert.assertNotUiThread();
    FormattingLogger localFormattingLogger = logger;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Boolean.valueOf(paramBoolean);
    localFormattingLogger.d("enableGazeService called: enable=%s", arrayOfObject);
    getEyeGestureManager(paramContext).enableGazeService(paramBoolean);
  }

  public static void enableGazeServiceAsync(final Context paramContext, boolean paramBoolean)
  {
    try
    {
      Assert.assertUiThread();
      logger.v("Incrementing wake lock.", new Object[0]);
      getWakeLockInstance(paramContext).acquire(MAX_WAKE_LOCK_DURATION_MILLIS);
      new AsyncTask()
      {
        protected Void doInBackground(Void[] paramAnonymousArrayOfVoid)
        {
          FormattingLogger localFormattingLogger = EyeGestureUtils.logger;
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = Boolean.valueOf(this.val$enableState);
          localFormattingLogger.d("Executing switch of GazeService master enable to %s", arrayOfObject);
          EyeGestureUtils.enableGazeService(paramContext, this.val$enableState);
          return null;
        }

        protected void onPostExecute(Void paramAnonymousVoid)
        {
          EyeGestureUtils.logger.v("Decrementing wake lock.", new Object[0]);
          PowerManager.WakeLock localWakeLock = EyeGestureUtils.getWakeLockInstance(paramContext);
          if ((localWakeLock != null) && (localWakeLock.isHeld()))
            localWakeLock.release();
        }
      }
      .executeOnExecutor(SERIAL_EXECUTOR, new Void[0]);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static boolean endCalibrationIntervalForEyeGesture(Context paramContext, EyeGesture paramEyeGesture)
  {
    return getEyeGestureManager(paramContext).endCalibrationInterval(paramEyeGesture);
  }

  public static void forceGlasshubResetHack(Context paramContext)
  {
    Assert.assertNotUiThread();
    logger.d("forceGlasshubResetHack() called!  NOTE: A reboot is required!", new Object[0]);
    getEyeGestureManager(paramContext).forceGlasshubResetHack();
  }

  private static EyeGestureManager getEyeGestureManager(Context paramContext)
  {
    if ((Assert.isTest()) && (managerForTest != null))
      return managerForTest;
    return EyeGestureManager.from(paramContext);
  }

  private static PowerManager.WakeLock getWakeLockInstance(Context paramContext)
  {
    try
    {
      if (wakeLockSingleton == null)
      {
        wakeLockSingleton = ((PowerManager)paramContext.getSystemService("power")).newWakeLock(1, TAG + ":WakeLock");
        wakeLockSingleton.setReferenceCounted(true);
      }
      PowerManager.WakeLock localWakeLock = wakeLockSingleton;
      return localWakeLock;
    }
    finally
    {
    }
  }

  public static boolean isCalibrationCompleteForEyeGesture(Context paramContext, EyeGesture paramEyeGesture)
  {
    return getEyeGestureManager(paramContext).isCalibrationComplete(paramEyeGesture);
  }

  public static boolean isEyeGestureDetectorPersistentlyEnabled(Context paramContext, EyeGesture paramEyeGesture)
  {
    return getEyeGestureManager(paramContext).isDetectorPersistentlyEnabled(paramEyeGesture);
  }

  public static boolean isEyeGestureDetectorRunning(Context paramContext, EyeGesture paramEyeGesture)
  {
    return getEyeGestureManager(paramContext).isDetectorRunning(paramEyeGesture);
  }

  public static boolean isEyeGestureSupported(Context paramContext, EyeGesture paramEyeGesture)
  {
    return getEyeGestureManager(paramContext).isSupported(paramEyeGesture);
  }

  public static boolean isGazeServiceLogging(Context paramContext)
  {
    return getEyeGestureManager(paramContext).isGazeLogging();
  }

  public static boolean loadCalibrationForEyeGesture(Context paramContext, EyeGesture paramEyeGesture)
  {
    return getEyeGestureManager(paramContext).loadCalibration(paramEyeGesture);
  }

  public static void setManagerForTest(EyeGestureManager paramEyeGestureManager)
  {
    Assert.assertIsTest();
    managerForTest = paramEyeGestureManager;
  }

  public static boolean startCalibrationIntervalForEyeGesture(Context paramContext, EyeGesture paramEyeGesture)
  {
    return getEyeGestureManager(paramContext).startCalibrationInterval(paramEyeGesture);
  }

  public static boolean startEyeGestureDetector(Context paramContext, EyeGesture paramEyeGesture, boolean paramBoolean, int paramInt)
  {
    return getEyeGestureManager(paramContext).startDetector(paramEyeGesture, paramBoolean, paramInt);
  }

  public static boolean stopEyeGestureDetector(Context paramContext, EyeGesture paramEyeGesture)
  {
    return getEyeGestureManager(paramContext).stopDetector(paramEyeGesture);
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.gesture.EyeGestureUtils
 * JD-Core Version:    0.6.2
 */