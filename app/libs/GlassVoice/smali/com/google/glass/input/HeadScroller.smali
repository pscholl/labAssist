.class public Lcom/google/glass/input/HeadScroller;
.super Ljava/lang/Object;
.source "HeadScroller.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/glass/input/AbsolutePitchHelper$AbsolutePitchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/input/HeadScroller$ScreenOffBroadcastReceiver;,
        Lcom/google/glass/input/HeadScroller$DoubleBlinkBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION_MILLIS:J = 0xfaL

.field static final DEFAULT_GLU_ANGLE_DEGS:F = 30.0f
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final GLU_ANGLE_KEY:Ljava/lang/String; = "glu_angle_degs"

.field private static final HEAD_GESTURE_SETTINGS_KEY:Ljava/lang/String; = "head_gesture_settings"

.field static final HEAD_PANNING_SCALE:F = 0.5f
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final HEAD_SCROLLING_SCALE:F = 0.33f
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final HEAD_WAKE_TRIGGER_HYSTERESIS_DEGREES:F = 10.0f
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_SCROLL_PIXELS_PER_SECOND:F = 900.0f
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

#the value of this static final field might be set in the static constructor
.field private static final NANOS_PER_SECOND:F = 0.0f

.field private static final PAN_ZONE_SIZE:F = 3.0f

.field private static final TAG:Ljava/lang/String; = null

.field private static final YAW_DEGREES_PER_ITEM:F = 6.0f

.field private static final YAW_DISPLACEMENT_FOR_SCROLL_MAX:F = 24.0f

.field private static final YAW_DISPLACEMENT_FOR_SCROLL_START:F = 18.0f

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private context:Landroid/content/Context;

.field private doubleBlinkReceiver:Lcom/google/glass/input/HeadScroller$DoubleBlinkBroadcastReceiver;

.field private extraYaw:F

.field private gyroYMovingAverage:F

.field private gyroscopeSensor:Landroid/hardware/Sensor;

.field private handsfreeActivatedOnce:Z

.field private handsfreeTimeStopWatch:Lcom/google/glass/util/Stopwatch;

.field private volatile integratedGyroY:F

.field private isActivated:Z

.field private isHeadScrollingActivated:Z

.field private isUserLookingUp:Z

.field private itemDisplacement:F

.field private itemDistanceTraveled:F

.field private itemPositionAnimator:Landroid/animation/ValueAnimator;

.field private lastGyroTimestamp:J

.field private lastTimestamp:J

.field private lastYaw:F

.field private lastYawDataSet:Z

.field private lookDownAngle:F

.field private lookingUpStopWatch:Lcom/google/glass/util/Stopwatch;

.field private pitchHelper:Lcom/google/glass/input/AbsolutePitchHelper;

.field private powerHelper:Lcom/google/glass/util/PowerHelper;

.field private scaleAnimator:Landroid/animation/ValueAnimator;

.field private scaleDestination:F

.field private screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private final screenWidth:F

.field private scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

.field private sensorExecutor:Ljava/util/concurrent/Executor;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private soundManager:Lcom/google/glass/sound/SoundManager;

.field private timeToDblBlinkStopWatch:Lcom/google/glass/util/Stopwatch;

.field private userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

.field private userGluAngle:F

.field private yawDisplacement:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 44
    const-class v0, Lcom/google/glass/input/HeadScroller;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/input/HeadScroller;->TAG:Ljava/lang/String;

    .line 45
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/input/HeadScroller;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 97
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    long-to-float v0, v0

    sput v0, Lcom/google/glass/input/HeadScroller;->NANOS_PER_SECOND:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/input/ItemScroller$Scrollable;)V
    .locals 2
    .parameter "context"
    .parameter "scrollable"

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/glass/input/HeadScroller;->scaleDestination:F

    .line 196
    new-instance v0, Lcom/google/glass/util/Stopwatch;

    invoke-direct {v0}, Lcom/google/glass/util/Stopwatch;-><init>()V

    iput-object v0, p0, Lcom/google/glass/input/HeadScroller;->lookingUpStopWatch:Lcom/google/glass/util/Stopwatch;

    .line 197
    new-instance v0, Lcom/google/glass/util/Stopwatch;

    invoke-direct {v0}, Lcom/google/glass/util/Stopwatch;-><init>()V

    iput-object v0, p0, Lcom/google/glass/input/HeadScroller;->timeToDblBlinkStopWatch:Lcom/google/glass/util/Stopwatch;

    .line 198
    new-instance v0, Lcom/google/glass/util/Stopwatch;

    invoke-direct {v0}, Lcom/google/glass/util/Stopwatch;-><init>()V

    iput-object v0, p0, Lcom/google/glass/input/HeadScroller;->handsfreeTimeStopWatch:Lcom/google/glass/util/Stopwatch;

    .line 205
    new-instance v0, Lcom/google/glass/input/HeadScroller$DoubleBlinkBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/input/HeadScroller$DoubleBlinkBroadcastReceiver;-><init>(Lcom/google/glass/input/HeadScroller;Lcom/google/glass/input/HeadScroller$1;)V

    iput-object v0, p0, Lcom/google/glass/input/HeadScroller;->doubleBlinkReceiver:Lcom/google/glass/input/HeadScroller$DoubleBlinkBroadcastReceiver;

    .line 208
    iput-object p1, p0, Lcom/google/glass/input/HeadScroller;->context:Landroid/content/Context;

    .line 209
    iput-object p2, p0, Lcom/google/glass/input/HeadScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    .line 211
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/input/HeadScroller;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 213
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iput v0, p0, Lcom/google/glass/input/HeadScroller;->screenWidth:F

    .line 216
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller;->lookingUpStopWatch:Lcom/google/glass/util/Stopwatch;

    invoke-virtual {v0}, Lcom/google/glass/util/Stopwatch;->start()Lcom/google/glass/util/Stopwatch;

    .line 217
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller;->timeToDblBlinkStopWatch:Lcom/google/glass/util/Stopwatch;

    invoke-virtual {v0}, Lcom/google/glass/util/Stopwatch;->start()Lcom/google/glass/util/Stopwatch;

    .line 218
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller;->handsfreeTimeStopWatch:Lcom/google/glass/util/Stopwatch;

    invoke-virtual {v0}, Lcom/google/glass/util/Stopwatch;->start()Lcom/google/glass/util/Stopwatch;

    .line 220
    invoke-direct {p0, p1}, Lcom/google/glass/input/HeadScroller;->setupLookUpDownAngles(Landroid/content/Context;)V

    .line 222
    new-instance v0, Lcom/google/glass/util/PowerHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/input/HeadScroller;->powerHelper:Lcom/google/glass/util/PowerHelper;

    .line 223
    new-instance v0, Lcom/google/glass/sound/SoundManager;

    invoke-direct {v0, p1}, Lcom/google/glass/sound/SoundManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/input/HeadScroller;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 225
    invoke-direct {p0}, Lcom/google/glass/input/HeadScroller;->setupAnimations()V

    .line 226
    invoke-direct {p0}, Lcom/google/glass/input/HeadScroller;->setupSensors()V

    .line 227
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/input/HeadScroller;)Landroid/hardware/Sensor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller;->gyroscopeSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/glass/input/HeadScroller;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/glass/input/HeadScroller;->snapToNearest(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/google/glass/input/HeadScroller;Landroid/hardware/Sensor;)Landroid/hardware/Sensor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/glass/input/HeadScroller;->gyroscopeSensor:Landroid/hardware/Sensor;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/glass/input/HeadScroller;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/glass/input/HeadScroller;->startYawCalculations()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/glass/input/HeadScroller;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/glass/input/HeadScroller;->zoomToPanScale()V

    return-void
