package com.google.glass.voice;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.predicates.Assert;
import com.google.glass.util.remote.RemoteCallbackOperation;
import com.google.glass.voice.network.IVoiceInputCallback;
import com.google.glass.voice.remote.BroadcastingVoiceInputCallback;
import com.google.glass.voice.remote.BroadcastingVoiceServiceListener;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.atomic.AtomicReference;

public class VoiceService extends Service
{
  private static final String EXTRA_MOCK_AUDIO = "mock_audio";
  private static final String TAG = VoiceService.class.getSimpleName();
  private static final FormattingLogger logger = FormattingLoggers.getLogger(TAG);
  private final IBinder binder = new VoiceServiceBinder();
  private BroadcastingVoiceInputCallback callbackBroadcaster;
  private byte[] mockAudio = null;
  private BroadcastingVoiceServiceListener serviceListenerBroadcaster;
  private VoiceEngine voiceEngine;

  protected void dump(FileDescriptor paramFileDescriptor, final PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    try
    {
      paramPrintWriter.println("Current Time: " + SystemClock.uptimeMillis());
      paramPrintWriter.println();
      paramPrintWriter.println("VoiceInputCallbacks:");
      this.callbackBroadcaster.doOperation(new RemoteCallbackOperation()
      {
        public void doOperation(IVoiceInputCallback paramAnonymousIVoiceInputCallback)
          throws RemoteException
        {
          paramPrintWriter.println("  " + paramAnonymousIVoiceInputCallback.getTag());
        }
      });
      paramPrintWriter.println();
      paramPrintWriter.println("VoiceServiceListeners:");
      this.serviceListenerBroadcaster.doOperation(new RemoteCallbackOperation()
      {
        public void doOperation(IVoiceServiceListener paramAnonymousIVoiceServiceListener)
          throws RemoteException
        {
          paramPrintWriter.println("  " + paramAnonymousIVoiceServiceListener.getTag());
        }
      });
      paramPrintWriter.println();
      paramPrintWriter.println("VoiceEngine State:");
      if (this.voiceEngine != null)
        this.voiceEngine.dumpState(paramPrintWriter);
      while (true)
      {
        paramPrintWriter.println();
        return;
        paramPrintWriter.println("[not connected to VoiceEngine]");
      }
    }
    finally
    {
    }
  }

  public IBinder onBind(Intent paramIntent)
  {
    logger.i("onBind", new Object[0]);
    return this.binder;
  }

  public void onCreate()
  {
    super.onCreate();
    logger.i("onCreate", new Object[0]);
    this.voiceEngine = new VoiceEngine(this);
    this.callbackBroadcaster = new BroadcastingVoiceInputCallback(this.voiceEngine);
    this.serviceListenerBroadcaster = new BroadcastingVoiceServiceListener();
    this.voiceEngine.initializeAsynchronously();
    this.voiceEngine.setListener(this.serviceListenerBroadcaster);
  }

  public void onDestroy()
  {
    logger.d("onDestroy", new Object[0]);
    if (this.voiceEngine != null)
      this.voiceEngine.cleanupSynchronously();
    if (this.callbackBroadcaster != null)
      this.callbackBroadcaster.close();
    if (this.serviceListenerBroadcaster != null)
      this.serviceListenerBroadcaster.close();
    super.onDestroy();
  }

  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    logger.i("onStartCommand", new Object[0]);
    byte[] arrayOfByte = this.mockAudio;
    if (paramIntent != null)
      this.mockAudio = paramIntent.getByteArrayExtra("mock_audio");
    if (arrayOfByte != this.mockAudio)
      this.voiceEngine.setMockAudio(this.mockAudio);
    return 1;
  }

  public class VoiceServiceBinder extends IVoiceService.Stub
  {
    private final AtomicReference<String> lastSetConfigListenerTag = new AtomicReference();

    public VoiceServiceBinder()
    {
    }

    public void addListener(IVoiceServiceListener paramIVoiceServiceListener)
    {
      Assert.assertNotNull(paramIVoiceServiceListener);
      VoiceService.this.serviceListenerBroadcaster.register(paramIVoiceServiceListener);
    }

    public void addVoiceInputCallback(IVoiceInputCallback paramIVoiceInputCallback)
    {
      Assert.assertNotNull(paramIVoiceInputCallback);
      VoiceService.this.callbackBroadcaster.register(paramIVoiceInputCallback);
    }

    public void endpointNetworkRecognizer()
    {
      VoiceService.this.voiceEngine.endpointNetworkRecognizer();
    }

    @VisibleForTesting
    VoiceService getVoiceService()
    {
      return VoiceService.this;
    }

    public void loadConfig(VoiceConfig paramVoiceConfig)
    {
      Assert.assertNotNull(paramVoiceConfig);
      VoiceService.this.voiceEngine.loadConfig(paramVoiceConfig);
    }

    public void reloadConfig(VoiceConfig paramVoiceConfig1, VoiceConfig paramVoiceConfig2)
    {
      loadConfig(paramVoiceConfig1);
      if (paramVoiceConfig2 != null)
        unloadConfig(paramVoiceConfig2);
    }

    public void removeListener(IVoiceServiceListener paramIVoiceServiceListener)
    {
      Assert.assertNotNull(paramIVoiceServiceListener);
      VoiceService.this.serviceListenerBroadcaster.unregister(paramIVoiceServiceListener);
    }

    public void removeVoiceInputCallback(IVoiceInputCallback paramIVoiceInputCallback)
    {
      Assert.assertNotNull(paramIVoiceInputCallback);
      VoiceService.this.callbackBroadcaster.unregister(paramIVoiceInputCallback);
    }

    public void setConfig(VoiceConfig paramVoiceConfig, String paramString)
    {
      Assert.assertNotNull(paramVoiceConfig);
      if (VoiceConfig.OFF.equals(paramVoiceConfig))
      {
        if (!TextUtils.equals((CharSequence)this.lastSetConfigListenerTag.get(), paramString))
        {
          VoiceService.logger.w("Ignoring setConfig(OFF) because a more recent listener is using VoiceService", new Object[0]);
          return;
        }
        VoiceService.this.callbackBroadcaster.clear();
      }
      while (VoiceService.this.voiceEngine.isConfigIdentical(paramVoiceConfig))
      {
        VoiceService.logger.d("Ignoring duplicate call setConfig(%s).", new Object[] { paramVoiceConfig });
        return;
        this.lastSetConfigListenerTag.set(paramString);
      }
      VoiceService.this.voiceEngine.setConfig(paramVoiceConfig);
    }

    public void setWantAudioData(boolean paramBoolean)
    {
      VoiceService.this.voiceEngine.setWantAudioData(paramBoolean);
    }

    public void unloadConfig(VoiceConfig paramVoiceConfig)
    {
      Assert.assertNotNull(paramVoiceConfig);
      VoiceService.this.voiceEngine.unloadConfig(paramVoiceConfig);
    }
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.VoiceService
 * JD-Core Version:    0.6.2
 */