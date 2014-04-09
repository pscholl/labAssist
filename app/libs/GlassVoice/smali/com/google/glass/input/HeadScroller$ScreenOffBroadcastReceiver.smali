.class Lcom/google/glass/input/HeadScroller$ScreenOffBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "HeadScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/input/HeadScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenOffBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/input/HeadScroller;


# direct methods
.method private constructor <init>(Lcom/google/glass/input/HeadScroller;)V
    .locals 3
    .parameter

    .prologue
    .line 865
    iput-object p1, p0, Lcom/google/glass/input/HeadScroller$ScreenOffBroadcastReceiver;->this$0:Lcom/google/glass/input/HeadScroller;

    .line 866
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.SCREEN_OFF"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 867
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/input/HeadScroller;Lcom/google/glass/input/HeadScroller$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 864
    invoke-direct {p0, p1}, Lcom/google/glass/input/HeadScroller$ScreenOffBroadcastReceiver;-><init>(Lcom/google/glass/input/HeadScroller;)V

    return-void
.end method


# virtual methods
.method protected getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 883
    invoke-static {}, Lcom/google/glass/input/HeadScroller;->access$700()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 871
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 872
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller$ScreenOffBroadcastReceiver;->this$0:Lcom/google/glass/input/HeadScroller;

    const/4 v1, 0x0

    #setter for: Lcom/google/glass/input/HeadScroller;->handsfreeActivatedOnce:Z
    invoke-static {v0, v1}, Lcom/google/glass/input/HeadScroller;->access$1302(Lcom/google/glass/input/HeadScroller;Z)Z

    .line 875
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller$ScreenOffBroadcastReceiver;->this$0:Lcom/google/glass/input/HeadScroller;

    #getter for: Lcom/google/glass/input/HeadScroller;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;
    invoke-static {v0}, Lcom/google/glass/input/HeadScroller;->access$1400(Lcom/google/glass/input/HeadScroller;)Lcom/google/glass/util/SafeBroadcastReceiver;

    move-result-object v0

    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregisterAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 877
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller$ScreenOffBroadcastReceiver;->this$0:Lcom/google/glass/input/HeadScroller;

    const/4 v1, 0x0

    #setter for: Lcom/google/glass/input/HeadScroller;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;
    invoke-static {v0, v1}, Lcom/google/glass/input/HeadScroller;->access$1402(Lcom/google/glass/input/HeadScroller;Lcom/google/glass/util/SafeBroadcastReceiver;)Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 879
    :cond_0
    return-void
.end method
