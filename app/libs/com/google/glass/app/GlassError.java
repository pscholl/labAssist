package com.google.glass.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.common.R.drawable;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.sound.SoundManager;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.glass.util.SettingsHelper;
import com.google.glass.widget.MessageDialog.Builder;
import com.google.glass.widget.MessageDialog.SimpleListener;

public class GlassError
{

  @VisibleForTesting
  public static String lastErrorMessageShown;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private boolean autoHide;
  private boolean finishWhenDone;
  private int iconId = R.drawable.ic_exclamation_big;
  private OnConfirmAction onConfirmAction;
  private Runnable onConfirmRunnable;
  private int primaryMessageId;
  private int secondaryMessageId;

  private SoundManager getSoundManager(Activity paramActivity)
  {
    return GlassApplication.from(paramActivity).getSoundManager();
  }

  Runnable getConfirmActionRunnable(OnConfirmAction paramOnConfirmAction, final Context paramContext)
  {
    if (paramOnConfirmAction == null)
      return null;
    switch (4.$SwitchMap$com$google$glass$app$GlassError$OnConfirmAction[paramOnConfirmAction.ordinal()])
    {
    default:
      logger.w("Unexpected onConfirmAction: %s", new Object[] { paramOnConfirmAction });
      return null;
    case 1:
      return new Runnable()
      {
        public void run()
        {
          new SettingsHelper(paramContext).goToSettingsCover();
        }
      };
    case 2:
    }
    return new Runnable()
    {
      public void run()
      {
        paramContext.sendBroadcast(new Intent("com.google.glass.action.ACTION_SHOW_CONNECTIVITY_STATUS_CARD"));
      }
    };
  }

  public int getIconId()
  {
    return this.iconId;
  }

  public OnConfirmAction getOnConfirmAction()
  {
    return this.onConfirmAction;
  }

  public Runnable getOnConfirmRunnable()
  {
    return this.onConfirmRunnable;
  }

  Runnable getOnConfirmRunnable(Context paramContext)
  {
    if (getOnConfirmRunnable() != null)
      return getOnConfirmRunnable();
    return getConfirmActionRunnable(getOnConfirmAction(), paramContext);
  }

  public int getPrimaryMessageId()
  {
    return this.primaryMessageId;
  }

  public int getSecondaryMessageId()
  {
    return this.secondaryMessageId;
  }

  public boolean isAutoHide()
  {
    return this.autoHide;
  }

  public GlassError setAutoHide(boolean paramBoolean)
  {
    this.autoHide = paramBoolean;
    return this;
  }

  public GlassError setFinishWhenDone(boolean paramBoolean)
  {
    this.finishWhenDone = paramBoolean;
    return this;
  }

  public GlassError setIconId(int paramInt)
  {
    this.iconId = paramInt;
    return this;
  }

  public GlassError setOnConfirmAction(OnConfirmAction paramOnConfirmAction)
  {
    this.onConfirmAction = paramOnConfirmAction;
    return this;
  }

  public GlassError setOnConfirmRunnable(Runnable paramRunnable)
  {
    this.onConfirmRunnable = paramRunnable;
    return this;
  }

  public GlassError setPrimaryMessageId(int paramInt)
  {
    this.primaryMessageId = paramInt;
    return this;
  }

  public GlassError setSecondaryMessageId(int paramInt)
  {
    this.secondaryMessageId = paramInt;
    return this;
  }

  public boolean shouldFinishWhenDone()
  {
    return this.finishWhenDone;
  }

  public void show(final GlassActivity paramGlassActivity)
  {
    final SoundManager localSoundManager = getSoundManager(paramGlassActivity);
    int i = getSecondaryMessageId();
    final Runnable localRunnable = getOnConfirmRunnable(paramGlassActivity);
    MessageDialog.Builder localBuilder = new MessageDialog.Builder(paramGlassActivity, localSoundManager);
    localBuilder.setExpanded(true).setAutoHide(isAutoHide()).setHandleConfirm(true).setMessage(getPrimaryMessageId()).setIcon(getIconId()).setSound(SoundManager.SoundId.ERROR).setListener(new MessageDialog.SimpleListener()
    {
      public boolean onConfirmed()
      {
        if (localRunnable != null)
        {
          localSoundManager.playSound(SoundManager.SoundId.TAP);
          localRunnable.run();
          return true;
        }
        localSoundManager.playSound(SoundManager.SoundId.DISALLOWED_ACTION);
        return false;
      }

      public void onDismissed()
      {
        onDone();
      }

      public void onDone()
      {
        if (GlassError.this.shouldFinishWhenDone())
          paramGlassActivity.finish();
      }
    });
    if (i != 0)
      localBuilder.setSecondaryMessage(i);
    String str = paramGlassActivity.getString(getPrimaryMessageId());
    logger.d("Showing error: %s", new Object[] { str });
    lastErrorMessageShown = str;
    paramGlassActivity.showError(localBuilder.build());
  }

  public static enum OnConfirmAction
  {
    static
    {
      OnConfirmAction[] arrayOfOnConfirmAction = new OnConfirmAction[2];
      arrayOfOnConfirmAction[0] = GO_TO_SETTINGS;
      arrayOfOnConfirmAction[1] = SHOW_CONNECTIVITY_STATUS_CARD;
    }
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.app.GlassError
 * JD-Core Version:    0.6.2
 */