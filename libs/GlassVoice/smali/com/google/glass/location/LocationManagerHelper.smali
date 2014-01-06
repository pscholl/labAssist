.class public Lcom/google/glass/location/LocationManagerHelper;
.super Ljava/lang/Object;
.source "LocationManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;
    }
.end annotation


# static fields
.field static final DEFAULT_FRESHNESS_THRESHOLD_MS:J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_LOCATION_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_STALE_LOCATION_MILLIS:J


# instance fields
.field private final defaultLocationPredicate:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final locationManager:Landroid/location/LocationManager;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/location/LocationManagerHelper;->DEFAULT_FRESHNESS_THRESHOLD_MS:J

    .line 62
    new-instance v0, Lcom/google/glass/location/LocationManagerHelper$1;

    invoke-direct {v0}, Lcom/google/glass/location/LocationManagerHelper$1;-><init>()V

    sput-object v0, Lcom/google/glass/location/LocationManagerHelper;->DEFAULT_LOCATION_COMPARATOR:Ljava/util/Comparator;

    .line 119
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/location/LocationManagerHelper;->DEFAULT_STALE_LOCATION_MILLIS:J

    return-void
.end method

.method public constructor <init>(Landroid/location/LocationManager;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/util/Clock;)V
    .locals 3
    .parameter "locationManager"
    .parameter "userEventHelper"
    .parameter "clock"

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/location/LocationManagerHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 142
    const-string v0, "null locationManager"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/google/glass/location/LocationManagerHelper;->locationManager:Landroid/location/LocationManager;

    .line 143
    iput-object p2, p0, Lcom/google/glass/location/LocationManagerHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 144
    const-string v0, "null clock"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    new-instance v0, Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;

    sget-wide v1, Lcom/google/glass/location/LocationManagerHelper;->DEFAULT_STALE_LOCATION_MILLIS:J

    invoke-direct {v0, v1, v2, p3}, Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;-><init>(JLcom/google/glass/util/Clock;)V

    iput-object v0, p0, Lcom/google/glass/location/LocationManagerHelper;->defaultLocationPredicate:Lcom/google/common/base/Predicate;

    .line 147
    return-void
.end method

