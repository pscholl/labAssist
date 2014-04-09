package com.google.glass.voice.embedded;

import com.google.android.speech.embedded.Greco3Recognizer;
import com.google.common.io.Files;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.util.BytePipe;
import com.google.glass.voice.AlignmentInfo;
import com.google.glass.voice.AudioByteUtils;
import com.google.glass.voice.HotwordRecognizer;
import com.google.glass.voice.HotwordResult;
import com.google.glass.voice.VoiceCommand;
import com.google.speech.recognizer.AbstractRecognizer;
import com.google.speech.recognizer.Recognizer;
import com.google.speech.recognizer.RecognizerCallback;
import com.google.speech.recognizer.api.NativeRecognizer.NativeRecognitionResult;
import com.google.speech.recognizer.api.RecognizerProtos.AudioLevelEvent;
import com.google.speech.recognizer.api.RecognizerProtos.EndpointerEvent;
import com.google.speech.recognizer.api.RecognizerProtos.PartialPart;
import com.google.speech.recognizer.api.RecognizerProtos.PartialResult;
import com.google.speech.recognizer.api.RecognizerProtos.RecognitionEvent;
import com.google.speech.recognizer.api.RecognizerSessionParamsProto.RecognizerSessionParams;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

public class EmbeddedGuardRecognizer
  implements HotwordRecognizer
{
  private static final File GRECO_DIR = new File("/system/usr/srec/en-US/voice/");
  private static final int PIPE_SIZE_BYTES = 0;
  private static final String RECOGNIZER_CONFIG = "deep_guard.ascii_config";
  private static final int SAMPLE_RATE = 16000;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private BytePipe audioBuffer;
  private long audioLengthMillis;
  private long hotwordAlignmentOffsetMillis;
  private RecognizerProtos.PartialResult lastVoiceCommand = null;
  private Recognizer recognizer = new GlassGuardRecognizer();
  private Thread recognizerThread;
  private GlassResourceManager resourceManager = null;

  public EmbeddedGuardRecognizer()
  {
    reinitialize();
  }

  private RecognizerCallback createRecognizerCallback()
  {
    return new RecognizerCallback()
    {
      public void handleAudioLevelEvent(RecognizerProtos.AudioLevelEvent paramAnonymousAudioLevelEvent)
      {
        EmbeddedGuardRecognizer.logger.i("handleAudioLevelEvent: " + paramAnonymousAudioLevelEvent, new Object[0]);
      }

      public void handleEndpointerEvent(RecognizerProtos.EndpointerEvent paramAnonymousEndpointerEvent)
      {
        EmbeddedGuardRecognizer.logger.i("Endpointer Event: " + paramAnonymousEndpointerEvent, new Object[0]);
      }

      public void handleRecognitionEvent(RecognizerProtos.RecognitionEvent paramAnonymousRecognitionEvent)
      {
        EmbeddedGuardRecognizer.logger.i("handleRecognitionEvent: " + paramAnonymousRecognitionEvent, new Object[0]);
        if ((paramAnonymousRecognitionEvent.hasPartialResult()) && (paramAnonymousRecognitionEvent.getPartialResult().getHotwordFired()) && (paramAnonymousRecognitionEvent.getPartialResult().getPartCount() > 0) && (paramAnonymousRecognitionEvent.getPartialResult().getPart(0).hasText()))
          EmbeddedGuardRecognizer.access$102(EmbeddedGuardRecognizer.this, paramAnonymousRecognitionEvent.getPartialResult());
      }
    };
  }

  public static byte[] getConfigBytes(String paramString)
  {
    try
    {
      logger.d("Loading config: " + paramString, new Object[0]);
      byte[] arrayOfByte = Files.toByteArray(new File(paramString));
      return arrayOfByte;
    }
    catch (IOException localIOException)
    {
      logger.e("Error reading " + paramString, new Object[0]);
    }
    return null;
  }

  private String getPath(String[] paramArrayOfString)
  {
    File localFile1 = GRECO_DIR;
    int i = paramArrayOfString.length;
    int j = 0;
    File localFile2;
    for (Object localObject = localFile1; j < i; localObject = localFile2)
    {
      localFile2 = new File((File)localObject, paramArrayOfString[j]);
      j++;
    }
    return ((File)localObject).toString();
  }

  private String[] getSearchPath()
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = GRECO_DIR.toString();
    return arrayOfString;
  }

  private void reinitialize()
  {
    GlassGuardRecognizer localGlassGuardRecognizer = new GlassGuardRecognizer();
    this.resourceManager = new GlassResourceManager();
    byte[] arrayOfByte = getConfigBytes(getPath(new String[] { "deep_guard.ascii_config" }));
    if (arrayOfByte == null)
    {
      logger.e("The recognizer controller could not be created.", new Object[0]);
      return;
    }
    int i = this.resourceManager.initFromProto(arrayOfByte, getSearchPath());
    if (i != 0)
    {
      logger.e("resourceManager.initFromProto error: " + i + " for " + "deep_guard.ascii_config", new Object[0]);
      return;
    }
    int j = localGlassGuardRecognizer.initFromProto(arrayOfByte, this.resourceManager);
    if (j != 0)
    {
      logger.e("recognizer.initFromProto error: " + j + " for " + "deep_guard.ascii_config", new Object[0]);
      return;
    }
    this.recognizer = localGlassGuardRecognizer;
    this.recognizer.addCallback(createRecognizerCallback());
  }

  public void activate()
  {
    try
    {
      if (this.recognizerThread != null)
        throw new RuntimeException("Starting recognition that is already running.");
    }
    finally
    {
    }
    this.audioLengthMillis = 0L;
    this.hotwordAlignmentOffsetMillis = 0L;
    final RecognizerSessionParamsProto.RecognizerSessionParams localRecognizerSessionParams = new RecognizerSessionParamsProto.RecognizerSessionParams();
    localRecognizerSessionParams.setEnablePartialResults(true);
    localRecognizerSessionParams.setSampleRate(16000.0F);
    this.audioBuffer = new BytePipe(PIPE_SIZE_BYTES);
    this.recognizer.setAudioReader(this.audioBuffer);
    logger.d("Creating recognition thread", new Object[0]);
    this.recognizerThread = new Thread("RecognizerThread")
    {
      public void run()
      {
        NativeRecognizer.NativeRecognitionResult localNativeRecognitionResult = EmbeddedGuardRecognizer.this.recognizer.run(localRecognizerSessionParams);
        if (localNativeRecognitionResult.getStatus() != 0)
          EmbeddedGuardRecognizer.logger.d("GlassGuardRecognizer exited with status: " + localNativeRecognitionResult.getStatus(), new Object[0]);
        EmbeddedGuardRecognizer.logger.d("run() finished", new Object[0]);
      }
    };
    this.recognizerThread.start();
  }

  // ERROR //
  public void deactivate()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 170	com/google/glass/voice/embedded/EmbeddedGuardRecognizer:recognizerThread	Ljava/lang/Thread;
    //   6: astore_2
    //   7: aload_2
    //   8: ifnull +134 -> 142
    //   11: aload_0
    //   12: getfield 198	com/google/glass/voice/embedded/EmbeddedGuardRecognizer:audioBuffer	Lcom/google/glass/util/BytePipe;
    //   15: invokevirtual 222	com/google/glass/util/BytePipe:close	()V
    //   18: getstatic 42	com/google/glass/voice/embedded/EmbeddedGuardRecognizer:logger	Lcom/google/glass/logging/FormattingLogger;
    //   21: new 94	java/lang/StringBuilder
    //   24: dup
    //   25: invokespecial 95	java/lang/StringBuilder:<init>	()V
    //   28: ldc 224
    //   30: invokevirtual 101	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   33: invokestatic 228	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   36: invokevirtual 231	java/lang/Thread:getName	()Ljava/lang/String;
    //   39: invokevirtual 101	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   42: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   45: iconst_0
    //   46: anewarray 4	java/lang/Object
    //   49: invokeinterface 111 3 0
    //   54: aload_0
    //   55: getfield 73	com/google/glass/voice/embedded/EmbeddedGuardRecognizer:recognizer	Lcom/google/speech/recognizer/Recognizer;
    //   58: invokeinterface 235 1 0
    //   63: istore 4
    //   65: iload 4
    //   67: ifeq +35 -> 102
    //   70: getstatic 42	com/google/glass/voice/embedded/EmbeddedGuardRecognizer:logger	Lcom/google/glass/logging/FormattingLogger;
    //   73: new 94	java/lang/StringBuilder
    //   76: dup
    //   77: invokespecial 95	java/lang/StringBuilder:<init>	()V
    //   80: ldc 237
    //   82: invokevirtual 101	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   85: iload 4
    //   87: invokevirtual 152	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   90: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   93: iconst_0
    //   94: anewarray 4	java/lang/Object
    //   97: invokeinterface 122 3 0
    //   102: getstatic 42	com/google/glass/voice/embedded/EmbeddedGuardRecognizer:logger	Lcom/google/glass/logging/FormattingLogger;
    //   105: ldc 239
    //   107: iconst_0
    //   108: anewarray 4	java/lang/Object
    //   111: invokeinterface 111 3 0
    //   116: aload_0
    //   117: getfield 170	com/google/glass/voice/embedded/EmbeddedGuardRecognizer:recognizerThread	Ljava/lang/Thread;
    //   120: invokevirtual 242	java/lang/Thread:join	()V
    //   123: getstatic 42	com/google/glass/voice/embedded/EmbeddedGuardRecognizer:logger	Lcom/google/glass/logging/FormattingLogger;
    //   126: ldc 244
    //   128: iconst_0
    //   129: anewarray 4	java/lang/Object
    //   132: invokeinterface 111 3 0
    //   137: aload_0
    //   138: aconst_null
    //   139: putfield 170	com/google/glass/voice/embedded/EmbeddedGuardRecognizer:recognizerThread	Ljava/lang/Thread;
    //   142: aload_0
    //   143: monitorexit
    //   144: return
    //   145: astore_3
    //   146: getstatic 42	com/google/glass/voice/embedded/EmbeddedGuardRecognizer:logger	Lcom/google/glass/logging/FormattingLogger;
    //   149: ldc 246
    //   151: iconst_0
    //   152: anewarray 4	java/lang/Object
    //   155: invokeinterface 122 3 0
    //   160: goto -142 -> 18
    //   163: astore_1
    //   164: aload_0
    //   165: monitorexit
    //   166: aload_1
    //   167: athrow
    //   168: astore 5
    //   170: getstatic 42	com/google/glass/voice/embedded/EmbeddedGuardRecognizer:logger	Lcom/google/glass/logging/FormattingLogger;
    //   173: ldc 248
    //   175: iconst_0
    //   176: anewarray 4	java/lang/Object
    //   179: invokeinterface 122 3 0
    //   184: goto -47 -> 137
    //
    // Exception table:
    //   from	to	target	type
    //   11	18	145	java/io/IOException
    //   2	7	163	finally
    //   11	18	163	finally
    //   18	65	163	finally
    //   70	102	163	finally
    //   102	137	163	finally
    //   137	142	163	finally
    //   146	160	163	finally
    //   170	184	163	finally
    //   102	137	168	java/lang/InterruptedException
  }

  public void destroy()
  {
  }

  public List<AlignmentInfo> getAlignmentInfos(RecognizerProtos.PartialResult paramPartialResult, String paramString)
  {
    long l1 = (paramPartialResult.getStartTimeUsec() + paramPartialResult.getHotwordStartTimeUsec()) / 1000L;
    long l2 = this.audioLengthMillis;
    AlignmentInfo localAlignmentInfo = new AlignmentInfo(l1 - this.hotwordAlignmentOffsetMillis, l2 - this.hotwordAlignmentOffsetMillis, paramString, paramPartialResult.getHotwordConfidence());
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(localAlignmentInfo);
    return localArrayList;
  }

  public VoiceCommand stringToCommand(String paramString)
  {
    return VoiceCommand.OK_GLASS;
  }

  public HotwordResult writeAudio(ByteBuffer paramByteBuffer, long paramLong)
  {
    if (paramLong != 16000L)
      try
      {
        throw new UnsupportedOperationException("Must have sample rate of 16000");
      }
      finally
      {
      }
    this.audioLengthMillis += AudioByteUtils.getMillis(paramByteBuffer.remaining());
    try
    {
      this.audioBuffer.write(paramByteBuffer.asReadOnlyBuffer());
      RecognizerProtos.PartialResult localPartialResult = this.lastVoiceCommand;
      HotwordResult localHotwordResult = null;
      if (localPartialResult != null)
      {
        String str = this.lastVoiceCommand.getPart(0).getText();
        VoiceCommand localVoiceCommand = stringToCommand(str);
        List localList = getAlignmentInfos(this.lastVoiceCommand, str);
        float f = this.lastVoiceCommand.getHotwordConfidence();
        this.lastVoiceCommand = null;
        localHotwordResult = null;
        if (localVoiceCommand != null)
          localHotwordResult = new HotwordResult(localVoiceCommand, f, localList);
      }
      return localHotwordResult;
    }
    catch (IOException localIOException)
    {
      while (true)
        logger.e("Error piping audio.", new Object[] { localIOException });
    }
  }

  public static class GlassGuardRecognizer extends AbstractRecognizer
  {
    static
    {
      Greco3Recognizer.maybeLoadSharedLibrary();
    }
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.embedded.EmbeddedGuardRecognizer
 * JD-Core Version:    0.6.2
 */