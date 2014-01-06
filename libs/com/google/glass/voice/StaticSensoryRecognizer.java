package com.google.glass.voice;

import android.content.Context;
import android.text.TextUtils;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.logging.Log;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class StaticSensoryRecognizer extends Sensory
{
  private static final String TAG = StaticSensoryRecognizer.class.getSimpleName();
  private static final FormattingLogger logger = FormattingLoggers.getLogger(TAG);

  @VisibleForTesting
  final List<StaticRecognizerFiles> filesets;

  private StaticSensoryRecognizer(Context paramContext, List<StaticRecognizerFiles> paramList)
  {
    super(paramContext);
    this.filesets = paramList;
    int i = paramList.size();
    String[] arrayOfString1 = new String[i];
    String[] arrayOfString2 = new String[i];
    for (int j = 0; j < i; j++)
    {
      StaticRecognizerFiles localStaticRecognizerFiles = (StaticRecognizerFiles)paramList.get(j);
      arrayOfString1[j] = getPath(paramContext, localStaticRecognizerFiles.recogFile);
      arrayOfString2[j] = getPath(paramContext, localStaticRecognizerFiles.searchFile);
    }
    this.sensoryContext = nativeInitPhrasespot(arrayOfString1, arrayOfString2);
  }

  public static Sensory newStaticSensoryRecognizer(Context paramContext, StaticRecognizerFiles paramStaticRecognizerFiles)
  {
    if (paramStaticRecognizerFiles.rtaCompatible)
      logger.w("Using RTA-compatible recognition files but hybrid recognition is unnecessary!", new Object[0]);
    return new StaticSensoryRecognizer(paramContext, Collections.singletonList(paramStaticRecognizerFiles));
  }

  public static Sensory newStaticSensoryRecognizer(Context paramContext, List<StaticRecognizerFiles> paramList)
  {
    if ((paramList == null) || (paramList.isEmpty()))
      throw new IllegalArgumentException("Must provide recog files.");
    int i = paramList.size();
    if (i == 1)
      return newStaticSensoryRecognizer(paramContext, (StaticRecognizerFiles)paramList.get(0));
    for (int j = 0; j < i; j++)
      if ((((StaticRecognizerFiles)paramList.get(j)).combined) && (j != 0))
        throw new IllegalArgumentException("Only the first recognizer fileset can be precombined.");
    return new StaticSensoryRecognizer(paramContext, paramList);
  }

  public final VoiceCommand stringToCommand(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      throw new IllegalArgumentException("Null or empty literal: " + paramString);
    String str = paramString.replace('_', ' ');
    Iterator localIterator = VoiceCommand.staticCommands.iterator();
    while (localIterator.hasNext())
    {
      VoiceCommand localVoiceCommand = (VoiceCommand)localIterator.next();
      if (str.equals(localVoiceCommand.getLiteral()))
        return localVoiceCommand;
    }
    logger.i("No static command for this literal, synthesizing", new Object[0]);
    Log.logPii(4, TAG, "Literal: " + str);
    return new VoiceCommand(str);
  }

  public String toString()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.filesets;
    return String.format("StaticSensoryRecognizer [filesets=%s]", arrayOfObject);
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.StaticSensoryRecognizer
 * JD-Core Version:    0.6.2
 */