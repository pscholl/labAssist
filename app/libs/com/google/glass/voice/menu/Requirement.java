package com.google.glass.voice.menu;

import com.google.glass.app.GlassError;

public abstract interface Requirement
{
  public abstract GlassError getError(VoiceMenuEnvironment paramVoiceMenuEnvironment);

  public abstract boolean isSatisfied(VoiceMenuEnvironment paramVoiceMenuEnvironment);
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.menu.Requirement
 * JD-Core Version:    0.6.2
 */