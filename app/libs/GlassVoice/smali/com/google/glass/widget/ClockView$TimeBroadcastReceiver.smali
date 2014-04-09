.class Lcom/google/glass/widget/ClockView$TimeBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "ClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/widget/ClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/ClockView;


# direct methods
.method private constructor <init>(Lcom/google/glass/widget/ClockView;)V
    .locals 3
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/glass/widget/ClockView$TimeBroadcastReceiver;->this$0:Lcom/google/glass/widget/ClockView;

    .line 59
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.TIME_TICK"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/widget/ClockView;Lcom/google/glass/widget/ClockView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/google/glass/widget/ClockView$TimeBroadcastReceiver;-><init>(Lcom/google/glass/widget/ClockView;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lcom/google/glass/widget/ClockView;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/glass/widget/ClockView$TimeBroadcastReceiver;->this$0:Lcom/google/glass/widget/ClockView;

    #calls: Lcom/google/glass/widget/ClockView;->updateTime()V
    invoke-static {v0}, Lcom/google/glass/widget/ClockView;->access$100(Lcom/google/glass/widget/ClockView;)V

    .line 65
    return-void
.end method
