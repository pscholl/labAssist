package com.google.glass.voice;

import android.content.Context;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Function;
import com.google.common.base.Objects;
import com.google.common.collect.Iterables;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.Executor;

public class CommandRecognizerLoader
{
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final Executor asyncExecutor;
  private final Context context;
  private final Map<Integer, HotwordRecognizer> loadedRecognizers = Maps.newConcurrentMap();
  private final RecognizerFactory recognizerFactory;

  @VisibleForTesting
  final Set<HotwordRecognizer> recognizersToDestroy = Collections.synchronizedSet(Sets.newHashSet());

  public CommandRecognizerLoader(Context paramContext, RecognizerFactory paramRecognizerFactory, Executor paramExecutor)
  {
    this.context = paramContext;
    this.recognizerFactory = paramRecognizerFactory;
    this.asyncExecutor = paramExecutor;
  }

  private void destroyRecognizers()
  {
    Iterator localIterator = Lists.newArrayList(this.recognizersToDestroy).iterator();
    while (localIterator.hasNext())
    {
      HotwordRecognizer localHotwordRecognizer = (HotwordRecognizer)localIterator.next();
      localHotwordRecognizer.destroy();
      this.recognizersToDestroy.remove(localHotwordRecognizer);
    }
  }

  static int hash(VoiceConfig paramVoiceConfig)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramVoiceConfig.getSensitivity();
    arrayOfObject[1] = Integer.valueOf(Arrays.hashCode(paramVoiceConfig.getCustomPhrases()));
    return Objects.hashCode(arrayOfObject);
  }

  private void unloadHashes(Iterable<Integer> paramIterable)
  {
    Iterator localIterator = paramIterable.iterator();
    while (localIterator.hasNext())
    {
      Integer localInteger = (Integer)localIterator.next();
      HotwordRecognizer localHotwordRecognizer = (HotwordRecognizer)this.loadedRecognizers.remove(localInteger);
      if (localHotwordRecognizer != null)
        this.recognizersToDestroy.add(localHotwordRecognizer);
      else
        logger.w("No recognizer to unload for %s", new Object[] { localInteger });
    }
  }

  public void dumpState(PrintWriter paramPrintWriter)
  {
    Iterator localIterator = this.loadedRecognizers.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      paramPrintWriter.println("  " + localEntry.getKey() + ": " + localEntry.getValue());
    }
    paramPrintWriter.println(" Recognizers to destroy: " + this.recognizersToDestroy.size());
  }

  protected void finalize()
    throws Throwable
  {
    Iterator localIterator = this.loadedRecognizers.keySet().iterator();
    while (localIterator.hasNext())
    {
      int i = ((Integer)localIterator.next()).intValue();
      FormattingLogger localFormattingLogger = logger;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(i);
      localFormattingLogger.e("Command recognizer resources leaked for hash %s!", arrayOfObject);
    }
    super.finalize();
  }

  public HotwordRecognizer getRecognizer(VoiceConfig paramVoiceConfig)
  {
    int i = hash(paramVoiceConfig);
    if (!this.loadedRecognizers.containsKey(Integer.valueOf(i)))
      load(paramVoiceConfig);
    return (HotwordRecognizer)this.loadedRecognizers.get(Integer.valueOf(i));
  }

  @VisibleForTesting
  void load(VoiceConfig paramVoiceConfig)
  {
    try
    {
      int i = hash(paramVoiceConfig);
      if ((this.loadedRecognizers.containsKey(Integer.valueOf(i))) && (!this.recognizersToDestroy.contains(this.loadedRecognizers.get(Integer.valueOf(i)))))
        logger.i("Have already loaded %s", new Object[] { paramVoiceConfig });
      while (true)
      {
        return;
        HotwordRecognizer localHotwordRecognizer1 = this.recognizerFactory.createRecognizer(this.context, paramVoiceConfig);
        logger.d("Loaded recognizer for voiceConfig %s", new Object[] { paramVoiceConfig });
        HotwordRecognizer localHotwordRecognizer2 = (HotwordRecognizer)this.loadedRecognizers.put(Integer.valueOf(i), localHotwordRecognizer1);
        if (localHotwordRecognizer2 != null)
        {
          FormattingLogger localFormattingLogger = logger;
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = Integer.valueOf(i);
          localFormattingLogger.e("Already have recognizer for hash %s, slating for destruction.", arrayOfObject);
          this.recognizersToDestroy.add(localHotwordRecognizer2);
        }
      }
    }
    finally
    {
    }
  }

  public void load(Collection<? extends VoiceConfig> paramCollection)
  {
    try
    {
      Iterator localIterator = paramCollection.iterator();
      while (localIterator.hasNext())
        load((VoiceConfig)localIterator.next());
    }
    finally
    {
    }
  }

  public void loadAsync(Collection<? extends VoiceConfig> paramCollection)
  {
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
    {
      final VoiceConfig localVoiceConfig = (VoiceConfig)localIterator.next();
      this.asyncExecutor.execute(new Runnable()
      {
        public void run()
        {
          CommandRecognizerLoader.this.load(localVoiceConfig);
        }
      });
    }
  }

  public void unload(Collection<? extends VoiceConfig> paramCollection)
  {
    unloadHashes(Iterables.transform(paramCollection, new Function()
    {
      public Integer apply(VoiceConfig paramAnonymousVoiceConfig)
      {
        return Integer.valueOf(CommandRecognizerLoader.hash(paramAnonymousVoiceConfig));
      }
    }));
  }

  public void unloadAll()
  {
    unloadHashes(Sets.newHashSet(this.loadedRecognizers.keySet()));
    destroyRecognizers();
  }

  public void unloadReplacedRecognizers()
  {
    if (this.recognizersToDestroy.isEmpty())
      return;
    this.asyncExecutor.execute(new Runnable()
    {
      public void run()
      {
        CommandRecognizerLoader.this.destroyRecognizers();
      }
    });
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.CommandRecognizerLoader
 * JD-Core Version:    0.6.2
 */