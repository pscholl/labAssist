package com.google.glass.timeline;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.AsyncTask;
import android.speech.tts.UtteranceProgressListener;
import android.text.TextUtils;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.primitives.Ints;
import com.google.glass.app.GlassActivity;
import com.google.glass.app.GlassApplication;
import com.google.glass.async.AsyncThreadExecutorManager;
import com.google.glass.common.R.drawable;
import com.google.glass.common.R.string;
import com.google.glass.entity.EntityCache;
import com.google.glass.entity.EntityHelper;
import com.google.glass.entity.EntitySet;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.maps.NavigationLauncher;
import com.google.glass.phone.PhoneCallHelper;
import com.google.glass.share.ShareActivityHelper;
import com.google.glass.sound.SoundManager;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.glass.userevent.UserEventAction;
import com.google.glass.userevent.UserEventHelper;
import com.google.glass.util.ArrayUtils;
import com.google.glass.util.CachedFilesManager.Type;
import com.google.glass.util.HangoutHelper;
import com.google.glass.util.IconProvider;
import com.google.glass.util.IntentSender;
import com.google.glass.util.Labs;
import com.google.glass.util.Labs.Feature;
import com.google.glass.util.MicrophoneHelper;
import com.google.glass.util.TtsHelper;
import com.google.glass.voice.VoiceAnnotationHelper;
import com.google.glass.voice.VoiceMessageHelper;
import com.google.glass.voice.VoiceSearchResultsHelper;
import com.google.glass.voice.network.translate.NetworkTts;
import com.google.glass.widget.MessageDialog.Builder;
import com.google.glass.widget.MessageDialog.SimpleListener;
import com.google.glass.widget.OptionMenu;
import com.google.glass.widget.OptionMenu.Item;
import com.google.glass.widget.OptionMenu.ItemState;
import com.google.glass.widget.VolumeControlDialog;
import com.google.googlex.glass.common.proto.TimelineNano.Attachment;
import com.google.googlex.glass.common.proto.TimelineNano.Entity;
import com.google.googlex.glass.common.proto.TimelineNano.Location;
import com.google.googlex.glass.common.proto.TimelineNano.MenuItem;
import com.google.googlex.glass.common.proto.TimelineNano.MenuValue;
import com.google.googlex.glass.common.proto.TimelineNano.TimelineItem;
import com.google.googlex.glass.common.proto.TimelineNano.UserAction;
import com.google.protobuf.nano.MessageNano;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

public class TimelineOptionsHelper
{
  private static final int DESCRIPTION_MAX_LEN = 30;
  public static final int REQUEST_CODE_GET_MEDIA_INPUT = 2;
  public static final int REQUEST_CODE_SHARE = 1;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final GlassActivity activity;
  private final VoiceAnnotationHelper annotationHelper;
  private final AudioManager audioManager;
  private final PhoneCallHelper callHelper;

  @VisibleForTesting
  Executor executor = Executors.newFixedThreadPool(5);
  private final HangoutHelper hangoutHelper;
  private final IconProvider iconProvider;
  private final SoundManager soundManager;
  private final TimelineHelper timelineHelper;
  private final TimelineOptionProgressListener timelineOptionProgressListener;
  private final UserEventHelper userEventHelper;

  public TimelineOptionsHelper(GlassActivity paramGlassActivity, IconProvider paramIconProvider, TimelineOptionProgressListener paramTimelineOptionProgressListener)
  {
    this(paramGlassActivity, paramIconProvider, paramTimelineOptionProgressListener, new TimelineHelper(), new HangoutHelper(paramGlassActivity), new VoiceAnnotationHelper(paramGlassActivity), new PhoneCallHelper(paramGlassActivity));
  }

  @VisibleForTesting
  public TimelineOptionsHelper(GlassActivity paramGlassActivity, IconProvider paramIconProvider, TimelineOptionProgressListener paramTimelineOptionProgressListener, TimelineHelper paramTimelineHelper, HangoutHelper paramHangoutHelper, VoiceAnnotationHelper paramVoiceAnnotationHelper, PhoneCallHelper paramPhoneCallHelper)
  {
    this.activity = paramGlassActivity;
    this.iconProvider = paramIconProvider;
    this.audioManager = paramGlassActivity.getAudioManager();
    this.soundManager = paramGlassActivity.getSoundManager();
    this.userEventHelper = paramGlassActivity.getUserEventHelper();
    this.timelineHelper = paramTimelineHelper;
    this.callHelper = paramPhoneCallHelper;
    this.hangoutHelper = paramHangoutHelper;
    this.timelineOptionProgressListener = paramTimelineOptionProgressListener;
    this.annotationHelper = paramVoiceAnnotationHelper;
  }

  private void addBroadcast(OptionMenu paramOptionMenu, TimelineNano.MenuValue paramMenuValue, TimelineNano.MenuItem paramMenuItem)
  {
    addMenuItem(paramOptionMenu, getMenuText(paramMenuValue, 0), getMenuIcon(paramMenuValue, 0), true, null, paramMenuItem);
  }

  private void addCustom(OptionMenu paramOptionMenu, TimelineNano.MenuValue paramMenuValue, TimelineNano.MenuItem paramMenuItem)
  {
    addBroadcast(paramOptionMenu, paramMenuValue, paramMenuItem);
  }

  private void addDelete(OptionMenu paramOptionMenu, TimelineNano.MenuValue paramMenuValue, TimelineNano.MenuItem paramMenuItem)
  {
    addMenuItem(paramOptionMenu, getMenuText(paramMenuValue, R.string.timeline_menu_delete), getMenuIcon(paramMenuValue, R.drawable.ic_delete_medium), true, null, paramMenuItem);
  }

  private void addGetMediaInput(OptionMenu paramOptionMenu, TimelineNano.MenuValue paramMenuValue, TimelineNano.MenuItem paramMenuItem)
  {
    addMenuItem(paramOptionMenu, getMenuText(paramMenuValue, 0), getMenuIcon(paramMenuValue, 0), true, null, paramMenuItem);
  }

