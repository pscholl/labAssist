package com.google.glass.location;

import android.location.GpsSatellite;
import android.location.GpsStatus;
import android.location.Location;
import android.os.Bundle;
import com.google.googlex.glass.common.proto.TimelineNano.Location;
import java.util.Iterator;

public class LocationHelper
{
  public static void addSatelliteExtras(Location paramLocation, GpsStatus paramGpsStatus)
  {
    if ((paramGpsStatus == null) || (!"gps".equals(paramLocation.getProvider())))
      return;
    Bundle localBundle = paramLocation.getExtras();
    if (localBundle == null)
      localBundle = new Bundle();
    int i = 0;
    int j = 0;
    Iterator localIterator = paramGpsStatus.getSatellites().iterator();
    while (localIterator.hasNext())
    {
      GpsSatellite localGpsSatellite = (GpsSatellite)localIterator.next();
      i++;
      if (localGpsSatellite.usedInFix())
        j++;
    }
    localBundle.putInt("visible_satellites", i);
    localBundle.putInt("satellites", j);
    paramLocation.setExtras(localBundle);
  }

  public static TimelineNano.Location toLocationProto(Location paramLocation, String paramString)
  {
    TimelineNano.Location localLocation = new TimelineNano.Location();
    localLocation.setSource(paramString);
    localLocation.setTimestamp(paramLocation.getTime());
    localLocation.setLatitude(paramLocation.getLatitude());
    localLocation.setLongitude(paramLocation.getLongitude());
    if (paramLocation.hasAccuracy())
      localLocation.setAccuracy(paramLocation.getAccuracy());
    Bundle localBundle = paramLocation.getExtras();
    if (localBundle != null)
    {
      if (localBundle.containsKey("levelId"))
        localLocation.setLevelId(localBundle.getString("levelId"));
      if (localBundle.containsKey("levelNumberE3"))
        localLocation.setLevelNumber(localBundle.getInt("levelNumberE3") / 1000.0F);
    }
    return localLocation;
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.location.LocationHelper
 * JD-Core Version:    0.6.2
 */