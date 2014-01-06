package com.google.glass.voice.menu;

import com.google.glass.app.GlassActivity;
import com.google.glass.app.GlassError;
import com.google.glass.entity.EntitySet;
import com.google.glass.sound.SoundManager.SoundCompletionListener;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.glass.userevent.UserEventAction;

public abstract interface VoiceMenuEnvironment
{
  public abstract GlassActivity getContext();

  public abstract boolean isConnected();

  public abstract void logUserEvent(UserEventAction paramUserEventAction, String paramString);

  public abstract void playSound(SoundManager.SoundId paramSoundId);

  public abstract void playSound(SoundManager.SoundId paramSoundId, SoundManager.SoundCompletionListener paramSoundCompletionListener);

  public abstract void postToUiThread(Runnable paramRunnable);

  public abstract void selectMenuItem(VoiceMenuItem paramVoiceMenuItem, Runnable paramRunnable);

  public abstract void selectSecondaryMenuItem(VoiceMenuItem paramVoiceMenuItem, long paramLong, Runnable paramRunnable);

  public abstract void selectSecondaryMenuItem(VoiceMenuItem paramVoiceMenuItem, Runnable paramRunnable);

  public abstract void showAppsList(VoiceMenuItem paramVoiceMenuItem, int paramInt, String paramString);

  public abstract void showError(GlassError paramGlassError);

  public abstract void showPeopleList(VoiceMenuItem paramVoiceMenuItem, EntitySet paramEntitySet, EntityCommand paramEntityCommand);

  public abstract void showProgressBar();

  public static enum EntityCommand
  {
    static
    {
      CALL = new EntityCommand("CALL", 1);
      MESSAGE = new EntityCommand("MESSAGE", 2);
      SHARE = new EntityCommand("SHARE", 3);
      SEND = new EntityCommand("SEND", 4);
      EntityCommand[] arrayOfEntityCommand = new EntityCommand[5];
      arrayOfEntityCommand[0] = VIDEO_CALL;
      arrayOfEntityCommand[1] = CALL;
      arrayOfEntityCommand[2] = MESSAGE;
      arrayOfEntityCommand[3] = SHARE;
      arrayOfEntityCommand[4] = SEND;
    }
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.menu.VoiceMenuEnvironment
 * JD-Core Version:    0.6.2
 */