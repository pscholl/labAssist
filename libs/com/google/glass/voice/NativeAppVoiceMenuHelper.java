package com.google.glass.voice;

import android.content.Context;
import com.google.android.glass.app.VoiceTrigger;
import com.google.android.glass.app.VoiceTriggerManager;
import com.google.common.collect.Lists;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

public class NativeAppVoiceMenuHelper
{
  private static NativeAppVoiceMenuHelper instance;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private static final FormattingLogger packagesChangedReceiverLogger = FormattingLoggers.getLogger(logger, "packagesChangedReceiver");
  private final CachingVoiceTriggerProvider triggerProvider;

  private NativeAppVoiceMenuHelper(CachingVoiceTriggerProvider paramCachingVoiceTriggerProvider)
  {
    this.triggerProvider = paramCachingVoiceTriggerProvider;
  }

  public static NativeAppVoiceMenuHelper getInstance(Context paramContext)
  {
    try
    {
      if (instance == null)
      {
        Context localContext = paramContext.getApplicationContext();
        CachingVoiceTriggerProvider localCachingVoiceTriggerProvider = new CachingVoiceTriggerProvider(new VoiceTriggerManager(localContext));
        localCachingVoiceTriggerProvider.subscribeToPackageChanges(localContext);
        instance = new NativeAppVoiceMenuHelper(localCachingVoiceTriggerProvider);
      }
      NativeAppVoiceMenuHelper localNativeAppVoiceMenuHelper = instance;
      return localNativeAppVoiceMenuHelper;
    }
    finally
    {
    }
  }

  public void addTriggerCacheUpdateListener(TriggerCacheUpdateListener paramTriggerCacheUpdateListener)
  {
    this.triggerProvider.updateListeners.add(paramTriggerCacheUpdateListener);
  }

  public List<String> getNativeAppCommands(Context paramContext)
  {
    List localList = getTriggers();
    ArrayList localArrayList = Lists.newArrayList();
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext())
      localArrayList.add(((VoiceTrigger)localIterator.next()).getKeyword());
    return localArrayList;
  }

  public List<VoiceTrigger> getTriggers()
  {
    return this.triggerProvider.getVoiceTriggers();
  }

  public List<VoiceTrigger> getTriggers(String paramString)
  {
    ArrayList localArrayList = Lists.newArrayList();
    Iterator localIterator = getTriggers().iterator();
    while (localIterator.hasNext())
    {
      VoiceTrigger localVoiceTrigger = (VoiceTrigger)localIterator.next();
      if (localVoiceTrigger.getKeyword().equals(paramString))
        localArrayList.add(localVoiceTrigger);
    }
    return localArrayList;
  }

  public VoiceCommand newVoiceCommand(VoiceTrigger paramVoiceTrigger)
  {
    return new VoiceCommand(paramVoiceTrigger.getKeyword());
  }

  public void removeTriggerCacheUpdateListener(TriggerCacheUpdateListener paramTriggerCacheUpdateListener)
  {
    this.triggerProvider.updateListeners.remove(paramTriggerCacheUpdateListener);
  }

  static class CachingVoiceTriggerProvider
  {
    private List<VoiceTrigger> cachedTriggers = Lists.newArrayList();
    private final AtomicBoolean invalid = new AtomicBoolean(true);
    private final VoiceTriggerManager triggerManager;
    private final List<NativeAppVoiceMenuHelper.TriggerCacheUpdateListener> updateListeners = Lists.newArrayList();

    public CachingVoiceTriggerProvider(VoiceTriggerManager paramVoiceTriggerManager)
    {
      this.triggerManager = paramVoiceTriggerManager;
    }

    public List<VoiceTrigger> getVoiceTriggers()
    {
      try
      {
        while (this.invalid.compareAndSet(true, false))
        {
          NativeAppVoiceMenuHelper.logger.i("Reloading triggers", new Object[0]);
          this.cachedTriggers = this.triggerManager.load();
          this.invalid.set(false);
        }
      }
      finally
      {
      }
      ArrayList localArrayList = Lists.newArrayList(this.cachedTriggers);
      return localArrayList;
    }

    public void subscribeToPackageChanges(Context paramContext)
    {
      new PackagesChangedReceiver()
      {
        public FormattingLogger getLogger()
        {
          return NativeAppVoiceMenuHelper.packagesChangedReceiverLogger;
        }

        public void onPackagesChanged()
        {
          NativeAppVoiceMenuHelper.logger.i("Installed packages changed; invalidating trigger cache", new Object[0]);
          NativeAppVoiceMenuHelper.CachingVoiceTriggerProvider.this.invalid.set(true);
          Iterator localIterator = NativeAppVoiceMenuHelper.CachingVoiceTriggerProvider.this.updateListeners.iterator();
          while (localIterator.hasNext())
            ((NativeAppVoiceMenuHelper.TriggerCacheUpdateListener)localIterator.next()).onTriggerCacheUpdated();
        }
      }
      .registerSelf(paramContext);
    }
  }

  public static abstract interface TriggerCacheUpdateListener
  {
    public abstract void onTriggerCacheUpdated();
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.NativeAppVoiceMenuHelper
 * JD-Core Version:    0.6.2
 */