  private void addMenuItem(OptionMenu paramOptionMenu, TimelineNano.TimelineItem paramTimelineItem, TimelineNano.MenuItem paramMenuItem)
  {
    TimelineNano.MenuValue localMenuValue = getValueForState(paramMenuItem, 0);
    switch (paramMenuItem.getAction())
    {
    case 1:
    case 12:
    case 16:
    default:
      return;
    case 0:
      addCustom(paramOptionMenu, localMenuValue, paramMenuItem);
      return;
    case 7:
      addBroadcast(paramOptionMenu, localMenuValue, paramMenuItem);
      return;
    case 2:
      addReply(paramOptionMenu, localMenuValue, paramMenuItem, paramTimelineItem);
      return;
    case 6:
      addReplyAll(paramOptionMenu, localMenuValue, paramMenuItem);
      return;
    case 18:
      addSendMessage(paramOptionMenu, localMenuValue, paramMenuItem);
      return;
    case 3:
      addDelete(paramOptionMenu, localMenuValue, paramMenuItem);
      return;
    case 4:
      addShare(paramOptionMenu, localMenuValue, paramMenuItem, paramTimelineItem);
      return;
    case 21:
      addSend(paramOptionMenu, localMenuValue, paramMenuItem, paramTimelineItem);
      return;
    case 5:
      addReadAloud(paramOptionMenu, localMenuValue, paramMenuItem);
      return;
    case 8:
      addVoiceCall(paramOptionMenu, localMenuValue, paramMenuItem);
      return;
    case 9:
      addNavigate(paramOptionMenu, localMenuValue, paramMenuItem);
      return;
    case 10:
      addSearch(paramOptionMenu, localMenuValue, paramMenuItem);
      return;
    case 11:
      addMuteMic(paramOptionMenu, paramMenuItem);
      return;
    case 14:
      addVideoCall(paramOptionMenu, localMenuValue, paramMenuItem);
      return;
    case 13:
      addOpenUri(paramOptionMenu, localMenuValue, paramMenuItem);
      return;
    case 15:
      addTogglePinned(paramOptionMenu, localMenuValue, paramMenuItem, paramTimelineItem);
      return;
    case 17:
      addPlayVideo(paramOptionMenu, localMenuValue, paramMenuItem, paramTimelineItem);
      return;
    case 19:
      addVolume(paramOptionMenu, paramMenuItem);
      return;
    case 20:
      addShowRecipients(paramOptionMenu, localMenuValue, paramMenuItem, paramTimelineItem);
      return;
    case 22:
    }
    addGetMediaInput(paramOptionMenu, localMenuValue, paramMenuItem);
  }

  private OptionMenu.Item addMuteMic(OptionMenu paramOptionMenu, TimelineNano.MenuItem paramMenuItem)
  {
    Resources localResources = this.activity.getResources();
    int i = addMenuItem(paramOptionMenu, paramMenuItem, new OptionMenu.ItemState[] { new OptionMenu.ItemState(0, localResources.getString(R.string.phone_call_mute), localResources.getDrawable(R.drawable.ic_microphone_medium)), new OptionMenu.ItemState(1, localResources.getString(R.string.phone_call_unmute), localResources.getDrawable(R.drawable.ic_microphone_off_medium)) });
    MicrophoneHelper.updateOptionMenuItem(this.activity, paramOptionMenu.getItem(i));
    return paramOptionMenu.getItem(i);
  }

  private void addNavigate(OptionMenu paramOptionMenu, TimelineNano.MenuValue paramMenuValue, TimelineNano.MenuItem paramMenuItem)
  {
    addMenuItem(paramOptionMenu, getMenuText(paramMenuValue, R.string.timeline_menu_navigate), getMenuIcon(paramMenuValue, R.drawable.ic_navigate_medium), true, null, paramMenuItem);
    NavigationLauncher.wakeUpNavigation(this.activity);
  }

  private void addPlayVideo(OptionMenu paramOptionMenu, TimelineNano.MenuValue paramMenuValue, TimelineNano.MenuItem paramMenuItem, TimelineNano.TimelineItem paramTimelineItem)
  {
    if ((!TextUtils.isEmpty(paramMenuItem.getPayload())) || (TimelineHelper.hasAttachmentOfTypes(paramTimelineItem, TimelineHelper.SUPPORTED_VIDEO_MIME_TYPES)))
      addMenuItem(paramOptionMenu, getMenuText(paramMenuValue, R.string.timeline_menu_play_video), getMenuIcon(paramMenuValue, R.drawable.ic_play_medium), true, null, paramMenuItem);
  }

  private void addReadAloud(OptionMenu paramOptionMenu, TimelineNano.MenuValue paramMenuValue, TimelineNano.MenuItem paramMenuItem)
  {
    addMenuItem(paramOptionMenu, getMenuText(paramMenuValue, R.string.timeline_menu_read_aloud), getMenuIcon(paramMenuValue, R.drawable.ic_read_aloud_medium), true, null, paramMenuItem);
  }

  private void addSearch(OptionMenu paramOptionMenu, TimelineNano.MenuValue paramMenuValue, TimelineNano.MenuItem paramMenuItem)
  {
    addMenuItem(paramOptionMenu, getMenuText(paramMenuValue, R.string.timeline_menu_expand_search), getMenuIcon(paramMenuValue, R.drawable.ic_search_medium), true, null, paramMenuItem);
  }

  private void addSend(OptionMenu paramOptionMenu, TimelineNano.MenuValue paramMenuValue, TimelineNano.MenuItem paramMenuItem, TimelineNano.TimelineItem paramTimelineItem)
  {
    if (!EntitySet.SEND_TARGETS.getEntities(paramTimelineItem).isEmpty())
      addMenuItem(paramOptionMenu, getMenuText(paramMenuValue, R.string.timeline_menu_send), getMenuIcon(paramMenuValue, R.drawable.ic_share_medium), true, null, paramMenuItem);
  }

  private void addShare(OptionMenu paramOptionMenu, TimelineNano.MenuValue paramMenuValue, TimelineNano.MenuItem paramMenuItem, TimelineNano.TimelineItem paramTimelineItem)
  {
    if (EntityCache.getSharedInstance().getShareTargets(paramTimelineItem).isEmpty())
    {
      addMenuItem(paramOptionMenu, getMenuText(paramMenuValue, R.string.timeline_menu_share), getMenuIcon(paramMenuValue, R.drawable.ic_share_medium), false, this.activity.getString(R.string.sharing_no_share_targets), paramMenuItem);
      return;
    }
    addMenuItem(paramOptionMenu, getMenuText(paramMenuValue, R.string.timeline_menu_share), getMenuIcon(paramMenuValue, R.drawable.ic_share_medium), true, null, paramMenuItem);
  }

  private void addTogglePinned(OptionMenu paramOptionMenu, TimelineNano.MenuValue paramMenuValue, TimelineNano.MenuItem paramMenuItem, TimelineNano.TimelineItem paramTimelineItem)
  {
    if (paramTimelineItem.getIsPinned())
    {
      addMenuItem(paramOptionMenu, getMenuText(paramMenuValue, R.string.timeline_menu_unpin), getMenuIcon(paramMenuValue, R.drawable.ic_unpin_medium), true, null, paramMenuItem);
      return;
    }
    addMenuItem(paramOptionMenu, getMenuText(paramMenuValue, R.string.timeline_menu_pin), getMenuIcon(paramMenuValue, R.drawable.ic_pin_medium), true, null, paramMenuItem);
  }

  private void addVideoCall(OptionMenu paramOptionMenu, TimelineNano.MenuValue paramMenuValue, TimelineNano.MenuItem paramMenuItem)
  {
    String str;
    if (this.callHelper.isInCall())
      str = this.activity.getString(R.string.timeline_menu_error_in_a_call_no_hangout);
    while (true)
    {
      addMenuItem(paramOptionMenu, getMenuText(paramMenuValue, R.string.timeline_menu_hangout), this.activity.getResources().getDrawable(R.drawable.ic_video_call_medium), TextUtils.isEmpty(str), str, paramMenuItem);
      return;
      boolean bool = this.hangoutHelper.isInHangout();
      str = null;
      if (bool)
        str = this.activity.getString(R.string.timeline_menu_error_in_a_hangout_no_hangout);
    }
  }

