package com.google.glass.widget;

import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import com.google.glass.common.R.drawable;
import com.google.glass.common.R.id;
import com.google.glass.companion.RemoteCompanionProxy;
import com.google.glass.entity.EntityHelper;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.util.DeferredContentLoader;
import com.google.glass.util.GlasswareIconLoadingTask;
import com.google.glass.util.GlasswareIconLoadingTask.IconSize;
import com.google.glass.util.Labs;
import com.google.glass.util.Labs.Feature;
import com.google.googlex.glass.common.proto.TimelineNano.Entity;
import com.google.googlex.glass.common.proto.TimelineNano.MessagingPersona;

public class GlasswareIconBinder
{
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private RemoteCompanionProxy companionProxy;

  public GlasswareIconBinder(RemoteCompanionProxy paramRemoteCompanionProxy)
  {
    this.companionProxy = paramRemoteCompanionProxy;
  }

  public void bind(TimelineNano.Entity paramEntity, View paramView)
  {
    if (paramEntity == null);
    String str;
    do
    {
      return;
      str = EntityHelper.getProjectId(paramEntity);
    }
    while ((TextUtils.isEmpty(str)) || (paramView == null));
    ImageView localImageView = (ImageView)paramView.findViewById(R.id.glassware_icon);
    if (localImageView == null)
    {
      logger.w("View does not contain expected glassware icon view", new Object[0]);
      return;
    }
    localImageView.setVisibility(0);
    int i;
    label88: boolean bool;
    label165: TimelineNano.MessagingPersona localMessagingPersona;
    if ((Labs.isEnabled(Labs.Feature.MSG_GW)) && (EntityHelper.isFocusEntity(paramEntity)))
    {
      if (!TextUtils.isEmpty(paramEntity.getEmail()))
      {
        i = 1;
        if (TextUtils.isEmpty(paramEntity.getPhoneNumber()))
          break label165;
      }
      for (int j = 1; ; j = 0)
      {
        bool = this.companionProxy.isSmsEnabled();
        switch (paramEntity.getMessagingOption())
        {
        default:
          if ((j == 0) || (!bool))
            break label341;
          localImageView.setImageResource(R.drawable.ic_message_medium);
          return;
          i = 0;
          break label88;
        case 0:
        case 1:
        case 2:
        }
      }
      localMessagingPersona = EntityHelper.getMessagingPersona(paramEntity);
      if ((localMessagingPersona != null) && (localMessagingPersona.hasSource()) && (!TextUtils.isEmpty(localMessagingPersona.getSource())))
      {
        if (!localMessagingPersona.getSource().startsWith("api:"))
          break label262;
        str = localMessagingPersona.getSource().substring("api:".length());
      }
    }
    while (true)
    {
      GlasswareIconLoadingTask localGlasswareIconLoadingTask = new GlasswareIconLoadingTask(paramView.getContext(), str, GlasswareIconLoadingTask.IconSize.MEDIUM, localImageView);
      DeferredContentLoader.load(localGlasswareIconLoadingTask);
      paramView.setTag(R.id.tag_loading_task, localGlasswareIconLoadingTask);
      return;
      label262: str = localMessagingPersona.getSource();
      continue;
      localImageView.setImageResource(R.drawable.ic_email_medium);
      return;
      if (bool)
      {
        localImageView.setImageResource(R.drawable.ic_message_medium);
        return;
      }
      if (i != 0)
      {
        localImageView.setImageResource(R.drawable.ic_email_medium);
        return;
      }
      FormattingLogger localFormattingLogger1 = logger;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = paramEntity.getId();
      localFormattingLogger1.w("No companion device or email for entity with SMS messaging preference [entityId=%s].", arrayOfObject1);
      continue;
      label341: if (i != 0)
      {
        localImageView.setImageResource(R.drawable.ic_email_medium);
        return;
      }
      FormattingLogger localFormattingLogger2 = logger;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = paramEntity.getId();
      localFormattingLogger2.w("No companion device or email for entity with default messaging preference [entityId=%s].", arrayOfObject2);
    }
  }

  public void recycle(View paramView)
  {
    if (paramView == null);
    GlasswareIconLoadingTask localGlasswareIconLoadingTask;
    do
    {
      return;
      localGlasswareIconLoadingTask = (GlasswareIconLoadingTask)paramView.getTag(R.id.tag_loading_task);
    }
    while (localGlasswareIconLoadingTask == null);
    localGlasswareIconLoadingTask.cancel(false);
    paramView.setTag(R.id.tag_loading_task, null);
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.widget.GlasswareIconBinder
 * JD-Core Version:    0.6.2
 */