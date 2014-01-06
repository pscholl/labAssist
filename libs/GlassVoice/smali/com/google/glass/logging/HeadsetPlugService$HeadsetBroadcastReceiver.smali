.class Lcom/google/glass/logging/HeadsetPlugService$HeadsetBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "HeadsetPlugService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/logging/HeadsetPlugService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadsetBroadcastReceiver"
.end annotation


# static fields
.field private static final NAME_UNKNOWN:Ljava/lang/String; = "unknown"


# instance fields
.field final synthetic this$0:Lcom/google/glass/logging/HeadsetPlugService;


# direct methods
.method private constructor <init>(Lcom/google/glass/logging/HeadsetPlugService;)V
    .locals 3
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/glass/logging/HeadsetPlugService$HeadsetBroadcastReceiver;->this$0:Lcom/google/glass/logging/HeadsetPlugService;

    .line 57
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.HEADSET_PLUG"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/logging/HeadsetPlugService;Lcom/google/glass/logging/HeadsetPlugService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/glass/logging/HeadsetPlugService$HeadsetBroadcastReceiver;-><init>(Lcom/google/glass/logging/HeadsetPlugService;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lcom/google/glass/logging/HeadsetPlugService;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 65
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 66
    const-string v4, "name"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, name:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    const-string v2, "unknown"

    .line 70
    :cond_0
    const-string v4, "state"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 72
    .local v3, state:I
    if-nez v3, :cond_1

    .line 74
    const/4 v1, 0x1

    .line 81
    .local v1, monoOrStereo:I
    :goto_0
    const-string v4, "n"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "s"

    aput-object v6, v5, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x2

    const-string v7, "ms"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v2, v5}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, data:Ljava/lang/String;
    new-instance v4, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v4, p1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/google/glass/userevent/UserEventAction;->HEADSET_PLUG:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v4, v5, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 92
    .end local v0           #data:Ljava/lang/String;
    .end local v1           #monoOrStereo:I
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #state:I
    :goto_1
    return-void

    .line 77
    .restart local v2       #name:Ljava/lang/String;
    .restart local v3       #state:I
    :cond_1
    const-string v4, "microphone"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .restart local v1       #monoOrStereo:I
    goto :goto_0

    .line 90
    .end local v1           #monoOrStereo:I
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #state:I
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/logging/HeadsetPlugService$HeadsetBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Unknown action received: %s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p2, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
