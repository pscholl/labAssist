package com.google.glass.bluetooth;

import android.content.Context;
import android.content.Intent;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.util.SafeBroadcastReceiver;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class BluetoothAdapterState
{
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private static final FormattingLogger stateChangeReceiverLogger = FormattingLoggers.getLogger(logger, "stateChangeReceiver");
  private final Context context;
  private final Set<Listener> listeners;
  private final StateChangeBroadcastReceiver stateChangeReceiver = new StateChangeBroadcastReceiver(null);

  public BluetoothAdapterState(Context paramContext)
  {
    this.context = paramContext;
    this.listeners = new HashSet();
  }

  public void addListener(Listener paramListener)
  {
    if ((!this.listeners.add(paramListener)) || (!BluetoothAdapter.getDefaultAdapter().hasBluetoothAdapter()));
    while (true)
    {
      return;
      if (BluetoothAdapter.getDefaultAdapter().isBluetoothEnabled())
        paramListener.onBluetoothAdapterEnabled();
      while (this.listeners.size() == 1)
      {
        this.stateChangeReceiver.register(this.context);
        return;
        paramListener.onBluetoothAdapterDisabled();
      }
    }
  }

  public void removeListener(Listener paramListener)
  {
    this.listeners.remove(paramListener);
    if (this.listeners.size() == 0)
      this.stateChangeReceiver.unregister(this.context);
  }

  public static abstract interface Listener
  {
    public abstract void onBluetoothAdapterDisabled();

    public abstract void onBluetoothAdapterEnabled();
  }

  private class StateChangeBroadcastReceiver extends SafeBroadcastReceiver
  {
    private StateChangeBroadcastReceiver()
    {
      super();
    }

    public FormattingLogger getLogger()
    {
      return BluetoothAdapterState.stateChangeReceiverLogger;
    }

    public void onReceiveInternal(Context paramContext, Intent paramIntent)
    {
      if (!"android.bluetooth.adapter.action.STATE_CHANGED".contentEquals(paramIntent.getAction()));
      while (true)
      {
        return;
        int i = paramIntent.getIntExtra("android.bluetooth.adapter.extra.STATE", 10);
        if (i == 12)
        {
          Iterator localIterator2 = BluetoothAdapterState.this.listeners.iterator();
          while (localIterator2.hasNext())
            ((BluetoothAdapterState.Listener)localIterator2.next()).onBluetoothAdapterEnabled();
        }
        else if (i == 10)
        {
          Iterator localIterator1 = BluetoothAdapterState.this.listeners.iterator();
          while (localIterator1.hasNext())
            ((BluetoothAdapterState.Listener)localIterator1.next()).onBluetoothAdapterDisabled();
        }
      }
    }
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.bluetooth.BluetoothAdapterState
 * JD-Core Version:    0.6.2
 */