.end method

.method static synthetic access$1302(Lcom/google/glass/input/HeadScroller;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/google/glass/input/HeadScroller;->handsfreeActivatedOnce:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/google/glass/input/HeadScroller;)Lcom/google/glass/util/SafeBroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/google/glass/input/HeadScroller;Lcom/google/glass/util/SafeBroadcastReceiver;)Lcom/google/glass/util/SafeBroadcastReceiver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/glass/input/HeadScroller;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/glass/input/HeadScroller;)Landroid/hardware/SensorManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller;->sensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/input/HeadScroller;)Lcom/google/glass/input/ItemScroller$Scrollable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/Context;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-static {p0}, Lcom/google/glass/input/HeadScroller;->getHeadWakeAngleDegs(Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/google/glass/input/HeadScroller;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/google/glass/input/HeadScroller;->userGluAngle:F

    return v0
.end method

.method static synthetic access$502(Lcom/google/glass/input/HeadScroller;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/google/glass/input/HeadScroller;->userGluAngle:F

    return p1
.end method

.method static synthetic access$602(Lcom/google/glass/input/HeadScroller;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/google/glass/input/HeadScroller;->lookDownAngle:F

    return p1
.end method

.method static synthetic access$700()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/google/glass/input/HeadScroller;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/glass/input/HeadScroller;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/google/glass/input/HeadScroller;->lastGyroTimestamp:J

    return-wide p1
.end method

.method private calculateYaw(Landroid/hardware/SensorEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    .line 778
    iget-wide v4, p0, Lcom/google/glass/input/HeadScroller;->lastGyroTimestamp:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 779
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x1

    aget v1, v4, v5

    .line 788
    .local v1, gyroY:F
    iget v4, p0, Lcom/google/glass/input/HeadScroller;->gyroYMovingAverage:F

    sub-float v4, v1, v4

    const v5, 0x3dcccccd

    invoke-static {v4, v5}, Lcom/google/glass/input/OrientationHelper;->roundValueToPrecision(FF)F

    move-result v2

    .line 791
    .local v2, roundedGyroY:F
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v6, p0, Lcom/google/glass/input/HeadScroller;->lastGyroTimestamp:J

    sub-long/2addr v4, v6

    long-to-float v4, v4

    sget v5, Lcom/google/glass/input/HeadScroller;->NANOS_PER_SECOND:F

    div-float v0, v4, v5

    .line 794
    .local v0, deltaT:F
    const/high16 v4, 0x3e80

    cmpl-float v4, v0, v4

    if-lez v4, :cond_2

    .line 795
    const/4 v4, 0x0

    iput v4, p0, Lcom/google/glass/input/HeadScroller;->gyroYMovingAverage:F

    .line 807
    :goto_0
    iget v4, p0, Lcom/google/glass/input/HeadScroller;->integratedGyroY:F

    neg-float v4, v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 808
    .local v3, yaw:F
    iget-boolean v4, p0, Lcom/google/glass/input/HeadScroller;->lastYawDataSet:Z

    if-nez v4, :cond_0

    .line 809
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-direct {p0, v3, v4, v5}, Lcom/google/glass/input/HeadScroller;->updateLastYawData(FJ)V

    .line 811
    :cond_0
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-direct {p0, v3, v4, v5}, Lcom/google/glass/input/HeadScroller;->panScrollBasedOnYaw(FJ)V

    .line 812
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-direct {p0, v3, v4, v5}, Lcom/google/glass/input/HeadScroller;->updateLastYawData(FJ)V

    .line 815
    .end local v0           #deltaT:F
    .end local v1           #gyroY:F
    .end local v2           #roundedGyroY:F
    .end local v3           #yaw:F
    :cond_1
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v4, p0, Lcom/google/glass/input/HeadScroller;->lastGyroTimestamp:J

    .line 816
    return-void

    .line 800
    .restart local v0       #deltaT:F
    .restart local v1       #gyroY:F
    .restart local v2       #roundedGyroY:F
    :cond_2
    iget v4, p0, Lcom/google/glass/input/HeadScroller;->integratedGyroY:F

    mul-float v5, v2, v0

    add-float/2addr v4, v5

    iput v4, p0, Lcom/google/glass/input/HeadScroller;->integratedGyroY:F

    .line 803
    const v4, 0x3727c5ac

    mul-float/2addr v4, v1

    const v5, 0x3f7fff58

    iget v6, p0, Lcom/google/glass/input/HeadScroller;->gyroYMovingAverage:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Lcom/google/glass/input/HeadScroller;->gyroYMovingAverage:F

    goto :goto_0
.end method

.method private disableWinkDetector()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 635
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller;->context:Landroid/content/Context;

    sget-object v1, Lcom/google/android/glass/eye/EyeGesture;->WINK:Lcom/google/android/glass/eye/EyeGesture;

    invoke-static {v0, v1}, Lcom/google/glass/gesture/EyeGestureUtils;->stopEyeGestureDetector(Landroid/content/Context;Lcom/google/android/glass/eye/EyeGesture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    sget-object v0, Lcom/google/glass/input/HeadScroller;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Wink detector stopped."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 640
    :goto_0
    return-void

    .line 638
    :cond_0
    sget-object v0, Lcom/google/glass/input/HeadScroller;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Failed to stop wink detector."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private enableWinkDetector()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 625
    const/4 v0, 0x0

    .line 626
    .local v0, oneShot:Z
    const/4 v1, -0x1

    .line 627
    .local v1, timeoutMs:I
    iget-object v2, p0, Lcom/google/glass/input/HeadScroller;->context:Landroid/content/Context;

    sget-object v3, Lcom/google/android/glass/eye/EyeGesture;->WINK:Lcom/google/android/glass/eye/EyeGesture;

    invoke-static {v2, v3, v0, v1}, Lcom/google/glass/gesture/EyeGestureUtils;->startEyeGestureDetector(Landroid/content/Context;Lcom/google/android/glass/eye/EyeGesture;ZI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 628
    sget-object v2, Lcom/google/glass/input/HeadScroller;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Wink detector started."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 632
    :goto_0
    return-void

    .line 630
    :cond_0
    sget-object v2, Lcom/google/glass/input/HeadScroller;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Failed to start wink detector."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private engageHandsfreeMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 665
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->userActivity()V

    .line 666
    iput v1, p0, Lcom/google/glass/input/HeadScroller;->yawDisplacement:F

    .line 667
    iput v1, p0, Lcom/google/glass/input/HeadScroller;->extraYaw:F

    .line 668
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller;->handsfreeTimeStopWatch:Lcom/google/glass/util/Stopwatch;

    invoke-virtual {v0}, Lcom/google/glass/util/Stopwatch;->reset()Lcom/google/glass/util/Stopwatch;

    .line 669
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/input/HeadScroller;->setIsHeadScrollingActivated(Z)Z

    .line 671
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/input/HeadScroller;->lastYawDataSet:Z

    .line 674
    invoke-static {}, Lcom/google/glass/util/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/input/HeadScroller$8;

    invoke-direct {v1, p0}, Lcom/google/glass/input/HeadScroller$8;-><init>(Lcom/google/glass/input/HeadScroller;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 681
    return-void
.end method

.method private static getHeadWakeAngleDegs(Landroid/content/Context;)F
    .locals 3
    .parameter "context"

    .prologue
    .line 299
    const-string v1, "head_gesture_settings"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 302
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "glu_angle_degs"

    const/high16 v2, 0x41f0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method private isPositionAtBoundary(F)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 447
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/input/HeadScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v0}, Lcom/google/glass/input/ItemScroller$Scrollable;->getNumberOfItems()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private panScrollBasedOnYaw(FJ)V
    .locals 9
    .parameter "yaw"
    .parameter "timestamp"

    .prologue
    const/4 v8, 0x0

    .line 532
    iget-object v6, p0, Lcom/google/glass/input/HeadScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v6}, Lcom/google/glass/input/ItemScroller$Scrollable;->getItem()F

    move-result v4

    .line 533
    .local v4, positionBeforeMoving:F
    iget v6, p0, Lcom/google/glass/input/HeadScroller;->lastYaw:F

    sub-float v1, p1, v6

    .line 534
    .local v1, deltaYaw:F
    invoke-virtual {p0}, Lcom/google/glass/input/HeadScroller;->isYawDisplacementInScrollZone()Z

    move-result v5

    .line 535
    .local v5, wasInScrollZone:Z
    invoke-virtual {p0, v1}, Lcom/google/glass/input/HeadScroller;->updateYawDisplacement(F)V

    .line 538
    const/high16 v6, 0x40c0

    div-float v0, v1, v6

    .line 539
    .local v0, deltaItem:F
    iget-object v6, p0, Lcom/google/glass/input/HeadScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v6}, Lcom/google/glass/input/ItemScroller$Scrollable;->getItem()F

    move-result v6

    add-float/2addr v6, v0

    iget-object v7, p0, Lcom/google/glass/input/HeadScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v7}, Lcom/google/glass/input/ItemScroller$Scrollable;->getNumberOfItems()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 542
    .local v2, futurePosition:F
    invoke-virtual {p0, v4, v2, v1}, Lcom/google/glass/input/HeadScroller;->updateExtraYaw(FFF)V

    .line 545
    iget v6, p0, Lcom/google/glass/input/HeadScroller;->extraYaw:F

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_0

    .line 581
    :goto_0
    return-void

    .line 550
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/input/HeadScroller;->isYawDisplacementInScrollZone()Z

    move-result v3

    .line 551
    .local v3, inScrollZone:Z
    if-eqz v3, :cond_3

    .line 554
    iget v6, p0, Lcom/google/glass/input/HeadScroller;->yawDisplacement:F

    invoke-virtual {p0, v6, p2, p3}, Lcom/google/glass/input/HeadScroller;->deltaItemBasedOnScrolling(FJ)F

    move-result v6

    add-float/2addr v2, v6

    .line 555
    iget-object v6, p0, Lcom/google/glass/input/HeadScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v6}, Lcom/google/glass/input/ItemScroller$Scrollable;->getNumberOfItems()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 556
    iget-object v6, p0, Lcom/google/glass/input/HeadScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v6, v2}, Lcom/google/glass/input/ItemScroller$Scrollable;->setItem(F)V

    .line 558
    iget v6, p0, Lcom/google/glass/input/HeadScroller;->yawDisplacement:F

    invoke-virtual {p0, v6}, Lcom/google/glass/input/HeadScroller;->updateItemScaleInScrollZone(F)V

    .line 571
    :cond_1
    :goto_1
    cmpl-float v6, v4, v2

    if-eqz v6, :cond_2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget-object v7, p0, Lcom/google/glass/input/HeadScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v7}, Lcom/google/glass/input/ItemScroller$Scrollable;->getItem()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    if-eq v6, v7, :cond_2

    .line 573
    iget-object v6, p0, Lcom/google/glass/input/HeadScroller;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v6}, Lcom/google/glass/util/PowerHelper;->userActivity()V

    .line 574
    sget-object v6, Lcom/google/glass/input/HeadScroller;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Changed focused item while head scrolling"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 578
    :cond_2
    iget-object v6, p0, Lcom/google/glass/input/HeadScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v6}, Lcom/google/glass/input/ItemScroller$Scrollable;->getItem()F

    move-result v6

    sub-float v0, v6, v4

    .line 579
    iget v6, p0, Lcom/google/glass/input/HeadScroller;->itemDistanceTraveled:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v6, v7

    iput v6, p0, Lcom/google/glass/input/HeadScroller;->itemDistanceTraveled:F

    .line 580
    iget v6, p0, Lcom/google/glass/input/HeadScroller;->itemDisplacement:F

    add-float/2addr v6, v0

    iput v6, p0, Lcom/google/glass/input/HeadScroller;->itemDisplacement:F

    goto :goto_0

    .line 562
    :cond_3
    iget-object v6, p0, Lcom/google/glass/input/HeadScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v6, v2}, Lcom/google/glass/input/ItemScroller$Scrollable;->setItem(F)V

    .line 565
    if-eqz v5, :cond_1

    .line 566
    invoke-direct {p0}, Lcom/google/glass/input/HeadScroller;->zoomToPanScale()V

    goto :goto_1
