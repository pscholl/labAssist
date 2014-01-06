package com.google.glass.voice.menu;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.net.Uri.Builder;
import com.google.common.base.Function;
import com.google.common.collect.Lists;
import com.google.common.primitives.Ints;
import com.google.glass.app.GlassActivity;
import com.google.glass.entity.EntityHelper;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.share.ShareActivityHelper;
import com.google.glass.timeline.TimelineItemId;
import com.google.glass.timeline.TimelineProvider;
import com.google.glass.voice.EntityUtils;
import com.google.glass.voice.VoiceConfig;
import com.google.googlex.glass.common.proto.TimelineNano.Entity;
import com.google.googlex.glass.common.proto.TimelineNano.TimelineItem;
import com.google.protobuf.nano.MessageNano;
import java.util.Arrays;
import java.util.List;

public abstract class EntityMenuItem extends VoiceMenuItem
{
  static final String TAG = EntityMenuItem.class.getSimpleName();
  static final FormattingLogger logger = FormattingLoggers.getLogger(TAG);
  public final TimelineNano.Entity entity;

  public EntityMenuItem(TimelineNano.Entity paramEntity)
  {
    this.entity = paramEntity;
  }

  public EntityMenuItem(TimelineNano.Entity paramEntity, Requirement[] paramArrayOfRequirement)
  {
    super(Arrays.asList(paramArrayOfRequirement));
    this.entity = paramEntity;
  }

  public static List<EntityMenuItem> toSendMenuItems(TimelineNano.TimelineItem paramTimelineItem, List<TimelineNano.Entity> paramList)
  {
    return Lists.transform(paramList, new Function()
    {
      public EntityMenuItem apply(TimelineNano.Entity paramAnonymousEntity)
      {
        return new EntityMenuItem.ShareTargetMenuItem(paramAnonymousEntity, this.val$sendTarget, false);
      }
    });
  }

  public static List<EntityMenuItem> toShareMenuItems(TimelineNano.TimelineItem paramTimelineItem, List<TimelineNano.Entity> paramList)
  {
    return Lists.transform(paramList, new Function()
    {
      public EntityMenuItem apply(TimelineNano.Entity paramAnonymousEntity)
      {
        return new EntityMenuItem.ShareTargetMenuItem(paramAnonymousEntity, this.val$shareTarget, true);
      }
    });
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    EntityMenuItem localEntityMenuItem;
    do
    {
      do
      {
        return true;
        if (paramObject == null)
          return false;
        if (getClass() != paramObject.getClass())
          return false;
        localEntityMenuItem = (EntityMenuItem)paramObject;
        if (this.entity != null)
          break;
      }
      while (localEntityMenuItem.entity == null);
      return false;
    }
    while (this.entity.equals(localEntityMenuItem.entity));
    return false;
  }

  public TimelineNano.Entity getEntity()
  {
    return this.entity;
  }

  public String getHotwordLiteral(Context paramContext)
  {
    return EntityHelper.getDisplayName(this.entity);
  }

  public String getLabel(Context paramContext)
  {
    return EntityHelper.getDisplayName(this.entity);
  }

  public int hashCode()
  {
    if (this.entity == null);
    for (int i = 0; ; i = this.entity.hashCode())
      return i + 31;
  }

  public String toString()
  {
    return "EntityMenuItem [entity=" + this.entity.getId() + "]";
  }

  static class ShareTargetMenuItem extends EntityMenuItem
  {
    private static final long POST_ANIMATION_DELAY_MS = 1000L;
    private final boolean qualifyName;
    private final TimelineNano.TimelineItem timelineItem;

    ShareTargetMenuItem(TimelineNano.Entity paramEntity, TimelineNano.TimelineItem paramTimelineItem, boolean paramBoolean)
    {
      super();
      this.timelineItem = paramTimelineItem;
      this.qualifyName = paramBoolean;
    }

    public String getLabel(Context paramContext)
    {
      if (this.qualifyName)
        return EntityUtils.getQualifiedNameImmediately(paramContext, getEntity());
      return EntityHelper.getDisplayName(getEntity());
    }

    public VoiceConfig getNextVoiceConfig()
    {
      return VoiceConfig.OFF;
    }

    public void onTrigger(final VoiceMenuEnvironment paramVoiceMenuEnvironment, boolean paramBoolean)
    {
      paramVoiceMenuEnvironment.selectSecondaryMenuItem(this, 1000L, new Runnable()
      {
        public void run()
        {
          TimelineNano.Entity localEntity = EntityMenuItem.ShareTargetMenuItem.this.getEntity();
          Uri localUri = TimelineProvider.TIMELINE_URI.buildUpon().appendPath(EntityMenuItem.ShareTargetMenuItem.this.timelineItem.getId()).build();
          Intent localIntent = ShareActivityHelper.getBaseShareActivityIntent(paramVoiceMenuEnvironment.getContext(), localUri);
          localIntent.putExtra("item_id", new TimelineItemId(EntityMenuItem.ShareTargetMenuItem.this.timelineItem));
          localIntent.putExtra("update_timeline_share", true);
          localIntent.putExtra("voice_annotation", Ints.contains(EntityMenuItem.ShareTargetMenuItem.this.timelineItem.sharingFeature, 0));
          localIntent.putExtra("chosen_share_target", MessageNano.toByteArray(localEntity));
          localIntent.putExtra("animateToTimelineItem", true);
          paramVoiceMenuEnvironment.getContext().startActivityForResult(localIntent, 1);
        }
      });
    }
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.menu.EntityMenuItem
 * JD-Core Version:    0.6.2
 */