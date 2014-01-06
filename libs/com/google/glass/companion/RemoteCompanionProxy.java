package com.google.glass.companion;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import com.google.glass.app.GlassApplication;
import com.google.glass.bluetooth.BluetoothDeviceWrapper;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.predicates.Assert;
import com.google.glass.util.Labs;
import com.google.glass.util.Labs.Feature;
import com.google.glass.util.MainThreadExecutorManager;
import com.google.glass.util.SafeBroadcastReceiver;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Executor;

public class RemoteCompanionProxy
{
  private static final FormattingLogger companionStateListenerLogger = FormattingLoggers.getLogger(logger, "companionStateListener");
  private static volatile Boolean isCompanionConnectedForTest;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private static final FormattingLogger pairedDeviceReceiverLogger = FormattingLoggers.getLogger(logger, "pairedDeviceReceiver");
  private final Application application;
  private int companionLocalVersion;
  private int companionRemoteVersion;
  private IRemoteCompanionService companionService;
  private final CompanionStateBroadcastReceiver companionStateListener = new CompanionStateBroadcastReceiver(null);
  private final ConnectionChecker connectionChecker;
  private volatile boolean isCompanionConnected = false;
  private volatile boolean isSmsEnabled = false;
  private Set<CompanionStateChangeListener> listeners = Collections.synchronizedSet(new HashSet());
  private BluetoothDeviceWrapper pairedBluetoothDeviceWrapper;
  private final PairedDeviceBroadcastReceiver pairedDeviceReceiver = new PairedDeviceBroadcastReceiver(null);
  private final ServiceConnection serviceConnection = new ServiceConnection()
  {
    public void onServiceConnected(ComponentName paramAnonymousComponentName, IBinder paramAnonymousIBinder)
    {
      FormattingLogger localFormattingLogger = RemoteCompanionProxy.logger;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = paramAnonymousComponentName.getShortClassName();
      localFormattingLogger.d("Connected to %s", arrayOfObject);
      RemoteCompanionProxy.access$202(RemoteCompanionProxy.this, IRemoteCompanionService.Stub.asInterface(paramAnonymousIBinder));
      RemoteCompanionProxy.this.companionStateListener.register(RemoteCompanionProxy.this.application);
      RemoteCompanionProxy.this.notifyCompanionStateChange();
    }

    public void onServiceDisconnected(ComponentName paramAnonymousComponentName)
    {
      FormattingLogger localFormattingLogger = RemoteCompanionProxy.logger;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = paramAnonymousComponentName.getShortClassName();
      localFormattingLogger.d("Disconnected from %s", arrayOfObject);
      RemoteCompanionProxy.access$202(RemoteCompanionProxy.this, null);
      RemoteCompanionProxy.this.companionStateListener.unregister(RemoteCompanionProxy.this.application);
      RemoteCompanionProxy.access$502(RemoteCompanionProxy.this, false);
      RemoteCompanionProxy.this.notifyCompanionStateChange();
    }
  };

  public RemoteCompanionProxy(Application paramApplication)
  {
    this(paramApplication, false);
  }

  public RemoteCompanionProxy(Application paramApplication, boolean paramBoolean)
  {
    this.application = paramApplication;
    if (paramBoolean);
    for (this.connectionChecker = new ConnectionChecker(paramApplication, GlassApplication.from(paramApplication).getUserEventHelper()); ; this.connectionChecker = null)
    {
      paramApplication.bindService(new Intent("com.google.glass.bluetooth.COMPANION_SERVICE"), this.serviceConnection, 1);
      this.pairedDeviceReceiver.register(paramApplication);
      return;
    }
  }

  private void notifyCompanionStateChange()
  {
    if (this.connectionChecker != null)
    {
      this.connectionChecker.setConnectState(this.isCompanionConnected);
      this.connectionChecker.setCompanionService(this.companionService);
    }
    synchronized (this.listeners)
    {
      Iterator localIterator = this.listeners.iterator();
      if (localIterator.hasNext())
        ((CompanionStateChangeListener)localIterator.next()).onStateChange(this.isCompanionConnected, this.companionRemoteVersion, this.companionLocalVersion);
    }
  }

  public static void setIsConnectedForTest(Boolean paramBoolean)
  {
    Assert.assertIsTest();
    isCompanionConnectedForTest = paramBoolean;
  }

  public void addListener(final CompanionStateChangeListener paramCompanionStateChangeListener)
  {
    Runnable local2 = new Runnable()
    {
      public void run()
      {
        if ((Assert.isTest()) && (RemoteCompanionProxy.isCompanionConnectedForTest != null))
        {
          paramCompanionStateChangeListener.onStateChange(RemoteCompanionProxy.isCompanionConnectedForTest.booleanValue(), RemoteCompanionProxy.this.companionRemoteVersion, RemoteCompanionProxy.this.companionLocalVersion);
          return;
        }
        paramCompanionStateChangeListener.onStateChange(RemoteCompanionProxy.this.isCompanionConnected, RemoteCompanionProxy.this.companionRemoteVersion, RemoteCompanionProxy.this.companionLocalVersion);
      }
    };
    if (Thread.currentThread() == Looper.getMainLooper().getThread())
      local2.run();
    while (true)
    {
      this.listeners.add(paramCompanionStateChangeListener);
      return;
      MainThreadExecutorManager.getMainThreadExecutor().execute(local2);
    }
  }

