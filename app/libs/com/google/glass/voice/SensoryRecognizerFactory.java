package com.google.glass.voice;

import android.content.Context;
import android.text.TextUtils;
import com.google.common.collect.Iterables;
import com.google.common.collect.Lists;
import com.google.common.collect.Sets;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class SensoryRecognizerFactory extends RecognizerFactory
{
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();

  protected static boolean containsNonEmptyString(String[] paramArrayOfString)
  {
    int i = paramArrayOfString.length;
    for (int j = 0; j < i; j++)
      if (!TextUtils.isEmpty(paramArrayOfString[j]))
        return true;
    return false;
  }

  static HotwordRecognizer createBestRecognizer(Context paramContext, VoiceConfig.LetterToSoundModel paramLetterToSoundModel, VoiceConfig.Sensitivity paramSensitivity, String[] paramArrayOfString)
  {
    HashSet localHashSet1 = Sets.newHashSet(paramArrayOfString);
    ArrayList localArrayList1 = Lists.newArrayList();
    HashSet localHashSet2 = Sets.newHashSet();
    Iterator localIterator1 = Sets.newHashSet(localHashSet1).iterator();
    while (localIterator1.hasNext())
    {
      String str = (String)localIterator1.next();
      if (!StaticRecognizerFiles.isFilesetAvailable(str))
      {
        localHashSet2.add(str);
        localHashSet1.remove(str);
      }
    }
    if (!localHashSet2.isEmpty())
    {
      HotwordRecognizer localHotwordRecognizer = createDynamicRecognizer(paramContext, paramLetterToSoundModel, (String[])localHashSet2.toArray(new String[localHashSet2.size()]));
      if (localHashSet1.isEmpty())
        return localHotwordRecognizer;
      localArrayList1.add(localHotwordRecognizer);
    }
    ArrayList localArrayList2 = Lists.newArrayList();
    Iterator localIterator2 = StaticRecognizerFiles.filesetsInCardinalityOrder.iterator();
    while (localIterator2.hasNext())
    {
      StaticRecognizerFiles localStaticRecognizerFiles3 = (StaticRecognizerFiles)localIterator2.next();
      if ((!localStaticRecognizerFiles3.rtaCompatible) && (localHashSet1.equals(localStaticRecognizerFiles3.recognizedLiterals)))
      {
        localArrayList2.add(localStaticRecognizerFiles3);
        localHashSet1.removeAll(localStaticRecognizerFiles3.recognizedLiterals);
      }
    }
    Iterator localIterator3 = StaticRecognizerFiles.filesetsInCardinalityOrder.iterator();
    while (localIterator3.hasNext())
    {
      StaticRecognizerFiles localStaticRecognizerFiles2 = (StaticRecognizerFiles)localIterator3.next();
      if (((!localStaticRecognizerFiles2.combined) || (!Iterables.any(localArrayList2, StaticRecognizerFiles.IS_PRECOMBINED))) && (localStaticRecognizerFiles2.rtaCompatible) && (localHashSet1.containsAll(localStaticRecognizerFiles2.recognizedLiterals)))
      {
        localArrayList2.add(localStaticRecognizerFiles2);
        localHashSet1.removeAll(localStaticRecognizerFiles2.recognizedLiterals);
      }
    }
    Iterator localIterator4 = StaticRecognizerFiles.filesetsInCardinalityOrder.iterator();
    while (localIterator4.hasNext())
    {
      StaticRecognizerFiles localStaticRecognizerFiles1 = (StaticRecognizerFiles)localIterator4.next();
      if ((!localStaticRecognizerFiles1.rtaCompatible) && (localHashSet1.containsAll(localStaticRecognizerFiles1.recognizedLiterals)))
      {
        localArrayList2.add(localStaticRecognizerFiles1);
        localHashSet1.removeAll(localStaticRecognizerFiles1.recognizedLiterals);
      }
    }
    localArrayList1.add(mixFilesets(paramContext, StaticRecognizerFiles.optimizeSensitivity(localArrayList2, paramSensitivity)));
    if (localArrayList1.size() == 1)
      return (HotwordRecognizer)localArrayList1.get(0);
    return new HybridHotwordRecognizer(localArrayList1);
  }

  protected static HotwordRecognizer createDynamicRecognizer(Context paramContext, VoiceConfig.LetterToSoundModel paramLetterToSoundModel, String[] paramArrayOfString)
  {
    if (!containsNonEmptyString(paramArrayOfString))
    {
      logger.w("All custom phrases in dynamic recognizer config empty, returning no op recognizer.", new Object[0]);
      return NO_OP_RECOGNIZER;
    }
    try
    {
      DynamicSensoryRecognizer localDynamicSensoryRecognizer = new DynamicSensoryRecognizer(paramContext, "nn_en_us_mfcc_16k_15_big_250_v4.7.raw", getLtsFile(paramLetterToSoundModel), paramArrayOfString);
      return localDynamicSensoryRecognizer;
    }
    catch (DynamicSensoryRecognizer.UnrecognizablePhrasesException localUnrecognizablePhrasesException)
    {
      FormattingLogger localFormattingLogger = logger;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Arrays.toString(paramArrayOfString);
      localFormattingLogger.e(localUnrecognizablePhrasesException, "Could not compute a dynamic recognizer for phrase set %s", arrayOfObject);
    }
    return NO_OP_RECOGNIZER;
  }

  private static String getLtsFile(VoiceConfig.LetterToSoundModel paramLetterToSoundModel)
  {
    switch (1.$SwitchMap$com$google$glass$voice$VoiceConfig$LetterToSoundModel[paramLetterToSoundModel.ordinal()])
    {
    default:
      logger.w("Unrecognized LTS model constant: %s", new Object[] { paramLetterToSoundModel });
      return "lts_en_us_9.5.2b.raw";
    case 1:
      return "lts_en_us_cid_9.3.1.1.raw";
    case 2:
    }
    return "lts_en_us_9.5.2b.raw";
  }

  private static HotwordRecognizer mixFilesets(Context paramContext, List<StaticRecognizerFiles> paramList)
  {
    ArrayList localArrayList1 = Lists.newArrayList();
    StaticRecognizerFiles localStaticRecognizerFiles = (StaticRecognizerFiles)Iterables.find(paramList, StaticRecognizerFiles.IS_PRECOMBINED, null);
    if (localStaticRecognizerFiles != null)
    {
      localArrayList1.add(localStaticRecognizerFiles);
      paramList.remove(localStaticRecognizerFiles);
    }
    ArrayList localArrayList2 = Lists.newArrayList(Iterables.filter(paramList, StaticRecognizerFiles.IS_RTA_COMPATIBLE));
    localArrayList1.addAll(localArrayList2);
    paramList.removeAll(localArrayList2);
    ArrayList localArrayList3 = Lists.newArrayList();
    if (!localArrayList1.isEmpty())
      localArrayList3.add(StaticSensoryRecognizer.newStaticSensoryRecognizer(paramContext, localArrayList1));
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
      localArrayList3.add(StaticSensoryRecognizer.newStaticSensoryRecognizer(paramContext, (StaticRecognizerFiles)localIterator.next()));
    if (localArrayList3.size() == 1)
      return (HotwordRecognizer)localArrayList3.get(0);
    return new HybridHotwordRecognizer(localArrayList3);
  }

  protected HotwordRecognizer createCustomRecognizer(Context paramContext, VoiceConfig paramVoiceConfig)
  {
    logger.i("Creating custom recognizer: %s", new Object[] { paramVoiceConfig });
    return createBestRecognizer(paramContext, paramVoiceConfig.getLetterToSoundModel(), paramVoiceConfig.getSensitivity(), paramVoiceConfig.getCustomPhrases());
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.SensoryRecognizerFactory
 * JD-Core Version:    0.6.2
 */