.end method

.method private setupAnimations()V
    .locals 4

    .prologue
    const-wide/16 v2, 0xfa

    .line 249
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/google/glass/input/HeadScroller;->scaleAnimator:Landroid/animation/ValueAnimator;

    .line 250
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller;->scaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 251
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller;->scaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 252
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller;->scaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/glass/input/HeadScroller$2;

    invoke-direct {v1, p0}, Lcom/google/glass/input/HeadScroller$2;-><init>(Lcom/google/glass/input/HeadScroller;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 259
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/google/glass/input/HeadScroller;->itemPositionAnimator:Landroid/animation/ValueAnimator;

    .line 260
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller;->itemPositionAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 261
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller;->itemPositionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 262
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller;->itemPositionAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/glass/input/HeadScroller$3;

    invoke-direct {v1, p0}, Lcom/google/glass/input/HeadScroller$3;-><init>(Lcom/google/glass/input/HeadScroller;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 268
    return-void
.end method

.method private setupLookUpDownAngles(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 274
    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/google/glass/input/HeadScroller;->userGluAngle:F

    .line 275
    iget v0, p0, Lcom/google/glass/input/HeadScroller;->userGluAngle:F

    const/high16 v1, 0x4120

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/google/glass/input/HeadScroller;->lookDownAngle:F

    .line 278
    new-instance v0, Lcom/google/glass/input/HeadScroller$4;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/input/HeadScroller$4;-><init>(Lcom/google/glass/input/HeadScroller;Landroid/content/Context;)V

    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/input/HeadScroller$4;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 295
    return-void
.end method

.method private setupScreenOffReceiver()V
    .locals 3

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    if-nez v0, :cond_0

    .line 330
    new-instance v0, Lcom/google/glass/input/HeadScroller$ScreenOffBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/input/HeadScroller$ScreenOffBroadcastReceiver;-><init>(Lcom/google/glass/input/HeadScroller;Lcom/google/glass/input/HeadScroller$1;)V

    iput-object v0, p0, Lcom/google/glass/input/HeadScroller;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 331
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/input/HeadScroller;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/SafeBroadcastReceiver;->registerAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 333
    :cond_0
    return-void
.end method

.method private setupSensors()V
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller;->context:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/glass/input/HeadScroller;->sensorManager:Landroid/hardware/SensorManager;

    .line 231
    new-instance v0, Lcom/google/glass/async/PriorityThreadFactory;

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/input/HeadScroller;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/glass/async/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/input/HeadScroller;->sensorExecutor:Ljava/util/concurrent/Executor;

    .line 235
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller;->sensorExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/glass/input/HeadScroller$1;

    invoke-direct {v1, p0}, Lcom/google/glass/input/HeadScroller$1;-><init>(Lcom/google/glass/input/HeadScroller;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 245
    new-instance v0, Lcom/google/glass/input/AbsolutePitchHelper;

    iget-object v1, p0, Lcom/google/glass/input/HeadScroller;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/google/glass/input/AbsolutePitchHelper;-><init>(Landroid/content/Context;Lcom/google/glass/input/AbsolutePitchHelper$AbsolutePitchListener;)V

    iput-object v0, p0, Lcom/google/glass/input/HeadScroller;->pitchHelper:Lcom/google/glass/input/AbsolutePitchHelper;

    .line 246
    return-void
.end method

.method private snapToNearest(Z)V
    .locals 3
    .parameter "animate"

    .prologue
    const/high16 v2, 0x3f80

    .line 718
    if-eqz p1, :cond_0

    .line 719
    invoke-direct {p0}, Lcom/google/glass/input/HeadScroller;->zoomIn()V

    .line 720
    invoke-direct {p0}, Lcom/google/glass/input/HeadScroller;->snapToNearestItem()V

    .line 734
    :goto_0
    return-void

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller;->itemPositionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 725
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller;->scaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 728
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    iget-object v1, p0, Lcom/google/glass/input/HeadScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v1}, Lcom/google/glass/input/ItemScroller$Scrollable;->getItem()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    invoke-interface {v0, v1}, Lcom/google/glass/input/ItemScroller$Scrollable;->setItem(F)V

    .line 731
    iput v2, p0, Lcom/google/glass/input/HeadScroller;->scaleDestination:F

    .line 732
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v0, v2}, Lcom/google/glass/input/ItemScroller$Scrollable;->setScale(F)V

    goto :goto_0
.end method

.method private snapToNearestItem()V
    .locals 4

    .prologue
    .line 711
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller;->itemPositionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 712
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller;->itemPositionAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/glass/input/HeadScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v3}, Lcom/google/glass/input/ItemScroller$Scrollable;->getItem()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/glass/input/HeadScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v3}, Lcom/google/glass/input/ItemScroller$Scrollable;->getItem()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 713
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller;->itemPositionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 714
    return-void