  private void addVoiceCall(OptionMenu paramOptionMenu, TimelineNano.MenuValue paramMenuValue, TimelineNano.MenuItem paramMenuItem)
  {
    String str;
    if (Labs.isEnabled(Labs.Feature.BLUETOOTH_HEADSET))
    {
      if (!this.callHelper.isInCall())
        break label61;
      str = this.activity.getString(R.string.timeline_menu_error_in_a_call_no_call);
    }
    while (true)
    {
      addMenuItem(paramOptionMenu, getMenuText(paramMenuValue, R.string.timeline_menu_voice_call), getMenuIcon(paramMenuValue, R.drawable.ic_phone_out_medium), TextUtils.isEmpty(str), str, paramMenuItem);
      return;
      label61: boolean bool = this.hangoutHelper.isInHangout();
      str = null;
      if (bool)
        str = this.activity.getString(R.string.timeline_menu_error_in_a_hangout_no_call);
    }
  }

  private void addVolume(OptionMenu paramOptionMenu, TimelineNano.MenuItem paramMenuItem)
  {
    Resources localResources = this.activity.getResources();
    addMenuItem(paramOptionMenu, localResources.getString(R.string.timeline_menu_volume), localResources.getDrawable(R.drawable.ic_volume_medium), true, null, paramMenuItem);
  }

  private void appendMediaToMenuItemPayload(final TimelineNano.TimelineItem paramTimelineItem, int paramInt, Intent paramIntent)
  {
    TimelineHelper.getFirstMenuItemWithActionOfType(paramTimelineItem, 22).setPayload(this.annotationHelper.getAnnotationResult(paramInt, paramIntent));
    final TimelineNano.UserAction localUserAction = new TimelineNano.UserAction();
    localUserAction.setType(10);
    this.timelineHelper.atomicUpdateTimelineItemAsync(new TimelineHelper.Update()
    {
      public TimelineNano.TimelineItem onExecute()
      {
        return TimelineOptionsHelper.this.timelineHelper.updateTimelineItem(TimelineOptionsHelper.this.activity, paramTimelineItem, localUserAction, false, false);
      }
    });
  }

  public static String getCallOrVideoCallStatusDescription(Activity paramActivity, PhoneCallHelper paramPhoneCallHelper, HangoutHelper paramHangoutHelper)
  {
    if (paramPhoneCallHelper.isInCall())
      return paramActivity.getString(R.string.phone_call_in_call);
    if (paramHangoutHelper.isInHangout())
      return paramActivity.getString(R.string.hangout_in_hangout);
    return null;
  }

  private Drawable getMenuIcon(TimelineNano.MenuValue paramMenuValue, int paramInt)
  {
    IconProvider localIconProvider = this.iconProvider;
    Drawable localDrawable = null;
    if (localIconProvider != null)
    {
      localDrawable = null;
      if (paramMenuValue != null)
      {
        boolean bool = TextUtils.isEmpty(paramMenuValue.getIconUrl());
        localDrawable = null;
        if (!bool)
          localDrawable = this.iconProvider.getIcon(paramMenuValue.getIconUrl());
      }
    }
    if ((localDrawable == null) && (paramInt != 0))
      localDrawable = this.activity.getResources().getDrawable(paramInt);
    return localDrawable;
  }

  public static TimelineNano.MenuValue getValueForState(TimelineNano.MenuItem paramMenuItem, int paramInt)
  {
    if (!ArrayUtils.isEmpty(paramMenuItem.value))
      for (TimelineNano.MenuValue localMenuValue : paramMenuItem.value)
        if (localMenuValue.getState() == paramInt)
          return localMenuValue;
    return null;
  }

  @VisibleForTesting
  static boolean isBrokenMedia(TimelineNano.TimelineItem paramTimelineItem)
  {
    if (paramTimelineItem.getViewType() == 2)
      return TimelineHelper.getAttachmentsOfTypes(paramTimelineItem, TimelineHelper.SUPPORTED_IMAGE_MIME_TYPES).isEmpty();
    if (paramTimelineItem.getViewType() == 3)
      return TimelineHelper.getAttachmentsOfTypes(paramTimelineItem, TimelineHelper.SUPPORTED_VIDEO_MIME_TYPES).isEmpty();
    return false;
  }

  private boolean onBroadcast(TimelineNano.TimelineItem paramTimelineItem, TimelineNano.MenuItem paramMenuItem)
  {
    if (paramMenuItem.hasBroadcastAction())
    {
      Intent localIntent = new Intent().setAction(paramMenuItem.getBroadcastAction());
      localIntent.putExtra("itemId", paramTimelineItem.getId());
      localIntent.putExtra("menu_item_id", paramMenuItem.getId());
      if (paramTimelineItem.hasCreator())
        localIntent.putExtra("creator", MessageNano.toByteArray(paramTimelineItem.getCreator()));
      int i = ArrayUtils.length(paramTimelineItem.shareTarget);
      localIntent.putExtra("share_target_count", i);
      for (int j = 0; j < i; j++)
      {
        TimelineNano.Entity localEntity = paramTimelineItem.shareTarget[j];
        localIntent.putExtra(TimelineActivityHelper.createShareTargetExtraKey(j), MessageNano.toByteArray(localEntity));
      }
      this.activity.sendBroadcast(localIntent);
      return true;
    }
    return false;
  }

  private boolean onCustom(TimelineNano.TimelineItem paramTimelineItem, final TimelineNano.MenuItem paramMenuItem)
  {
    final TimelineNano.TimelineItem localTimelineItem = TimelineHelper.clone(paramTimelineItem);
    if ((paramMenuItem.getRemoveWhenSelected()) && (!ArrayUtils.isEmpty(localTimelineItem.menuItem)))
    {
      ArrayList localArrayList = new ArrayList(Arrays.asList(localTimelineItem.menuItem));
      Iterator localIterator = localArrayList.iterator();
      while (localIterator.hasNext())
      {
        TimelineNano.MenuItem localMenuItem = (TimelineNano.MenuItem)localIterator.next();
        if (localMenuItem.equals(paramMenuItem))
          localArrayList.remove(localMenuItem);
      }
      localTimelineItem.menuItem = ((TimelineNano.MenuItem[])localArrayList.toArray(new TimelineNano.MenuItem[0]));
    }
    TimelineNano.MenuValue localMenuValue1 = getValueForState(paramMenuItem, 1);
    TimelineNano.MenuValue localMenuValue2 = getValueForState(paramMenuItem, 2);
    final TimelineNano.UserAction localUserAction = new TimelineNano.UserAction();
    localUserAction.setType(5);
    localUserAction.setPayload(paramMenuItem.getId());
    if ((localMenuValue1 != null) && (localMenuValue2 != null))
    {
      TimelineNano.MenuValue localMenuValue3 = getValueForState(paramMenuItem, 0);
      String str1 = getMenuText(localMenuValue1, 0);
      if (TextUtils.isEmpty(str1))
        str1 = getMenuText(localMenuValue3, 0);
      Drawable localDrawable1 = getMenuIcon(localMenuValue1, 0);
      if (localDrawable1 == null)
        localDrawable1 = getMenuIcon(localMenuValue3, 0);
      String str2 = getMenuText(localMenuValue2, 0);
      if (TextUtils.isEmpty(str2))
        str2 = getMenuText(localMenuValue3, 0);
      Drawable localDrawable2 = getMenuIcon(localMenuValue2, 0);
      if (localDrawable2 == null)
        localDrawable2 = getMenuIcon(localMenuValue3, 0);
      showConfirmationDialog(paramMenuItem, str1, localDrawable1, str2, localDrawable2, new OnConfirmedListener()
      {
        public void onConfirmed(TimelineNano.MenuItem paramAnonymousMenuItem)
        {
          TimelineOptionsHelper.this.notifyOnCustomMenuSelected(localTimelineItem, localUserAction, paramMenuItem);
        }

        public void onDismissed(TimelineNano.MenuItem paramAnonymousMenuItem)
        {
        }
      });
    }
    while (true)
    {
      return true;
      notifyOnCustomMenuSelected(localTimelineItem, localUserAction, paramMenuItem);
    }
  }

