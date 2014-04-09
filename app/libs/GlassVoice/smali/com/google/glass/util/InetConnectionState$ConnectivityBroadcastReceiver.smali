.class Lcom/google/glass/util/InetConnectionState$ConnectivityBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "InetConnectionState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/InetConnectionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/InetConnectionState;


# direct methods
.method private constructor <init>(Lcom/google/glass/util/InetConnectionState;)V
    .locals 3
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/google/glass/util/InetConnectionState$ConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/util/InetConnectionState;

    .line 120
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.net.conn.INET_CONDITION_ACTION"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/util/InetConnectionState;Lcom/google/glass/util/InetConnectionState$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/google/glass/util/InetConnectionState$ConnectivityBroadcastReceiver;-><init>(Lcom/google/glass/util/InetConnectionState;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 149
    invoke-static {}, Lcom/google/glass/util/InetConnectionState;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 127
    new-instance v0, Lcom/google/glass/util/InetConnectionState$ConnectivityBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/google/glass/util/InetConnectionState$ConnectivityBroadcastReceiver$1;-><init>(Lcom/google/glass/util/InetConnectionState$ConnectivityBroadcastReceiver;)V

    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/InetConnectionState$ConnectivityBroadcastReceiver$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 145
    return-void
.end method