.end method

.method private startYawCalculations()V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller;->sensorExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/glass/input/HeadScroller$5;

    invoke-direct {v1, p0}, Lcom/google/glass/input/HeadScroller$5;-><init>(Lcom/google/glass/input/HeadScroller;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 362
    return-void
.end method

.method private stopYawCalculations()V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller;->sensorExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/glass/input/HeadScroller$6;

    invoke-direct {v1, p0}, Lcom/google/glass/input/HeadScroller$6;-><init>(Lcom/google/glass/input/HeadScroller;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 371
    return-void
.end method

.method private updateLastYawData(FJ)V
    .locals 1
    .parameter "yaw"
    .parameter "timestamp"

    .prologue
    .line 584
    iput p1, p0, Lcom/google/glass/input/HeadScroller;->lastYaw:F

    .line 585
    iput-wide p2, p0, Lcom/google/glass/input/HeadScroller;->lastTimestamp:J

    .line 586
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/input/HeadScroller;->lastYawDataSet:Z

    .line 587
    return-void
.end method

.method private zoomIn()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 698
    iget v0, p0, Lcom/google/glass/input/HeadScroller;->scaleDestination:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    .line 707
    :goto_0
    return-void

    .line 702
    :cond_0
    sget-object v0, Lcom/google/glass/input/HeadScroller;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "zoomIn"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 703
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller;->scaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 704
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller;->scaleAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-object v2, p0, Lcom/google/glass/input/HeadScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v2}, Lcom/google/glass/input/ItemScroller$Scrollable;->getScale()F

    move-result v2

    aput v2, v1, v4

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 705
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller;->scaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 706
    iput v3, p0, Lcom/google/glass/input/HeadScroller;->scaleDestination:F

    goto :goto_0
.end method

.method private zoomToPanScale()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f00

    .line 685
    iget v0, p0, Lcom/google/glass/input/HeadScroller;->scaleDestination:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    .line 694
    :goto_0
    return-void

    .line 689
    :cond_0
    sget-object v0, Lcom/google/glass/input/HeadScroller;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "zoomToPanScale"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 690
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller;->scaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 691
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller;->scaleAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-object v2, p0, Lcom/google/glass/input/HeadScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v2}, Lcom/google/glass/input/ItemScroller$Scrollable;->getScale()F

    move-result v2

    aput v2, v1, v4

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 692
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller;->scaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 693
    iput v3, p0, Lcom/google/glass/input/HeadScroller;->scaleDestination:F

    goto :goto_0
