.class public Lcom/google/glass/util/Clock$SettableClock;
.super Ljava/lang/Object;
.source "Clock.java"

# interfaces
.implements Lcom/google/glass/util/Clock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettableClock"
.end annotation


# instance fields
.field private currentTimeMillis:J

.field private elapsedRealtime:J

.field private uptimeMillis:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/google/glass/util/Clock$SettableClock;->currentTimeMillis:J

    return-wide v0
.end method

.method public elapsedRealtime()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/google/glass/util/Clock$SettableClock;->elapsedRealtime:J

    return-wide v0
.end method

.method public elapsedRealtimeNanos()J
    .locals 3

    .prologue
    .line 83
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/google/glass/util/Clock$SettableClock;->elapsedRealtime:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public incrementTime(J)V
    .locals 2
    .parameter "millis"

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/google/glass/util/Clock$SettableClock;->uptimeMillis:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/glass/util/Clock$SettableClock;->uptimeMillis:J

    .line 62
    iget-wide v0, p0, Lcom/google/glass/util/Clock$SettableClock;->currentTimeMillis:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/glass/util/Clock$SettableClock;->currentTimeMillis:J

    .line 63
    iget-wide v0, p0, Lcom/google/glass/util/Clock$SettableClock;->elapsedRealtime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/glass/util/Clock$SettableClock;->elapsedRealtime:J

    .line 64
    return-void
.end method

.method public setElapsedRealtime(J)V
    .locals 0
    .parameter "elapsedRealtime"

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/google/glass/util/Clock$SettableClock;->elapsedRealtime:J

    .line 53
    return-void
.end method

.method public setTime(JJ)V
    .locals 0
    .parameter "uptimeMillis"
    .parameter "currentTimeMillis"

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/google/glass/util/Clock$SettableClock;->uptimeMillis:J

    .line 48
    iput-wide p3, p0, Lcom/google/glass/util/Clock$SettableClock;->currentTimeMillis:J

    .line 49
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[uptimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/glass/util/Clock$SettableClock;->uptimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/glass/util/Clock$SettableClock;->currentTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", elapsedRealtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/glass/util/Clock$SettableClock;->elapsedRealtime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uptimeMillis()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/google/glass/util/Clock$SettableClock;->uptimeMillis:J

    return-wide v0
.end method