  private boolean onDelete(TimelineNano.TimelineItem paramTimelineItem, TimelineNano.MenuItem paramMenuItem, final TimelineItemDeletedListener paramTimelineItemDeletedListener)
  {
    final String str1 = paramTimelineItem.getId();
    final String str2 = paramTimelineItem.getSource();
    TimelineNano.MenuValue localMenuValue1 = getValueForState(paramMenuItem, 1);
    String str3 = getMenuText(localMenuValue1, R.string.timeline_menu_delete_confirming);
    Drawable localDrawable1 = getMenuIcon(localMenuValue1, R.drawable.ic_delete_medium);
    TimelineNano.MenuValue localMenuValue2 = getValueForState(paramMenuItem, 2);
    String str4 = getMenuText(localMenuValue2, R.string.timeline_menu_delete_confirmed);
    Drawable localDrawable2 = getMenuIcon(localMenuValue2, R.drawable.ic_done_medium);
    this.userEventHelper.log(UserEventAction.DELETE_INITIATED, TimelineHelper.getRedactedSource(str2));
    if (paramTimelineItemDeletedListener != null)
      paramTimelineItemDeletedListener.onConfirmDelete();
    showConfirmationDialog(paramMenuItem, str3, localDrawable1, str4, localDrawable2, new OnConfirmedListener()
    {
      public void onConfirmed(TimelineNano.MenuItem paramAnonymousMenuItem)
      {
        TimelineOptionsHelper.this.userEventHelper.log(UserEventAction.DELETE_COMPLETED, TimelineHelper.getRedactedSource(str2));
        TimelineOptionsHelper.this.timelineHelper.deleteTimelineItemAsync(TimelineOptionsHelper.this.activity, str1);
        if (paramTimelineItemDeletedListener != null)
          paramTimelineItemDeletedListener.onDeleted();
      }

      public void onDismissed(TimelineNano.MenuItem paramAnonymousMenuItem)
      {
        if (paramTimelineItemDeletedListener != null)
          paramTimelineItemDeletedListener.onDeleteCanceled();
      }
    });
    return true;
  }

  private boolean onMuteMic(OptionMenu.Item paramItem)
  {
    MicrophoneHelper.toggleMute(this.activity);
    MicrophoneHelper.updateOptionMenuItem(this.activity, paramItem);
    return true;
  }

  private boolean onOpenUri(TimelineNano.MenuItem paramMenuItem)
  {
    return onOpenUri(paramMenuItem.getPayload());
  }

  private boolean onTogglePinned(TimelineNano.TimelineItem paramTimelineItem)
  {
    final TimelineNano.UserAction localUserAction = new TimelineNano.UserAction();
    final TimelineNano.TimelineItem localTimelineItem = TimelineHelper.clone(paramTimelineItem);
    localTimelineItem.setModifiedTime(System.currentTimeMillis());
    if (paramTimelineItem.getIsPinned())
    {
      localUserAction.setType(9);
      localTimelineItem.setIsPinned(false);
      localTimelineItem.setPinTime(0L);
    }
    while (true)
    {
      this.timelineHelper.atomicUpdateTimelineItemAsync(new TimelineHelper.Update()
      {
        public TimelineNano.TimelineItem onExecute()
        {
          if (!localTimelineItem.getIsPinned());
          for (boolean bool = true; ; bool = false)
          {
            TimelineNano.TimelineItem localTimelineItem = TimelineOptionsHelper.this.timelineHelper.updateTimelineItem(TimelineOptionsHelper.this.activity, localTimelineItem, localUserAction, false, bool);
            TimelineOptionsHelper.this.soundManager.playSound(SoundManager.SoundId.SUCCESS);
            TimelineActivityHelper.goToTimeline(TimelineOptionsHelper.this.activity, new TimelineItemId(localTimelineItem), false);
            return localTimelineItem;
          }
        }
      });
      return true;
      localUserAction.setType(8);
      localTimelineItem.setIsPinned(true);
      localTimelineItem.setPinTime(System.currentTimeMillis());
    }
  }

  private boolean onVolume()
  {
    new VolumeControlDialog(this.activity, this.soundManager, this.audioManager).show();
    return true;
  }

  private void showConfirmationDialog(final TimelineNano.MenuItem paramMenuItem, CharSequence paramCharSequence1, Drawable paramDrawable1, CharSequence paramCharSequence2, Drawable paramDrawable2, final OnConfirmedListener paramOnConfirmedListener)
  {
    this.activity.showMessage(new MessageDialog.Builder(this.activity, this.soundManager).setTemporaryMessage(paramCharSequence1).setTemporaryIcon(paramDrawable1).setMessage(paramCharSequence2).setIcon(paramDrawable2).setSound(SoundManager.SoundId.SUCCESS).setAnimated(false).setListener(new MessageDialog.SimpleListener()
    {
      public void onDismissed()
      {
        FormattingLogger localFormattingLogger = TimelineOptionsHelper.logger;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(paramMenuItem.getAction());
        localFormattingLogger.d("%s cancelled", arrayOfObject);
        paramOnConfirmedListener.onDismissed(paramMenuItem);
      }

      public void onDone()
      {
        FormattingLogger localFormattingLogger = TimelineOptionsHelper.logger;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(paramMenuItem.getAction());
        localFormattingLogger.d("%s confirmed", arrayOfObject);
        if (paramOnConfirmedListener != null)
          paramOnConfirmedListener.onConfirmed(paramMenuItem);
      }
    }).build());
  }

  public int addMenuItem(OptionMenu paramOptionMenu, Object paramObject, OptionMenu.ItemState[] paramArrayOfItemState)
  {
    int i = paramOptionMenu.getItemCount();
    paramOptionMenu.addItem(i, paramArrayOfItemState);
    paramOptionMenu.getItem(i).setExtra(paramObject);
    return i;
  }

