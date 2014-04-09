package com.google.glass.util;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.os.AsyncTask;
import com.google.glass.async.AsyncThreadExecutorManager;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.predicates.Assert;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class InetConnectionState
{
  private static final String EXTRA_INET_CONDITION = "inetCondition";
  private static final String INET_CONDITION_ACTION = "android.net.conn.INET_CONDITION_ACTION";
  private static final int INET_CONDITION_THRESHOLD = 50;
  private static final FormattingLogger connectivityReceiverLogger = FormattingLoggers.getLogger(logger, "connectivityReceiver");
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final ConnectivityManager connectivityManager;
  private ConnectivityBroadcastReceiver connectivityReceiver = new ConnectivityBroadcastReceiver(null);
  private final Context context;
  private final Set<Listener> listeners;
  private boolean prevState;

  public InetConnectionState(Context paramContext)
  {
    this.context = paramContext.getApplicationContext();
    this.connectivityManager = ((ConnectivityManager)paramContext.getSystemService("connectivity"));
    this.listeners = new HashSet();
  }

  public void addListener(final Listener paramListener)
  {
    Assert.assertUiThread();
    boolean bool = this.listeners.isEmpty();
    this.listeners.add(paramListener);
    if (bool)
      this.connectivityReceiver.registerAsync(AsyncThreadExecutorManager.getSerialExecutor(), this.context);
    new AsyncTask()
    {
      protected Boolean doInBackground(Void[] paramAnonymousArrayOfVoid)
      {
        return Boolean.valueOf(InetConnectionState.this.isConnected());
      }

      protected void onPostExecute(Boolean paramAnonymousBoolean)
      {
        InetConnectionState.access$102(InetConnectionState.this, paramAnonymousBoolean.booleanValue());
        if (InetConnectionState.this.listeners.contains(paramListener))
          paramListener.onConnectivityChanged(InetConnectionState.this.prevState);
      }
    }
    .executeOnExecutor(AsyncThreadExecutorManager.getThreadPoolExecutor(), new Void[0]);
  }

  public boolean isConnected()
  {
    if (this.connectivityManager.getActiveNetworkInfo() == null);
    Intent localIntent;
    do
    {
      return false;
      localIntent = this.context.registerReceiver(null, new IntentFilter("android.net.conn.INET_CONDITION_ACTION"));
    }
    while ((localIntent == null) || (localIntent.getIntExtra("inetCondition", 0) <= 50));
    return true;
  }

  public void removeListener(Listener paramListener)
  {
    Assert.assertUiThread();
    this.listeners.remove(paramListener);
    if (this.listeners.isEmpty())
      this.connectivityReceiver.unregisterAsync(AsyncThreadExecutorManager.getSerialExecutor(), this.context);
  }

  private class ConnectivityBroadcastReceiver extends SafeBroadcastReceiver
  {
    private ConnectivityBroadcastReceiver()
    {
      super();
    }

    public FormattingLogger getLogger()
    {
      return InetConnectionState.connectivityReceiverLogger;
    }

    public void onReceiveInternal(Context paramContext, Intent paramIntent)
    {
      new AsyncTask()
      {
        protected Boolean doInBackground(Void[] paramAnonymousArrayOfVoid)
        {
          return Boolean.valueOf(InetConnectionState.this.isConnected());
        }

        protected void onPostExecute(Boolean paramAnonymousBoolean)
        {
          if (paramAnonymousBoolean.booleanValue() == InetConnectionState.this.prevState);
          while (true)
          {
            return;
            InetConnectionState.access$102(InetConnectionState.this, paramAnonymousBoolean.booleanValue());
            Iterator localIterator = InetConnectionState.this.listeners.iterator();
            while (localIterator.hasNext())
              ((InetConnectionState.Listener)localIterator.next()).onConnectivityChanged(paramAnonymousBoolean.booleanValue());
          }
        }
      }
      .executeOnExecutor(AsyncThreadExecutorManager.getThreadPoolExecutor(), new Void[0]);
    }
  }

  public static abstract interface Listener
  {
    public abstract void onConnectivityChanged(boolean paramBoolean);
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.InetConnectionState
 * JD-Core Version:    0.6.2
 */