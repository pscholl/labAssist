package de.tud.labAssist;

import android.os.Bundle;

import com.google.glass.app.GlassVoiceActivity;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.logging.Log;

public class Main_Glass extends GlassVoiceActivity {

  @Override
  public FormattingLogger getLogger() {
    return FormattingLoggers.getContextLogger();
  }
  
  @Override
  protected void onCreate(Bundle paramBundle) {
    // TODO Auto-generated method stub
   super.onCreate(paramBundle);
  }

}