  @VisibleForTesting
  void addMenuItem(OptionMenu paramOptionMenu, String paramString1, Drawable paramDrawable, boolean paramBoolean, String paramString2, Object paramObject)
  {
    OptionMenu.Item localItem = paramOptionMenu.getItem(addMenuItem(paramOptionMenu, paramObject, new OptionMenu.ItemState[] { new OptionMenu.ItemState(0, paramString1, paramDrawable) }));
    localItem.setEnabled(paramBoolean);
    localItem.setDescription(paramString2);
  }

  public OptionMenu.Item addMuteMic(OptionMenu paramOptionMenu)
  {
    TimelineNano.MenuItem localMenuItem = new TimelineNano.MenuItem();
    localMenuItem.setAction(11);
    return addMuteMic(paramOptionMenu, localMenuItem);
  }

  @VisibleForTesting
  void addOpenUri(OptionMenu paramOptionMenu, TimelineNano.MenuValue paramMenuValue, TimelineNano.MenuItem paramMenuItem)
  {
    String str1 = paramMenuItem.getPayload();
    String str2 = str1;
    if (str2.length() > 30)
      str2 = str2.substring(0, 30) + "...";
    String str3 = str1.toLowerCase();
    int i = 1;
    int j;
    if ((str3.startsWith("http:")) || (str3.startsWith("https:")))
      j = R.string.timeline_menu_view_website;
    while (true)
    {
      if (i != 0)
        addMenuItem(paramOptionMenu, getMenuText(paramMenuValue, j), getMenuIcon(paramMenuValue, R.drawable.browser_website), true, str2, paramMenuItem);
      return;
      j = R.string.timeline_menu_open;
      Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(str1));
      boolean bool = this.activity.getPackageManager().queryIntentActivities(localIntent, 0).isEmpty();
      str2 = null;
      if (bool)
      {
        str2 = null;
        i = 0;
      }
    }
  }

  public void addReadMore(OptionMenu paramOptionMenu, TimelineNano.TimelineItem paramTimelineItem)
  {
    boolean bool = ArrayUtils.isEmpty(paramTimelineItem.menuItem);
    Object localObject = null;
    int i = 0;
    if (!bool);
    for (int j = 0; ; j++)
    {
      int k = paramTimelineItem.menuItem.length;
      localObject = null;
      i = 0;
      if (j < k)
      {
        TimelineNano.MenuItem localMenuItem = paramTimelineItem.menuItem[j];
        if (localMenuItem.getAction() == 16)
        {
          localObject = localMenuItem;
          i = j;
        }
      }
      else
      {
        TimelineNano.MenuValue localMenuValue = null;
        if (localObject != null)
          localMenuValue = getValueForState(localObject, 0);
        paramOptionMenu.insertItem(i, paramOptionMenu.getItemCount(), getMenuText(localMenuValue, R.string.timeline_menu_read_more), getMenuIcon(localMenuValue, R.drawable.ic_document_medium));
        paramOptionMenu.getItem(i).setExtra(Integer.valueOf(16));
        return;
      }
    }
  }

  @VisibleForTesting
  void addReply(OptionMenu paramOptionMenu, TimelineNano.MenuValue paramMenuValue, TimelineNano.MenuItem paramMenuItem, TimelineNano.TimelineItem paramTimelineItem)
  {
    if (TimelineHelper.failedToSyncToCompanion(paramTimelineItem))
    {
      addMenuItem(paramOptionMenu, getMenuText(paramMenuValue, R.string.timeline_menu_retry), getMenuIcon(paramMenuValue, R.drawable.ic_reply_medium), true, null, paramMenuItem);
      return;
    }
    String str = getCallOrVideoCallStatusDescription(this.activity, this.callHelper, this.hangoutHelper);
    addMenuItem(paramOptionMenu, getMenuText(paramMenuValue, R.string.timeline_menu_reply), getMenuIcon(paramMenuValue, R.drawable.ic_reply_medium), TextUtils.isEmpty(str), str, paramMenuItem);
  }

  @VisibleForTesting
  void addReplyAll(OptionMenu paramOptionMenu, TimelineNano.MenuValue paramMenuValue, TimelineNano.MenuItem paramMenuItem)
  {
    String str = getCallOrVideoCallStatusDescription(this.activity, this.callHelper, this.hangoutHelper);
    addMenuItem(paramOptionMenu, getMenuText(paramMenuValue, R.string.timeline_menu_reply_all), getMenuIcon(paramMenuValue, R.drawable.ic_reply_all_medium), TextUtils.isEmpty(str), str, paramMenuItem);
  }

  @VisibleForTesting
  void addSendMessage(OptionMenu paramOptionMenu, TimelineNano.MenuValue paramMenuValue, TimelineNano.MenuItem paramMenuItem)
  {
    String str = getCallOrVideoCallStatusDescription(this.activity, this.callHelper, this.hangoutHelper);
    addMenuItem(paramOptionMenu, getMenuText(paramMenuValue, R.string.timeline_menu_send_message), getMenuIcon(paramMenuValue, R.drawable.ic_message_medium), TextUtils.isEmpty(str), str, paramMenuItem);
  }

  @VisibleForTesting
  void addShowRecipients(OptionMenu paramOptionMenu, TimelineNano.MenuValue paramMenuValue, TimelineNano.MenuItem paramMenuItem, TimelineNano.TimelineItem paramTimelineItem)
  {
    if (!ArrayUtils.isEmpty(paramTimelineItem.shareTarget))
      addMenuItem(paramOptionMenu, getMenuText(paramMenuValue, R.string.timeline_menu_show_recipients), getMenuIcon(paramMenuValue, R.drawable.ic_people_medium), true, null, paramMenuItem);
  }

  public void addVolume(OptionMenu paramOptionMenu)
  {
    TimelineNano.MenuItem localMenuItem = new TimelineNano.MenuItem();
    localMenuItem.setAction(19);
    addVolume(paramOptionMenu, localMenuItem);
  }

  protected GlassActivity getGlassActivity()
  {
    return this.activity;
  }

  @VisibleForTesting
  String getMenuText(TimelineNano.MenuValue paramMenuValue, int paramInt)
  {
    if ((paramMenuValue != null) && (!TextUtils.isEmpty(paramMenuValue.getDisplayName())))
      return paramMenuValue.getDisplayName();
    if (paramInt != 0)
      return this.activity.getString(paramInt);
    return "";
  }

  protected UserEventHelper getUserEventHelper()
  {
    return this.userEventHelper;
  }

  public boolean handleOptionsItemSelected(TimelineNano.TimelineItem paramTimelineItem, OptionMenu.Item paramItem, TimelineItemDeletedListener paramTimelineItemDeletedListener, String paramString)
  {
    if (paramTimelineItem == null);
    TimelineNano.MenuItem localMenuItem;
    do
    {
      return false;
      localMenuItem = (TimelineNano.MenuItem)paramItem.getExtra();
    }
    while (localMenuItem == null);
    int i = localMenuItem.getAction();
    switch (i)
    {
    case 1:
    case 12:
    case 16:
    default:
      FormattingLogger localFormattingLogger = logger;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(i);
      localFormattingLogger.w("Action not handled: %s", arrayOfObject);
      return false;
    case 0:
      return onCustom(paramTimelineItem, localMenuItem);
    case 4:
    case 21:
      return onShare(i, paramTimelineItem, paramString);
    case 3:
      return onDelete(paramTimelineItem, localMenuItem, paramTimelineItemDeletedListener);
    case 2:
      return onReply(paramTimelineItem);
    case 6:
      return onReplyAll(paramTimelineItem);
    case 18:
      return onSendMessage(paramTimelineItem, localMenuItem);
    case 5:
      return onReadAloud(paramTimelineItem);
    case 7:
      return onBroadcast(paramTimelineItem, localMenuItem);
    case 8:
      return onVoiceCall(localMenuItem, paramTimelineItem);
    case 9:
      return onNavigate(localMenuItem, paramTimelineItem);
    case 10:
      return onSearch(paramTimelineItem);
    case 11:
      return onMuteMic(paramItem);
    case 14:
      return onVideoCall(localMenuItem, paramTimelineItem);
    case 13:
      return onOpenUri(localMenuItem);
    case 15:
      return onTogglePinned(paramTimelineItem);
    case 17:
      return onPlayVideo(localMenuItem, paramTimelineItem);
    case 19:
      return onVolume();
    case 20:
      return onShowRecipients(paramTimelineItem);
    case 22:
    }
    return onGetMediaInput(paramTimelineItem);
  }

  public boolean handlePrepareOptionsMenu(OptionMenu paramOptionMenu, TimelineNano.TimelineItem paramTimelineItem)
  {
    boolean bool = true;
    paramOptionMenu.clearItems();
    if (paramTimelineItem == null)
    {
      logger.w("No item to populate options.", new Object[0]);
      return false;
    }
    if (isBrokenMedia(paramTimelineItem))
    {
      logger.w("Item is broken media; not adding menu options.", new Object[0]);
      return false;
    }
    if (!ArrayUtils.isEmpty(paramTimelineItem.menuItem))
    {
      TimelineNano.MenuItem[] arrayOfMenuItem = paramTimelineItem.menuItem;
      int i = arrayOfMenuItem.length;
      for (int j = 0; j < i; j++)
        addMenuItem(paramOptionMenu, paramTimelineItem, arrayOfMenuItem[j]);
    }
    if ((paramTimelineItem.getViewType() == 2) && (Labs.isEnabled(Labs.Feature.PZ, this.activity.getPackageManager(), "com.google.glass.prototype.pz")))
    {
      TimelineNano.MenuItem localMenuItem = new TimelineNano.MenuItem();
      localMenuItem.setAction(7);
      localMenuItem.setBroadcastAction("com.google.glass.prototype.pz.ACTION");
      addMenuItem(paramOptionMenu, "Zoom", getMenuIcon(null, R.drawable.ic_photo_medium), bool, null, localMenuItem);
    }
    if (paramOptionMenu.getItemCount() > 0);
    while (true)
    {
      return bool;
      bool = false;
    }
  }

  protected void notifyOnCustomMenuSelected(final TimelineNano.TimelineItem paramTimelineItem, final TimelineNano.UserAction paramUserAction, TimelineNano.MenuItem paramMenuItem)
  {
    this.timelineHelper.atomicUpdateTimelineItemAsync(new TimelineHelper.Update()
    {
      public TimelineNano.TimelineItem onExecute()
      {
        return TimelineOptionsHelper.this.timelineHelper.updateTimelineItem(TimelineOptionsHelper.this.activity, paramTimelineItem, paramUserAction, false, false);
      }
    });
  }

  public boolean onGetMediaInput(TimelineNano.TimelineItem paramTimelineItem)
  {
    this.annotationHelper.startAnnotationForResult(2, false, paramTimelineItem.getId());
    return true;
  }

  public void onGetMediaInputResult(final int paramInt, final Intent paramIntent)
  {
    String str = paramIntent.getStringExtra("reply_to_id");
    new AsyncTask()
    {
      protected TimelineNano.TimelineItem doInBackground(String[] paramAnonymousArrayOfString)
      {
        TimelineNano.TimelineItem localTimelineItem = TimelineOptionsHelper.this.timelineHelper.queryTimelineItem(TimelineOptionsHelper.this.activity.getContentResolver(), paramAnonymousArrayOfString[0]);
        if (localTimelineItem == null)
        {
          FormattingLogger localFormattingLogger = TimelineOptionsHelper.logger;
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = paramAnonymousArrayOfString[0];
          localFormattingLogger.w("No item found for timeline item %s", arrayOfObject);
        }
        return localTimelineItem;
      }

      protected void onPostExecute(TimelineNano.TimelineItem paramAnonymousTimelineItem)
      {
        TimelineOptionsHelper.this.appendMediaToMenuItemPayload(paramAnonymousTimelineItem, paramInt, paramIntent);
      }
    }
    .executeOnExecutor(this.executor, new String[] { str });
  }

  public boolean onNavigate(TimelineNano.Location paramLocation, int paramInt)
  {
    Intent localIntent = NavigationLauncher.getNavigationIntent(paramLocation, Integer.valueOf(paramInt));
    if (localIntent != null)
    {
      this.activity.startActivity(localIntent);
      return true;
    }
    return false;
  }

  protected boolean onNavigate(TimelineNano.MenuItem paramMenuItem, TimelineNano.TimelineItem paramTimelineItem)
  {
    if (!paramTimelineItem.hasLocation())
    {
      FormattingLogger localFormattingLogger = logger;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = paramTimelineItem.getId();
      localFormattingLogger.e("No location set for timeline item %s, skipping navigation.", arrayOfObject);
      return false;
    }
    boolean bool = paramMenuItem.hasTravelMode();
    int i = 0;
    if (bool)
      i = paramMenuItem.getTravelMode();
    return onNavigate(paramTimelineItem.getLocation(), i);
  }

  public boolean onOpenUri(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      logger.w("No uri available to open.", new Object[0]);
      return false;
    }
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
    try
    {
      IntentSender.getInstance().startActivity(this.activity, localIntent);
      return true;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      logger.e("No activity found that could open %s", new Object[] { paramString });
    }
    return false;
  }

  public boolean onPlayVideo(TimelineNano.MenuItem paramMenuItem, TimelineNano.TimelineItem paramTimelineItem)
  {
    if ((paramMenuItem != null) && (!TextUtils.isEmpty(paramMenuItem.getPayload())))
      onPlayVideo(paramMenuItem.getPayload());
    while (true)
    {
      return true;
      TimelineNano.Attachment localAttachment = paramTimelineItem.attachment[0];
      String str = localAttachment.getClientCachePath();
      if (!TextUtils.isEmpty(str))
        return onPlayVideo(str);
      if (localAttachment.hasId())
        TimelineActivityHelper.playVideo(this.activity, "timeline_id", paramTimelineItem.getId());
    }
  }

  public boolean onPlayVideo(TimelineNano.TimelineItem paramTimelineItem)
  {
    return onPlayVideo(TimelineHelper.getFirstMenuItemWithActionOfType(paramTimelineItem, 17), paramTimelineItem);
  }

  public boolean onPlayVideo(String paramString)
  {
    TimelineActivityHelper.playVideo(this.activity, "video_url", paramString);
    return true;
  }

  public boolean onReadAloud(TimelineNano.TimelineItem paramTimelineItem)
  {
    return onReadAloud(paramTimelineItem, false);
  }

  public boolean onReadAloud(final TimelineNano.TimelineItem paramTimelineItem, final boolean paramBoolean)
  {
    boolean bool = paramTimelineItem.hasSendToPhoneUrl();
    int i = 0;
    final String str;
    if (bool)
    {
      str = paramTimelineItem.getSendToPhoneUrl();
      Uri localUri = Uri.parse(str);
      if ((!"translate.google.com".equals(localUri.getHost())) || (!"/translate_tts".equals(localUri.getPath())))
        break label104;
    }
    label104: for (i = 1; ; i = 0)
    {
      if (i != 0)
        AsyncThreadExecutorManager.getSerialExecutor().execute(new Runnable()
        {
          public void run()
          {
            if (TimelineOptionsHelper.this.timelineOptionProgressListener != null)
              TimelineOptionsHelper.this.timelineOptionProgressListener.onStart();
            NetworkTts.getSharedInstance().requestTtsAndPlay(TimelineOptionsHelper.this.activity, str);
            if (TimelineOptionsHelper.this.timelineOptionProgressListener != null)
              TimelineOptionsHelper.this.timelineOptionProgressListener.onEnd();
          }
        });
      if (i == 0)
        AsyncThreadExecutorManager.getThreadPoolExecutor().execute(new Runnable()
        {
          public void run()
          {
            String str = TimelineHelper.formatSpeakableText(TimelineOptionsHelper.this.activity, paramTimelineItem, paramBoolean);
            if (!TextUtils.isEmpty(str))
            {
              TimelineOptionsHelper.TimelineOptionProgressListener localTimelineOptionProgressListener = TimelineOptionsHelper.this.timelineOptionProgressListener;
              UtteranceProgressListener local1 = null;
              if (localTimelineOptionProgressListener != null)
                local1 = new UtteranceProgressListener()
                {
                  public void onDone(String paramAnonymous2String)
                  {
                    TimelineOptionsHelper.this.timelineOptionProgressListener.onEnd();
                  }

                  public void onError(String paramAnonymous2String)
                  {
                    TimelineOptionsHelper.this.timelineOptionProgressListener.onEnd();
                  }

                  public void onStart(String paramAnonymous2String)
                  {
                    TimelineOptionsHelper.this.timelineOptionProgressListener.onStart();
                  }
                };
              GlassApplication.from(TimelineOptionsHelper.this.activity).getTtsHelper().speakText(str, local1);
            }
          }
        });
      return true;
    }
  }

  public boolean onReply(TimelineNano.TimelineItem paramTimelineItem)
  {
    this.userEventHelper.log(UserEventAction.REPLY_INITIATED, TimelineHelper.getRedactedSource(paramTimelineItem.getSource()));
    Intent localIntent = new Intent("com.google.glass.ACTION_SEND_VOICE_MESSAGE");
    localIntent.putExtra("trigger_method", 8);
    localIntent.putExtra("REPLY_TO_ID", paramTimelineItem.getId());
    localIntent.putExtra("should_finish_turn_screen_off", true);
    this.activity.startActivity(localIntent);
    return true;
  }

  public boolean onReplyAll(TimelineNano.TimelineItem paramTimelineItem)
  {
    this.userEventHelper.log(UserEventAction.REPLY_ALL_INITIATED, TimelineHelper.getRedactedSource(paramTimelineItem.getSource()));
    Intent localIntent = new Intent("com.google.glass.ACTION_SEND_VOICE_MESSAGE");
    localIntent.putExtra("trigger_method", 8);
    localIntent.putExtra("REPLY_TO_ID", paramTimelineItem.getId());
    localIntent.putExtra("REPLY_ALL", true);
    localIntent.putExtra("should_finish_turn_screen_off", true);
    this.activity.startActivity(localIntent);
    return true;
  }

  public boolean onSearch(final TimelineNano.TimelineItem paramTimelineItem)
  {
    if (!TimelineHelper.hasAttachmentOfTypes(paramTimelineItem, new String[] { "application/glass+html" }))
    {
      logger.w("Timeline item does not have a answer card HTML attachment", new Object[0]);
      return false;
    }
    AsyncTask.execute(new Runnable()
    {
      public void run()
      {
        TimelineNano.Attachment localAttachment = paramTimelineItem.attachment[0];
        AttachmentHelper localAttachmentHelper = new AttachmentHelper(TimelineOptionsHelper.this.activity);
        CachedFilesManager.Type localType = CachedFilesManager.Type.HTML;
        byte[] arrayOfByte;
        try
        {
          arrayOfByte = localAttachmentHelper.getAttachmentBytes(localAttachment.getId(), localType, localAttachment);
          if (arrayOfByte == null)
          {
            TimelineOptionsHelper.logger.w("Attachment proto or HTML string not on file system and could not be downloaded.", new Object[0]);
            return;
          }
        }
        catch (InterruptedException localInterruptedException)
        {
          TimelineOptionsHelper.logger.e(localInterruptedException, "AsyncTask interrupted in the middle of an attachment fetch!", new Object[0]);
          return;
        }
        Intent localIntent = VoiceSearchResultsHelper.newResultsIntent(new String(arrayOfByte), true);
        localIntent.putExtra("recognitionResult", paramTimelineItem.getText());
        localIntent.putExtra("timelineItemId", new TimelineItemId(paramTimelineItem));
        localIntent.putExtra("startTime", -1L);
        TimelineOptionsHelper.this.activity.startActivity(localIntent);
      }
    });
    return true;
  }

  public boolean onSendMessage(TimelineNano.TimelineItem paramTimelineItem, TimelineNano.MenuItem paramMenuItem)
  {
    logger.i("Entering send message flow from timeline item.", new Object[0]);
    this.userEventHelper.log(UserEventAction.SEND_MESSAGE_INITIATED, TimelineHelper.getRedactedSource(paramTimelineItem.getSource()));
    Intent localIntent1 = this.activity.getApplicationContext().registerReceiver(null, new IntentFilter("com.google.glass.action.COMPANION_APP_CONNECTIVITY_CHANGE"));
    boolean bool = false;
    if (localIntent1 != null)
      bool = localIntent1.getBooleanExtra("com.google.glass.extra.STATE", false);
    String str1 = paramMenuItem.getRecipient().getDisplayName();
    String str2 = paramMenuItem.getRecipient().getPhoneNumber();
    int i;
    if ((bool) && (!TextUtils.isEmpty(str2)))
      i = 2;
    while ((str2 == null) || (str1 == null))
    {
      logger.e("Send message initiated but no contact given, bailing.", new Object[0]);
      return false;
      i = 1;
      str2 = paramMenuItem.getRecipient().getEmail();
    }
    logger.i("Sending message to %s, %s", new Object[] { str2, str1 });
    Intent localIntent2 = VoiceMessageHelper.createSendMessageIntent(8, i, str2, str1);
    localIntent2.putExtra("should_finish_turn_screen_off", true);
    this.activity.startActivity(localIntent2);
    return true;
  }

  public boolean onShare(int paramInt, TimelineNano.TimelineItem paramTimelineItem, String paramString)
  {
    Uri localUri = TimelineProvider.TIMELINE_URI.buildUpon().appendPath(paramTimelineItem.getId()).build();
    Intent localIntent = ShareActivityHelper.getBaseShareActivityIntent(this.activity, localUri);
    localIntent.putExtra("item_id", new TimelineItemId(paramTimelineItem));
    localIntent.putExtra("update_timeline_share", true);
    localIntent.putExtra("animateToTimelineItem", true);
    int[] arrayOfInt = paramTimelineItem.sharingFeature;
    boolean bool = false;
    List localList;
    if (arrayOfInt == null)
    {
      localIntent.putExtra("voice_annotation", bool);
      localIntent.putExtra("origin_log_data", paramString);
      localIntent.putExtra("menuAction", paramInt);
      if (21 != paramInt)
        break label229;
      localList = EntitySet.SEND_TARGETS.getEntities(paramTimelineItem);
    }
    label229: 
    while (true)
      label126: if (!localList.isEmpty())
      {
        localIntent.putExtra("valid_share_target_count", localList.size());
        int i = 0;
        while (true)
          if (i < localList.size())
          {
            localIntent.putExtra("valid_share_target" + Integer.valueOf(i), MessageNano.toByteArray((MessageNano)localList.get(i)));
            i++;
            continue;
            bool = Ints.contains(arrayOfInt, 0);
            break;
            localList = EntityCache.getSharedInstance().getShareTargets(paramTimelineItem);
            break label126;
          }
        if (21 == paramInt)
        {
          localIntent.putExtra("progress_string", this.activity.getString(R.string.sharing_menu_send_confirming));
          localIntent.putExtra("confirmed_string", this.activity.getString(R.string.sharing_menu_send_confirmed));
        }
      }
    this.activity.startActivityForResult(localIntent, 1);
    return true;
  }

  public boolean onShowRecipients(TimelineNano.TimelineItem paramTimelineItem)
  {
    Intent localIntent = ShareActivityHelper.getBaseShareActivityIntent(this.activity, null);
    if (!ArrayUtils.isEmpty(paramTimelineItem.shareTarget))
    {
      localIntent.putExtra("valid_share_target_count", paramTimelineItem.shareTarget.length);
      for (int i = 0; i < paramTimelineItem.shareTarget.length; i++)
        localIntent.putExtra("valid_share_target" + Integer.valueOf(i), MessageNano.toByteArray(paramTimelineItem.shareTarget[i]));
    }
    localIntent.putExtra("disable_selection", true);
    this.activity.startActivity(localIntent);
    return true;
  }

  public boolean onVideoCall(TimelineNano.MenuItem paramMenuItem, TimelineNano.TimelineItem paramTimelineItem)
  {
    if ((this.callHelper.isInCall()) || (this.hangoutHelper.isInHangout()))
    {
      logger.w("In a call or hangout, not initiating a new one.", new Object[0]);
      this.soundManager.playSound(SoundManager.SoundId.ERROR);
      return false;
    }
    String str = paramMenuItem.getId();
    TimelineNano.Entity localEntity;
    if (!TextUtils.isEmpty(str))
    {
      logger.d("Re-joining Hangout roomOrConversationId=%s", new Object[] { str });
      if ((!Labs.isEnabled(Labs.Feature.MSG_GW)) || (TextUtils.isEmpty(str)))
        break label232;
      logger.w("Using conversation as share target, if it exists.", new Object[0]);
      localEntity = EntityCache.getSharedInstance().getEntityByGuid(EntityHelper.getEntityGuid(paramTimelineItem.getSource(), paramTimelineItem.getBundleId()));
    }
    while (true)
    {
      if (localEntity == null)
      {
        logger.w("No conversation entity or item creator found, using share target instead.", new Object[0]);
        if (!ArrayUtils.isEmpty(paramTimelineItem.shareTarget))
          localEntity = paramTimelineItem.shareTarget[0];
      }
      if (localEntity == null)
        logger.w("No share target either.  Possibly a dev using adb to directly join a room?", new Object[0]);
      if (!Labs.isEnabled(Labs.Feature.MSG_GW))
        break label270;
      this.hangoutHelper.joinConversation(str, localEntity, false);
      return true;
      logger.d("No room ID given, will create a new Video Call.", new Object[0]);
      break;
      label232: boolean bool = paramTimelineItem.hasCreator();
      localEntity = null;
      if (bool)
      {
        logger.w("Using creator as invite target.", new Object[0]);
        localEntity = paramTimelineItem.getCreator();
      }
    }
    label270: this.hangoutHelper.joinHangout(str, localEntity, false);
    return true;
  }

  @VisibleForTesting
  boolean onVoiceCall(TimelineNano.MenuItem paramMenuItem, TimelineNano.TimelineItem paramTimelineItem)
  {
    String str;
    if (TimelineHelper.isCompanionSms(paramTimelineItem))
      if (TimelineHelper.isCompanionReceivedSms(paramTimelineItem))
        str = paramTimelineItem.getCreator().getPhoneNumber();
    while (true)
    {
      return onVoiceCall(str);
      TimelineNano.Entity[] arrayOfEntity = paramTimelineItem.shareTarget;
      str = null;
      if (arrayOfEntity != null)
      {
        int i = paramTimelineItem.shareTarget.length;
        str = null;
        if (i == 1)
        {
          str = paramTimelineItem.shareTarget[0].getPhoneNumber();
          continue;
          str = paramMenuItem.getId();
          if (TextUtils.isEmpty(str))
          {
            TimelineNano.Entity localEntity2 = paramMenuItem.getRecipient();
            if (localEntity2 != null)
              str = localEntity2.getPhoneNumber();
          }
          if (TextUtils.isEmpty(str))
          {
            TimelineNano.Entity localEntity1 = paramTimelineItem.getCreator();
            if (localEntity1 != null)
              str = localEntity1.getPhoneNumber();
          }
        }
      }
    }
  }

  public boolean onVoiceCall(String paramString)
  {
    if ((this.callHelper.isInCall()) || (this.hangoutHelper.isInHangout()))
    {
      logger.w("In a call or hangout, not initiating a new one.", new Object[0]);
      this.soundManager.playSound(SoundManager.SoundId.ERROR);
      return false;
    }
    this.callHelper.attemptDial(this.activity, paramString);
    return true;
  }

  public boolean onVolume(OptionMenu.Item paramItem)
  {
    if (19 == ((TimelineNano.MenuItem)paramItem.getExtra()).getAction())
      return onVolume();
    return false;
  }

  private static abstract interface OnConfirmedListener
  {
    public abstract void onConfirmed(TimelineNano.MenuItem paramMenuItem);

    public abstract void onDismissed(TimelineNano.MenuItem paramMenuItem);
  }

  public static abstract interface TimelineItemDeletedListener
  {
    public abstract void onConfirmDelete();

    public abstract void onDeleteCanceled();

    public abstract void onDeleted();
  }

  public static abstract interface TimelineOptionProgressListener
  {
    public abstract void onEnd();

    public abstract void onStart();
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.timeline.TimelineOptionsHelper
 * JD-Core Version:    0.6.2
 */