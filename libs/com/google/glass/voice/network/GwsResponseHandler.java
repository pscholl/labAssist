package com.google.glass.voice.network;

public abstract interface GwsResponseHandler
{
  public abstract void onActionResult(String paramString);

  public abstract void onError(Exception paramException);

  public abstract void onHtmlAnswerCardResult(String paramString);

  public abstract void onNoResults();
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.network.GwsResponseHandler
 * JD-Core Version:    0.6.2
 */