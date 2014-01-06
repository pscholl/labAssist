package com.google.glass.voice;

import com.google.common.annotations.VisibleForTesting;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import java.io.IOException;
import java.io.InputStream;

public class MicrophoneInputStream extends InputStream
{
  public static final double MAX_AMPLITUDE = 32767.0D;
  private static final long MICROSECONDS_BETWEEN_AMPLITUDE = 50000L;
  public static final float MICROSECONDS_PER_SAMPLE_16_KHZ = 62.5F;
  public static final float MICROSECONDS_PER_SAMPLE_8_KHZ = 125.0F;

  @VisibleForTesting
  static final int READ_BUFFER_BYTES_PER_READ = 704;
  private static final int READ_BUFFER_LENGTH_SECONDS = 4;
  public static final int SAMPLE_RATE_16000_HZ = 16000;
  public static final int SAMPLE_RATE_8000_HZ = 8000;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final ConcurrentAudioInterface audioInterface;
  private InputStream delegateStream;
  private final MicrophoneInputStreamListener listener;
  protected boolean listening;
  private final float microsecondsPerSample;
  private long microsecondsSinceLastAmplitude = 50000L;
  private final int sampleRate;

  public MicrophoneInputStream(NativeAudioInterfaceWrapper paramNativeAudioInterfaceWrapper, MicrophoneInputStreamListener paramMicrophoneInputStreamListener, int paramInt)
  {
    this.listener = paramMicrophoneInputStreamListener;
    this.sampleRate = paramInt;
    this.audioInterface = new ConcurrentAudioInterface(paramNativeAudioInterfaceWrapper);
    this.microsecondsPerSample = determineMicrosecondsPerSample(paramInt);
  }

  private double calculateAmplitude(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    double d = 0.0D;
    for (int i = paramInt1; i < -2 + (paramInt1 + paramInt2); i += 2)
    {
      int j = paramArrayOfByte[(i + 1)] << 8 & paramArrayOfByte[i];
      d += j * j;
    }
    return Math.sqrt(d / (paramInt2 / 2)) / 32767.0D;
  }

  public static float determineMicrosecondsPerSample(int paramInt)
  {
    if (paramInt == 16000)
      return 62.5F;
    if (paramInt == 8000)
      return 125.0F;
    throw new RuntimeException("Unexpected sample rate: " + paramInt);
  }

  protected InputStream createInputStream()
  {
    BufferingStreamRecorder localBufferingStreamRecorder = new BufferingStreamRecorder(new NativeAudioInputStream(null), 4 * this.sampleRate, 704);
    localBufferingStreamRecorder.startRecording();
    return localBufferingStreamRecorder;
  }

  public int getSampleRate()
  {
    return this.sampleRate;
  }

