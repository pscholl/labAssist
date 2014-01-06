package com.google.glass.app;

import android.animation.Animator;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.media.AudioManager;
import android.os.Bundle;
import android.os.StrictMode;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.animation.AccelerateInterpolator;

import com.google.common.annotations.VisibleForTesting;
import com.google.glass.input.InputDetectingActivity;
import com.google.glass.input.InputListener;
import com.google.glass.input.SwipeDirection;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.predicates.Assert;
import com.google.glass.sound.SoundManager;
import com.google.glass.userevent.UserEventAction;
import com.google.glass.userevent.UserEventHelper;
import com.google.glass.util.HopHelper;
import com.google.glass.util.PowerHelper;
import com.google.glass.util.SafeBroadcastReceiver;
import com.google.glass.util.SimpleAnimatorListener;
import com.google.glass.widget.MessageDialog;
import com.google.glass.widget.OptionMenu;
import com.google.glass.widget.OptionMenuDialog;
import com.google.glass.widget.horizontalscroll.HorizontallyTuggableView;

import de.tud.labAssist.R;

public abstract class GlassActivity extends InputDetectingActivity
{
  public static final String EXTRA_SHOULD_FINISH_TURN_SCREEN_OFF = "should_finish_turn_screen_off";
  private Menu androidMenu;
  private View contentView;
  private boolean isOptionsMenuShowing;
  private OptionMenu menu;

  @VisibleForTesting
  protected OptionMenuDialog menuDialog;
  private MessageDialog messageDialog;
  private PowerHelper powerHelper;
  private boolean rebuildMenu;
  private final SafeBroadcastReceiver screenOffReceiver = new ScreenOffBroadcastReceiver();
  private boolean shouldTurnScreenOff;
  private HorizontallyTuggableView tuggableContentView;

  public static GlassActivity from(Context paramContext)
  {
    if (paramContext == null)
      return null;
    if ((paramContext instanceof GlassActivity))
      return (GlassActivity)paramContext;
    if ((paramContext instanceof ContextWrapper))
      return from(((ContextWrapper)paramContext).getBaseContext());
    return null;
  }

  private void handleIntent(Intent paramIntent)
  {
    if (paramIntent == null)
    {
      this.shouldTurnScreenOff = false;
      return;
    }
    this.shouldTurnScreenOff = paramIntent.getBooleanExtra("should_finish_turn_screen_off", false);
  }

  public void closeOptionsMenu()
  {
    if (this.menuDialog != null)
      this.menuDialog.dismiss();
  }

  public View findViewById(int paramInt)
  {
    if (this.tuggableContentView != null)
      return this.tuggableContentView.getView().findViewById(paramInt);
    return super.findViewById(paramInt);
  }

