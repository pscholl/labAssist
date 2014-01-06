.class Lcom/google/glass/input/HeadScroller$DoubleBlinkBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "HeadScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/input/HeadScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoubleBlinkBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/input/HeadScroller;


# direct methods
.method private constructor <init>(Lcom/google/glass/input/HeadScroller;)V
    .locals 3
    .parameter

    .prologue
    .line 842
    iput-object p1, p0, Lcom/google/glass/input/HeadScroller$DoubleBlinkBroadcastReceiver;->this$0:Lcom/google/glass/input/HeadScroller;

    .line 843
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.glass.action.EYE_GESTURE"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 844
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/input/HeadScroller;Lcom/google/glass/input/HeadScroller$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 841
    invoke-direct {p0, p1}, Lcom/google/glass/input/HeadScroller$DoubleBlinkBroadcastReceiver;-><init>(Lcom/google/glass/input/HeadScroller;)V

    return-void
.end method


# virtual methods
.method protected getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 857
    invoke-static {}, Lcom/google/glass/input/HeadScroller;->access$700()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 848
    const-string v1, "gesture"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/glass/eye/EyeGesture;->valueOf(Ljava/lang/String;)Lcom/google/android/glass/eye/EyeGesture;

    move-result-object v0

    .line 850
    .local v0, gesture:Lcom/google/android/glass/eye/EyeGesture;
    sget-object v1, Lcom/google/android/glass/eye/EyeGesture;->DOUBLE_BLINK:Lcom/google/android/glass/eye/EyeGesture;

    if-ne v0, v1, :cond_0

    .line 851
    iget-object v1, p0, Lcom/google/glass/input/HeadScroller$DoubleBlinkBroadcastReceiver;->this$0:Lcom/google/glass/input/HeadScroller;

    invoke-virtual {v1}, Lcom/google/glass/input/HeadScroller;->doubleBlinkDetected()V

    .line 853
    :cond_0
    return-void
.end method