  public boolean isListening()
  {
    try
    {
      boolean bool = this.listening;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  protected void onRawBytesRead(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    long l = paramInt2 / 2 * ()this.microsecondsPerSample;
    this.microsecondsSinceLastAmplitude -= l;
    if (this.microsecondsSinceLastAmplitude <= 0L)
    {
      this.listener.onAmplitudeChanged(calculateAmplitude(paramArrayOfByte, paramInt1, paramInt2));
      this.microsecondsSinceLastAmplitude = 50000L;
    }
  }

  public int read()
    throws IOException
  {
    throw new IOException("Not implemented");
  }

  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    try
    {
      int i;
      if (this.listening)
      {
        i = this.delegateStream.read(paramArrayOfByte, paramInt1, Math.min(paramInt2, this.sampleRate / 10));
        if (i > 0)
          onRawBytesRead(paramArrayOfByte, paramInt1, i);
      }
      while (true)
      {
        return i;
        logger.e("Error reading from delegate input stream. Stopped listening.", new Object[0]);
        stopListening();
        i = -1;
      }
    }
    finally
    {
    }
  }

  public void startListening()
  {
    try
    {
      if (isListening())
        logger.d("MicrophoneInputStream is already listening.", new Object[0]);
      while (true)
      {
        return;
        FormattingLogger localFormattingLogger = logger;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(this.sampleRate);
        localFormattingLogger.d("Starting listening on MicrophoneInputStream with sample rate %d", arrayOfObject);
        this.audioInterface.open();
        this.delegateStream = createInputStream();
        this.listening = true;
      }
    }
    finally
    {
    }
  }

  // ERROR //
  public void stopListening()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 168	com/google/glass/voice/MicrophoneInputStream:isListening	()Z
    //   6: ifne +20 -> 26
    //   9: getstatic 50	com/google/glass/voice/MicrophoneInputStream:logger	Lcom/google/glass/logging/FormattingLogger;
    //   12: ldc 188
    //   14: iconst_0
    //   15: anewarray 156	java/lang/Object
    //   18: invokeinterface 173 3 0
    //   23: aload_0
    //   24: monitorexit
    //   25: return
    //   26: getstatic 50	com/google/glass/voice/MicrophoneInputStream:logger	Lcom/google/glass/logging/FormattingLogger;
    //   29: astore_2
    //   30: iconst_2
    //   31: anewarray 156	java/lang/Object
    //   34: astore_3
    //   35: aload_3
    //   36: iconst_0
    //   37: aload_0
    //   38: getfield 125	com/google/glass/voice/MicrophoneInputStream:listening	Z
    //   41: invokestatic 193	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   44: aastore
    //   45: aload_3
    //   46: iconst_1
    //   47: aload_0
    //   48: getfield 58	com/google/glass/voice/MicrophoneInputStream:listener	Lcom/google/glass/voice/MicrophoneInputStream$MicrophoneInputStreamListener;
    //   51: aastore
    //   52: aload_2
    //   53: ldc 195
    //   55: aload_3
    //   56: invokeinterface 173 3 0
    //   61: aload_0
    //   62: getfield 144	com/google/glass/voice/MicrophoneInputStream:delegateStream	Ljava/io/InputStream;
    //   65: invokevirtual 198	java/io/InputStream:close	()V
    //   68: aload_0
    //   69: aconst_null
    //   70: putfield 144	com/google/glass/voice/MicrophoneInputStream:delegateStream	Ljava/io/InputStream;
    //   73: aload_0
    //   74: iconst_0
    //   75: putfield 125	com/google/glass/voice/MicrophoneInputStream:listening	Z
    //   78: goto -55 -> 23
    //   81: astore_1
    //   82: aload_0
    //   83: monitorexit
    //   84: aload_1
    //   85: athrow
    //   86: astore 4
    //   88: getstatic 50	com/google/glass/voice/MicrophoneInputStream:logger	Lcom/google/glass/logging/FormattingLogger;
    //   91: aload 4
    //   93: ldc 200
    //   95: iconst_0
    //   96: anewarray 156	java/lang/Object
    //   99: invokeinterface 203 4 0
    //   104: goto -36 -> 68
    //
    // Exception table:
    //   from	to	target	type
    //   2	23	81	finally
    //   26	61	81	finally
    //   61	68	81	finally
    //   68	78	81	finally
    //   88	104	81	finally
    //   61	68	86	java/io/IOException
  }

  public static abstract interface MicrophoneInputStreamListener
  {
    public abstract void onAmplitudeChanged(double paramDouble);
  }

  private final class NativeAudioInputStream extends InputStream
  {
    private NativeAudioInputStream()
    {
    }

    public void close()
      throws IOException
    {
      MicrophoneInputStream.this.audioInterface.close();
      super.close();
    }

    public int read()
      throws IOException
    {
      throw new IOException("Not implemented");
    }

    public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
      throws IOException
    {
      if ((paramInt1 == 0) && (paramInt2 == paramArrayOfByte.length))
      {
        int j = MicrophoneInputStream.this.audioInterface.read(paramArrayOfByte);
        if (j < paramInt2)
          j = -1;
        return j;
      }
      byte[] arrayOfByte = new byte[paramInt2];
      int i = MicrophoneInputStream.this.audioInterface.read(arrayOfByte);
      if (i < paramInt2)
        return -1;
      System.arraycopy(arrayOfByte, 0, paramArrayOfByte, paramInt1, paramInt2);
      return i;
    }
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.MicrophoneInputStream
 * JD-Core Version:    0.6.2
 */