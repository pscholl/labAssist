package com.google.glass.voice.entity;

import android.content.Context;
import android.content.Intent;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.collect.Maps;
import com.google.glass.entity.EntityHelper;
import com.google.glass.entity.EntitySet;
import com.google.glass.input.GrammarLoader;
import com.google.glass.input.GrammarStore;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.util.SafeBroadcastReceiver;
import com.google.glass.voice.EntityUtils;
import com.google.glass.voice.VoiceConfig;
import com.google.glass.voice.VoiceConfig.LetterToSoundModel;
import com.google.googlex.glass.common.proto.TimelineNano.Entity;
import com.google.googlex.glass.common.proto.TimelineNano.TimelineItem;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

public class EntityGrammarCompiler extends GrammarLoader
{
  private static final FormattingLogger entityChangedReceiverLogger = FormattingLoggers.getLogger(logger, "entityChangedReceiver");
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final Executor backgroundExecutor = Executors.newSingleThreadExecutor();
  private final Context context;

  @VisibleForTesting
  final EntityChangedBroadcastReceiver entityChangedReceiver = new EntityChangedBroadcastReceiver(null);
  private final Map<EntitySet, Integer> entitySetHashCodes = Maps.newHashMap();
  private TimelineNano.TimelineItem timelineItem;

  public EntityGrammarCompiler(Context paramContext, GrammarStore paramGrammarStore)
  {
    super(paramGrammarStore);
    this.context = paramContext;
    for (EntitySet localEntitySet : EntitySet.values())
      this.entitySetHashCodes.put(localEntitySet, Integer.valueOf(-1));
  }

  private static final int computeSpeakableEntityHashCode(List<TimelineNano.Entity> paramList)
  {
    HashSet localHashSet = new HashSet();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      TimelineNano.Entity localEntity = (TimelineNano.Entity)localIterator.next();
      localHashSet.add(localEntity.getId() + EntityHelper.getDisplayName(localEntity));
    }
    return localHashSet.hashCode();
  }

  public static String getConfigName(EntitySet paramEntitySet)
  {
    return paramEntitySet.name();
  }

  private final int getSpeakableEntityHashCode(EntitySet paramEntitySet)
  {
    return computeSpeakableEntityHashCode(getEntities(paramEntitySet));
  }

  private void invalidateGrammars()
  {
    logger.d("Invalidating grammars", new Object[0]);
    EntitySet[] arrayOfEntitySet = EntitySet.values();
    int i = arrayOfEntitySet.length;
    int j = 0;
    if (j < i)
    {
      EntitySet localEntitySet = arrayOfEntitySet[j];
      List localList = getEntities(localEntitySet);
      this.entitySetHashCodes.put(localEntitySet, Integer.valueOf(computeSpeakableEntityHashCode(localList)));
      String str = getConfigName(localEntitySet);
      if (localList.isEmpty())
        getGrammarStore().unloadConfig(str);
      while (true)
      {
        j++;
        break;
        String[] arrayOfString = new String[localList.size()];
        Iterator localIterator = localList.iterator();
        for (int k = 0; localIterator.hasNext(); k++)
          arrayOfString[k] = EntityHelper.getDisplayName((TimelineNano.Entity)localIterator.next());
        VoiceConfig localVoiceConfig = new VoiceConfig(str, arrayOfString);
        if (EntityUtils.hasOnlyFocusEntities(localList))
          localVoiceConfig.setLetterToSoundModel(VoiceConfig.LetterToSoundModel.NAMES);
        getGrammarStore().reloadConfig(str, localVoiceConfig);
      }
    }
  }

  private final boolean isRequiredToRecompileGrammars()
  {
    for (EntitySet localEntitySet : EntitySet.values())
      if (getSpeakableEntityHashCode(localEntitySet) != ((Integer)this.entitySetHashCodes.get(localEntitySet)).intValue())
        return true;
    return false;
  }

  public List<TimelineNano.Entity> getEntities(EntitySet paramEntitySet)
  {
    return paramEntitySet.getEntities(this.timelineItem);
  }

  public VoiceConfig getVoiceConfig(EntitySet paramEntitySet)
  {
    VoiceConfig localVoiceConfig = getGrammarStore().getLoadedConfig(paramEntitySet.name());
    if (localVoiceConfig == null)
    {
      logger.w("No config loaded for entity set %s, returning OFF instead.", new Object[] { paramEntitySet });
      localVoiceConfig = VoiceConfig.OFF;
    }
    return localVoiceConfig;
  }

  public void registerForUpdates()
  {
    logger.d("Registering for entity updates", new Object[0]);
    this.entityChangedReceiver.registerAsync(this.backgroundExecutor, this.context);
    invalidateGrammars();
  }

  public EntityGrammarCompiler setTimelineItem(TimelineNano.TimelineItem paramTimelineItem)
  {
    this.timelineItem = paramTimelineItem;
    invalidateGrammars();
    return this;
  }

  public void unregisterForUpdates()
  {
    logger.d("Unregistering for entity updates", new Object[0]);
    this.entityChangedReceiver.unregisterAsync(this.backgroundExecutor, this.context);
  }

  private class EntityChangedBroadcastReceiver extends SafeBroadcastReceiver
  {
    private EntityChangedBroadcastReceiver()
    {
      super();
    }

    public FormattingLogger getLogger()
    {
      return EntityGrammarCompiler.entityChangedReceiverLogger;
    }

    public void onReceiveInternal(Context paramContext, Intent paramIntent)
    {
      if (EntityGrammarCompiler.this.isRequiredToRecompileGrammars())
      {
        EntityGrammarCompiler.this.invalidateGrammars();
        return;
      }
      getLogger().d("The display names have not changed, so not recompiling grammars", new Object[0]);
    }
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.entity.EntityGrammarCompiler
 * JD-Core Version:    0.6.2
 */