package com.google.glass.widget;

import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import com.google.glass.async.AsyncThreadExecutorManager;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.util.DateHelper;
import com.google.glass.util.SafeBroadcastReceiver;

public class ClockView extends TypophileTextView
{
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private static final FormattingLogger timeReceiverLogger = FormattingLoggers.getLogger(logger, "timeReceiver");
  private final TimeBroadcastReceiver timeReceiver = new TimeBroadcastReceiver(null);

  public ClockView(Context paramContext)
  {
    this(paramContext, null);
  }

  public ClockView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setGravity(17);
    updateTime();
  }

  private void updateTime()
  {
    long l = System.currentTimeMillis();
    setText(DateHelper.formattedTime(getContext(), l, true));
  }

  public void onLoad()
  {
    this.timeReceiver.registerAsync(AsyncThreadExecutorManager.getSerialExecutor(), getContext());
    updateTime();
  }

  public void onUnload()
  {
    this.timeReceiver.unregisterAsync(AsyncThreadExecutorManager.getSerialExecutor(), getContext());
  }

  private class TimeBroadcastReceiver extends SafeBroadcastReceiver
  {
    private TimeBroadcastReceiver()
    {
      super();
    }

    public FormattingLogger getLogger()
    {
      return ClockView.timeReceiverLogger;
    }

    public void onReceiveInternal(Context paramContext, Intent paramIntent)
    {
      ClockView.this.updateTime();
    }
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.widget.ClockView
 * JD-Core Version:    0.6.2
 */