.method private logStats(Ljava/util/Map;Ljava/util/Map;)V
    .locals 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, locationByProvider:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/location/Location;>;"
    .local p2, elapsedMillisByProvider:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 284
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 285
    .local v4, locationByProviderEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/location/Location;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 286
    .local v5, provider:Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Location;

    .line 287
    .local v3, location:Landroid/location/Location;
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 288
    .local v0, elapsedMillis:Ljava/lang/Long;
    if-eqz v0, :cond_0

    move v6, v7

    :goto_1
    const-string v9, "Have location but no elapsedMillis for provider: [%s]"

    new-array v10, v7, [Ljava/lang/Object;

    aput-object v5, v10, v8

    invoke-static {v6, v9, v10}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 291
    const-string v6, "p"

    invoke-virtual {v3}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const-string v11, "t"

    aput-object v11, v10, v8

    aput-object v0, v10, v7

    const/4 v11, 0x2

    const-string v12, "a"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-virtual {v3}, Landroid/location/Location;->getAccuracy()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v9, v10}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, eventData:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/glass/location/LocationManagerHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v9, Lcom/google/glass/userevent/UserEventAction;->LOCATION_MANAGER_HELPER_RECEIVED_LOCATION:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v6, v9, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    goto :goto_0

    .end local v1           #eventData:Ljava/lang/String;
    :cond_0
    move v6, v8

    .line 288
    goto :goto_1

    .line 295
    .end local v0           #elapsedMillis:Ljava/lang/Long;
    .end local v3           #location:Landroid/location/Location;
    .end local v4           #locationByProviderEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/location/Location;>;"
    .end local v5           #provider:Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public getLastKnownLocation()Landroid/location/Location;
    .locals 2

    .prologue
    .line 199
    sget-object v0, Lcom/google/glass/location/LocationManagerHelper;->DEFAULT_LOCATION_COMPARATOR:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/google/glass/location/LocationManagerHelper;->defaultLocationPredicate:Lcom/google/common/base/Predicate;

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/location/LocationManagerHelper;->getLastKnownLocation(Ljava/util/Comparator;Lcom/google/common/base/Predicate;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getLastKnownLocation(Ljava/util/Comparator;Lcom/google/common/base/Predicate;)Landroid/location/Location;
    .locals 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-",
            "Landroid/location/Location;",
            ">;",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Landroid/location/Location;",
            ">;)",
            "Landroid/location/Location;"
        }
    .end annotation

    .prologue
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-Landroid/location/Location;>;"
    .local p2, isUsableLocationPredicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<-Landroid/location/Location;>;"
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 162
    iget-object v6, p0, Lcom/google/glass/location/LocationManagerHelper;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v6}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v5

    .line 163
    .local v5, providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Lcom/google/common/collect/Lists;->newArrayListWithExpectedSize(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 165
    .local v2, lastKnownLocations:Ljava/util/List;,"Ljava/util/List<Landroid/location/Location;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 166
    .local v4, provider:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/glass/location/LocationManagerHelper;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v6, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    .line 167
    .local v3, location:Landroid/location/Location;
    if-eqz v3, :cond_0

    .line 171
    if-eqz p2, :cond_1

    invoke-interface {p2, v3}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 172
    iget-object v6, p0, Lcom/google/glass/location/LocationManagerHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Location failed predicate check: [%s]"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v3, v8, v10

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 175
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 178
    .end local v3           #location:Landroid/location/Location;
    .end local v4           #provider:Ljava/lang/String;
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 179
    iget-object v6, p0, Lcom/google/glass/location/LocationManagerHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Could not get any last known location..."

    new-array v8, v10, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    const/4 v0, 0x0

    .line 189
    :goto_1
    return-object v0

    .line 183
    :cond_3
    invoke-static {v2, p1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 184
    .local v0, bestLastKnownLocation:Landroid/location/Location;
    iget-object v6, p0, Lcom/google/glass/location/LocationManagerHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Found [%s] last known locations.  Best was from provider: [%s], accuracy: [%s], time: [%s]"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    const/4 v9, 0x2

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public obtainNewLocation(Landroid/location/Criteria;Ljava/util/Comparator;Lcom/google/common/base/Predicate;JLjava/util/concurrent/TimeUnit;Landroid/os/Looper;)Landroid/location/Location;
    .locals 21
    .parameter "criteria"
    .parameter
    .parameter
    .parameter "timeout"
    .parameter "unit"
    .parameter "looper"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Criteria;",
            "Ljava/util/Comparator",
            "<-",
            "Landroid/location/Location;",
            ">;",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Landroid/location/Location;",
            ">;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Landroid/os/Looper;",
            ")",
            "Landroid/location/Location;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 214
    .local p2, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-Landroid/location/Location;>;"
    .local p3, isUsableLocationPredicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<-Landroid/location/Location;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/location/LocationManagerHelper;->locationManager:Landroid/location/LocationManager;

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v20

    .line 215
    .local v20, providers:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/location/LocationManagerHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "obtainNewLocation(): enabled providers that match criteria: [%s]"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v20, v10, v12

    invoke-interface {v4, v5, v10}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 217
    const/16 v17, 0x0

    .line 278
    :goto_0
    return-object v17

    .line 220
    :cond_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-static {v4}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v7

    .line 222
    .local v7, elapsedMillisByProvider:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v8, Lcom/google/glass/util/Stopwatch;

    invoke-direct {v8}, Lcom/google/glass/util/Stopwatch;-><init>()V

    .line 224
    .local v8, locationUpdateStopwatch:Lcom/google/glass/util/Stopwatch;
    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-static {v4}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v6

    .line 226
    .local v6, locationByProvider:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/location/Location;>;"
    new-instance v9, Ljava/util/concurrent/CountDownLatch;

    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v9, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 228
    .local v9, latch:Ljava/util/concurrent/CountDownLatch;
    new-instance v3, Lcom/google/glass/location/LocationManagerHelper$2;

    move-object/from16 v4, p0

    move-object/from16 v5, p3

    invoke-direct/range {v3 .. v9}, Lcom/google/glass/location/LocationManagerHelper$2;-><init>(Lcom/google/glass/location/LocationManagerHelper;Lcom/google/common/base/Predicate;Ljava/util/Map;Ljava/util/Map;Lcom/google/glass/util/Stopwatch;Ljava/util/concurrent/CountDownLatch;)V

    .line 251
    .local v3, listener:Landroid/location/LocationListener;
    invoke-virtual {v8}, Lcom/google/glass/util/Stopwatch;->start()Lcom/google/glass/util/Stopwatch;

    .line 252
    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 253
    .local v11, provider:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/location/LocationManagerHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Requesting updates from provider: [%s]"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-interface {v4, v5, v10}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/glass/location/LocationManagerHelper;->locationManager:Landroid/location/LocationManager;

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object v15, v3

    move-object/from16 v16, p7

    invoke-virtual/range {v10 .. v16}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_1

    .line 259
    .end local v11           #provider:Ljava/lang/String;
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/location/LocationManagerHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Waiting for location updates."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v4, v5, v10}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    move-wide/from16 v0, p4

    move-object/from16 v2, p6

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 261
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/location/LocationManagerHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Done waiting for location updates."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v4, v5, v10}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    invoke-virtual {v8}, Lcom/google/glass/util/Stopwatch;->stop()Lcom/google/glass/util/Stopwatch;

    .line 264
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/location/LocationManagerHelper;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v4, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 267
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 268
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/location/LocationManagerHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Did not obtain any location."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v4, v5, v10}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 263
    :catchall_0
    move-exception v4

    invoke-virtual {v8}, Lcom/google/glass/util/Stopwatch;->stop()Lcom/google/glass/util/Stopwatch;

    .line 264
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/glass/location/LocationManagerHelper;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v5, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    throw v4

    .line 272
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/google/glass/location/LocationManagerHelper;->logStats(Ljava/util/Map;Ljava/util/Map;)V

    .line 274
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v19

    .line 275
    .local v19, locations:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/location/Location;>;"
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/location/Location;

    .line 276
    .local v17, bestObtainedLocation:Landroid/location/Location;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/location/LocationManagerHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Obtained [%s] new locations.  Best was from provider: [%s], accuracy: [%s]"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v10, v12

    const/4 v12, 0x1

    invoke-virtual/range {v17 .. v17}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v10, v12

    const/4 v12, 0x2

    invoke-virtual/range {v17 .. v17}, Landroid/location/Location;->getAccuracy()F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v10, v12

    invoke-interface {v4, v5, v10}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
