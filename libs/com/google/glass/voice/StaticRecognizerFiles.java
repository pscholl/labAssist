package com.google.glass.voice;

import com.google.common.base.Function;
import com.google.common.base.Predicate;
import com.google.common.collect.HashMultimap;
import com.google.common.collect.Iterables;
import com.google.common.collect.Lists;
import com.google.common.collect.Multimap;
import com.google.common.collect.Ordering;
import com.google.common.collect.Sets;
import com.google.common.primitives.Ints;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

 enum StaticRecognizerFiles
{
  public static final Predicate<StaticRecognizerFiles> IS_PRECOMBINED;
  public static final Predicate<StaticRecognizerFiles> IS_RTA_COMPATIBLE;
  private static final Multimap<String, StaticRecognizerFiles> filesetsByLiteral;
  public static final List<StaticRecognizerFiles> filesetsInCardinalityOrder = Ordering.from(new Comparator()
  {
    public int compare(StaticRecognizerFiles paramAnonymousStaticRecognizerFiles1, StaticRecognizerFiles paramAnonymousStaticRecognizerFiles2)
    {
      return Ints.compare(paramAnonymousStaticRecognizerFiles1.recognizedLiterals.size(), paramAnonymousStaticRecognizerFiles2.recognizedLiterals.size());
    }
  }).sortedCopy(Arrays.asList(values()));
  private static final FormattingLogger logger;
  final boolean combined;
  final String recogFile;
  final int recogFileResId;
  final Set<String> recognizedLiterals;
  final boolean rtaCompatible;
  final String searchFile;
  final int searchFileResId;
  final VoiceConfig.Sensitivity sensitivity;

