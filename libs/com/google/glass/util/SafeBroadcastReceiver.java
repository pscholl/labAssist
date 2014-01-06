package com.google.glass.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import com.google.common.base.Preconditions;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.predicates.Assert;
import com.google.glass.userevent.UserEventAction;
import com.google.glass.userevent.UserEventHelper;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

public abstract class SafeBroadcastReceiver extends BroadcastReceiver
{
  private final IntentFilter intentFilter;
  private final AtomicBoolean isRegistered = new AtomicBoolean();
  private final AtomicBoolean isUnregisterPending = new AtomicBoolean();
  private final String permission;
  private Thread registerThread;

  public SafeBroadcastReceiver(String paramString, IntentFilter paramIntentFilter)
  {
    Preconditions.checkNotNull(paramIntentFilter, "null IntentFilter");
    this.intentFilter = paramIntentFilter;
    this.permission = paramString;
  }

  public SafeBroadcastReceiver(String[] paramArrayOfString)
  {
    this(null, createIntentFilter(paramArrayOfString));
  }

  private void checkThread()
  {
    try
    {
      if (this.registerThread == null)
        this.registerThread = Thread.currentThread();
      while (Thread.currentThread() == this.registerThread)
        return;
      throw new IllegalStateException("Register/unregister not invoked from consistent thread. First thread: " + this.registerThread.getName() + ", current thread: " + Thread.currentThread().getName());
    }
    finally
    {
    }
  }

  public static IntentFilter createIntentFilter(String[] paramArrayOfString)
  {
    IntentFilter localIntentFilter = new IntentFilter();
    int i = paramArrayOfString.length;
    for (int j = 0; j < i; j++)
      localIntentFilter.addAction(paramArrayOfString[j]);
    return localIntentFilter;
  }

  protected abstract FormattingLogger getLogger();

  protected UserEventHelper getUserEventHelper(Context paramContext)
  {
    return new UserEventHelper(paramContext);
  }

  public boolean isRegistered()
  {
    return this.isRegistered.get();
  }

  protected void logUserEvent(Context paramContext, UserEventAction paramUserEventAction)
  {
    getUserEventHelper(paramContext).log(paramUserEventAction);
  }

  protected void logUserEvent(Context paramContext, UserEventAction paramUserEventAction, String paramString)
  {
    getUserEventHelper(paramContext).log(paramUserEventAction, paramString);
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if (!this.isRegistered.get())
    {
      FormattingLogger localFormattingLogger2 = getLogger();
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = paramIntent.getAction();
      localFormattingLogger2.w("Received %s even though we are not registered.", arrayOfObject2);
    }
    if (this.isUnregisterPending.get())
    {
      FormattingLogger localFormattingLogger1 = getLogger();
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = paramIntent.getAction();
      localFormattingLogger1.d("Ignoring %s because unregister is pending.", arrayOfObject1);
      return;
    }
    onReceiveInternal(paramContext, paramIntent);
  }

  public abstract void onReceiveInternal(Context paramContext, Intent paramIntent);

  public Intent register(Context paramContext)
  {
    if (this.isRegistered.getAndSet(true))
    {
      getLogger().w("Not registering receiver, because it is already registered.", new Object[0]);
      return null;
    }
    checkThread();
    Stopwatch localStopwatch = new Stopwatch().start();
    if (TextUtils.isEmpty(this.permission));
    for (Intent localIntent = paramContext.registerReceiver(this, this.intentFilter); ; localIntent = paramContext.registerReceiver(this, this.intentFilter, this.permission, null))
    {
      localStopwatch.stop();
      FormattingLogger localFormattingLogger = getLogger();
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Long.valueOf(localStopwatch.getTotalElapsedMilliseconds());
      arrayOfObject[1] = Boolean.valueOf(Assert.isUiThread());
      localFormattingLogger.d("Registered receiver, time: %sms, UI thread: %s", arrayOfObject);
      return localIntent;
    }
  }

  public void registerAsync(Executor paramExecutor, final Context paramContext)
  {
    paramExecutor.execute(new Runnable()
    {
      public void run()
      {
        SafeBroadcastReceiver.this.register(paramContext);
      }
    });
  }

  public String toString()
  {
    return getLogger().getTag();
  }

  public void unregister(Context paramContext)
  {
    checkThread();
    if (!this.isRegistered.getAndSet(false))
    {
      getLogger().w("Not unregistering receiver, because it is not registered.", new Object[0]);
      return;
    }
    Stopwatch localStopwatch = new Stopwatch().start();
    try
    {
      paramContext.unregisterReceiver(this);
      this.isUnregisterPending.set(false);
      localStopwatch.stop();
      FormattingLogger localFormattingLogger = getLogger();
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Long.valueOf(localStopwatch.getTotalElapsedMilliseconds());
      arrayOfObject[1] = Boolean.valueOf(Assert.isUiThread());
      localFormattingLogger.d("Unregistered receiver, time: %sms, UI thread: %s", arrayOfObject);
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      getLogger().w(localIllegalArgumentException, "Receiver could not be unregistered.  It was probably forcibly unregistered by android.  See above logs.", new Object[0]);
      return;
    }
    finally
    {
      this.isUnregisterPending.set(false);
    }
  }

  public void unregisterAsync(Executor paramExecutor, final Context paramContext)
  {
    this.isUnregisterPending.set(true);
    paramExecutor.execute(new Runnable()
    {
      public void run()
      {
        SafeBroadcastReceiver.this.unregister(paramContext);
      }
    });
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.SafeBroadcastReceiver
 * JD-Core Version:    0.6.2
 */