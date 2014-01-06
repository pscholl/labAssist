package com.google.android.speech;

import java.util.List;

public abstract interface EngineSelector
{
  public abstract List<Integer> getEngineList();

  public abstract int getPrimaryEngine();

  public abstract int getSecondaryEngine();
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.EngineSelector
 * JD-Core Version:    0.6.2
 */