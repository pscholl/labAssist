package com.google.glass.input;

import com.google.glass.voice.VoiceConfig;

public abstract interface GrammarStore
{
  public abstract VoiceConfig getLoadedConfig(String paramString);

  public abstract VoiceConfig reloadConfig(String paramString, VoiceConfig paramVoiceConfig);

  public abstract void unloadConfig(String paramString);
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.input.GrammarStore
 * JD-Core Version:    0.6.2
 */