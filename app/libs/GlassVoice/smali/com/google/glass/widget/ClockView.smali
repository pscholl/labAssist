.class public Lcom/google/glass/widget/ClockView;
.super Lcom/google/glass/widget/TypophileTextView;
.source "ClockView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/widget/ClockView$1;,
        Lcom/google/glass/widget/ClockView$TimeBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final timeReceiverLogger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final timeReceiver:Lcom/google/glass/widget/ClockView$TimeBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/ClockView;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 24
    sget-object v0, Lcom/google/glass/widget/ClockView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "timeReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/ClockView;->timeReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/widget/ClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/google/glass/widget/TypophileTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v0, Lcom/google/glass/widget/ClockView$TimeBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/widget/ClockView$TimeBroadcastReceiver;-><init>(Lcom/google/glass/widget/ClockView;Lcom/google/glass/widget/ClockView$1;)V

    iput-object v0, p0, Lcom/google/glass/widget/ClockView;->timeReceiver:Lcom/google/glass/widget/ClockView$TimeBroadcastReceiver;

    .line 35
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/ClockView;->setGravity(I)V

    .line 36
    invoke-direct {p0}, Lcom/google/glass/widget/ClockView;->updateTime()V

    .line 37
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/widget/ClockView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/glass/widget/ClockView;->updateTime()V

    return-void
.end method

.method static synthetic access$200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/glass/widget/ClockView;->timeReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private updateTime()V
    .locals 5

    .prologue
    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 50
    .local v0, currentTime:J
    invoke-virtual {p0}, Lcom/google/glass/widget/ClockView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v0, v1, v4}, Lcom/google/glass/util/DateHelper;->formattedTime(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, formattedTime:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/glass/widget/ClockView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    return-void
.end method


# virtual methods
.method public onLoad()V
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/glass/widget/ClockView;->timeReceiver:Lcom/google/glass/widget/ClockView$TimeBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/widget/ClockView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/widget/ClockView$TimeBroadcastReceiver;->registerAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 41
    invoke-direct {p0}, Lcom/google/glass/widget/ClockView;->updateTime()V

    .line 42
    return-void
.end method

.method public onUnload()V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/glass/widget/ClockView;->timeReceiver:Lcom/google/glass/widget/ClockView$TimeBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/widget/ClockView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/widget/ClockView$TimeBroadcastReceiver;->unregisterAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 46
    return-void
.end method
