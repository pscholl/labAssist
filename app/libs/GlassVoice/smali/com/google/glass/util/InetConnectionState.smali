.class public Lcom/google/glass/util/InetConnectionState;
.super Ljava/lang/Object;
.source "InetConnectionState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/InetConnectionState$ConnectivityBroadcastReceiver;,
        Lcom/google/glass/util/InetConnectionState$Listener;
    }
.end annotation


# static fields
.field private static final EXTRA_INET_CONDITION:Ljava/lang/String; = "inetCondition"

.field private static final INET_CONDITION_ACTION:Ljava/lang/String; = "android.net.conn.INET_CONDITION_ACTION"

.field private static final INET_CONDITION_THRESHOLD:I = 0x32

.field private static final connectivityReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final connectivityManager:Landroid/net/ConnectivityManager;

.field private connectivityReceiver:Lcom/google/glass/util/InetConnectionState$ConnectivityBroadcastReceiver;

.field private final context:Landroid/content/Context;

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/glass/util/InetConnectionState$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private prevState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/InetConnectionState;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 25
    sget-object v0, Lcom/google/glass/util/InetConnectionState;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "connectivityReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/InetConnectionState;->connectivityReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/google/glass/util/InetConnectionState$ConnectivityBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/util/InetConnectionState$ConnectivityBroadcastReceiver;-><init>(Lcom/google/glass/util/InetConnectionState;Lcom/google/glass/util/InetConnectionState$1;)V

    iput-object v0, p0, Lcom/google/glass/util/InetConnectionState;->connectivityReceiver:Lcom/google/glass/util/InetConnectionState$ConnectivityBroadcastReceiver;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/InetConnectionState;->context:Landroid/content/Context;

    .line 54
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/glass/util/InetConnectionState;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/InetConnectionState;->listeners:Ljava/util/Set;

    .line 57
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/util/InetConnectionState;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/google/glass/util/InetConnectionState;->prevState:Z

    return v0
.end method

.method static synthetic access$102(Lcom/google/glass/util/InetConnectionState;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/google/glass/util/InetConnectionState;->prevState:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/glass/util/InetConnectionState;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/glass/util/InetConnectionState;->listeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$300()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/glass/util/InetConnectionState;->connectivityReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/google/glass/util/InetConnectionState$Listener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 65
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 68
    iget-object v1, p0, Lcom/google/glass/util/InetConnectionState;->listeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    .line 69
    .local v0, shouldRegister:Z
    iget-object v1, p0, Lcom/google/glass/util/InetConnectionState;->listeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    if-eqz v0, :cond_0

    .line 71
    iget-object v1, p0, Lcom/google/glass/util/InetConnectionState;->connectivityReceiver:Lcom/google/glass/util/InetConnectionState$ConnectivityBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/util/InetConnectionState;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/util/InetConnectionState$ConnectivityBroadcastReceiver;->registerAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 75
    :cond_0
    new-instance v1, Lcom/google/glass/util/InetConnectionState$1;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/util/InetConnectionState$1;-><init>(Lcom/google/glass/util/InetConnectionState;Lcom/google/glass/util/InetConnectionState$Listener;)V

    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/util/InetConnectionState$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 91
    return-void
.end method

.method public isConnected()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 103
    iget-object v2, p0, Lcom/google/glass/util/InetConnectionState;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v1

    .line 107
    :cond_1
    iget-object v2, p0, Lcom/google/glass/util/InetConnectionState;->context:Landroid/content/Context;

    const/4 v3, 0x0

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.INET_CONDITION_ACTION"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 108
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 112
    const-string v2, "inetCondition"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x32

    if-le v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public removeListener(Lcom/google/glass/util/InetConnectionState$Listener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 95
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 96
    iget-object v0, p0, Lcom/google/glass/util/InetConnectionState;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/google/glass/util/InetConnectionState;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/google/glass/util/InetConnectionState;->connectivityReceiver:Lcom/google/glass/util/InetConnectionState$ConnectivityBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/util/InetConnectionState;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/InetConnectionState$ConnectivityBroadcastReceiver;->unregisterAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 100
    :cond_0
    return-void
.end method
