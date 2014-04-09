package com.google.glass.logging;

import android.util.EventLog;
import android.util.EventLog.Event;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableMap.Builder;
import com.google.common.logging.GlassExtensionsNano.GlassUserEventProto;
import com.google.glass.userevent.UserEventAction;
import com.google.glass.userevent.UserEventHelper;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

public final class EventLogUtils
{
  public static final int DEFAULT_AGGREGATION_INTERVAL_SECONDS = 1800;
  private static ImmutableMap<Integer, String[]> FRAMEWORK_PARAMS = createFrameworkParams();

  @VisibleForTesting
  static final int[] FRAMEWORK_TAGS;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();

  static
  {
    FRAMEWORK_TAGS = new int[] { 1000101, 1000201, 1000301, 1000302, 1000303, 1000304, 1000305 };
  }

  private static ImmutableMap<Integer, String[]> createFrameworkParams()
  {
    ImmutableMap.Builder localBuilder = ImmutableMap.builder();
    localBuilder.put(Integer.valueOf(1000201), UserEventAction.PACKAGE_INSTALLED_PARAMS);
    localBuilder.put(Integer.valueOf(1000302), UserEventAction.LOCKSCREEN_UNLOCKED_PARAMS);
    return localBuilder.build();
  }

  @VisibleForTesting
  static String getData(EventLog.Event paramEvent)
  {
    Object localObject = paramEvent.getData();
    StringBuilder localStringBuilder = new StringBuilder();
    Object[] arrayOfObject;
    String[] arrayOfString;
    int i;
    if ((localObject instanceof Object[]))
    {
      arrayOfObject = (Object[])localObject;
      arrayOfString = (String[])FRAMEWORK_PARAMS.get(Integer.valueOf(paramEvent.getTag()));
      i = 0;
      label49: if (i >= arrayOfObject.length)
        break label106;
      if (arrayOfString == null)
        break label96;
    }
    label96: for (String str = arrayOfString[i]; ; str = Integer.toString(i))
    {
      UserEventHelper.appendPair(localStringBuilder, str, arrayOfObject[i]);
      i++;
      break label49;
      arrayOfObject = new Object[] { localObject };
      break;
    }
    label106: return localStringBuilder.toString();
  }

  static List<GlassExtensionsNano.GlassUserEventProto> getFrameworkEvents(long paramLong)
    throws IOException
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    EventLog.readEvents(FRAMEWORK_TAGS, localArrayList1);
    Iterator localIterator = localArrayList1.iterator();
    while (localIterator.hasNext())
    {
      EventLog.Event localEvent = (EventLog.Event)localIterator.next();
      if (paramLong < getMillis(localEvent))
      {
        localArrayList2.add(UserEventHelper.createProto(getUserEventAction(localEvent), getMillis(localEvent), getData(localEvent)));
        FormattingLogger localFormattingLogger = logger;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = getUserEventAction(localEvent);
        localFormattingLogger.v("%s framework event has been inserted into the proto list", arrayOfObject);
      }
    }
    return localArrayList2;
  }

  static long getMillis(EventLog.Event paramEvent)
  {
    return TimeUnit.NANOSECONDS.toMillis(paramEvent.getTimeNanos());
  }

  @VisibleForTesting
  static UserEventAction getUserEventAction(EventLog.Event paramEvent)
  {
    String str = EventLog.getTagName(paramEvent.getTag()).toUpperCase();
    FormattingLogger localFormattingLogger = logger;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramEvent.getTag());
    arrayOfObject[1] = str;
    localFormattingLogger.v("Name of tag id [%s] is: [%s].", arrayOfObject);
    return (UserEventAction)UserEventAction.valueOf(UserEventAction.class, str);
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.logging.EventLogUtils
 * JD-Core Version:    0.6.2
 */