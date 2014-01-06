.class public Lcom/google/glass/companion/RemoteCompanionProxy;
.super Ljava/lang/Object;
.source "RemoteCompanionProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/RemoteCompanionProxy$PairedDeviceBroadcastReceiver;,
        Lcom/google/glass/companion/RemoteCompanionProxy$CompanionStateBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final companionStateListenerLogger:Lcom/google/glass/logging/FormattingLogger;

.field private static volatile isCompanionConnectedForTest:Ljava/lang/Boolean;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final pairedDeviceReceiverLogger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final application:Landroid/app/Application;

.field private companionLocalVersion:I

.field private companionRemoteVersion:I

.field private companionService:Lcom/google/glass/companion/IRemoteCompanionService;

.field private final companionStateListener:Lcom/google/glass/companion/RemoteCompanionProxy$CompanionStateBroadcastReceiver;

.field private final connectionChecker:Lcom/google/glass/companion/ConnectionChecker;

.field private volatile isCompanionConnected:Z

.field private volatile isSmsEnabled:Z

.field private listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/glass/companion/CompanionStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private pairedBluetoothDeviceWrapper:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

.field private final pairedDeviceReceiver:Lcom/google/glass/companion/RemoteCompanionProxy$PairedDeviceBroadcastReceiver;

.field private final serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 41
    sget-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "companionStateListener"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionStateListenerLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 44
    sget-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "pairedDeviceReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->pairedDeviceReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1
    .parameter "application"

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/companion/RemoteCompanionProxy;-><init>(Landroid/app/Application;Z)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Z)V
    .locals 3
    .parameter "application"
    .parameter "checkConnection"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnected:Z

    .line 71
    iput-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isSmsEnabled:Z

    .line 96
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->listeners:Ljava/util/Set;

    .line 99
    new-instance v0, Lcom/google/glass/companion/RemoteCompanionProxy$CompanionStateBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/companion/RemoteCompanionProxy$CompanionStateBroadcastReceiver;-><init>(Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/glass/companion/RemoteCompanionProxy$1;)V

    iput-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionStateListener:Lcom/google/glass/companion/RemoteCompanionProxy$CompanionStateBroadcastReceiver;

    .line 102
    new-instance v0, Lcom/google/glass/companion/RemoteCompanionProxy$1;

    invoke-direct {v0, p0}, Lcom/google/glass/companion/RemoteCompanionProxy$1;-><init>(Lcom/google/glass/companion/RemoteCompanionProxy;)V

    iput-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->serviceConnection:Landroid/content/ServiceConnection;

    .line 126
    new-instance v0, Lcom/google/glass/companion/RemoteCompanionProxy$PairedDeviceBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/companion/RemoteCompanionProxy$PairedDeviceBroadcastReceiver;-><init>(Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/glass/companion/RemoteCompanionProxy$1;)V

    iput-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->pairedDeviceReceiver:Lcom/google/glass/companion/RemoteCompanionProxy$PairedDeviceBroadcastReceiver;

    .line 130
    iput-object p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->application:Landroid/app/Application;

    .line 131
    if-eqz p2, :cond_0

    .line 132
    new-instance v0, Lcom/google/glass/companion/ConnectionChecker;

    invoke-static {p1}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/glass/companion/ConnectionChecker;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;)V

    iput-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->connectionChecker:Lcom/google/glass/companion/ConnectionChecker;

    .line 137
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.bluetooth.COMPANION_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 140
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->pairedDeviceReceiver:Lcom/google/glass/companion/RemoteCompanionProxy$PairedDeviceBroadcastReceiver;

    invoke-virtual {v0, p1}, Lcom/google/glass/companion/RemoteCompanionProxy$PairedDeviceBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 141
    return-void

    .line 135
    :cond_0
    iput-object v1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->connectionChecker:Lcom/google/glass/companion/ConnectionChecker;

    goto :goto_0
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/glass/companion/RemoteCompanionProxy;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionLocalVersion:I

    return v0
.end method

.method static synthetic access$1002(Lcom/google/glass/companion/RemoteCompanionProxy;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionLocalVersion:I

    return p1
.end method

.method static synthetic access$1100(Lcom/google/glass/companion/RemoteCompanionProxy;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isSmsEnabled:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/google/glass/companion/RemoteCompanionProxy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isSmsEnabled:Z

    return p1
.end method

.method static synthetic access$1200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionStateListenerLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->pairedBluetoothDeviceWrapper:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    return-object p1
.end method

.method static synthetic access$1400()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->pairedDeviceReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/glass/companion/IRemoteCompanionService;)Lcom/google/glass/companion/IRemoteCompanionService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/glass/companion/RemoteCompanionProxy;)Landroid/app/Application;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->application:Landroid/app/Application;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/companion/RemoteCompanionProxy;)Lcom/google/glass/companion/RemoteCompanionProxy$CompanionStateBroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionStateListener:Lcom/google/glass/companion/RemoteCompanionProxy$CompanionStateBroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/companion/RemoteCompanionProxy;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnected:Z

    return v0
.end method

