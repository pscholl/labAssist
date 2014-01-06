package com.google.glass.voice;

import android.animation.Animator;
import android.app.PendingIntent;
import android.app.PendingIntent.CanceledException;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewPropertyAnimator;
import com.google.android.glass.app.VoiceTrigger;
import com.google.common.collect.Lists;
import com.google.glass.input.InputListener.DismissAction;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.sound.SoundManager;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.glass.userevent.UserEventAction;
import com.google.glass.util.SimpleAnimatorListener;
import com.google.glass.widget.MessageDialog.Builder;
import com.google.glass.widget.MessageDialog.SimpleListener;
import com.google.glass.widget.SliderView;
import com.google.glass.widget.TypophileTextView;
import java.io.ByteArrayOutputStream;

public class VoiceAnnotationActivity extends BaseVoiceInputActivity
{
  private static final long ANIMATE_UP_DURATION_MILLIS = 220L;
  private static final int BUNDLE_MAX_SIZE_BYTES = 1048576;
  static final long CANCEL_TIP_FADE_ANIMATION_DURATION_MILLIS = 500L;
  private static final int INTENT_MODE_RECOGNIZER_INTENT = 0;
  private static final int INTENT_MODE_VOICE_ANNOTATION_HELPER = 1;
  private static final int MSG_CONFIRM_ANNOTATION = 0;
  private static final long PROGRESS_SLIDER_COMMIT_ANNOTATION_MS = 1000L;
  private static final int TOP_MARGIN = 40;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private ByteArrayOutputStream audioOutputStream;
  private TypophileTextView cancelTip;
  private final Handler handler = new Handler(Looper.getMainLooper())
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      switch (paramAnonymousMessage.what)
      {
      default:
      case 0:
      }
      do
        return;
      while (VoiceAnnotationActivity.this.isFinishing());
      VoiceAnnotationActivity.this.confirmAnnotation();
    }
  };
  private boolean isRecognitionResultExpanded = false;
  private String recognitionResult;
  private boolean recordAudio;
  private String replyToId;
  private boolean showAddingDialog = false;
  private boolean showGuardPhrase = true;
  private SliderView sliderView;

  private void attachResult(Bundle paramBundle, String paramString)
  {
    paramBundle.putStringArrayList("android.speech.extra.RESULTS", Lists.newArrayList(new String[] { paramString }));
  }

  private boolean callingActivityHasRecordAudioPermission()
  {
    return getPackageManager().checkPermission("android.permission.RECORD_AUDIO", getCallingPackage()) == 0;
  }

  private void confirmAnnotation()
  {
    String str;
    if (!isFinishing())
    {
      str = this.recognitionResult;
      if (!TextUtils.isEmpty(str))
        break label38;
      logger.d("Empty annotation returned. Finishing...", new Object[0]);
      finish();
    }
    label38: 
    do
    {
      return;
      if (this.showAddingDialog)
      {
        showAddingDialog(str);
        return;
      }
      if (shouldShowCommitSlider(getIntent()))
      {
        showCommitSlider(str);
        return;
      }
    }
    while (isFinishing());
    onAnnotationCommitted(str);
    getSoundManager().playSound(SoundManager.SoundId.SUCCESS);
  }

  private String getAction()
  {
    return getIntent().getAction();
  }

  private Bundle getForwardExtras()
  {
    return getIntent().getBundleExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE");
  }

  private int getIntentMode()
  {
    if (getAction().equals("android.speech.action.RECOGNIZE_SPEECH"))
      return 0;
    return 1;
  }

  private PendingIntent getPendingIntent()
  {
    return (PendingIntent)getIntent().getParcelableExtra("android.speech.extra.RESULTS_PENDINGINTENT");
  }

  private boolean hasPendingIntent()
  {
    return ("android.speech.action.RECOGNIZE_SPEECH".equals(getAction())) && (getIntent().hasExtra("android.speech.extra.RESULTS_PENDINGINTENT"));
  }

  private boolean hasVoiceTrigger()
  {
    return getIntent().hasExtra("trigger");
  }

  private void launchPendingIntent(String paramString)
  {
    PendingIntent localPendingIntent = getPendingIntent();
    Bundle localBundle = getForwardExtras();
    if (localBundle == null)
      localBundle = new Bundle();
    attachResult(localBundle, paramString);
    Intent localIntent = new Intent().putExtras(localBundle);
    try
    {
      localPendingIntent.send(this, 0, localIntent);
      return;
    }
    catch (PendingIntent.CanceledException localCanceledException)
    {
      getLogger().w("Pending intent canceled, cannot forward", new Object[0]);
    }
  }

  private void launchVoiceTrigger(String paramString)
  {
    VoiceTrigger localVoiceTrigger = (VoiceTrigger)getIntent().getParcelableExtra("trigger");
    Bundle localBundle = new Bundle();
    attachResult(localBundle, paramString);
    localVoiceTrigger.activate(this, localBundle);
  }

  private void recordAudioData(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.audioOutputStream == null)
      this.audioOutputStream = new ByteArrayOutputStream();
    this.audioOutputStream.write(paramArrayOfByte, paramInt1, paramInt2);
  }

  private void resetRecording()
  {
    if (this.audioOutputStream == null)
      this.audioOutputStream = new ByteArrayOutputStream();
    this.audioOutputStream.reset();
  }

  private void showCancelTip()
  {
    this.cancelTip.setAlpha(0.0F);
    this.cancelTip.setVisibility(0);
    this.cancelTip.animate().alpha(1.0F).setDuration(500L);
  }

  String getCustomPromptText(Intent paramIntent)
  {
    if (getIntentMode() == 0)
      return paramIntent.getStringExtra("android.speech.extra.PROMPT");
    return paramIntent.getStringExtra("prompt_msg");
  }

  public FormattingLogger getLogger()
  {
    return logger;
  }

  protected CharSequence getPromptText()
  {
    Intent localIntent = getIntent();
    String str;
    if (!shouldShowPrompt(localIntent))
      str = "";
    do
    {
      return str;
      str = getCustomPromptText(localIntent);
    }
    while (!TextUtils.isEmpty(str));
    return super.getPromptText();
  }

  protected CharSequence getSelectedCommandText()
  {
    String str = getIntent().getStringExtra("header_msg");
    if (!TextUtils.isEmpty(str))
      return str;
    return super.getSelectedCommandText();
  }

  protected int getSelectedCommandTextResId()
  {
    return R.string.voice_menu_item_add_caption;
  }

  protected int getSpeakNowPromptResId()
  {
    return R.string.voice_annotation_speak_your_message;
  }

  protected int getType()
  {
    return 5;
  }

  void onAnnotationCommitted(String paramString)
  {
    if (hasVoiceTrigger())
      launchVoiceTrigger(paramString);
    while (true)
    {
      finish();
      return;
      if (!hasPendingIntent())
        break;
      launchPendingIntent(paramString);
    }
    Intent localIntent = new Intent();
    if (this.recordAudio);
    for (byte[] arrayOfByte = this.audioOutputStream.toByteArray(); ; arrayOfByte = null)
    {
      setResultExtras(localIntent, paramString, arrayOfByte);
      setResult(-1, localIntent);
      break;
    }
  }

  public boolean onConfirm()
  {
    if (VoiceConfig.OFF.equals(getVoiceConfig()))
    {
      this.handler.removeMessages(0);
      this.handler.sendMessage(this.handler.obtainMessage(0));
      return true;
    }
    return super.onConfirm();
  }

  public void onCreate(Bundle paramBundle)
  {
    boolean bool1 = true;
    super.onCreate(paramBundle);
    Intent localIntent = getIntent();
    View localView = findViewById(R.id.header);
    int i;
    boolean bool2;
    if (shouldHideHeader(localIntent))
    {
      i = 8;
      localView.setVisibility(i);
      if (localIntent.getBooleanExtra("hide_guard", false))
        break label159;
      bool2 = bool1;
      label54: this.showGuardPhrase = bool2;
      this.cancelTip = ((TypophileTextView)findViewById(R.id.cancel_tip));
      this.sliderView = ((SliderView)findViewById(R.id.progress_slider));
      if ((!wantAudioData(localIntent)) || (!callingActivityHasRecordAudioPermission()))
        break label165;
    }
    while (true)
    {
      this.recordAudio = bool1;
      if (localIntent.hasExtra("reply_to_id"))
        this.replyToId = localIntent.getStringExtra("reply_to_id");
      this.showAddingDialog = shouldShowAddingDialog(localIntent);
      setVoiceConfig(DICTATION);
      setRetryVoiceConfig(DICTATION);
      return;
      i = 0;
      break;
      label159: bool2 = false;
      break label54;
      label165: bool1 = false;
    }
  }

  public boolean onDismiss(InputListener.DismissAction paramDismissAction)
  {
    logger.d("onDismiss", new Object[0]);
    getSoundManager().playSound(SoundManager.SoundId.DISMISS);
    logUserEvent(UserEventAction.VOICE_MESSAGE_DISMISS, "t");
    this.handler.removeMessages(0);
    this.sliderView.stopProgress();
    detachVoiceInputCallback();
    this.recognitionResult = null;
    setResult(0);
    finish();
    return true;
  }

  public void onPause()
  {
    super.onPause();
    if (this.recordAudio)
      resetRecording();
  }

  protected void onRecognitionResult(String paramString)
  {
    if (this.recognitionResult != null)
      logger.e("PROBLEM: Recognition result was already set!", new Object[0]);
    String str = cleanRecognitionResults(paramString).toString();
    this.recognitionResult = str;
    setVoiceConfig(VoiceConfig.OFF);
    showCancelTip();
    long l = getResultDuration(str);
    this.handler.sendMessageDelayed(this.handler.obtainMessage(0), l);
  }

  public boolean onResampledAudioData(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (!this.recordAudio)
      return false;
    recordAudioData(paramArrayOfByte, paramInt1, paramInt2);
    return true;
  }

  protected void onUpdateRecognizedText()
  {
    if ((!this.isRecognitionResultExpanded) && (getRecognizedTextLineCount() > 1))
    {
      this.isRecognitionResultExpanded = true;
      StreamingTextView localStreamingTextView = (StreamingTextView)findViewById(R.id.streaming_text);
      float f = localStreamingTextView.getY() - 40.0F;
      findViewById(R.id.header).animate().translationY(-f).setDuration(220L).start();
      localStreamingTextView.animate().translationY(-f).setDuration(220L).start();
    }
  }

  protected int provideContentView()
  {
    return R.layout.voice_input_view;
  }

  void setResultExtras(Intent paramIntent, String paramString, byte[] paramArrayOfByte)
  {
    if (getIntentMode() == 0)
      paramIntent.putStringArrayListExtra("android.speech.extra.RESULTS", Lists.newArrayList(new String[] { paramString }));
    while (true)
    {
      return;
      paramIntent.putExtra("annotation_result", paramString);
      if (paramArrayOfByte != null)
      {
        if (paramArrayOfByte.length >= 1048576)
          break label78;
        paramIntent.putExtra("audio_data", paramArrayOfByte);
      }
      while (!TextUtils.isEmpty(this.replyToId))
      {
        paramIntent.putExtra("reply_to_id", this.replyToId);
        return;
        label78: FormattingLogger localFormattingLogger = logger;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(paramArrayOfByte.length);
        localFormattingLogger.w("Audio data too large to fit in Intent; byte length: %d", arrayOfObject);
      }
    }
  }

  boolean shouldHideHeader(Intent paramIntent)
  {
    if (paramIntent.getBooleanExtra("hide_header", false));
    do
    {
      return true;
      if (getIntentMode() == 1)
        return false;
    }
    while (!paramIntent.hasExtra("header_msg"));
    return false;
  }

  protected boolean shouldPlayVoiceResultSound()
  {
    return true;
  }

  public boolean shouldProvideAudioData()
  {
    return this.recordAudio;
  }

  boolean shouldShowAddingDialog(Intent paramIntent)
  {
    if (getIntentMode() == 0);
    while (paramIntent.getBooleanExtra("hide_adding_dialog", false))
      return false;
    return true;
  }

  boolean shouldShowCommitSlider(Intent paramIntent)
  {
    return getIntentMode() == 1;
  }

  protected boolean shouldShowGuardPhrase()
  {
    return this.showGuardPhrase;
  }

  boolean shouldShowPrompt(Intent paramIntent)
  {
    if (getIntentMode() == 0);
    while (!paramIntent.getBooleanExtra("hide_prompt", false))
      return true;
    return false;
  }

  public void showAddingDialog(final String paramString)
  {
    showMessage(new MessageDialog.Builder(this, getSoundManager()).setTemporaryMessage(R.string.voice_annotation_adding).setTemporaryIcon(R.drawable.ic_message_medium).setSound(SoundManager.SoundId.SUCCESS).setMessage(R.string.voice_annotation_added).setIcon(R.drawable.ic_done_medium).setListener(new MessageDialog.SimpleListener()
    {
      public void onDone()
      {
        VoiceAnnotationActivity.this.onAnnotationCommitted(paramString);
      }
    }).build());
  }

  public void showCommitSlider(final String paramString)
  {
    this.sliderView.startProgress(1000L, new SimpleAnimatorListener()
    {
      public void onAnimationCancel(Animator paramAnonymousAnimator)
      {
        VoiceAnnotationActivity.this.logUserEvent(UserEventAction.VOICE_MESSAGE_DISMISS, "c");
        VoiceAnnotationActivity.this.setResult(0);
        VoiceAnnotationActivity.this.finish();
      }

      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        if (!VoiceAnnotationActivity.this.isFinishing())
        {
          VoiceAnnotationActivity.this.onAnnotationCommitted(paramString);
          VoiceAnnotationActivity.this.getSoundManager().playSound(SoundManager.SoundId.SUCCESS);
        }
      }
    });
  }

  protected boolean showProgressOnRecognitionResult()
  {
    return false;
  }

  boolean wantAudioData(Intent paramIntent)
  {
    if (getIntentMode() == 0)
      return false;
    return paramIntent.getBooleanExtra("want_audio_data", false);
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.VoiceAnnotationActivity
 * JD-Core Version:    0.6.2
 */