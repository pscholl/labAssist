.class public Lcom/google/glass/gesture/EyeGestureUtils;
.super Ljava/lang/Object;
.source "EyeGestureUtils.java"


# static fields
.field public static final ACTION_EYE_GESTURE:Ljava/lang/String; = "com.google.glass.action.EYE_GESTURE"

.field public static final ACTION_ON_HEAD_CALIBRATION:Ljava/lang/String; = "com.google.glass.action.ACTION_ON_HEAD_CALIBRATION"

.field public static final ACTION_PRELOAD_RESOURCES:Ljava/lang/String; = "com.google.glass.gesture.action.PRELOAD_RESOURCES"

.field public static final ACTION_WINK_CALIBRATION:Ljava/lang/String; = "com.google.glass.action.ACTION_WINK_CALIBRATION"

.field public static final ACTION_WINK_CALIBRATION_TIPS:Ljava/lang/String; = "com.google.glass.action.ACTION_WINK_CALIBRATION_TIPS"

.field public static final EXTRA_EYE_GESTURE:Ljava/lang/String; = "gesture"

.field private static final MAX_WAKE_LOCK_DURATION_MILLIS:J

.field private static final SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final TAG:Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static managerForTest:Lcom/google/android/glass/eye/EyeGestureManager;

.field private static wakeLockSingleton:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 22
    const-class v0, Lcom/google/glass/gesture/EyeGestureUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/gesture/EyeGestureUtils;->TAG:Ljava/lang/String;

    .line 23
    sget-object v0, Lcom/google/glass/gesture/EyeGestureUtils;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/gesture/EyeGestureUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 58
    new-instance v0, Lcom/google/glass/async/PriorityThreadFactory;

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/glass/gesture/EyeGestureUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":AsyncSerialExecutor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/glass/async/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/glass/gesture/EyeGestureUtils;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 62
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/gesture/EyeGestureUtils;->MAX_WAKE_LOCK_DURATION_MILLIS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/glass/gesture/EyeGestureUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-static {p0, p1}, Lcom/google/glass/gesture/EyeGestureUtils;->enableGazeService(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    invoke-static {p0}, Lcom/google/glass/gesture/EyeGestureUtils;->getWakeLockInstance(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    return-object v0
.end method

.method public static activateGazeServiceLogging(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "activateState"

    .prologue
    .line 157
    invoke-static {p0}, Lcom/google/glass/gesture/EyeGestureUtils;->getEyeGestureManager(Landroid/content/Context;)Lcom/google/android/glass/eye/EyeGestureManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/glass/eye/EyeGestureManager;->activateGazeLogging(Z)V

    .line 158
    return-void
.end method

.method public static applyAndSaveCalibrationForEyeGesture(Landroid/content/Context;Lcom/google/android/glass/eye/EyeGesture;)Z
    .locals 1
    .parameter "context"
    .parameter "type"

    .prologue
    .line 265
    invoke-static {p0}, Lcom/google/glass/gesture/EyeGestureUtils;->getEyeGestureManager(Landroid/content/Context;)Lcom/google/android/glass/eye/EyeGestureManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/glass/eye/EyeGestureManager;->applyAndSaveCalibration(Lcom/google/android/glass/eye/EyeGesture;)Z

    move-result v0

    return v0
.end method

.method public static clearCalibrationForEyeGesture(Landroid/content/Context;Lcom/google/android/glass/eye/EyeGesture;)Z
    .locals 1
    .parameter "context"
    .parameter "type"

    .prologue
    .line 298
    invoke-static {p0}, Lcom/google/glass/gesture/EyeGestureUtils;->getEyeGestureManager(Landroid/content/Context;)Lcom/google/android/glass/eye/EyeGestureManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/glass/eye/EyeGestureManager;->clearCalibration(Lcom/google/android/glass/eye/EyeGesture;)Z

    move-result v0

    return v0
.end method

.method public static enableEyeGestureDetectorPersistently(Landroid/content/Context;Lcom/google/android/glass/eye/EyeGesture;Z)Z
    .locals 1
    .parameter "context"
    .parameter "type"
    .parameter "state"

    .prologue
    .line 193
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/google/glass/gesture/EyeGestureUtils;->enableEyeGestureDetectorPersistently(Landroid/content/Context;Lcom/google/android/glass/eye/EyeGesture;ZZ)Z

    move-result v0

    return v0
.end method

.method public static enableEyeGestureDetectorPersistently(Landroid/content/Context;Lcom/google/android/glass/eye/EyeGesture;ZZ)Z
    .locals 1
    .parameter "context"
    .parameter "type"
    .parameter "state"
    .parameter "startImmediately"

    .prologue
    .line 184
    invoke-static {p0}, Lcom/google/glass/gesture/EyeGestureUtils;->getEyeGestureManager(Landroid/content/Context;)Lcom/google/android/glass/eye/EyeGestureManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/glass/eye/EyeGestureManager;->enableDetectorPersistently(Lcom/google/android/glass/eye/EyeGesture;ZZ)Z

    move-result v0

    return v0
.end method

.method private static enableGazeService(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "enableState"

    .prologue
    .line 130
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 131
    sget-object v0, Lcom/google/glass/gesture/EyeGestureUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "enableGazeService called: enable=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    invoke-static {p0}, Lcom/google/glass/gesture/EyeGestureUtils;->getEyeGestureManager(Landroid/content/Context;)Lcom/google/android/glass/eye/EyeGestureManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/glass/eye/EyeGestureManager;->enableGazeService(Z)V

    .line 133
    return-void
.end method

.method public static declared-synchronized enableGazeServiceAsync(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "enableState"

    .prologue
    .line 90
    const-class v1, Lcom/google/glass/gesture/EyeGestureUtils;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 95
    sget-object v0, Lcom/google/glass/gesture/EyeGestureUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Incrementing wake lock."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    invoke-static {p0}, Lcom/google/glass/gesture/EyeGestureUtils;->getWakeLockInstance(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sget-wide v2, Lcom/google/glass/gesture/EyeGestureUtils;->MAX_WAKE_LOCK_DURATION_MILLIS:J

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 99
    new-instance v0, Lcom/google/glass/gesture/EyeGestureUtils$1;

    invoke-direct {v0, p1, p0}, Lcom/google/glass/gesture/EyeGestureUtils$1;-><init>(ZLandroid/content/Context;)V

    sget-object v2, Lcom/google/glass/gesture/EyeGestureUtils;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v3}, Lcom/google/glass/gesture/EyeGestureUtils$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit v1

    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static endCalibrationIntervalForEyeGesture(Landroid/content/Context;Lcom/google/android/glass/eye/EyeGesture;)Z
    .locals 1
    .parameter "context"
    .parameter "type"

    .prologue
    .line 287
    invoke-static {p0}, Lcom/google/glass/gesture/EyeGestureUtils;->getEyeGestureManager(Landroid/content/Context;)Lcom/google/android/glass/eye/EyeGestureManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/glass/eye/EyeGestureManager;->endCalibrationInterval(Lcom/google/android/glass/eye/EyeGesture;)Z

    move-result v0

    return v0
.end method

.method public static forceGlasshubResetHack(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 148
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 149
    sget-object v0, Lcom/google/glass/gesture/EyeGestureUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "forceGlasshubResetHack() called!  NOTE: A reboot is required!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    invoke-static {p0}, Lcom/google/glass/gesture/EyeGestureUtils;->getEyeGestureManager(Landroid/content/Context;)Lcom/google/android/glass/eye/EyeGestureManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/glass/eye/EyeGestureManager;->forceGlasshubResetHack()V

    .line 151
    return-void
.end method

.method private static getEyeGestureManager(Landroid/content/Context;)Lcom/google/android/glass/eye/EyeGestureManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 316
    invoke-static {}, Lcom/google/glass/predicates/Assert;->isTest()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/gesture/EyeGestureUtils;->managerForTest:Lcom/google/android/glass/eye/EyeGestureManager;

    if-eqz v0, :cond_0

    .line 317
    sget-object v0, Lcom/google/glass/gesture/EyeGestureUtils;->managerForTest:Lcom/google/android/glass/eye/EyeGestureManager;

    .line 319
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/android/glass/eye/EyeGestureManager;->from(Landroid/content/Context;)Lcom/google/android/glass/eye/EyeGestureManager;

    move-result-object v0

    goto :goto_0
.end method

.method private static declared-synchronized getWakeLockInstance(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;
    .locals 5
    .parameter "context"

    .prologue
    .line 72
    const-class v2, Lcom/google/glass/gesture/EyeGestureUtils;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/google/glass/gesture/EyeGestureUtils;->wakeLockSingleton:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 73
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 74
    .local v0, powerManager:Landroid/os/PowerManager;
    const/4 v1, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/google/glass/gesture/EyeGestureUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":WakeLock"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/google/glass/gesture/EyeGestureUtils;->wakeLockSingleton:Landroid/os/PowerManager$WakeLock;

    .line 76
    sget-object v1, Lcom/google/glass/gesture/EyeGestureUtils;->wakeLockSingleton:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 78
    .end local v0           #powerManager:Landroid/os/PowerManager;
    :cond_0
    sget-object v1, Lcom/google/glass/gesture/EyeGestureUtils;->wakeLockSingleton:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 72
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static isCalibrationCompleteForEyeGesture(Landroid/content/Context;Lcom/google/android/glass/eye/EyeGesture;)Z
    .locals 1
    .parameter "context"
    .parameter "type"

    .prologue
    .line 307
    invoke-static {p0}, Lcom/google/glass/gesture/EyeGestureUtils;->getEyeGestureManager(Landroid/content/Context;)Lcom/google/android/glass/eye/EyeGestureManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/glass/eye/EyeGestureManager;->isCalibrationComplete(Lcom/google/android/glass/eye/EyeGesture;)Z

    move-result v0

    return v0
.end method

.method public static isEyeGestureDetectorPersistentlyEnabled(Landroid/content/Context;Lcom/google/android/glass/eye/EyeGesture;)Z
    .locals 1
    .parameter "context"
    .parameter "type"

    .prologue
    .line 202
    invoke-static {p0}, Lcom/google/glass/gesture/EyeGestureUtils;->getEyeGestureManager(Landroid/content/Context;)Lcom/google/android/glass/eye/EyeGestureManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/glass/eye/EyeGestureManager;->isDetectorPersistentlyEnabled(Lcom/google/android/glass/eye/EyeGesture;)Z

    move-result v0

    return v0
.end method

.method public static isEyeGestureDetectorRunning(Landroid/content/Context;Lcom/google/android/glass/eye/EyeGesture;)Z
    .locals 1
    .parameter "context"
    .parameter "type"

    .prologue
    .line 211
    invoke-static {p0}, Lcom/google/glass/gesture/EyeGestureUtils;->getEyeGestureManager(Landroid/content/Context;)Lcom/google/android/glass/eye/EyeGestureManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/glass/eye/EyeGestureManager;->isDetectorRunning(Lcom/google/android/glass/eye/EyeGesture;)Z

    move-result v0

    return v0
.end method

.method public static isEyeGestureSupported(Landroid/content/Context;Lcom/google/android/glass/eye/EyeGesture;)Z
    .locals 1
    .parameter "context"
    .parameter "type"

    .prologue
    .line 169
    invoke-static {p0}, Lcom/google/glass/gesture/EyeGestureUtils;->getEyeGestureManager(Landroid/content/Context;)Lcom/google/android/glass/eye/EyeGestureManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/glass/eye/EyeGestureManager;->isSupported(Lcom/google/android/glass/eye/EyeGesture;)Z

    move-result v0

    return v0
.end method

.method public static isGazeServiceLogging(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 164
    invoke-static {p0}, Lcom/google/glass/gesture/EyeGestureUtils;->getEyeGestureManager(Landroid/content/Context;)Lcom/google/android/glass/eye/EyeGestureManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/glass/eye/EyeGestureManager;->isGazeLogging()Z

    move-result v0

    return v0
.end method

.method public static loadCalibrationForEyeGesture(Landroid/content/Context;Lcom/google/android/glass/eye/EyeGesture;)Z
    .locals 1
    .parameter "context"
    .parameter "type"

    .prologue
    .line 253
    invoke-static {p0}, Lcom/google/glass/gesture/EyeGestureUtils;->getEyeGestureManager(Landroid/content/Context;)Lcom/google/android/glass/eye/EyeGestureManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/glass/eye/EyeGestureManager;->loadCalibration(Lcom/google/android/glass/eye/EyeGesture;)Z

    move-result v0

    return v0
.end method

.method public static setManagerForTest(Lcom/google/android/glass/eye/EyeGestureManager;)V
    .locals 0
    .parameter "managerForTest"

    .prologue
    .line 311
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 312
    sput-object p0, Lcom/google/glass/gesture/EyeGestureUtils;->managerForTest:Lcom/google/android/glass/eye/EyeGestureManager;

    .line 313
    return-void
.end method

.method public static startCalibrationIntervalForEyeGesture(Landroid/content/Context;Lcom/google/android/glass/eye/EyeGesture;)Z
    .locals 1
    .parameter "context"
    .parameter "type"

    .prologue
    .line 276
    invoke-static {p0}, Lcom/google/glass/gesture/EyeGestureUtils;->getEyeGestureManager(Landroid/content/Context;)Lcom/google/android/glass/eye/EyeGestureManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/glass/eye/EyeGestureManager;->startCalibrationInterval(Lcom/google/android/glass/eye/EyeGesture;)Z

    move-result v0

    return v0
.end method

.method public static startEyeGestureDetector(Landroid/content/Context;Lcom/google/android/glass/eye/EyeGesture;ZI)Z
    .locals 1
    .parameter "context"
    .parameter "type"
    .parameter "oneShot"
    .parameter "timeoutMs"

    .prologue
    .line 229
    invoke-static {p0}, Lcom/google/glass/gesture/EyeGestureUtils;->getEyeGestureManager(Landroid/content/Context;)Lcom/google/android/glass/eye/EyeGestureManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/glass/eye/EyeGestureManager;->startDetector(Lcom/google/android/glass/eye/EyeGesture;ZI)Z

    move-result v0

    return v0
.end method

.method public static stopEyeGestureDetector(Landroid/content/Context;Lcom/google/android/glass/eye/EyeGesture;)Z
    .locals 1
    .parameter "context"
    .parameter "type"

    .prologue
    .line 242
    invoke-static {p0}, Lcom/google/glass/gesture/EyeGestureUtils;->getEyeGestureManager(Landroid/content/Context;)Lcom/google/android/glass/eye/EyeGestureManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/glass/eye/EyeGestureManager;->stopDetector(Lcom/google/android/glass/eye/EyeGesture;)Z

    move-result v0

    return v0
.end method