.method static synthetic access$502(Lcom/google/glass/companion/RemoteCompanionProxy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnected:Z

    return p1
.end method

.method static synthetic access$600(Lcom/google/glass/companion/RemoteCompanionProxy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/glass/companion/RemoteCompanionProxy;->notifyCompanionStateChange()V

    return-void
.end method

.method static synthetic access$800()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnectedForTest:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/glass/companion/RemoteCompanionProxy;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionRemoteVersion:I

    return v0
.end method

.method static synthetic access$902(Lcom/google/glass/companion/RemoteCompanionProxy;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionRemoteVersion:I

    return p1
.end method

.method private notifyCompanionStateChange()V
    .locals 6

    .prologue
    .line 148
    iget-object v2, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->connectionChecker:Lcom/google/glass/companion/ConnectionChecker;

    if-eqz v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->connectionChecker:Lcom/google/glass/companion/ConnectionChecker;

    iget-boolean v3, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnected:Z

    invoke-virtual {v2, v3}, Lcom/google/glass/companion/ConnectionChecker;->setConnectState(Z)V

    .line 150
    iget-object v2, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->connectionChecker:Lcom/google/glass/companion/ConnectionChecker;

    iget-object v3, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;

    invoke-virtual {v2, v3}, Lcom/google/glass/companion/ConnectionChecker;->setCompanionService(Lcom/google/glass/companion/IRemoteCompanionService;)V

    .line 152
    :cond_0
    iget-object v3, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->listeners:Ljava/util/Set;

    monitor-enter v3

    .line 153
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->listeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/companion/CompanionStateChangeListener;

    .line 154
    .local v1, listener:Lcom/google/glass/companion/CompanionStateChangeListener;
    iget-boolean v2, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnected:Z

    iget v4, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionRemoteVersion:I

    iget v5, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionLocalVersion:I

    invoke-interface {v1, v2, v4, v5}, Lcom/google/glass/companion/CompanionStateChangeListener;->onStateChange(ZII)V

    goto :goto_0

    .line 156
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/google/glass/companion/CompanionStateChangeListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    return-void
.end method

.method public static setIsConnectedForTest(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "isConnected"

    .prologue
    .line 265
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 266
    sput-object p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnectedForTest:Ljava/lang/Boolean;

    .line 267
    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/glass/companion/CompanionStateChangeListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 238
    new-instance v0, Lcom/google/glass/companion/RemoteCompanionProxy$2;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/companion/RemoteCompanionProxy$2;-><init>(Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/glass/companion/CompanionStateChangeListener;)V

    .line 251
    .local v0, runnable:Ljava/lang/Runnable;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 252
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 257
    :goto_0
    iget-object v1, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->listeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 258
    return-void

    .line 254
    :cond_0
    invoke-static {}, Lcom/google/glass/util/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 227
    invoke-static {}, Lcom/google/glass/predicates/Assert;->isTest()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnectedForTest:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 228
    sget-object v0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnectedForTest:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 230
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnected:Z

    goto :goto_0
.end method

.method public isMulticastSupportedOnPairedDevice()Z
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->CNS:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->pairedBluetoothDeviceWrapper:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->pairedBluetoothDeviceWrapper:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->hasMyGlassMulticastConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSmsEnabled()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->isSmsEnabled:Z

    return v0
.end method

.method public isTetheringErrorDetected()Z
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->connectionChecker:Lcom/google/glass/companion/ConnectionChecker;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->connectionChecker:Lcom/google/glass/companion/ConnectionChecker;

    invoke-virtual {v0}, Lcom/google/glass/companion/ConnectionChecker;->isTetheringErrorDetected()Z

    move-result v0

    .line 222
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeListener(Lcom/google/glass/companion/CompanionStateChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 262
    return-void
.end method

.method public sendCompanionMessage(Landroid/os/Bundle;)Z
    .locals 6
    .parameter "bundle"

    .prologue
    const/4 v2, 0x0

    .line 174
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;

    .line 175
    .local v0, companionServiceCopy:Lcom/google/glass/companion/IRemoteCompanionService;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/companion/RemoteCompanionProxy;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    :try_start_0
    invoke-interface {v0, p1}, Lcom/google/glass/companion/IRemoteCompanionService;->send(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    const/4 v2, 0x1

    .line 183
    :cond_0
    :goto_0
    return v2

    .line 179
    :catch_0
    move-exception v1

    .line 180
    .local v1, e:Landroid/os/RemoteException;
    sget-object v3, Lcom/google/glass/companion/RemoteCompanionProxy;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Failed to send envelope."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v3, v1, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public sendCompanionMessage(Lcom/google/glass/companion/Proto$Envelope;)Z
    .locals 1
    .parameter "envelope"

    .prologue
    .line 165
    invoke-static {p1}, Lcom/google/glass/companion/CompanionMessagingUtil;->createBundle(Lcom/google/glass/companion/Proto$Envelope;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->sendCompanionMessage(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public sendMessageToCompanionService(Landroid/os/Bundle;)Z
    .locals 6
    .parameter "bundle"

    .prologue
    const/4 v2, 0x0

    .line 206
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;

    .line 207
    .local v0, companionServiceCopy:Lcom/google/glass/companion/IRemoteCompanionService;
    if-eqz v0, :cond_0

    .line 209
    :try_start_0
    invoke-interface {v0, p1}, Lcom/google/glass/companion/IRemoteCompanionService;->send(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    const/4 v2, 0x1

    .line 215
    :cond_0
    :goto_0
    return v2

    .line 211
    :catch_0
    move-exception v1

    .line 212
    .local v1, e:Landroid/os/RemoteException;
    sget-object v3, Lcom/google/glass/companion/RemoteCompanionProxy;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Failed to send envelope."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v3, v1, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
