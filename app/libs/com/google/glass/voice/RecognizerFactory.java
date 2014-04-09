package com.google.glass.voice;

import android.content.Context;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import java.nio.ByteBuffer;

public abstract class RecognizerFactory
{
  public static final HotwordRecognizer NO_OP_RECOGNIZER = new NoOpRecognizer(null);
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();

  protected abstract HotwordRecognizer createCustomRecognizer(Context paramContext, VoiceConfig paramVoiceConfig);

  public HotwordRecognizer createRecognizer(Context paramContext, VoiceConfig paramVoiceConfig)
  {
    if (paramVoiceConfig.equals(VoiceConfig.OFF))
      return NO_OP_RECOGNIZER;
    if (!paramVoiceConfig.isHotword())
    {
      logger.w("Asked to compute a HotwordRecognizer for a non-hotword config, inconceivable.", new Object[0]);
      return NO_OP_RECOGNIZER;
    }
    return createCustomRecognizer(paramContext, paramVoiceConfig);
  }

  private static final class NoOpRecognizer
    implements HotwordRecognizer
  {
    private boolean writeAudioWarningLogged = false;

    public void activate()
    {
      RecognizerFactory.logger.i("activate() called on no-op recognizer, nothing to do.", new Object[0]);
      this.writeAudioWarningLogged = false;
    }

    public void deactivate()
    {
      RecognizerFactory.logger.i("deactivate() called on no-op recognizer, nothing to do.", new Object[0]);
    }

    public void destroy()
    {
      RecognizerFactory.logger.i("destroy() called on no-op recognizer, nothing to do.", new Object[0]);
    }

    public VoiceCommand stringToCommand(String paramString)
    {
      throw new UnsupportedOperationException("No op recognizer should not generate results");
    }

    public String toString()
    {
      return "NO_OP_RECOGNIZER";
    }

    public HotwordResult writeAudio(ByteBuffer paramByteBuffer, long paramLong)
    {
      if (!this.writeAudioWarningLogged)
      {
        RecognizerFactory.logger.w("Feeding audio to a no-op recognizer!", new Object[0]);
        this.writeAudioWarningLogged = true;
      }
      return null;
    }
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.RecognizerFactory
 * JD-Core Version:    0.6.2
 */