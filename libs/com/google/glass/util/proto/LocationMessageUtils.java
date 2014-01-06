package com.google.glass.util.proto;

import android.location.Location;
import android.os.Build.VERSION;
import android.os.Bundle;
import com.google.glass.companion.Proto.Location;
import com.google.glass.companion.Proto.LocationMessage;
import com.google.glass.util.Clock;
import com.google.glass.util.ClockProvider;

public final class LocationMessageUtils
{
  public static Location toAndroidLocation(Proto.LocationMessage paramLocationMessage)
  {
    Proto.Location localLocation = paramLocationMessage.getLocation();
    Location localLocation1 = new Location(paramLocationMessage.provider);
    localLocation1.setLatitude(localLocation.getLatitude());
    localLocation1.setLongitude(localLocation.getLongitude());
    if (Build.VERSION.SDK_INT >= 17)
      localLocation1.setElapsedRealtimeNanos(ClockProvider.get().elapsedRealtimeNanos());
    if (localLocation.hasAccuracy())
      localLocation1.setAccuracy(localLocation.getAccuracy());
    if (localLocation.hasAltitude())
      localLocation1.setAltitude(localLocation.getAltitude());
    if (localLocation.hasBearing())
      localLocation1.setBearing(localLocation.getBearing());
    if (localLocation.hasSpeed())
      localLocation1.setSpeed(localLocation.getSpeed());
    if (localLocation.hasTime())
      localLocation1.setTime(localLocation.getTime());
    if ((localLocation.hasSatellitesUsedInFix()) || (localLocation.hasVisibleSatellites()) || (localLocation.hasLevelId()) || (localLocation.hasLevelNumberE3()) || (paramLocationMessage.hasReceiver()))
    {
      Bundle localBundle = new Bundle();
      if (localLocation.hasSatellitesUsedInFix())
        localBundle.putInt("satellites", localLocation.getSatellitesUsedInFix());
      if (localLocation.hasVisibleSatellites())
        localBundle.putInt("visible_satellites", localLocation.getVisibleSatellites());
      if (localLocation.hasLevelId())
        localBundle.putString("levelId", localLocation.getLevelId());
      if (localLocation.hasLevelNumberE3())
        localBundle.putInt("levelNumberE3", localLocation.getLevelNumberE3());
      if (paramLocationMessage.hasReceiver())
        localBundle.putString("receiver", paramLocationMessage.getReceiver());
      localLocation1.setExtras(localBundle);
    }
    return localLocation1;
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.proto.LocationMessageUtils
 * JD-Core Version:    0.6.2
 */