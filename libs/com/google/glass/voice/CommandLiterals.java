package com.google.glass.voice;

import java.util.Arrays;
import java.util.List;

public final class CommandLiterals
{
  public static final String ADD_A_CALENDAR_EVENT = "add a calendar event";
  public static final String ADD_CAPTION = "add a caption";
  public static final String ANSWER_CALL = "answer call";
  public static final String CALL = "make a call";
  public static final String CALL_ME_A_CAR = "call me a car";
  public static final String CAPTURE_A_PANORAMA = "capture a panorama";
  public static final String CHECK_ME_IN = "check me in";
  public static final String CREATE_A_THREE_D_MODEL = "create a 3d model";
  public static final String DECLINE_CALL = "decline call";
  public static final String EXPLORE_NEARBY = "explore nearby";
  public static final String FIND_A_PLACE = "find a place";
  public static final String FIND_A_RECIPE = "find a recipe";
  public static final String GOOGLE = "google";
  public static final String LEARN_A_SONG = "learn a song";
  public static final String LISTEN_TO = "listen to";
  public static final String MAKE_A_REQUEST = "make a request";
  public static final String NAVIGATION = "get directions to";
  public static final String OK_GLASS = "ok glass";
  public static final String PLAY_A_GAME = "play a game";
  public static final String PLAY_MUSIC = "play music";
  public static final String PLAY_PAUSE_VIDEO = "video";
  public static final String POST_AN_UPDATE = "post an update";
  public static final String READ_ALOUD = "read aloud";
  public static final String RECOGNIZE_THIS_SONG = "recognize this song";
  public static final String RECORD_A_RECIPE = "record a recipe";
  public static final String RECORD_VIDEO = "record video";
  public static final String REMIND_ME_TO = "remind me to";
  public static final String REPLY = "reply";
  public static final String SEND_IT_TO = "send it to";
  public static final String SEND_MESSAGE_TO = "send message to";
  public static final String SHARE = "share with";
  public static final String SHOW_A_COMPASS = "show a compass";
  public static final String SHOW_HIDE_ROUTE_OVERVIEW = "show route overview";
  public static final String START_A_BIKE_RIDE = "start a bike ride";
  public static final String START_A_ROUND_OF_GOLF = "start a round of golf";
  public static final String START_A_RUN = "start a run";
  public static final String START_A_STOPWATCH = "start a stopwatch";
  public static final String START_A_TIMER = "start a timer";
  public static final String START_A_WORKOUT = "start a workout";
  public static final String STOP_DIRECTIONS = "stop directions";
  public static final String[] SYSTEM_COMMANDS = { "google", "take a picture", "record video", "get directions to", "send message to", "make a call", "make a video call" };
  public static final String TAKE_A_NOTE = "take a note";
  public static final String TAKE_PHOTO = "take a picture";
  public static final String TRANSLATE_THIS = "translate this";
  public static final String TUNE_AN_INSTRUMENT = "tune an instrument";
  public static final String VIDEO_CALL = "make a video call";

  public static boolean isSystemCommand(String paramString)
  {
    return Arrays.asList(SYSTEM_COMMANDS).contains(paramString);
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.CommandLiterals
 * JD-Core Version:    0.6.2
 */