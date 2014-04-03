package com.google.glass.location;

import android.location.Criteria;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Looper;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.userevent.UserEventAction;
import com.google.glass.userevent.UserEventHelper;
import com.google.glass.util.Clock;
import com.google.glass.util.Stopwatch;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public class LocationManagerHelper
{

  @VisibleForTesting
  static final long DEFAULT_FRESHNESS_THRESHOLD_MS = TimeUnit.MINUTES.toMillis(1L);
  public static final Comparator<Location> DEFAULT_LOCATION_COMPARATOR = new Comparator()
  {
    private boolean isBetterThan(Location paramAnonymousLocation1, Location paramAnonymousLocation2)
    {
      boolean bool = true;
      if (paramAnonymousLocation1 == null)
        bool = false;
      do
      {
        do
        {
          do
            return bool;
          while ((paramAnonymousLocation2 == null) || (paramAnonymousLocation1.getTime() > paramAnonymousLocation2.getTime() + LocationManagerHelper.DEFAULT_FRESHNESS_THRESHOLD_MS));
          if (paramAnonymousLocation2.getTime() > paramAnonymousLocation1.getTime() + LocationManagerHelper.DEFAULT_FRESHNESS_THRESHOLD_MS)
            return false;
          if ((paramAnonymousLocation1.hasAccuracy()) || (paramAnonymousLocation2.hasAccuracy()))
            break;
        }
        while (paramAnonymousLocation1.getTime() > paramAnonymousLocation2.getTime());
        return false;
        if (!paramAnonymousLocation1.hasAccuracy())
          return false;
      }
      while ((!paramAnonymousLocation2.hasAccuracy()) || (paramAnonymousLocation1.getAccuracy() < paramAnonymousLocation2.getAccuracy()));
      return false;
    }

    public int compare(Location paramAnonymousLocation1, Location paramAnonymousLocation2)
    {
      if (Objects.equal(paramAnonymousLocation1, paramAnonymousLocation2))
        return 0;
      if (isBetterThan(paramAnonymousLocation1, paramAnonymousLocation2))
        return 1;
      return -1;
    }
  };
  public static final long DEFAULT_STALE_LOCATION_MILLIS = TimeUnit.MINUTES.toMillis(30L);
  private final Predicate<Location> defaultLocationPredicate;
  private final LocationManager locationManager;
  private final FormattingLogger logger = FormattingLoggers.getLogger(this);
  private final UserEventHelper userEventHelper;

  public LocationManagerHelper(LocationManager paramLocationManager, UserEventHelper paramUserEventHelper, Clock paramClock)
  {
    this.locationManager = ((LocationManager)Preconditions.checkNotNull(paramLocationManager, "null locationManager"));
    this.userEventHelper = paramUserEventHelper;
    Preconditions.checkNotNull(paramClock, "null clock");
    this.defaultLocationPredicate = new FreshLocationPredicate(DEFAULT_STALE_LOCATION_MILLIS, paramClock);
  }

  private void logStats(Map<String, Location> paramMap, Map<String, Long> paramMap1)
  {
    Iterator localIterator = paramMap.entrySet().iterator();
    if (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      String str1 = (String)localEntry.getKey();
      Location localLocation = (Location)localEntry.getValue();
      Long localLong = (Long)paramMap1.get(str1);
      if (localLong != null);
      for (boolean bool = true; ; bool = false)
      {
        Preconditions.checkState(bool, "Have location but no elapsedMillis for provider: [%s]", new Object[] { str1 });
        String str2 = localLocation.getProvider();
        Object[] arrayOfObject = new Object[4];
        arrayOfObject[0] = "t";
        arrayOfObject[1] = localLong;
        arrayOfObject[2] = "a";
        arrayOfObject[3] = Float.valueOf(localLocation.getAccuracy());
        String str3 = UserEventHelper.createEventTuple("p", str2, arrayOfObject);
        this.userEventHelper.log(UserEventAction.LOCATION_MANAGER_HELPER_RECEIVED_LOCATION, str3);
        break;
      }
    }
  }

  public Location getLastKnownLocation()
  {
    return getLastKnownLocation(DEFAULT_LOCATION_COMPARATOR, this.defaultLocationPredicate);
  }

  public Location getLastKnownLocation(Comparator<? super Location> paramComparator, Predicate<? super Location> paramPredicate)
  {
    List localList = this.locationManager.getAllProviders();
    ArrayList localArrayList = Lists.newArrayListWithExpectedSize(localList.size());
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Location localLocation2 = this.locationManager.getLastKnownLocation(str);
      if (localLocation2 != null)
        if ((paramPredicate != null) && (!paramPredicate.apply(localLocation2)))
          this.logger.v("Location failed predicate check: [%s]", new Object[] { localLocation2 });
        else
          localArrayList.add(localLocation2);
    }
    if (localArrayList.isEmpty())
    {
      this.logger.d("Could not get any last known location...", new Object[0]);
      return null;
    }
    Location localLocation1 = (Location)Collections.max(localArrayList, paramComparator);
    FormattingLogger localFormattingLogger = this.logger;
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = Integer.valueOf(localArrayList.size());
    arrayOfObject[1] = localLocation1.getProvider();
    arrayOfObject[2] = Float.valueOf(localLocation1.getAccuracy());
    arrayOfObject[3] = Long.valueOf(localLocation1.getTime());
    localFormattingLogger.d("Found [%s] last known locations.  Best was from provider: [%s], accuracy: [%s], time: [%s]", arrayOfObject);
    return localLocation1;
  }

  public Location obtainNewLocation(Criteria paramCriteria, Comparator<? super Location> paramComparator, final Predicate<? super Location> paramPredicate, long paramLong, TimeUnit paramTimeUnit, Looper paramLooper)
    throws InterruptedException
  {
    List localList = this.locationManager.getProviders(paramCriteria, true);
    this.logger.v("obtainNewLocation(): enabled providers that match criteria: [%s]", new Object[] { localList });
    if (localList.isEmpty())
      return null;
    final HashMap localHashMap1 = Maps.newHashMapWithExpectedSize(localList.size());
    final Stopwatch localStopwatch = new Stopwatch();
    final HashMap localHashMap2 = Maps.newHashMapWithExpectedSize(localList.size());
    final CountDownLatch localCountDownLatch = new CountDownLatch(localList.size());
    LocationListener local2 = new LocationListener()
    {
      public void onLocationChanged(Location paramAnonymousLocation)
      {
        if (paramAnonymousLocation == null);
        while (((paramPredicate != null) && (!paramPredicate.apply(paramAnonymousLocation))) || ((Location)localHashMap2.put(paramAnonymousLocation.getProvider(), paramAnonymousLocation) != null))
          return;
        localHashMap1.put(paramAnonymousLocation.getProvider(), Long.valueOf(localStopwatch.getTotalElapsedMilliseconds()));
        localCountDownLatch.countDown();
      }

      public void onProviderDisabled(String paramAnonymousString)
      {
      }

      public void onProviderEnabled(String paramAnonymousString)
      {
      }

      public void onStatusChanged(String paramAnonymousString, int paramAnonymousInt, Bundle paramAnonymousBundle)
      {
      }
    };
    localStopwatch.start();
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      this.logger.d("Requesting updates from provider: [%s]", new Object[] { str });
      this.locationManager.requestLocationUpdates(str, 0L, 0.0F, local2, paramLooper);
    }
    try
    {
      this.logger.d("Waiting for location updates.", new Object[0]);
      localCountDownLatch.await(paramLong, paramTimeUnit);
      this.logger.d("Done waiting for location updates.", new Object[0]);
      localStopwatch.stop();
      this.locationManager.removeUpdates(local2);
      if (localHashMap2.isEmpty())
      {
        this.logger.d("Did not obtain any location.", new Object[0]);
        return null;
      }
    }
    finally
    {
      localStopwatch.stop();
      this.locationManager.removeUpdates(local2);
    }
    logStats(localHashMap2, localHashMap1);
    Collection localCollection = localHashMap2.values();
    Location localLocation = (Location)Collections.max(localCollection, paramComparator);
    FormattingLogger localFormattingLogger = this.logger;
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(localCollection.size());
    arrayOfObject[1] = localLocation.getProvider();
    arrayOfObject[2] = Float.valueOf(localLocation.getAccuracy());
    localFormattingLogger.d("Obtained [%s] new locations.  Best was from provider: [%s], accuracy: [%s]", arrayOfObject);
    return localLocation;
  }

  public static final class FreshLocationPredicate
    implements Predicate<Location>
  {
    private final Clock clock;
    private final long staleLocationMillis;

    public FreshLocationPredicate(long paramLong, Clock paramClock)
    {
      this.staleLocationMillis = paramLong;
      this.clock = paramClock;
    }

    public boolean apply(Location paramLocation)
    {
      if (paramLocation == null);
      while (this.clock.currentTimeMillis() - paramLocation.getTime() >= this.staleLocationMillis)
        return false;
      return true;
    }
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.location.LocationManagerHelper
 * JD-Core Version:    0.6.2
 */