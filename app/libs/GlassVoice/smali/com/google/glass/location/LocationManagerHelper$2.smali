.class Lcom/google/glass/location/LocationManagerHelper$2;
.super Ljava/lang/Object;
.source "LocationManagerHelper.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/location/LocationManagerHelper;->obtainNewLocation(Landroid/location/Criteria;Ljava/util/Comparator;Lcom/google/common/base/Predicate;JLjava/util/concurrent/TimeUnit;Landroid/os/Looper;)Landroid/location/Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/location/LocationManagerHelper;

.field final synthetic val$elapsedMillisByProvider:Ljava/util/Map;

.field final synthetic val$isUsableLocationPredicate:Lcom/google/common/base/Predicate;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$locationByProvider:Ljava/util/Map;

.field final synthetic val$locationUpdateStopwatch:Lcom/google/glass/util/Stopwatch;


# direct methods
.method constructor <init>(Lcom/google/glass/location/LocationManagerHelper;Lcom/google/common/base/Predicate;Ljava/util/Map;Ljava/util/Map;Lcom/google/glass/util/Stopwatch;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/google/glass/location/LocationManagerHelper$2;->this$0:Lcom/google/glass/location/LocationManagerHelper;

    iput-object p2, p0, Lcom/google/glass/location/LocationManagerHelper$2;->val$isUsableLocationPredicate:Lcom/google/common/base/Predicate;

    iput-object p3, p0, Lcom/google/glass/location/LocationManagerHelper$2;->val$locationByProvider:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/glass/location/LocationManagerHelper$2;->val$elapsedMillisByProvider:Ljava/util/Map;

    iput-object p5, p0, Lcom/google/glass/location/LocationManagerHelper$2;->val$locationUpdateStopwatch:Lcom/google/glass/util/Stopwatch;

    iput-object p6, p0, Lcom/google/glass/location/LocationManagerHelper$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 5
    .parameter "location"

    .prologue
    .line 231
    if-nez p1, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v1, p0, Lcom/google/glass/location/LocationManagerHelper$2;->val$isUsableLocationPredicate:Lcom/google/common/base/Predicate;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/glass/location/LocationManagerHelper$2;->val$isUsableLocationPredicate:Lcom/google/common/base/Predicate;

    invoke-interface {v1, p1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    :cond_2
    iget-object v1, p0, Lcom/google/glass/location/LocationManagerHelper$2;->val$locationByProvider:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 239
    .local v0, previousLocation:Landroid/location/Location;
    if-nez v0, :cond_0

    .line 240
    iget-object v1, p0, Lcom/google/glass/location/LocationManagerHelper$2;->val$elapsedMillisByProvider:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/location/LocationManagerHelper$2;->val$locationUpdateStopwatch:Lcom/google/glass/util/Stopwatch;

    invoke-virtual {v3}, Lcom/google/glass/util/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v1, p0, Lcom/google/glass/location/LocationManagerHelper$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 246
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 247
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 248
    return-void
.end method
