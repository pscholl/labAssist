package com.google.glass.voice.embedded;

import android.content.Context;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.voice.HotwordRecognizer;
import com.google.glass.voice.RecognizerFactory;
import com.google.glass.voice.VoiceCommand;
import com.google.glass.voice.VoiceConfig;
import java.util.Arrays;
import java.util.List;

public class GlassRecognizerFactory extends RecognizerFactory
{
  private static final String TAG = "GlassFactory";
  private static final FormattingLogger logger = FormattingLoggers.getLogger("GlassFactory");

  private VoiceCommand getCommand(String paramString)
  {
    if ("[hotword_ok_glass]".equals(paramString))
      return VoiceCommand.OK_GLASS;
    if ("[hotword_take_a_picture]".equals(paramString))
      return VoiceCommand.TAKE_PHOTO;
    if ("[hotword_record_a_video]".equals(paramString))
      return VoiceCommand.RECORD_VIDEO;
    if ("[hotword_google]".equals(paramString))
      return VoiceCommand.GOOGLE;
    if ("[hotword_get_directions]".equals(paramString))
      return VoiceCommand.NAVIGATION;
    if ("[hotword_make_a_video_call]".equals(paramString))
      return VoiceCommand.VIDEO_CALL;
    if ("[hotword_make_a_call]".equals(paramString))
      return VoiceCommand.CALL;
    if ("[hotword_send_a_message]".equals(paramString))
      return VoiceCommand.SEND_MESSAGE_TO;
    if ("[hotword_reply]".equals(paramString))
      return VoiceCommand.REPLY;
    if ("[hotword_read_aloud]".equals(paramString))
      return VoiceCommand.READ_ALOUD;
    if ("[hotword_answer_call]".equals(paramString))
      return VoiceCommand.ANSWER_CALL;
    if ("[hotword_ignore_call]".equals(paramString))
      return VoiceCommand.DECLINE_CALL;
    if ("[hotword_share_with]".equals(paramString))
      return VoiceCommand.SHARE;
    if ("[listen_to]".equals(paramString))
      return VoiceCommand.LISTEN_TO;
    if ("[hotword_take_a_note]".equals(paramString))
      return VoiceCommand.TAKE_NOTE;
    if ("[hotword_post_an_update]".equals(paramString))
      return VoiceCommand.POST_AN_UPDATE;
    if ("[hotword_check_me_in]".equals(paramString))
      return VoiceCommand.CHECK_ME_IN;
    if ("[hotword_add_a_calendar_event]".equals(paramString))
      return VoiceCommand.ADD_A_CALENDAR_EVENT;
    if ("[hotword_find_a_recipe]".equals(paramString))
      return VoiceCommand.FIND_A_RECIPE;
    if ("[hotword_find_a_place]".equals(paramString))
      return VoiceCommand.FIND_A_PLACE;
    if ("[hotword_explore_nearby]".equals(paramString))
      return VoiceCommand.EXPLORE_NEARBY;
    return null;
  }

  protected HotwordRecognizer createCustomRecognizer(Context paramContext, final VoiceConfig paramVoiceConfig)
  {
    return new EmbeddedGlassRecognizer(paramContext, MultiRecognizerController.Decoder.DYN_5, paramVoiceConfig.getCustomPhrases())
    {
      public VoiceCommand stringToCommand(String paramAnonymousString)
      {
        VoiceCommand localVoiceCommand = GlassRecognizerFactory.this.getCommand(paramAnonymousString);
        if (localVoiceCommand != null)
          return localVoiceCommand;
        for (int i = 0; i < paramVoiceConfig.getCustomPhrases().length; i++)
          if (("[hotword_" + paramVoiceConfig.getCustomPhrases()[i].replace(" ", "_") + "]").equals(paramAnonymousString))
            return new VoiceCommand(paramAnonymousString);
        return null;
      }
    };
  }

  private class FilteredGrecoRecognizer extends EmbeddedGlassRecognizer
  {
    private List<VoiceCommand> acceptableCommands;

    public FilteredGrecoRecognizer(Context paramDecoder, MultiRecognizerController.Decoder paramArrayOfVoiceCommand, VoiceCommand[] arg4)
    {
      super(paramArrayOfVoiceCommand);
      Object[] arrayOfObject;
      this.acceptableCommands = Arrays.asList(arrayOfObject);
    }

    public VoiceCommand stringToCommand(String paramString)
    {
      VoiceCommand localVoiceCommand = GlassRecognizerFactory.this.getCommand(paramString);
      if (this.acceptableCommands.contains(localVoiceCommand))
        return localVoiceCommand;
      return null;
    }
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.embedded.GlassRecognizerFactory
 * JD-Core Version:    0.6.2
 */