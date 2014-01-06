package com.google.glass.voice;

import android.content.Context;
import android.text.TextUtils;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.glass.build.BuildHelper;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.logging.Log;
import com.google.glass.predicates.Assert;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class DynamicSensoryRecognizer extends Sensory
{
  private static final String GRAMMAR_DISJUNCTION_OPERATOR = "|";
  public static final int MAX_GRAMMAR_PHRASES = 20;
  private static final int PARAM_A_DYNAMIC_PHRASESPOT = 25;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private static final Map<String, String> tagToPhrase = Maps.newHashMap();
  protected final String grammar;
  private final String ltsFile;

  public DynamicSensoryRecognizer(Context paramContext, String paramString1, String paramString2, String[] paramArrayOfString)
    throws DynamicSensoryRecognizer.UnrecognizablePhrasesException
  {
    super(paramContext);
    this.ltsFile = paramString2;
    if (paramArrayOfString.length > 20)
      throw new UnrecognizablePhrasesException("Too many phrases (" + paramArrayOfString.length + ", max " + 20 + ")");
    long l = nativeInitPhrasespotDynamic();
    String[] arrayOfString1 = nativeNormalizeText(l, getPath(paramContext, paramString2), paramArrayOfString);
    for (int i = 0; i < arrayOfString1.length; i++)
      tagToPhrase.put(String.valueOf(paramArrayOfString[i].hashCode()), paramArrayOfString[i]);
    LinkedList localLinkedList1 = Lists.newLinkedList();
    LinkedList localLinkedList2 = Lists.newLinkedList();
    int j = 0;
    if (j < arrayOfString1.length)
    {
      String str1 = arrayOfString1[j];
      String str2 = paramArrayOfString[j];
      if (TextUtils.isEmpty(str1.trim()));
      while (true)
      {
        j++;
        break;
        localLinkedList1.add(str1);
        String str3 = String.valueOf(str1.hashCode());
        localLinkedList2.add(str3);
        tagToPhrase.put(str3, str2);
      }
    }
    String[] arrayOfString2 = (String[])localLinkedList1.toArray(new String[localLinkedList1.size()]);
    this.grammar = generateGrammar(arrayOfString2, (String[])localLinkedList2.toArray(new String[localLinkedList2.size()]));
    String[] arrayOfString3 = generateGrammarWords(arrayOfString2);
    if ((TextUtils.isEmpty(this.grammar)) || (arrayOfString3 == null) || (arrayOfString3.length == 0))
    {
      this.sensoryContext = 0L;
      throw new UnrecognizablePhrasesException("Error generating grammar, Sensory object not correctly initialized");
    }
    this.sensoryContext = nativeCompileGrammar(l, getPath(paramContext, paramString1), getPath(paramContext, paramString2), this.grammar, arrayOfString3);
  }

  static String generateGrammar(String[] paramArrayOfString1, String[] paramArrayOfString2)
    throws DynamicSensoryRecognizer.UnrecognizablePhrasesException
  {
    boolean bool = true;
    if ((paramArrayOfString1 == null) || (paramArrayOfString1.length == 0))
      throw new UnrecognizablePhrasesException("Null or empty array of phrases provided for grammar, returning null grammar");
    if (paramArrayOfString1.length > 20)
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(paramArrayOfString1.length);
      arrayOfObject[bool] = Integer.valueOf(20);
      throw new UnrecognizablePhrasesException(String.format("Too many phrases (%d, max %d), returning null grammar", arrayOfObject));
    }
    StringBuilder localStringBuilder;
    if ((paramArrayOfString2 == null) || (paramArrayOfString1.length == paramArrayOfString2.length))
    {
      Assert.assertTrue(bool);
      localStringBuilder = new StringBuilder();
    }
    for (int i = 0; ; i++)
    {
      if (i >= paramArrayOfString1.length)
        break label229;
      localStringBuilder.append("w").append(i + 1).append(" = ");
      String[] arrayOfString = paramArrayOfString1[i].split(" ");
      int m = 0;
      while (true)
        if (m < arrayOfString.length)
        {
          localStringBuilder.append(arrayOfString[m]);
          if ((paramArrayOfString2 != null) && (m == -1 + arrayOfString.length))
          {
            localStringBuilder.append("%");
            localStringBuilder.append(arrayOfString[m]);
            localStringBuilder.append("_tag_");
            localStringBuilder.append(paramArrayOfString2[i]);
          }
          localStringBuilder.append(" ");
          m++;
          continue;
          bool = false;
          break;
        }
      localStringBuilder.append("; ");
    }
    label229: localStringBuilder.append("g = ");
    int j = 1;
    if (j < 1 + paramArrayOfString1.length)
    {
      localStringBuilder.append("$w").append(j);
      if (j == paramArrayOfString1.length)
        localStringBuilder.append("; ");
      while (true)
      {
        j++;
        break;
        localStringBuilder.append(" ").append("|").append(" ");
      }
    }
    for (int k = 1; k < 1 + paramArrayOfString1.length; k++)
    {
      localStringBuilder.append("paramA: $w").append(k).append(" ").append(25).append("; ");
      localStringBuilder.append("paramB: $w").append(k).append(" -").append(k).append("; ");
    }
    logger.d("Generated dynamic grammar", new Object[0]);
    String str = localStringBuilder.toString().replace("%", "%%");
    Log.logPii(3, "DynamicSensory", "Dynamic grammar: " + str);
    return localStringBuilder.toString();
  }

  private String[] generateGrammarWords(String[] paramArrayOfString)
  {
    String[] arrayOfString1;
    if ((paramArrayOfString == null) || (paramArrayOfString.length == 0))
    {
      logger.e("Null or empty array of phrases provided for grammar words, returning null words", new Object[0]);
      arrayOfString1 = null;
    }
    while (true)
    {
      return arrayOfString1;
      if (paramArrayOfString.length > 20)
      {
        FormattingLogger localFormattingLogger = logger;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(paramArrayOfString.length);
        localFormattingLogger.e("Too many phrases (%s, max 20), returning null grammar", arrayOfObject);
        return null;
      }
      ArrayList localArrayList = new ArrayList();
      int i = paramArrayOfString.length;
      for (int j = 0; j < i; j++)
      {
        String[] arrayOfString2 = paramArrayOfString[j].split(" ");
        int m = arrayOfString2.length;
        for (int n = 0; n < m; n++)
          localArrayList.add(arrayOfString2[n]);
      }
      arrayOfString1 = new String[localArrayList.size()];
      for (int k = 0; k < localArrayList.size(); k++)
        arrayOfString1[k] = ((String)localArrayList.get(k));
    }
  }

  @VisibleForTesting
  int getGrammarRuleCountForTests()
  {
    return TextUtils.split(this.grammar, "\\|").length;
  }

  @VisibleForTesting
  String getGrammarRuleForTests()
  {
    return this.grammar;
  }

  @VisibleForTesting
  public String getLtsFileBeingUsedForTests()
  {
    return this.ltsFile;
  }

  public VoiceCommand stringToCommand(String paramString)
  {
    return new VoiceCommand((String)tagToPhrase.get(VoiceCommand.getSemanticTag(paramString)));
  }

  public String toString()
  {
    if (BuildHelper.isUser());
    for (String str = "(redacted)"; ; str = this.grammar)
      return "DynamicSensoryRecognizer [grammar=" + str + "]";
  }

  public static class UnrecognizablePhrasesException extends Exception
  {
    public UnrecognizablePhrasesException(String paramString)
    {
      super();
    }
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.DynamicSensoryRecognizer
 * JD-Core Version:    0.6.2
 */