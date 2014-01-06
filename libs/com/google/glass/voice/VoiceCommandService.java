package com.google.glass.voice;

import android.app.Service;
import android.content.ComponentName;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.glass.voice.IVoiceCommandListener;
import com.google.android.glass.voice.IVoiceCommandService.Stub;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.collect.Maps;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.util.SafeServiceConnection;
import java.util.Map;

public class VoiceCommandService extends Service
{
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final IBinder binder = new IVoiceCommandService.Stub()
  {
    private void setVoiceConfig(VoiceConfig paramAnonymousVoiceConfig)
    {
      try
      {
        VoiceCommandService.this.voiceServiceBinder.setConfig(paramAnonymousVoiceConfig, VoiceCommandService.this.voiceServiceListener.getTag());
        return;
      }
      catch (RemoteException localRemoteException)
      {
        VoiceCommandService.logger.e(localRemoteException, "Failed to set VoiceConfig to: " + paramAnonymousVoiceConfig, new Object[0]);
      }
    }

    public void startListening(IVoiceCommandListener paramAnonymousIVoiceCommandListener, com.google.android.glass.voice.VoiceCommand[] paramAnonymousArrayOfVoiceCommand)
    {
      synchronized (VoiceCommandService.this.lock)
      {
        VoiceCommandService.access$102(VoiceCommandService.this, paramAnonymousIVoiceCommandListener);
        VoiceCommandService.this.voiceCommandMap.clear();
        String[] arrayOfString = new String[paramAnonymousArrayOfVoiceCommand.length];
        for (int i = 0; i < paramAnonymousArrayOfVoiceCommand.length; i++)
        {
          arrayOfString[i] = paramAnonymousArrayOfVoiceCommand[i].getLiteral();
          VoiceCommandService.this.voiceCommandMap.put(paramAnonymousArrayOfVoiceCommand[i].getLiteral(), paramAnonymousArrayOfVoiceCommand[i]);
        }
        VoiceConfig localVoiceConfig = new VoiceConfig("VoiceCommandServiceConfig", arrayOfString);
        setVoiceConfig(localVoiceConfig);
        return;
      }
    }

    public void stopListening(IVoiceCommandListener paramAnonymousIVoiceCommandListener)
    {
      synchronized (VoiceCommandService.this.lock)
      {
        if (VoiceCommandService.this.voiceCommandListener != paramAnonymousIVoiceCommandListener)
        {
          VoiceCommandService.logger.i("stopListening called but another IVoiceCommandListener was already set.", new Object[0]);
          return;
        }
        VoiceCommandService.access$102(VoiceCommandService.this, null);
        setVoiceConfig(VoiceConfig.OFF);
        return;
      }
    }
  };
  private final Object lock = new Object();
  private IVoiceCommandListener voiceCommandListener;
  private final Map<String, com.google.android.glass.voice.VoiceCommand> voiceCommandMap = Maps.newHashMap();

  @VisibleForTesting
  IVoiceService voiceServiceBinder;
  private final SafeServiceConnection voiceServiceConnection = new SafeServiceConnection(new ComponentName("com.google.glass.voice", "com.google.glass.voice.VoiceService"))
  {
    public FormattingLogger getLogger()
    {
      return VoiceCommandService.logger;
    }

    public void onServiceConnectedInternal(ComponentName paramAnonymousComponentName, IBinder paramAnonymousIBinder)
    {
      VoiceCommandService.logger.i("VoiceService connected", new Object[0]);
      VoiceCommandService.this.voiceServiceBinder = IVoiceService.Stub.asInterface(paramAnonymousIBinder);
      try
      {
        VoiceCommandService.this.voiceServiceBinder.addListener(VoiceCommandService.this.voiceServiceListener);
        return;
      }
      catch (RemoteException localRemoteException)
      {
        VoiceCommandService.logger.e(localRemoteException, "Could not add VoiceServiceListener", new Object[0]);
      }
    }

    public void onServiceDisconnectedInternal(ComponentName paramAnonymousComponentName, boolean paramAnonymousBoolean)
    {
      VoiceCommandService.logger.e("VoiceService disconnected.", new Object[0]);
    }
  };

  @VisibleForTesting
  final IVoiceServiceListener voiceServiceListener = new IVoiceServiceListener.Stub()
  {
    public String getTag()
    {
      return VoiceCommandService.logger.getTag();
    }

    public void onResampledAudioData(byte[] paramAnonymousArrayOfByte, int paramAnonymousInt1, int paramAnonymousInt2)
    {
    }

    public void onVoiceAmplitudeChanged(double paramAnonymousDouble)
    {
    }

    public VoiceConfig onVoiceCommand(VoiceCommand paramAnonymousVoiceCommand)
      throws RemoteException
    {
      synchronized (VoiceCommandService.this.lock)
      {
        IVoiceCommandListener localIVoiceCommandListener = VoiceCommandService.this.voiceCommandListener;
        com.google.android.glass.voice.VoiceCommand localVoiceCommand = (com.google.android.glass.voice.VoiceCommand)VoiceCommandService.this.voiceCommandMap.get(paramAnonymousVoiceCommand.getLiteral());
        if ((localIVoiceCommandListener != null) && (localVoiceCommand != null))
          localIVoiceCommandListener.onCommand(localVoiceCommand);
        return null;
      }
    }

    public void onVoiceConfigChanged(VoiceConfig paramAnonymousVoiceConfig)
    {
    }
  };

  public IBinder onBind(Intent paramIntent)
  {
    return this.binder;
  }

  public void onCreate()
  {
    super.onCreate();
    this.voiceServiceConnection.bind(this);
  }

  public void onDestroy()
  {
    super.onDestroy();
    try
    {
      this.voiceServiceBinder.removeListener(this.voiceServiceListener);
      this.voiceServiceConnection.unbind(this);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
        logger.e(localRemoteException, "Could not remove VoiceServiceListener", new Object[0]);
    }
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.VoiceCommandService
 * JD-Core Version:    0.6.2
 */