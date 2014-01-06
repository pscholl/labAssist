package com.google.glass.voice;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.common.collect.Lists;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.util.SafeBroadcastReceiver;
import java.util.Iterator;
import java.util.List;

public abstract class PackagesChangedReceiver
{
  private static final List<String> PACKAGE_CHANGES_ACTIONS = Lists.newArrayList(new String[] { "android.intent.action.PACKAGE_ADDED", "android.intent.action.PACKAGE_CHANGED", "android.intent.action.PACKAGE_REMOVED" });
  private final BroadcastReceiver receiver = new BroadcastReceiver(createBroadcastReceiverIntentFilter(), null);

  private static IntentFilter createBroadcastReceiverIntentFilter()
  {
    IntentFilter localIntentFilter = new IntentFilter();
    Iterator localIterator = PACKAGE_CHANGES_ACTIONS.iterator();
    while (localIterator.hasNext())
      localIntentFilter.addAction((String)localIterator.next());
    localIntentFilter.addDataScheme("package");
    return localIntentFilter;
  }

  public abstract FormattingLogger getLogger();

  public abstract void onPackagesChanged();

  public final void registerSelf(Context paramContext)
  {
    this.receiver.register(paramContext);
  }

  public String toString()
  {
    return getLogger().getTag() + " registered: " + this.receiver.isRegistered();
  }

  private class BroadcastReceiver extends SafeBroadcastReceiver
  {
    private BroadcastReceiver(IntentFilter arg2)
    {
      super(localIntentFilter);
    }

    protected FormattingLogger getLogger()
    {
      return PackagesChangedReceiver.this.getLogger();
    }

    public void onReceiveInternal(Context paramContext, Intent paramIntent)
    {
      PackagesChangedReceiver.this.onPackagesChanged();
    }
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.PackagesChangedReceiver
 * JD-Core Version:    0.6.2
 */