  public final void finishAndTurnScreenOff()
  {
    if (isFinishing())
    {
      getLogger().w("Not turning off screen because we're already finishing.", new Object[0]);
      return;
    }
    getLogger().d("Animating content view off-screen.", new Object[0]);
    int i = getContentView().getMeasuredHeight();
    getContentView().animate().translationYBy(i).setInterpolator(new AccelerateInterpolator()).setDuration(getResources().getInteger(R.integer.activity_animation_duration_ms)).setListener(new SimpleAnimatorListener()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        GlassActivity.this.getLogger().d("Done animating content view off-screen, finishing.", new Object[0]);
        GlassActivity.this.finish();
      }
    });
    this.powerHelper.goToSleep();
  }

  public final void finishAndTurnScreenOffIfRequested()
  {
    if (shouldFinishTurnScreenOff())
    {
      finishAndTurnScreenOff();
      return;
    }
    finish();
  }

  public AudioManager getAudioManager()
  {
    return getGlassApplication().getAudioManager();
  }

  protected View getContentView()
  {
    return this.contentView;
  }

  protected GlassApplication getGlassApplication()
  {
    return GlassApplication.from(this);
  }

  @VisibleForTesting
  public CharSequence getMessageText()
  {
//    if (isMessageShowing())
//TODO      return ((TextView)this.messageDialog.findViewById(R.id.label)).getText();
    return null;
  }

  @VisibleForTesting
  public OptionMenu getOptionMenu()
  {
    return this.menu;
  }

  @VisibleForTesting
  public OptionMenuDialog getOptionMenuDialog()
  {
    return this.menuDialog;
  }

  public SoundManager getSoundManager()
  {
    return getGlassApplication().getSoundManager();
  }

  public UserEventHelper getUserEventHelper()
  {
    return getGlassApplication().getUserEventHelper();
  }

  public void hideMessageDialog()
  {
    if (isMessageShowing())
      this.messageDialog.dismiss();
  }

  public void invalidateOptionsMenu()
  {
    closeOptionsMenu();
    this.menuDialog = null;
    this.rebuildMenu = true;
  }

  public boolean isMessageShowing()
  {
    return (this.messageDialog != null) && (this.messageDialog.isShowing());
  }

  @VisibleForTesting
  public boolean isOptionsMenuShowing()
  {
    return this.isOptionsMenuShowing;
  }

  protected void logUserEvent(UserEventAction paramUserEventAction)
  {
    getUserEventHelper().log(paramUserEventAction);
  }

  @VisibleForTesting
  public void logUserEvent(UserEventAction paramUserEventAction, String paramString)
  {
    getUserEventHelper().log(paramUserEventAction, paramString);
  }

  public boolean onConfirm()
  {
//    if (shouldUseAndroidMenus())
//    {
//      this.androidMenu = null;
//      super.openOptionsMenu();
//      if ((this.androidMenu == null) || (!this.androidMenu.hasVisibleItems()));
//      for (i = 1; (shouldAllowHorizontalTugging()) && (this.tuggableContentView != null) && (this.tuggableContentView.onConfirm()); i = 0)
//        return true;
//    }
    if ((this.menuDialog == null) || (!this.menuDialog.isShowing()))
        openOptionsMenu();
      
    getSoundManager().playSound(SoundManager.SoundId.TAP);
    return true;
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.powerHelper = new PowerHelper(this);
    StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectAll().penaltyLog().build());
    StrictMode.setVmPolicy(new StrictMode.VmPolicy.Builder().detectAll().penaltyLog().build());
    int i = provideContentView();
    if (i == -1)
      getLogger().w("No content view provided.", new Object[0]);

    if (shouldScreenOffFinish())
      this.screenOffReceiver.register(this);
    handleIntent(getIntent());

    if (shouldAllowHorizontalTugging())
    {
      getLogger().d("Inflating content view into tuggable container.", new Object[0]);
      super.setContentView(R.layout.glass_activity_tuggable);
      this.tuggableContentView = ((HorizontallyTuggableView)findViewById(R.id.content_view_container));
      this.contentView = LayoutInflater.from(this).inflate(i, null);
      this.tuggableContentView.setView(this.contentView);
    }
    else
    {
      getLogger().d("Inflating content view to stub.", new Object[0]);
      super.setContentView(R.layout.glass_activity);
      ViewStub localViewStub = (ViewStub)findViewById(R.id.content_view_stub);
      localViewStub.setLayoutResource(i);
      this.contentView = localViewStub.inflate();
    }
  }

  @Deprecated
  public boolean onCreateOptionsMenu(OptionMenu paramOptionMenu)
  {
    return false;
  }

  protected void onDestroy()
  {
    if (shouldScreenOffFinish())
      this.screenOffReceiver.unregister(this);
    super.onDestroy();
  }

  protected void onDisallowedInput()
  {
    getSoundManager().playSound(SoundManager.SoundId.DISALLOWED_ACTION);
  }

  public boolean onDismiss(InputListener.DismissAction paramDismissAction)
  {
    if (!shouldAllowDismiss())
    {
      HopHelper.performHopAnimation(getContentView(), SwipeDirection.DOWN);
      return false;
    }
    getSoundManager().playSound(SoundManager.SoundId.DISMISS);
    finishAndTurnScreenOffIfRequested();
    return true;
  }

  public boolean onFingerCountChanged(int paramInt, boolean paramBoolean)
  {
    if ((shouldAllowHorizontalTugging()) && (this.tuggableContentView != null))
      return this.tuggableContentView.onFingerCountChanged(paramInt, paramBoolean);
    return super.onFingerCountChanged(paramInt, paramBoolean);
  }

  public void onMenuOpened(int paramInt, OptionMenu paramOptionMenu)
  {
    this.isOptionsMenuShowing = true;
  }

  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    handleIntent(paramIntent);
  }

  public boolean onOptionsItemSelected(OptionMenu.Item paramItem)
  {
    return false;
  }

  public void onOptionsMenuCanceled(OptionMenu paramOptionMenu)
  {
  }

  public void onOptionsMenuClosed(OptionMenu paramOptionMenu)
  {
    this.isOptionsMenuShowing = false;
  }

  protected void onPause()
  {
    closeOptionsMenu();
    if (shouldHideMessageDialogOnPause())
      hideMessageDialog();
    if (this.tuggableContentView != null)
      this.tuggableContentView.deactivate();
    super.onPause();
  }

  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    this.androidMenu = paramMenu;
    return true;
  }

  @Deprecated
  public boolean onPrepareOptionsMenu(OptionMenu paramOptionMenu)
  {
    return true;
  }

  public boolean onPrepareSwipe(int paramInt1, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, int paramInt2, int paramInt3)
  {
    if ((shouldAllowHorizontalTugging()) && (this.tuggableContentView != null))
      return this.tuggableContentView.onPrepareSwipe(paramInt1, paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramInt2, paramInt3);
    return false;
  }

  protected void onResume()
  {
    super.onResume();
    if (this.tuggableContentView != null)
      this.tuggableContentView.activate();
  }

  protected void onStart()
  {
    super.onStart();
    getLogger().d("Resetting content view to Y=0.", new Object[0]);
    View localView = getContentView();
    localView.animate().setListener(null).cancel();
    localView.setY(0.0F);
    localView.setTranslationY(0.0F);
  }

  public boolean onSwipe(int paramInt, SwipeDirection paramSwipeDirection)
  {
    if (paramSwipeDirection == SwipeDirection.UP)
    {
      HopHelper.performHopAnimation(getContentView(), SwipeDirection.UP);
      return true;
    }
    if ((shouldAllowHorizontalTugging()) && (this.tuggableContentView != null))
      this.tuggableContentView.onSwipe(paramInt, paramSwipeDirection);
    return false;
  }

  public void openOptionsMenu()
  {
    // TODO: looks nasty
    if (shouldUseAndroidMenus())
      super.openOptionsMenu();
    do
    {
      if ((this.menu == null) || (this.rebuildMenu))
      {
        if (this.menu == null)
          this.menu = new OptionMenu(this);
        while (!onCreateOptionsMenu(this.menu))
        {
          this.menu = null;
          if (this.rebuildMenu)
            this.menu.clearItems();
        }
        this.rebuildMenu = false;
      }
    }
    while ((!onPrepareOptionsMenu(this.menu)) || (this.menu.getVisibleItemCount() == 0));
    if (this.menuDialog == null)
      this.menuDialog = new OptionMenuDialog(this, getSoundManager(), new OptionMenuDialog.Listener()
      {
        private OptionMenu.Item lastSelectedItem;

        public boolean onCameraButtonPressed()
        {
          return GlassActivity.this.onCameraButtonPressed();
        }

        public void onClosed()
        {
          if (this.lastSelectedItem != null)
          {
            GlassActivity.this.onOptionsItemSelected(this.lastSelectedItem);
            this.lastSelectedItem = null;
          }
          if ((GlassActivity.this.menuDialog != null) && (GlassActivity.this.menuDialog.wasCanceled()))
            GlassActivity.this.onOptionsMenuCanceled(GlassActivity.this.menu);
          GlassActivity.this.onOptionsMenuClosed(GlassActivity.this.menu);
        }

        public void onDisallowedInput()
        {
          GlassActivity.this.onDisallowedInput();
        }

        public boolean onItemSelected(OptionMenu.Item paramAnonymousItem)
        {
          this.lastSelectedItem = paramAnonymousItem;
          return true;
        }

        public boolean shouldAllowCameraButton()
        {
          return GlassActivity.this.shouldAllowCameraButton();
        }
      });
    this.menuDialog.setMenu(this.menu);
    this.menuDialog.show();
    onMenuOpened(0, this.menu);
  }

  protected int provideContentView()
  {
    return -1;
  }

  @Deprecated
  public void setContentView(int paramInt)
  {
    super.setContentView(paramInt);
  }

  @Deprecated
  public void setContentView(View paramView)
  {
    super.setContentView(paramView);
  }

  @Deprecated
  public void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.setContentView(paramView, paramLayoutParams);
  }

  @VisibleForTesting
  public void setPowerHelperForTest(PowerHelper paramPowerHelper)
  {
    Assert.assertIsTest();
    this.powerHelper = paramPowerHelper;
  }

  protected boolean shouldAllowDismiss()
  {
    return true;
  }

  protected boolean shouldAllowHorizontalTugging()
  {
    return true;
  }

  protected boolean shouldFinishTurnScreenOff()
  {
    return this.shouldTurnScreenOff;
  }

  protected boolean shouldHideMessageDialogOnPause()
  {
    return true;
  }

  protected boolean shouldScreenOffFinish()
  {
    return true;
  }

  @Deprecated
  protected boolean shouldUseAndroidMenus()
  {
    return false;
  }

  public void showError(MessageDialog paramMessageDialog)
  {
    showMessage(paramMessageDialog);
  }

  public void showMessage(int paramInt)
  {
    showMessage(getString(paramInt));
  }

  public void showMessage(MessageDialog paramMessageDialog)
  {
    hideMessageDialog();
    this.messageDialog = paramMessageDialog;
    paramMessageDialog.show();
  }

  public void showMessage(String paramString)
  {
    showMessage(new MessageDialog.Builder(this, getSoundManager()).setMessage(paramString).setIcon(R.drawable.ic_exclamation_big).build());
  }

  private class ScreenOffBroadcastReceiver extends SafeBroadcastReceiver
  {
    private final FormattingLogger logger = FormattingLoggers.getLogger(GlassActivity.this.getLogger(), "screenOffReceiver");

    private ScreenOffBroadcastReceiver()
    {
      super();
    }

    public FormattingLogger getLogger()
    {
      return this.logger;
    }

    public void onReceiveInternal(Context paramContext, Intent paramIntent)
    {
      GlassActivity.this.finish();
    }
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.app.GlassActivity
 * JD-Core Version:    0.6.2
 */