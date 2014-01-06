package com.google.glass.input;

public abstract class GrammarLoader
{
  private final GrammarStore grammarStore;

  public GrammarLoader(GrammarStore paramGrammarStore)
  {
    this.grammarStore = paramGrammarStore;
  }

  protected final GrammarStore getGrammarStore()
  {
    return this.grammarStore;
  }

  public abstract void registerForUpdates();

  public abstract void unregisterForUpdates();
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.input.GrammarLoader
 * JD-Core Version:    0.6.2
 */