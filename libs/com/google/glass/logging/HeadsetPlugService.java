package com.google.glass.logging;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.text.TextUtils;
import com.google.glass.userevent.UserEventAction;
import com.google.glass.userevent.UserEventHelper;
import com.google.glass.util.SafeBroadcastReceiver;

public class HeadsetPlugService extends Service
{
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private static final FormattingLogger receiverLogger = FormattingLoggers.getLogger(logger, "receiver");
  private final HeadsetBroadcastReceiver receiver = new HeadsetBroadcastReceiver(null);

  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }

  public void onCreate()
  {
    super.onCreate();
    this.receiver.register(this);
  }

  public void onDestroy()
  {
    this.receiver.unregister(this);
    super.onDestroy();
  }

  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    logger.d("Service has started.", new Object[0]);
    return super.onStartCommand(paramIntent, paramInt1, paramInt2);
  }

  private class HeadsetBroadcastReceiver extends SafeBroadcastReceiver
  {
    private static final String NAME_UNKNOWN = "unknown";

    private HeadsetBroadcastReceiver()
    {
      super();
    }

    public FormattingLogger getLogger()
    {
      return HeadsetPlugService.receiverLogger;
    }

    public void onReceiveInternal(Context paramContext, Intent paramIntent)
    {
      if ("android.intent.action.HEADSET_PLUG".equals(paramIntent.getAction()))
      {
        String str1 = paramIntent.getStringExtra("name");
        if (TextUtils.isEmpty(str1))
          str1 = "unknown";
        int i = paramIntent.getIntExtra("state", 0);
        if (i == 0);
        for (int j = 1; ; j = paramIntent.getIntExtra("microphone", 1))
        {
          Object[] arrayOfObject = new Object[4];
          arrayOfObject[0] = "s";
          arrayOfObject[1] = Integer.valueOf(i);
          arrayOfObject[2] = "ms";
          arrayOfObject[3] = Integer.valueOf(j);
          String str2 = UserEventHelper.createEventTuple("n", str1, arrayOfObject);
          new UserEventHelper(paramContext).log(UserEventAction.HEADSET_PLUG, str2);
          return;
        }
      }
      getLogger().w("Unknown action received: %s", new Object[] { paramIntent });
    }
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.logging.HeadsetPlugService
 * JD-Core Version:    0.6.2
 */