  public boolean isConnected()
  {
    if ((Assert.isTest()) && (isCompanionConnectedForTest != null))
      return isCompanionConnectedForTest.booleanValue();
    return this.isCompanionConnected;
  }

  public boolean isMulticastSupportedOnPairedDevice()
  {
    return (Labs.isEnabled(Labs.Feature.CNS)) && (this.pairedBluetoothDeviceWrapper != null) && (this.pairedBluetoothDeviceWrapper.hasMyGlassMulticastConnection());
  }

  public boolean isSmsEnabled()
  {
    return this.isSmsEnabled;
  }

  public boolean isTetheringErrorDetected()
  {
    if (this.connectionChecker != null)
      return this.connectionChecker.isTetheringErrorDetected();
    return false;
  }

  public void removeListener(CompanionStateChangeListener paramCompanionStateChangeListener)
  {
    this.listeners.remove(paramCompanionStateChangeListener);
  }

  public boolean sendCompanionMessage(Bundle paramBundle)
  {
    IRemoteCompanionService localIRemoteCompanionService = this.companionService;
    boolean bool1 = false;
    if (localIRemoteCompanionService != null)
    {
      boolean bool2 = isConnected();
      bool1 = false;
      if (!bool2);
    }
    try
    {
      localIRemoteCompanionService.send(paramBundle);
      bool1 = true;
      return bool1;
    }
    catch (RemoteException localRemoteException)
    {
      logger.w(localRemoteException, "Failed to send envelope.", new Object[0]);
    }
    return false;
  }

  public boolean sendCompanionMessage(Proto.Envelope paramEnvelope)
  {
    return sendCompanionMessage(CompanionMessagingUtil.createBundle(paramEnvelope));
  }

  public boolean sendMessageToCompanionService(Bundle paramBundle)
  {
    IRemoteCompanionService localIRemoteCompanionService = this.companionService;
    boolean bool = false;
    if (localIRemoteCompanionService != null);
    try
    {
      localIRemoteCompanionService.send(paramBundle);
      bool = true;
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      logger.w(localRemoteException, "Failed to send envelope.", new Object[0]);
    }
    return false;
  }

  private class CompanionStateBroadcastReceiver extends SafeBroadcastReceiver
  {
    private CompanionStateBroadcastReceiver()
    {
      super();
    }

    public FormattingLogger getLogger()
    {
      return RemoteCompanionProxy.companionStateListenerLogger;
    }

    public void onReceiveInternal(Context paramContext, Intent paramIntent)
    {
      FormattingLogger localFormattingLogger1 = getLogger();
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = paramIntent.getAction();
      localFormattingLogger1.d("Got action: %s", arrayOfObject1);
      if ("com.google.glass.action.COMPANION_APP_CONNECTIVITY_CHANGE".equals(paramIntent.getAction()))
      {
        RemoteCompanionProxy.access$502(RemoteCompanionProxy.this, paramIntent.getBooleanExtra("com.google.glass.extra.STATE", false));
        RemoteCompanionProxy.access$902(RemoteCompanionProxy.this, paramIntent.getIntExtra("com.google.glass.extra.COMPANION_REMOTE_VERSION", -1));
        RemoteCompanionProxy.access$1002(RemoteCompanionProxy.this, paramIntent.getIntExtra("com.google.glass.extra.COMPANION_REMOTE_VERSION", -1));
        RemoteCompanionProxy.access$1102(RemoteCompanionProxy.this, paramIntent.getBooleanExtra("com.google.glass.extra.COMPANION_SMS_ENABLED", false));
        FormattingLogger localFormattingLogger2 = getLogger();
        Object[] arrayOfObject2 = new Object[4];
        arrayOfObject2[0] = Boolean.valueOf(RemoteCompanionProxy.this.isCompanionConnected);
        arrayOfObject2[1] = Integer.valueOf(RemoteCompanionProxy.this.companionRemoteVersion);
        arrayOfObject2[2] = Integer.valueOf(RemoteCompanionProxy.this.companionLocalVersion);
        arrayOfObject2[3] = Boolean.valueOf(RemoteCompanionProxy.this.isSmsEnabled);
        localFormattingLogger2.d("isConnected = %s, companionRemoteVersion = %s, companionLocalVersion = %s,  isSmsEnabled = %s", arrayOfObject2);
        RemoteCompanionProxy.this.notifyCompanionStateChange();
      }
    }
  }

  private class PairedDeviceBroadcastReceiver extends SafeBroadcastReceiver
  {
    private PairedDeviceBroadcastReceiver()
    {
      super();
    }

    public FormattingLogger getLogger()
    {
      return RemoteCompanionProxy.pairedDeviceReceiverLogger;
    }

    public void onReceiveInternal(Context paramContext, Intent paramIntent)
    {
      FormattingLogger localFormattingLogger = getLogger();
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = paramIntent.getAction();
      localFormattingLogger.d("Got action: %s", arrayOfObject);
      if ("com.google.glass.bluetooth.PAIRED_DEVICE".equals(paramIntent.getAction()))
        RemoteCompanionProxy.access$1302(RemoteCompanionProxy.this, BluetoothDeviceWrapper.readFromBundle(paramIntent.getExtras(), "com.google.glass.bluetooth.EXTRA_DEVICE"));
    }
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.companion.RemoteCompanionProxy
 * JD-Core Version:    0.6.2
 */