.end method


# virtual methods
.method public activate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 310
    iget-boolean v0, p0, Lcom/google/glass/input/HeadScroller;->isActivated:Z

    if-nez v0, :cond_0

    .line 311
    sget-object v0, Lcom/google/glass/input/HeadScroller;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "activate"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    iput-boolean v3, p0, Lcom/google/glass/input/HeadScroller;->isUserLookingUp:Z

    .line 313
    invoke-direct {p0}, Lcom/google/glass/input/HeadScroller;->setupScreenOffReceiver()V

    .line 314
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller;->doubleBlinkReceiver:Lcom/google/glass/input/HeadScroller$DoubleBlinkBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/input/HeadScroller;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/input/HeadScroller$DoubleBlinkBroadcastReceiver;->registerAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 318
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller;->pitchHelper:Lcom/google/glass/input/AbsolutePitchHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/AbsolutePitchHelper;->start()V

    .line 321
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/input/HeadScroller;->isActivated:Z

    .line 322
    return-void
.end method

.method public deactivate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 340
    iget-boolean v0, p0, Lcom/google/glass/input/HeadScroller;->isActivated:Z

    if-eqz v0, :cond_0

    .line 341
    sget-object v0, Lcom/google/glass/input/HeadScroller;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "deactivate"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller;->doubleBlinkReceiver:Lcom/google/glass/input/HeadScroller$DoubleBlinkBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/input/HeadScroller;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/input/HeadScroller$DoubleBlinkBroadcastReceiver;->unregisterAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 343
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller;->pitchHelper:Lcom/google/glass/input/AbsolutePitchHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/AbsolutePitchHelper;->stop()V

    .line 344
    invoke-direct {p0}, Lcom/google/glass/input/HeadScroller;->stopYawCalculations()V

    .line 345
    invoke-virtual {p0, v3}, Lcom/google/glass/input/HeadScroller;->setIsHeadScrollingActivated(Z)Z

    .line 346
    invoke-virtual {p0}, Lcom/google/glass/input/HeadScroller;->disableDoubleBlinkDetector()V

    .line 347
    invoke-direct {p0, v3}, Lcom/google/glass/input/HeadScroller;->snapToNearest(Z)V

    .line 350
    :cond_0
    iput-boolean v3, p0, Lcom/google/glass/input/HeadScroller;->isActivated:Z

    .line 351
    return-void
