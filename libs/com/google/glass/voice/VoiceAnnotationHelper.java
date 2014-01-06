package com.google.glass.voice;

import android.app.Activity;
import android.content.Intent;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;

public class VoiceAnnotationHelper
  implements VoiceInputActivityHelper
{
  public static final String ACTION_VOICE_ANNOTATION = "com.google.glass.ACTION_VOICE_ANNOTATION";
  public static final String EXTRA_ANNOTATION_RESULT = "annotation_result";
  public static final String EXTRA_AUDIO_DATA = "audio_data";
  public static final String EXTRA_HEADER_MSG = "header_msg";
  public static final String EXTRA_HIDE_ADDING_DIALOG = "hide_adding_dialog";
  public static final String EXTRA_HIDE_GUARD_PHRASE = "hide_guard";
  public static final String EXTRA_HIDE_HEADER = "hide_header";
  public static final String EXTRA_HIDE_PROMPT = "hide_prompt";
  public static final String EXTRA_PROMPT_MESSAGE = "prompt_msg";
  public static final String EXTRA_REPLY_TO_ID = "reply_to_id";
  public static final String EXTRA_VOICE_TRIGGER = "trigger";
  public static final String EXTRA_WANT_AUDIO_DATA = "want_audio_data";
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final Activity context;

  public VoiceAnnotationHelper(Activity paramActivity)
  {
    this.context = paramActivity;
  }

  public Intent getAnnotationIntent()
  {
    Intent localIntent = new Intent("com.google.glass.ACTION_VOICE_ANNOTATION");
    localIntent.putExtra("trigger_method", 11);
    localIntent.putExtra("want_audio_data", false);
    return localIntent;
  }

  public String getAnnotationResult(int paramInt, Intent paramIntent)
  {
    if (-1 != paramInt)
    {
      logger.w("Response was not OK, means transcription failed or was cancelled.", new Object[0]);
      return null;
    }
    if (paramIntent == null)
    {
      logger.w("Data intent was null.", new Object[0]);
      return null;
    }
    return paramIntent.getStringExtra("annotation_result");
  }

  public byte[] getAudioData(int paramInt, Intent paramIntent)
  {
    if (-1 != paramInt)
    {
      logger.w("Response was not OK, means transcription failed or was cancelled.", new Object[0]);
      return null;
    }
    if (paramIntent == null)
    {
      logger.w("Data intent was null.", new Object[0]);
      return null;
    }
    return paramIntent.getByteArrayExtra("audio_data");
  }

  public void startAnnotationForResult(int paramInt)
  {
    startAnnotationForResult(paramInt, false);
  }

  public void startAnnotationForResult(int paramInt, boolean paramBoolean)
  {
    startAnnotationForResult(paramInt, paramBoolean, null);
  }

  public void startAnnotationForResult(int paramInt, boolean paramBoolean, String paramString)
  {
    long l = SystemClock.uptimeMillis();
    Intent localIntent = new Intent("com.google.glass.ACTION_VOICE_ANNOTATION");
    localIntent.putExtra("trigger_time", l);
    localIntent.putExtra("trigger_method", 11);
    localIntent.putExtra("want_audio_data", paramBoolean);
    if (!TextUtils.isEmpty(paramString))
      localIntent.putExtra("reply_to_id", paramString);
    this.context.startActivityForResult(localIntent, paramInt);
  }

  public void startAnnotationForResultWithCustomHeader(int paramInt, boolean paramBoolean1, String paramString1, String paramString2, @Deprecated boolean paramBoolean2, @Deprecated boolean paramBoolean3)
  {
    boolean bool = true;
    long l = SystemClock.uptimeMillis();
    Intent localIntent = new Intent("com.google.glass.ACTION_VOICE_ANNOTATION");
    localIntent.putExtra("trigger_time", l);
    localIntent.putExtra("trigger_method", 11);
    localIntent.putExtra("want_audio_data", paramBoolean1);
    localIntent.putExtra("header_msg", paramString1);
    if ((TextUtils.isEmpty(paramString1)) && (!paramBoolean2))
      localIntent.putExtra("hide_header", bool);
    localIntent.putExtra("prompt_msg", paramString2);
    if (TextUtils.isEmpty(paramString2))
      localIntent.putExtra("hide_prompt", bool);
    if (!paramBoolean2)
      localIntent.putExtra("hide_guard", bool);
    if (!paramBoolean3);
    while (true)
    {
      localIntent.putExtra("hide_adding_dialog", bool);
      this.context.startActivityForResult(localIntent, paramInt);
      return;
      bool = false;
    }
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.VoiceAnnotationHelper
 * JD-Core Version:    0.6.2
 */