  static
  {
    GUARD = new StaticRecognizerFiles("GUARD", 1, "google_glass_okglass_en_us_alpha_sfs_delivery09_am.raw", R.raw.google_glass_okglass_en_us_alpha_sfs_delivery09_am, "google_glass_okglass_en_us_alpha_sfs_delivery09_search_10.raw", R.raw.google_glass_okglass_en_us_alpha_sfs_delivery09_search_10, new String[] { "ok glass" });
    NOTIFICATION_GUARD = new StaticRecognizerFiles("NOTIFICATION_GUARD", 2, "google_glass_okglass_en_us_alpha_sfs_delivery09_am.raw", R.raw.google_glass_okglass_en_us_alpha_sfs_delivery09_am, "google_glass_okglass_en_us_alpha_sfs_delivery09_search_1.raw", R.raw.google_glass_okglass_en_us_alpha_sfs_delivery09_search_1, false, false, VoiceConfig.Sensitivity.CONSERVATIVE, new String[] { "ok glass" });
    NOTIFICATION = new StaticRecognizerFiles("NOTIFICATION", 3, "google_glass_notificationset_en_us_sfs_delivery05_am.raw", R.raw.google_glass_notificationset_en_us_sfs_delivery05_am, "google_glass_notificationset_en_us_sfs_delivery05_search_13.raw", R.raw.google_glass_notificationset_en_us_sfs_delivery05_search_13, new String[] { "read aloud", "reply", "video" });
    PHOTO_REVIEW = new StaticRecognizerFiles("PHOTO_REVIEW", 4, "google_glass_reviewpictureset_en_us_sfs_delivery02_tighter_am.raw", R.raw.google_glass_reviewpictureset_en_us_sfs_delivery02_tighter_am, "google_glass_reviewpictureset_en_us_sfs_delivery02_tighter_search_12.raw", R.raw.google_glass_reviewpictureset_en_us_sfs_delivery02_tighter_search_12, new String[] { "share with" });
    PHOTOS_REVIEW_V2 = new StaticRecognizerFiles("PHOTOS_REVIEW_V2", 5, "google_glass_sharepictureset_en_us_sfs_delivery03_am.raw", R.raw.google_glass_sharepictureset_en_us_sfs_delivery03_am, "google_glass_sharepictureset_en_us_sfs_delivery03_search_10.raw", R.raw.google_glass_sharepictureset_en_us_sfs_delivery03_search_10, new String[] { "send it to" });
    INCOMING_CALL = new StaticRecognizerFiles("INCOMING_CALL", 6, "google_glass_callset_en_us_sfs_delivery03_am.raw", R.raw.google_glass_callset_en_us_sfs_delivery03_am, "google_glass_callset_en_us_sfs_delivery03_search_13.raw", R.raw.google_glass_callset_en_us_sfs_delivery03_search_13, new String[] { "answer call", "decline call" });
    PHOTO_SHARE = new StaticRecognizerFiles("PHOTO_SHARE", 7, "google_glass_photoshare_en_us_alpha_sfs_delivery01_am.raw", R.raw.google_glass_photoshare_en_us_alpha_sfs_delivery01_am, "google_glass_photoshare_en_us_alpha_sfs_delivery01_search_11.raw", R.raw.google_glass_photoshare_en_us_alpha_sfs_delivery01_search_11, new String[] { "add a caption" });
    DIRECTIONS = new StaticRecognizerFiles("DIRECTIONS", 8, "google_glass_directions_en_us_alpha_sfs_delivery01_am.raw", R.raw.google_glass_directions_en_us_alpha_sfs_delivery01_am, "google_glass_directions_en_us_alpha_sfs_delivery01_search_11.raw", R.raw.google_glass_directions_en_us_alpha_sfs_delivery01_search_11, new String[] { "show route overview", "stop directions" });
    POST_AN_UPDATE = new StaticRecognizerFiles("POST_AN_UPDATE", 9, "google_glass_postanupdate_en_us_alpha_sfs_delivery02_am.raw", R.raw.google_glass_postanupdate_en_us_alpha_sfs_delivery02_am, "google_glass_postanupdate_en_us_alpha_sfs_delivery02_search_9.raw", R.raw.google_glass_postanupdate_en_us_alpha_sfs_delivery02_search_9, new String[] { "post an update" });
    FIND_A_RECIPE = new StaticRecognizerFiles("FIND_A_RECIPE", 10, "google_glass_find_a_recipe_en_us_sfs_delivery02_am.raw", R.raw.google_glass_find_a_recipe_en_us_sfs_delivery02_am, "google_glass_find_a_recipe_en_us_sfs_delivery02_search_9.raw", R.raw.google_glass_find_a_recipe_en_us_sfs_delivery02_search_9, true, new String[] { "find a recipe" });
    RECORD_A_RECIPE = new StaticRecognizerFiles("RECORD_A_RECIPE", 11, "google_glass_record_a_recipe_en_us_sfs_delivery02_am.raw", R.raw.google_glass_record_a_recipe_en_us_sfs_delivery02_am, "google_glass_record_a_recipe_en_us_sfs_delivery02_search_13.raw", R.raw.google_glass_record_a_recipe_en_us_sfs_delivery02_search_13, true, new String[] { "record a recipe" });
    START_A_BIKE_RIDE = new StaticRecognizerFiles("START_A_BIKE_RIDE", 12, "google_glass_start_a_bike_ride_en_us_sfs_delivery02_am.raw", R.raw.google_glass_start_a_bike_ride_en_us_sfs_delivery02_am, "google_glass_start_a_bike_ride_en_us_sfs_delivery02_search_11.raw", R.raw.google_glass_start_a_bike_ride_en_us_sfs_delivery02_search_11, true, new String[] { "start a bike ride" });
    START_A_RUN = new StaticRecognizerFiles("START_A_RUN", 13, "google_glass_start_a_run_en_us_sfs_delivery02_am.raw", R.raw.google_glass_start_a_run_en_us_sfs_delivery02_am, "google_glass_start_a_run_en_us_sfs_delivery02_search_10.raw", R.raw.google_glass_start_a_run_en_us_sfs_delivery02_search_10, true, new String[] { "start a run" });
    START_A_STOP_WATCH = new StaticRecognizerFiles("START_A_STOP_WATCH", 14, "google_glass_start_a_stopwatch_en_us_alpha_sfs_delivery01_am.raw", R.raw.google_glass_start_a_stopwatch_en_us_alpha_sfs_delivery01_am, "google_glass_start_a_stopwatch_en_us_alpha_sfs_delivery01_search_11.raw", R.raw.google_glass_start_a_stopwatch_en_us_alpha_sfs_delivery01_search_11, true, new String[] { "start a stopwatch" });
    EXPLORE_NEARBY = new StaticRecognizerFiles("EXPLORE_NEARBY", 15, "google_glass_explore_nearby_en_us_sfs_delivery01_am.raw", R.raw.google_glass_explore_nearby_en_us_sfs_delivery01_am, "google_glass_explore_nearby_en_us_sfs_delivery01_search_10.raw", R.raw.google_glass_explore_nearby_en_us_sfs_delivery01_search_10, true, new String[] { "explore nearby" });
    FIND_A_PLACE = new StaticRecognizerFiles("FIND_A_PLACE", 16, "google_glass_find_a_place_en_us_sfs_delivery01_am.raw", R.raw.google_glass_find_a_place_en_us_sfs_delivery01_am, "google_glass_find_a_place_en_us_sfs_delivery01_search_12.raw", R.raw.google_glass_find_a_place_en_us_sfs_delivery01_search_12, true, new String[] { "find a place" });
    START_A_WORKOUT = new StaticRecognizerFiles("START_A_WORKOUT", 17, "google_glass_start_a_workout_en_us_sfs_delivery01_am.raw", R.raw.google_glass_start_a_workout_en_us_sfs_delivery01_am, "google_glass_start_a_workout_en_us_sfs_delivery01_search_12.raw", R.raw.google_glass_start_a_workout_en_us_sfs_delivery01_search_12, true, new String[] { "start a workout" });
    TAKE_A_NOTE = new StaticRecognizerFiles("TAKE_A_NOTE", 18, "google_glass_take_a_note_en_us_sfs_delivery02_am.raw", R.raw.google_glass_take_a_note_en_us_sfs_delivery02_am, "google_glass_take_a_note_en_us_sfs_delivery02_search_5.raw", R.raw.google_glass_take_a_note_en_us_sfs_delivery02_search_5, true, new String[] { "take a note" });
    LISTEN_TO = new StaticRecognizerFiles("LISTEN_TO", 19, "google_glass_listento_en_us_sfs_delivery03_am.raw", R.raw.google_glass_listento_en_us_sfs_delivery03_am, "google_glass_listento_en_us_sfs_delivery03_search_10.raw", R.raw.google_glass_listento_en_us_sfs_delivery03_search_10, true, new String[] { "listen to" });
    PLAY_MUSIC = new StaticRecognizerFiles("PLAY_MUSIC", 20, "google_glass_playmusic_en_us_sfs_delivery02_am.raw", R.raw.google_glass_playmusic_en_us_sfs_delivery02_am, "google_glass_playmusic_en_us_sfs_delivery02_search_9.raw", R.raw.google_glass_playmusic_en_us_sfs_delivery02_search_9, true, new String[] { "play music" });
    CALL_ME_A_CAR = new StaticRecognizerFiles("CALL_ME_A_CAR", 21, "google_glass_call_me_a_car_en_us_sfs_delivery02_am.raw", R.raw.google_glass_call_me_a_car_en_us_sfs_delivery02_am, "google_glass_call_me_a_car_en_us_sfs_delivery02_search_8.raw", R.raw.google_glass_call_me_a_car_en_us_sfs_delivery02_search_8, true, new String[] { "call me a car" });
    CAPTURE_A_PANORAMA = new StaticRecognizerFiles("CAPTURE_A_PANORAMA", 22, "google_glass_capture_a_panorama_en_us_alpha_sfs_delivery01_am.raw", R.raw.google_glass_capture_a_panorama_en_us_alpha_sfs_delivery01_am, "google_glass_capture_a_panorama_en_us_alpha_sfs_delivery01_search_12.raw", R.raw.google_glass_capture_a_panorama_en_us_alpha_sfs_delivery01_search_12, true, new String[] { "capture a panorama" });
    CHECK_ME_IN = new StaticRecognizerFiles("CHECK_ME_IN", 23, "google_glass_check_me_in_en_us_sfs_delivery02_am.raw", R.raw.google_glass_check_me_in_en_us_sfs_delivery02_am, "google_glass_check_me_in_en_us_sfs_delivery02_search_8.raw", R.raw.google_glass_check_me_in_en_us_sfs_delivery02_search_8, true, new String[] { "check me in" });
    ADD_A_CALENDAR_EVENT = new StaticRecognizerFiles("ADD_A_CALENDAR_EVENT", 24, "google_glass_add_a_calendar_event_en_us_alpha_sfs_delivery01_am.raw", R.raw.google_glass_add_a_calendar_event_en_us_alpha_sfs_delivery01_am, "google_glass_add_a_calendar_event_en_us_alpha_sfs_delivery01_search_9.raw", R.raw.google_glass_add_a_calendar_event_en_us_alpha_sfs_delivery01_search_9, true, new String[] { "add a calendar event" });
    CREATE_A_THREE_D_MODEL = new StaticRecognizerFiles("CREATE_A_THREE_D_MODEL", 25, "google_glass_create_a_3d_model_en_us_alpha_sfs_delivery01_am.raw", R.raw.google_glass_create_a_3d_model_en_us_alpha_sfs_delivery01_am, "google_glass_create_a_3d_model_en_us_alpha_sfs_delivery01_search_11.raw", R.raw.google_glass_create_a_3d_model_en_us_alpha_sfs_delivery01_search_11, true, new String[] { "create a 3d model" });
    LEARN_A_SONG = new StaticRecognizerFiles("LEARN_A_SONG", 26, "google_glass_learn_a_song_en_us_sfs_delivery01_am.raw", R.raw.google_glass_learn_a_song_en_us_sfs_delivery01_am, "google_glass_learn_a_song_en_us_sfs_delivery01_search_13.raw", R.raw.google_glass_learn_a_song_en_us_sfs_delivery01_search_13, true, new String[] { "learn a song" });
    PLAY_A_GAME = new StaticRecognizerFiles("PLAY_A_GAME", 27, "google_glass_play_a_game_en_us_sfs_delivery01_am.raw", R.raw.google_glass_play_a_game_en_us_sfs_delivery01_am, "google_glass_play_a_game_en_us_sfs_delivery01_search_8.raw", R.raw.google_glass_play_a_game_en_us_sfs_delivery01_search_8, true, new String[] { "play a game" });
    RECOGNIZE_THIS_SONG = new StaticRecognizerFiles("RECOGNIZE_THIS_SONG", 28, "google_glass_recognize_this_song_en_us_sfs_delivery01_am.raw", R.raw.google_glass_recognize_this_song_en_us_sfs_delivery01_am, "google_glass_recognize_this_song_en_us_sfs_delivery01_search_10.raw", R.raw.google_glass_recognize_this_song_en_us_sfs_delivery01_search_10, true, new String[] { "recognize this song" });
    REMIND_ME_TO = new StaticRecognizerFiles("REMIND_ME_TO", 29, "google_glass_remind_me_to_en_us_sfs_delivery02_am.raw", R.raw.google_glass_remind_me_to_en_us_sfs_delivery02_am, "google_glass_remind_me_to_en_us_sfs_delivery02_search_13.raw", R.raw.google_glass_remind_me_to_en_us_sfs_delivery02_search_13, true, new String[] { "remind me to" });
    SHOW_A_COMPASS = new StaticRecognizerFiles("SHOW_A_COMPASS", 30, "google_glass_show_a_compass_en_us_alpha_sfs_delivery01_am.raw", R.raw.google_glass_show_a_compass_en_us_alpha_sfs_delivery01_am, "google_glass_show_a_compass_en_us_alpha_sfs_delivery01_search_12.raw", R.raw.google_glass_show_a_compass_en_us_alpha_sfs_delivery01_search_12, true, new String[] { "show a compass" });
    START_A_ROUND_OF_GOLF = new StaticRecognizerFiles("START_A_ROUND_OF_GOLF", 31, "google_glass_start_a_round_of_golf_en_us_alpha_sfs_delivery01_am.raw", R.raw.google_glass_start_a_round_of_golf_en_us_alpha_sfs_delivery01_am, "google_glass_start_a_round_of_golf_en_us_alpha_sfs_delivery01_search_7.raw", R.raw.google_glass_start_a_round_of_golf_en_us_alpha_sfs_delivery01_search_7, true, new String[] { "start a round of golf" });
    START_A_TIMER = new StaticRecognizerFiles("START_A_TIMER", 32, "google_glass_start_a_timer_en_us_alpha_sfs_delivery01_am.raw", R.raw.google_glass_start_a_timer_en_us_alpha_sfs_delivery01_am, "google_glass_start_a_timer_en_us_alpha_sfs_delivery01_search_12.raw", R.raw.google_glass_start_a_timer_en_us_alpha_sfs_delivery01_search_12, true, new String[] { "start a timer" });
    TRANSLATE_THIS = new StaticRecognizerFiles("TRANSLATE_THIS", 33, "google_glass_translate_this_en_us_alpha_sfs_delivery01_am.raw", R.raw.google_glass_translate_this_en_us_alpha_sfs_delivery01_am, "google_glass_translate_this_en_us_alpha_sfs_delivery01_search_10.raw", R.raw.google_glass_translate_this_en_us_alpha_sfs_delivery01_search_10, true, new String[] { "translate this" });
    TUNE_AN_INSTRUMENT = new StaticRecognizerFiles("TUNE_AN_INSTRUMENT", 34, "google_glass_tune_an_instrument_en_us_sfs_delivery01_am.raw", R.raw.google_glass_tune_an_instrument_en_us_sfs_delivery01_am, "google_glass_tune_an_instrument_en_us_sfs_delivery01_search_8.raw", R.raw.google_glass_tune_an_instrument_en_us_sfs_delivery01_search_8, true, new String[] { "tune an instrument" });
    MAIN_MENU_RTA = new StaticRecognizerFiles("MAIN_MENU_RTA", 35, "rta_combined_am.raw", R.raw.rta_combined_am, "rta_combined_sc.raw", R.raw.rta_combined_sc, true, true, CommandLiterals.SYSTEM_COMMANDS);
    StaticRecognizerFiles[] arrayOfStaticRecognizerFiles1 = new StaticRecognizerFiles[36];
    arrayOfStaticRecognizerFiles1[0] = MAIN_MENU_LEGACY;
    arrayOfStaticRecognizerFiles1[1] = GUARD;
    arrayOfStaticRecognizerFiles1[2] = NOTIFICATION_GUARD;
    arrayOfStaticRecognizerFiles1[3] = NOTIFICATION;
    arrayOfStaticRecognizerFiles1[4] = PHOTO_REVIEW;
    arrayOfStaticRecognizerFiles1[5] = PHOTOS_REVIEW_V2;
    arrayOfStaticRecognizerFiles1[6] = INCOMING_CALL;
    arrayOfStaticRecognizerFiles1[7] = PHOTO_SHARE;
    arrayOfStaticRecognizerFiles1[8] = DIRECTIONS;
    arrayOfStaticRecognizerFiles1[9] = POST_AN_UPDATE;
    arrayOfStaticRecognizerFiles1[10] = FIND_A_RECIPE;
    arrayOfStaticRecognizerFiles1[11] = RECORD_A_RECIPE;
    arrayOfStaticRecognizerFiles1[12] = START_A_BIKE_RIDE;
    arrayOfStaticRecognizerFiles1[13] = START_A_RUN;
    arrayOfStaticRecognizerFiles1[14] = START_A_STOP_WATCH;
    arrayOfStaticRecognizerFiles1[15] = EXPLORE_NEARBY;
    arrayOfStaticRecognizerFiles1[16] = FIND_A_PLACE;
    arrayOfStaticRecognizerFiles1[17] = START_A_WORKOUT;
    arrayOfStaticRecognizerFiles1[18] = TAKE_A_NOTE;
    arrayOfStaticRecognizerFiles1[19] = LISTEN_TO;
    arrayOfStaticRecognizerFiles1[20] = PLAY_MUSIC;
    arrayOfStaticRecognizerFiles1[21] = CALL_ME_A_CAR;
    arrayOfStaticRecognizerFiles1[22] = CAPTURE_A_PANORAMA;
    arrayOfStaticRecognizerFiles1[23] = CHECK_ME_IN;
    arrayOfStaticRecognizerFiles1[24] = ADD_A_CALENDAR_EVENT;
    arrayOfStaticRecognizerFiles1[25] = CREATE_A_THREE_D_MODEL;
    arrayOfStaticRecognizerFiles1[26] = LEARN_A_SONG;
    arrayOfStaticRecognizerFiles1[27] = PLAY_A_GAME;
    arrayOfStaticRecognizerFiles1[28] = RECOGNIZE_THIS_SONG;
    arrayOfStaticRecognizerFiles1[29] = REMIND_ME_TO;
    arrayOfStaticRecognizerFiles1[30] = SHOW_A_COMPASS;
    arrayOfStaticRecognizerFiles1[31] = START_A_ROUND_OF_GOLF;
    arrayOfStaticRecognizerFiles1[32] = START_A_TIMER;
    arrayOfStaticRecognizerFiles1[33] = TRANSLATE_THIS;
    arrayOfStaticRecognizerFiles1[34] = TUNE_AN_INSTRUMENT;
    arrayOfStaticRecognizerFiles1[35] = MAIN_MENU_RTA;
    $VALUES = arrayOfStaticRecognizerFiles1;
    logger = FormattingLoggers.getContextLogger();
    filesetsByLiteral = HashMultimap.create();
    IS_PRECOMBINED = new Predicate()
    {
      public boolean apply(StaticRecognizerFiles paramAnonymousStaticRecognizerFiles)
      {
        return paramAnonymousStaticRecognizerFiles.combined;
      }
    };
    IS_RTA_COMPATIBLE = new Predicate()
    {
      public boolean apply(StaticRecognizerFiles paramAnonymousStaticRecognizerFiles)
      {
        return paramAnonymousStaticRecognizerFiles.rtaCompatible;
      }
    };
    for (StaticRecognizerFiles localStaticRecognizerFiles : values())
    {
      Iterator localIterator = localStaticRecognizerFiles.recognizedLiterals.iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        filesetsByLiteral.put(str, localStaticRecognizerFiles);
      }
    }
  }

  private StaticRecognizerFiles(String paramString1, int paramInt1, String paramString2, int paramInt2, boolean paramBoolean1, boolean paramBoolean2, VoiceConfig.Sensitivity paramSensitivity, String[] paramArrayOfString)
  {
    this.recogFile = paramString1;
    this.recogFileResId = paramInt1;
    this.searchFile = paramString2;
    this.searchFileResId = paramInt2;
    this.rtaCompatible = paramBoolean1;
    this.combined = paramBoolean2;
    this.sensitivity = paramSensitivity;
    this.recognizedLiterals = Sets.newHashSet(paramArrayOfString);
  }

  private StaticRecognizerFiles(String paramString1, int paramInt1, String paramString2, int paramInt2, boolean paramBoolean1, boolean paramBoolean2, String[] paramArrayOfString)
  {
    this(paramString1, paramInt1, paramString2, paramInt2, paramBoolean1, paramBoolean2, VoiceConfig.Sensitivity.NORMAL, paramArrayOfString);
  }

  private StaticRecognizerFiles(String paramString1, int paramInt1, String paramString2, int paramInt2, boolean paramBoolean, String[] paramArrayOfString)
  {
    this(paramString1, paramInt1, paramString2, paramInt2, paramBoolean, false, paramArrayOfString);
  }

  private StaticRecognizerFiles(String paramString1, int paramInt1, String paramString2, int paramInt2, String[] paramArrayOfString)
  {
    this(paramString1, paramInt1, paramString2, paramInt2, false, false, paramArrayOfString);
  }

  public static Collection<StaticRecognizerFiles> getFilesets(String paramString)
  {
    return filesetsByLiteral.get(paramString);
  }

  public static StaticRecognizerFiles getRtaSingletonFileset(String paramString)
  {
    Iterator localIterator = getFilesets(paramString).iterator();
    while (localIterator.hasNext())
    {
      StaticRecognizerFiles localStaticRecognizerFiles = (StaticRecognizerFiles)localIterator.next();
      if ((localStaticRecognizerFiles.rtaCompatible) && (localStaticRecognizerFiles.rtaCompatible))
        return localStaticRecognizerFiles;
    }
    return null;
  }

  public static boolean isFilesetAvailable(String paramString)
  {
    return filesetsByLiteral.containsKey(paramString);
  }

  public static boolean isRtaSingletonFilesetAvailable(String paramString)
  {
    return getRtaSingletonFileset(paramString) != null;
  }

  public static List<StaticRecognizerFiles> optimizeSensitivity(List<StaticRecognizerFiles> paramList, VoiceConfig.Sensitivity paramSensitivity)
  {
    return Lists.transform(paramList, new Function()
    {
      public StaticRecognizerFiles apply(StaticRecognizerFiles paramAnonymousStaticRecognizerFiles)
      {
        if (paramAnonymousStaticRecognizerFiles.sensitivity == this.val$sensitivity);
        StaticRecognizerFiles localStaticRecognizerFiles;
        do
        {
          Iterator localIterator;
          while (!localIterator.hasNext())
          {
            return paramAnonymousStaticRecognizerFiles;
            if (paramAnonymousStaticRecognizerFiles.recognizedLiterals.size() != 1)
            {
              StaticRecognizerFiles.logger.w("Cannot match requested sensitivity %s for multi-phrase fileset.", new Object[0]);
              return paramAnonymousStaticRecognizerFiles;
            }
            String str = (String)Iterables.getOnlyElement(paramAnonymousStaticRecognizerFiles.recognizedLiterals);
            localIterator = StaticRecognizerFiles.filesetsByLiteral.get(str).iterator();
          }
          localStaticRecognizerFiles = (StaticRecognizerFiles)localIterator.next();
        }
        while (localStaticRecognizerFiles.sensitivity != this.val$sensitivity);
        return localStaticRecognizerFiles;
      }
    });
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.StaticRecognizerFiles
 * JD-Core Version:    0.6.2
 */