.end method

.method deltaItemBasedOnScrolling(FJ)F
    .locals 8
    .parameter "yawDisplacement"
    .parameter "timestamp"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 505
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v5

    float-to-int v3, v5

    .line 506
    .local v3, scrollingDirection:I
    invoke-virtual {p0, p1}, Lcom/google/glass/input/HeadScroller;->percentageToMaxScroll(F)F

    move-result v5

    const/high16 v6, 0x4461

    mul-float v4, v5, v6

    .line 507
    .local v4, speed:F
    iget-wide v5, p0, Lcom/google/glass/input/HeadScroller;->lastTimestamp:J

    sub-long v5, p2, v5

    long-to-float v5, v5

    sget v6, Lcom/google/glass/input/HeadScroller;->NANOS_PER_SECOND:F

    div-float v1, v5, v6

    .line 508
    .local v1, deltaSeconds:F
    const/high16 v5, 0x3f80

    iget-object v6, p0, Lcom/google/glass/input/HeadScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v6}, Lcom/google/glass/input/ItemScroller$Scrollable;->getScale()F

    move-result v6

    iget v7, p0, Lcom/google/glass/input/HeadScroller;->screenWidth:F

    mul-float/2addr v6, v7

    div-float v2, v5, v6

    .line 509
    .local v2, itemPerPixel:F
    mul-float v5, v4, v1

    mul-float/2addr v5, v2

    int-to-float v6, v3

    mul-float v0, v5, v6

    .line 510
    .local v0, deltaItem:F
    return v0
.end method

