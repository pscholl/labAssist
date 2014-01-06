package com.google.glass.voice.embedded;

import android.content.Context;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.voice.HotwordRecognizer;
import com.google.glass.voice.RecognizerFactory;
import com.google.glass.voice.VoiceConfig;

public class CombinedRecognizerFactory extends RecognizerFactory
{
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private RecognizerFactory fallbackFactory;

  public CombinedRecognizerFactory(RecognizerFactory paramRecognizerFactory)
  {
    this.fallbackFactory = paramRecognizerFactory;
  }

  protected HotwordRecognizer createCustomRecognizer(Context paramContext, VoiceConfig paramVoiceConfig)
  {
    throw new RuntimeException("Should be using fallback recognizer.");
  }

  public HotwordRecognizer createRecognizer(Context paramContext, VoiceConfig paramVoiceConfig)
  {
    if (VoiceConfig.GUARD.equals(paramVoiceConfig))
      return new EmbeddedGuardRecognizer();
    return this.fallbackFactory.createRecognizer(paramContext, paramVoiceConfig);
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.embedded.CombinedRecognizerFactory
 * JD-Core Version:    0.6.2
 */