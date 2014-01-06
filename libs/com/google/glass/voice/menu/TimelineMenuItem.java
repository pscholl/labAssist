package com.google.glass.voice.menu;

import com.google.glass.app.GlassError;
import com.google.glass.entity.EntitySet;
import com.google.glass.userevent.UserEventAction;
import com.google.glass.voice.VoiceCommand;
import com.google.glass.voice.VoiceConfig;
import com.google.glass.voiceclient.R.string;
import com.google.googlex.glass.common.proto.TimelineNano.TimelineItem;
import java.util.List;

public abstract class TimelineMenuItem extends StaticCommandMenuItem
{
  private TimelineNano.TimelineItem timelineItem;

  public TimelineMenuItem(VoiceCommand paramVoiceCommand, int paramInt, TimelineNano.TimelineItem paramTimelineItem, Requirement[] paramArrayOfRequirement)
  {
    super(paramVoiceCommand, paramInt, paramArrayOfRequirement);
    this.timelineItem = paramTimelineItem;
  }

  public static TimelineMenuItem newSendItem(final TimelineNano.TimelineItem paramTimelineItem, final EntitySet paramEntitySet, final VoiceConfig paramVoiceConfig)
  {
    Requirement local3 = new Requirement()
    {
      public GlassError getError(VoiceMenuEnvironment paramAnonymousVoiceMenuEnvironment)
      {
        return new GlassError().setPrimaryMessageId(R.string.error_no_send_targets).setSecondaryMessageId(R.string.error_edit_contacts).setFinishWhenDone(true);
      }

      public boolean isSatisfied(VoiceMenuEnvironment paramAnonymousVoiceMenuEnvironment)
      {
        return !this.val$entitySet.getEntities(paramTimelineItem).isEmpty();
      }
    };
    TimelineMenuItem local4 = new TimelineMenuItem(VoiceCommand.SEND_IT_TO, R.string.voice_menu_item_send_it_to, paramTimelineItem, new Requirement[] { local3 })
    {
      public VoiceConfig getNextVoiceConfig()
      {
        return paramVoiceConfig;
      }

      public void onTrigger(VoiceMenuEnvironment paramAnonymousVoiceMenuEnvironment, boolean paramAnonymousBoolean)
      {
        super.onTrigger(paramAnonymousVoiceMenuEnvironment, paramAnonymousBoolean);
        paramAnonymousVoiceMenuEnvironment.showPeopleList(this, paramEntitySet, VoiceMenuEnvironment.EntityCommand.SEND);
        paramAnonymousVoiceMenuEnvironment.logUserEvent(UserEventAction.VOICE_MENU_COMMAND_SPOKEN, "30");
      }
    };
    local4.setVoicePendingAfterTrigger(true);
    local4.setHasSubMenu(true);
    return local4;
  }

  public static TimelineMenuItem newShareItem(final TimelineNano.TimelineItem paramTimelineItem, final EntitySet paramEntitySet, final VoiceConfig paramVoiceConfig)
  {
    Requirement local1 = new Requirement()
    {
      public GlassError getError(VoiceMenuEnvironment paramAnonymousVoiceMenuEnvironment)
      {
        return new GlassError().setPrimaryMessageId(R.string.error_no_share_targets).setSecondaryMessageId(R.string.error_edit_contacts).setFinishWhenDone(true);
      }

      public boolean isSatisfied(VoiceMenuEnvironment paramAnonymousVoiceMenuEnvironment)
      {
        return !this.val$entitySet.getEntities(paramTimelineItem).isEmpty();
      }
    };
    TimelineMenuItem local2 = new TimelineMenuItem(VoiceCommand.SHARE, R.string.voice_menu_item_share, paramTimelineItem, new Requirement[] { local1 })
    {
      public VoiceConfig getNextVoiceConfig()
      {
        return paramVoiceConfig;
      }

      public void onTrigger(VoiceMenuEnvironment paramAnonymousVoiceMenuEnvironment, boolean paramAnonymousBoolean)
      {
        super.onTrigger(paramAnonymousVoiceMenuEnvironment, paramAnonymousBoolean);
        paramAnonymousVoiceMenuEnvironment.showPeopleList(this, paramEntitySet, VoiceMenuEnvironment.EntityCommand.SHARE);
        paramAnonymousVoiceMenuEnvironment.logUserEvent(UserEventAction.VOICE_MENU_COMMAND_SPOKEN, "20");
      }
    };
    local2.setVoicePendingAfterTrigger(true);
    local2.setHasSubMenu(true);
    return local2;
  }

  public TimelineNano.TimelineItem getTimelineItem()
  {
    return this.timelineItem;
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.menu.TimelineMenuItem
 * JD-Core Version:    0.6.2
 */