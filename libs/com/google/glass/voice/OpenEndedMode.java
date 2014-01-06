package com.google.glass.voice;

public enum OpenEndedMode
{
  static
  {
    SOUND_SEARCH = new OpenEndedMode("SOUND_SEARCH", 2);
    NAVIGATION = new OpenEndedMode("NAVIGATION", 3);
    DICTATION = new OpenEndedMode("DICTATION", 4);
    OpenEndedMode[] arrayOfOpenEndedMode = new OpenEndedMode[5];
    arrayOfOpenEndedMode[0] = NONE;
    arrayOfOpenEndedMode[1] = VOICE_SEARCH;
    arrayOfOpenEndedMode[2] = SOUND_SEARCH;
    arrayOfOpenEndedMode[3] = NAVIGATION;
    arrayOfOpenEndedMode[4] = DICTATION;
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.OpenEndedMode
 * JD-Core Version:    0.6.2
 */