.method disableDoubleBlinkDetector()V
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 610
    sget-object v0, Lcom/google/glass/input/HeadScroller;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Stopping double blink detector..."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 611
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller;->context:Landroid/content/Context;

    sget-object v1, Lcom/google/android/glass/eye/EyeGesture;->DOUBLE_BLINK:Lcom/google/android/glass/eye/EyeGesture;

    invoke-static {v0, v1}, Lcom/google/glass/gesture/EyeGestureUtils;->stopEyeGestureDetector(Landroid/content/Context;Lcom/google/android/glass/eye/EyeGesture;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 612
    sget-object v0, Lcom/google/glass/input/HeadScroller;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Double blink detector is stopped."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 618
    :goto_0
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller;->context:Landroid/content/Context;

    sget-object v1, Lcom/google/android/glass/eye/EyeGesture;->WINK:Lcom/google/android/glass/eye/EyeGesture;

    invoke-static {v0, v1}, Lcom/google/glass/gesture/EyeGestureUtils;->isEyeGestureDetectorPersistentlyEnabled(Landroid/content/Context;Lcom/google/android/glass/eye/EyeGesture;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/input/HeadScroller;->context:Landroid/content/Context;

    sget-object v1, Lcom/google/android/glass/eye/EyeGesture;->WINK:Lcom/google/android/glass/eye/EyeGesture;

    invoke-static {v0, v1}, Lcom/google/glass/gesture/EyeGestureUtils;->isEyeGestureDetectorRunning(Landroid/content/Context;Lcom/google/android/glass/eye/EyeGesture;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 620
    invoke-direct {p0}, Lcom/google/glass/input/HeadScroller;->enableWinkDetector()V

    .line 622
    :cond_0
    return-void

    .line 614
    :cond_1
    sget-object v0, Lcom/google/glass/input/HeadScroller;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Failed to stop double blink detector."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method doubleBlinkDetected()V
    .locals 5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 649
    iget-boolean v0, p0, Lcom/google/glass/input/HeadScroller;->isUserLookingUp:Z

    if-nez v0, :cond_0

    .line 662
    :goto_0
    return-void

    .line 653
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/input/HeadScroller;->engageHandsfreeMode()V

    .line 656
    invoke-virtual {p0}, Lcom/google/glass/input/HeadScroller;->disableDoubleBlinkDetector()V

    .line 658
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->HEAD_GESTURES_HANDSFREE_DOUBLE_BLINK:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "t"

    iget-object v3, p0, Lcom/google/glass/input/HeadScroller;->timeToDblBlinkStopWatch:Lcom/google/glass/util/Stopwatch;

    invoke-virtual {v3}, Lcom/google/glass/util/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    goto :goto_0
.end method

.method enableDoubleBlinkDetector()V
    .locals 6
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 591
    sget-object v2, Lcom/google/glass/input/HeadScroller;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Starting double blink detector..."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 592
    const/4 v0, 0x0

    .line 593
    .local v0, oneShot:Z
    const/4 v1, -0x1

    .line 594
    .local v1, timeoutMs:I
    iget-object v2, p0, Lcom/google/glass/input/HeadScroller;->context:Landroid/content/Context;

    sget-object v3, Lcom/google/android/glass/eye/EyeGesture;->DOUBLE_BLINK:Lcom/google/android/glass/eye/EyeGesture;

    invoke-static {v2, v3, v0, v1}, Lcom/google/glass/gesture/EyeGestureUtils;->startEyeGestureDetector(Landroid/content/Context;Lcom/google/android/glass/eye/EyeGesture;ZI)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 596
    sget-object v2, Lcom/google/glass/input/HeadScroller;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Double blink detector is started."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 597
    iget-object v2, p0, Lcom/google/glass/input/HeadScroller;->timeToDblBlinkStopWatch:Lcom/google/glass/util/Stopwatch;

    invoke-virtual {v2}, Lcom/google/glass/util/Stopwatch;->reset()Lcom/google/glass/util/Stopwatch;

    .line 600
    iget-object v2, p0, Lcom/google/glass/input/HeadScroller;->context:Landroid/content/Context;

    sget-object v3, Lcom/google/android/glass/eye/EyeGesture;->WINK:Lcom/google/android/glass/eye/EyeGesture;

    invoke-static {v2, v3}, Lcom/google/glass/gesture/EyeGestureUtils;->isEyeGestureDetectorRunning(Landroid/content/Context;Lcom/google/android/glass/eye/EyeGesture;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 601
    invoke-direct {p0}, Lcom/google/glass/input/HeadScroller;->disableWinkDetector()V

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 604
    :cond_1
    sget-object v2, Lcom/google/glass/input/HeadScroller;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Failed to start double blink detector."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method getExtraYaw()F
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 835
    iget v0, p0, Lcom/google/glass/input/HeadScroller;->extraYaw:F

    return v0
.end method

.method getYawDisplacement()F
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 830
    iget v0, p0, Lcom/google/glass/input/HeadScroller;->yawDisplacement:F

    return v0
.end method

.method getYawDisplacementForScrollMaxed()F
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 825
    const/high16 v0, 0x41c0

    return v0
.end method

.method getYawDisplacementForScrollStart()F
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 820
    const/high16 v0, 0x4190

    return v0
.end method

.method public isHeadScrollingActivated()Z
    .locals 1

    .prologue
    .line 742
    iget-boolean v0, p0, Lcom/google/glass/input/HeadScroller;->isHeadScrollingActivated:Z

    return v0
.end method

.method isUserLookingUp()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 738
    iget-boolean v0, p0, Lcom/google/glass/input/HeadScroller;->isUserLookingUp:Z

    return v0
.end method

.method isYawDisplacementInScrollZone()Z
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 453
    iget v0, p0, Lcom/google/glass/input/HeadScroller;->yawDisplacement:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x4190

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAbsolutePitchChange(FJ)Z
    .locals 1
    .parameter "pitch"
    .parameter "timestamp"

    .prologue
    .line 773
    invoke-virtual {p0, p1}, Lcom/google/glass/input/HeadScroller;->updateLookingUpState(F)V

    .line 774
    const/4 v0, 0x0

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 761
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 767
    const/4 v0, 0x4

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertEquals(II)V

    .line 768
    invoke-direct {p0, p1}, Lcom/google/glass/input/HeadScroller;->calculateYaw(Landroid/hardware/SensorEvent;)V

    .line 769
    return-void
.end method

.method percentageToMaxScroll(F)F
    .locals 3
    .parameter "yawDisplacement"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 492
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x4190

    sub-float/2addr v1, v2

    const/high16 v2, 0x40c0

    div-float v0, v1, v2

    .line 495
    .local v0, percentage:F
    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 496
    return v0
.end method

.method setIsHeadScrollingActivated(Z)Z
    .locals 2
    .parameter "isHeadScrollingActivated"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 748
    iget-boolean v0, p0, Lcom/google/glass/input/HeadScroller;->isHeadScrollingActivated:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 749
    iget-boolean v0, p0, Lcom/google/glass/input/HeadScroller;->handsfreeActivatedOnce:Z

    if-nez v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller;->soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 752
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/input/HeadScroller;->handsfreeActivatedOnce:Z

    .line 755
    :cond_1
    iput-boolean p1, p0, Lcom/google/glass/input/HeadScroller;->isHeadScrollingActivated:Z

    return p1
.end method

.method updateExtraYaw(FFF)V
    .locals 5
    .parameter "positionBeforeMoving"
    .parameter "futurePosition"
    .parameter "deltaYaw"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 467
    invoke-direct {p0, p1}, Lcom/google/glass/input/HeadScroller;->isPositionAtBoundary(F)Z

    move-result v0

    .line 471
    .local v0, alreadyAtBoundary:Z
    if-eqz v0, :cond_1

    cmpl-float v2, p1, p2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/glass/input/HeadScroller;->extraYaw:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1

    .line 476
    :cond_0
    iget v2, p0, Lcom/google/glass/input/HeadScroller;->extraYaw:F

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v1, v2

    .line 477
    .local v1, directionOfExtra:I
    iget v2, p0, Lcom/google/glass/input/HeadScroller;->extraYaw:F

    add-float/2addr v2, p3

    iput v2, p0, Lcom/google/glass/input/HeadScroller;->extraYaw:F

    .line 480
    if-eqz v1, :cond_1

    int-to-float v2, v1

    iget v3, p0, Lcom/google/glass/input/HeadScroller;->extraYaw:F

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 481
    iput v4, p0, Lcom/google/glass/input/HeadScroller;->extraYaw:F

    .line 484
    .end local v1           #directionOfExtra:I
    :cond_1
    return-void
.end method

.method updateItemScaleInScrollZone(F)V
    .locals 4
    .parameter "yawDisplacement"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 519
    const/high16 v1, 0x3f00

    invoke-virtual {p0, p1}, Lcom/google/glass/input/HeadScroller;->percentageToMaxScroll(F)F

    move-result v2

    const v3, 0x3e2e147a

    mul-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 523
    .local v0, scale:F
    iget-object v1, p0, Lcom/google/glass/input/HeadScroller;->scaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 524
    iget-object v1, p0, Lcom/google/glass/input/HeadScroller;->scaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 527
    :cond_0
    iget-object v1, p0, Lcom/google/glass/input/HeadScroller;->scrollable:Lcom/google/glass/input/ItemScroller$Scrollable;

    invoke-interface {v1, v0}, Lcom/google/glass/input/ItemScroller$Scrollable;->setScale(F)V

    .line 528
    return-void
.end method

.method updateLookingUpState(F)V
    .locals 14
    .parameter "pitch"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 375
    iget-boolean v7, p0, Lcom/google/glass/input/HeadScroller;->isUserLookingUp:Z

    if-eqz v7, :cond_3

    .line 379
    iget v7, p0, Lcom/google/glass/input/HeadScroller;->lookDownAngle:F

    neg-float v7, v7

    cmpl-float v7, p1, v7

    if-lez v7, :cond_2

    const/4 v4, 0x1

    .line 380
    .local v4, lookingDown:Z
    :goto_0
    if-eqz v4, :cond_1

    .line 381
    sget-object v7, Lcom/google/glass/input/HeadScroller;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "User is looking down."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 382
    invoke-virtual {p0}, Lcom/google/glass/input/HeadScroller;->disableDoubleBlinkDetector()V

    .line 383
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/google/glass/input/HeadScroller;->isUserLookingUp:Z

    .line 386
    iget-boolean v6, p0, Lcom/google/glass/input/HeadScroller;->isHeadScrollingActivated:Z

    .line 387
    .local v6, wasHeadScrollingActivated:Z
    iget-object v7, p0, Lcom/google/glass/input/HeadScroller;->lookingUpStopWatch:Lcom/google/glass/util/Stopwatch;

    invoke-virtual {v7}, Lcom/google/glass/util/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v2

    .line 388
    .local v2, lookUpDuration:J
    const-wide/16 v0, 0x0

    .line 391
    .local v0, handsfreeDuration:J
    iget-boolean v7, p0, Lcom/google/glass/input/HeadScroller;->isHeadScrollingActivated:Z

    if-eqz v7, :cond_0

    .line 392
    invoke-direct {p0}, Lcom/google/glass/input/HeadScroller;->stopYawCalculations()V

    .line 393
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/google/glass/input/HeadScroller;->setIsHeadScrollingActivated(Z)Z

    .line 394
    iget-object v7, p0, Lcom/google/glass/input/HeadScroller;->handsfreeTimeStopWatch:Lcom/google/glass/util/Stopwatch;

    invoke-virtual {v7}, Lcom/google/glass/util/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v0

    .line 397
    invoke-static {}, Lcom/google/glass/util/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v7

    new-instance v8, Lcom/google/glass/input/HeadScroller$7;

    invoke-direct {v8, p0}, Lcom/google/glass/input/HeadScroller$7;-><init>(Lcom/google/glass/input/HeadScroller;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 406
    :cond_0
    iget-object v7, p0, Lcom/google/glass/input/HeadScroller;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction;->HEAD_GESTURES_HANDSFREE_BELOW_PITCH:Lcom/google/glass/userevent/UserEventAction;

    const-string v9, "s"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/16 v11, 0x8

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "hft"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-string v13, "lut"

    aput-object v13, v11, v12

    const/4 v12, 0x3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    const-string v13, "idist"

    aput-object v13, v11, v12

    const/4 v12, 0x5

    iget v13, p0, Lcom/google/glass/input/HeadScroller;->itemDistanceTraveled:F

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x6

    const-string v13, "idisp"

    aput-object v13, v11, v12

    const/4 v12, 0x7

    iget v13, p0, Lcom/google/glass/input/HeadScroller;->itemDisplacement:F

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 443
    .end local v0           #handsfreeDuration:J
    .end local v2           #lookUpDuration:J
    .end local v4           #lookingDown:Z
    .end local v6           #wasHeadScrollingActivated:Z
    :cond_1
    :goto_1
    return-void

    .line 379
    :cond_2
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 418
    :cond_3
    iget v7, p0, Lcom/google/glass/input/HeadScroller;->userGluAngle:F

    neg-float v7, v7

    cmpg-float v7, p1, v7

    if-gez v7, :cond_4

    const/4 v5, 0x1

    .line 419
    .local v5, lookingUp:Z
    :goto_2
    if-eqz v5, :cond_1

    .line 420
    sget-object v7, Lcom/google/glass/input/HeadScroller;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "User is looking up."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 423
    iget-object v7, p0, Lcom/google/glass/input/HeadScroller;->lookingUpStopWatch:Lcom/google/glass/util/Stopwatch;

    invoke-virtual {v7}, Lcom/google/glass/util/Stopwatch;->reset()Lcom/google/glass/util/Stopwatch;

    .line 424
    const/4 v7, 0x0

    iput v7, p0, Lcom/google/glass/input/HeadScroller;->itemDistanceTraveled:F

    .line 425
    const/4 v7, 0x0

    iput v7, p0, Lcom/google/glass/input/HeadScroller;->itemDisplacement:F

    .line 427
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/google/glass/input/HeadScroller;->isUserLookingUp:Z

    .line 430
    iget-boolean v7, p0, Lcom/google/glass/input/HeadScroller;->handsfreeActivatedOnce:Z

    if-eqz v7, :cond_5

    .line 431
    invoke-direct {p0}, Lcom/google/glass/input/HeadScroller;->engageHandsfreeMode()V

    .line 438
    :goto_3
    iget-object v8, p0, Lcom/google/glass/input/HeadScroller;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v9, Lcom/google/glass/userevent/UserEventAction;->HEAD_GESTURES_HANDSFREE_ABOVE_PITCH:Lcom/google/glass/userevent/UserEventAction;

    const-string v10, "db"

    iget-boolean v7, p0, Lcom/google/glass/input/HeadScroller;->handsfreeActivatedOnce:Z

    if-nez v7, :cond_6

    const/4 v7, 0x1

    :goto_4
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v7, v11}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v9, v7}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    goto :goto_1

    .line 418
    .end local v5           #lookingUp:Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 433
    .restart local v5       #lookingUp:Z
    :cond_5
    invoke-virtual {p0}, Lcom/google/glass/input/HeadScroller;->enableDoubleBlinkDetector()V

    goto :goto_3

    .line 438
    :cond_6
    const/4 v7, 0x0

    goto :goto_4
.end method

.method updateYawDisplacement(F)V
    .locals 1
    .parameter "deltaYaw"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 458
    iget v0, p0, Lcom/google/glass/input/HeadScroller;->yawDisplacement:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/google/glass/input/HeadScroller;->yawDisplacement:F

    .line 459
    return-void
.end method
