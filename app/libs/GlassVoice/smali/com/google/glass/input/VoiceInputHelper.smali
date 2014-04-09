.class public Lcom/google/glass/input/VoiceInputHelper;
.super Ljava/lang/Object;
.source "VoiceInputHelper.java"

# interfaces
.implements Lcom/google/glass/input/GrammarStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;,
        Lcom/google/glass/input/VoiceInputHelper$VoiceCommandEvent;,
        Lcom/google/glass/input/VoiceInputHelper$UserActivityVoiceCommandObserver;,
        Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;
    }
.end annotation


# static fields
.field private static final MSG_RESAMPLED_AUDIO_DATA:I = 0x4

.field protected static final MSG_VOICE_AMPLITUDE:I = 0x5

.field private static final MSG_VOICE_COMMAND:I = 0x2

.field private static final MSG_VOICE_CONFIG_CHANGED:I = 0x6

.field private static final MSG_VOICE_SERVICE_CONNECTED:I = 0x0

.field private static final MSG_VOICE_SERVICE_DISCONNECTED:I = 0x1

.field private static final ON_VOICE_COMMAND_HANDLE_TIMEOUT_MS:J = 0x7d0L

.field private static final VOICE_SERVICE:Landroid/content/ComponentName;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field public static voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final voiceServiceConnection:Lcom/google/glass/util/SafeServiceConnection;

.field private static final voiceServiceConnectionLogger:Lcom/google/glass/logging/FormattingLogger;

.field private static final voiceServiceListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private volatile currentVoiceConfig:Lcom/google/glass/voice/VoiceConfig;

.field private volatile expectedVoiceConfig:Lcom/google/glass/voice/VoiceConfig;

.field private final grammarLoaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/input/GrammarLoader;",
            ">;"
        }
    .end annotation
.end field

.field private final inputListener:Lcom/google/glass/input/VoiceListener;

.field private final loadedConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/glass/voice/VoiceConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final observer:Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;

.field private volatile voiceAmplitude:D

.field private final voiceHandler:Landroid/os/Handler;

.field private voiceInputCallback:Lcom/google/glass/voice/network/IVoiceInputCallback;

.field private final voiceServiceListener:Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/input/VoiceInputHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 44
    sget-object v0, Lcom/google/glass/input/VoiceInputHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "voiceServiceConnection"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceConnectionLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 65
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.glass.voice"

    const-string v2, "com.google.glass.voice.VoiceService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/input/VoiceInputHelper;->VOICE_SERVICE:Landroid/content/ComponentName;

    .line 122
    new-instance v0, Lcom/google/glass/input/VoiceInputHelper$1;

    sget-object v1, Lcom/google/glass/input/VoiceInputHelper;->VOICE_SERVICE:Landroid/content/ComponentName;

    invoke-direct {v0, v1}, Lcom/google/glass/input/VoiceInputHelper$1;-><init>(Landroid/content/ComponentName;)V

    sput-object v0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceConnection:Lcom/google/glass/util/SafeServiceConnection;

    .line 160
    invoke-static {}, Lcom/google/common/collect/Sets;->newTreeSet()Ljava/util/TreeSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceListeners:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/input/VoiceListener;)V
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 302
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/input/VoiceInputHelper;-><init>(Landroid/content/Context;Lcom/google/glass/input/VoiceListener;Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;)V

    .line 303
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/input/VoiceListener;Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "observer"

    .prologue
    .line 306
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/glass/input/VoiceInputHelper;-><init>(Landroid/content/Context;Lcom/google/glass/input/VoiceListener;Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;Landroid/os/Bundle;)V

    .line 307
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/input/VoiceListener;Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;Landroid/os/Bundle;)V
    .locals 3
    .parameter "context"
    .parameter "listener"
    .parameter "observer"
    .parameter "serviceExtras"

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Lcom/google/glass/input/VoiceInputHelper$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/input/VoiceInputHelper$2;-><init>(Lcom/google/glass/input/VoiceInputHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceHandler:Landroid/os/Handler;

    .line 290
    new-instance v0, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;

    invoke-direct {v0, p0}, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;-><init>(Lcom/google/glass/input/VoiceInputHelper;)V

    iput-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceListener:Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;

    .line 299
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->grammarLoaders:Ljava/util/List;

    .line 489
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->loadedConfigs:Ljava/util/Map;

    .line 315
    iput-object p2, p0, Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;

    .line 316
    iput-object p3, p0, Lcom/google/glass/input/VoiceInputHelper;->observer:Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;

    .line 317
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->applicationContext:Landroid/content/Context;

    .line 319
    invoke-virtual {p0}, Lcom/google/glass/input/VoiceInputHelper;->isVoiceServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->applicationContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcom/google/glass/input/VoiceInputHelper;->VOICE_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 324
    :cond_1
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->bindVoiceService()Z

    .line 325
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/glass/input/VoiceInputHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Set;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/glass/input/VoiceInputHelper;)Lcom/google/glass/input/VoiceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-static {p0}, Lcom/google/glass/input/VoiceInputHelper;->addVoiceServiceListener(Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;)V

    return-void
.end method

.method static synthetic access$300()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceConnectionLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/input/VoiceInputHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->dispatchVoiceServiceConnected()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/input/VoiceInputHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->dispatchVoiceServiceDisconnected()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/glass/input/VoiceInputHelper;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/glass/input/VoiceInputHelper;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceAmplitude:D

    return-wide p1
.end method

.method static synthetic access$902(Lcom/google/glass/input/VoiceInputHelper;Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/VoiceConfig;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/glass/input/VoiceInputHelper;->currentVoiceConfig:Lcom/google/glass/voice/VoiceConfig;

    return-object p1
.end method

.method private static addVoiceServiceListener(Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;)V
    .locals 6
    .parameter "listener"

    .prologue
    const/4 v5, 0x0

    .line 657
    :try_start_0
    sget-object v1, Lcom/google/glass/input/VoiceInputHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Attaching listener to VoiceService: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 658
    sget-object v1, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    invoke-interface {v1, p0}, Lcom/google/glass/voice/IVoiceService;->addListener(Lcom/google/glass/voice/IVoiceServiceListener;)V

    .line 659
    invoke-virtual {p0}, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->onVoiceServiceConnected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    :goto_0
    return-void

    .line 660
    :catch_0
    move-exception v0

    .line 661
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/google/glass/input/VoiceInputHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to attach listener to VoiceService"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private bindVoiceService()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 354
    invoke-virtual {p0}, Lcom/google/glass/input/VoiceInputHelper;->isVoiceServiceBound()Z

    move-result v1

    if-nez v1, :cond_0

    .line 355
    sget-object v1, Lcom/google/glass/input/VoiceInputHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Binding VoiceService"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 356
    sget-object v0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceConnection:Lcom/google/glass/util/SafeServiceConnection;

    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/input/VoiceInputHelper;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/SafeServiceConnection;->bindAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 358
    const/4 v0, 0x1

    .line 361
    :cond_0
    return v0
.end method

.method private dispatchVoiceServiceConnected()V
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;

    invoke-interface {v0}, Lcom/google/glass/input/VoiceListener;->onVoiceServiceConnected()V

    .line 571
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->registerGrammarLoaders()V

    .line 572
    return-void
.end method

.method private dispatchVoiceServiceDisconnected()V
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;

    invoke-interface {v0}, Lcom/google/glass/input/VoiceListener;->onVoiceServiceDisconnected()V

    .line 582
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->unregisterGrammarLoaders()V

    .line 583
    return-void
.end method

.method private getResultingConfig(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
    .locals 8
    .parameter "command"

    .prologue
    const/4 v3, 0x0

    .line 607
    iget-object v4, p0, Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;

    invoke-interface {v4}, Lcom/google/glass/input/VoiceListener;->isRunning()Z

    move-result v4

    if-nez v4, :cond_1

    .line 608
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Listener is not running, ignoring voiceCommand"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v4, v5, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 609
    const/4 v2, 0x0

    .line 632
    :cond_0
    :goto_0
    return-object v2

    .line 612
    :cond_1
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Voice command triggered"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 613
    const/4 v4, 0x4

    sget-object v5, Lcom/google/glass/input/VoiceInputHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v5}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Voice command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 615
    iget-object v4, p0, Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;

    invoke-interface {v4, p1}, Lcom/google/glass/input/VoiceListener;->onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v2

    .line 616
    .local v2, resultingConfig:Lcom/google/glass/voice/VoiceConfig;
    if-eqz v2, :cond_3

    const/4 v0, 0x1

    .line 618
    .local v0, handled:Z
    :goto_1
    iget-object v4, p0, Lcom/google/glass/input/VoiceInputHelper;->observer:Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;

    if-eqz v4, :cond_2

    .line 619
    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper;->observer:Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;

    .line 621
    .local v1, observer:Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;
    iget-object v4, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceHandler:Landroid/os/Handler;

    new-instance v5, Lcom/google/glass/input/VoiceInputHelper$3;

    invoke-direct {v5, p0, v1, p1, v0}, Lcom/google/glass/input/VoiceInputHelper$3;-><init>(Lcom/google/glass/input/VoiceInputHelper;Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;Lcom/google/glass/voice/VoiceCommand;Z)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 629
    .end local v1           #observer:Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;
    :cond_2
    if-nez v0, :cond_0

    .line 630
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Voice command not handled"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v4, v5, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .end local v0           #handled:Z
    :cond_3
    move v0, v3

    .line 616
    goto :goto_1
.end method

.method private listenerLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;

    invoke-interface {v0}, Lcom/google/glass/input/VoiceListener;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public static newUserActivityObserver(Landroid/content/Context;)Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;
    .locals 1
    .parameter "context"

    .prologue
    .line 115
    new-instance v0, Lcom/google/glass/input/VoiceInputHelper$UserActivityVoiceCommandObserver;

    invoke-direct {v0, p0}, Lcom/google/glass/input/VoiceInputHelper$UserActivityVoiceCommandObserver;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private registerGrammarLoaders()V
    .locals 3

    .prologue
    .line 575
    iget-object v2, p0, Lcom/google/glass/input/VoiceInputHelper;->grammarLoaders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/input/GrammarLoader;

    .line 576
    .local v0, grammarLoader:Lcom/google/glass/input/GrammarLoader;
    invoke-virtual {v0}, Lcom/google/glass/input/GrammarLoader;->registerForUpdates()V

    goto :goto_0

    .line 578
    .end local v0           #grammarLoader:Lcom/google/glass/input/GrammarLoader;
    :cond_0
    return-void
.end method

.method private removeVoiceInputCallback(Lcom/google/glass/voice/network/IVoiceInputCallback;)V
    .locals 4
    .parameter "voiceInputCallback"

    .prologue
    const/4 v3, 0x0

    .line 415
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->bindVoiceService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "detachVoiceInputCallback called before VoiceService connected"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    :goto_0
    return-void

    .line 422
    :cond_0
    :try_start_0
    sget-object v1, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    invoke-interface {v1, p1}, Lcom/google/glass/voice/IVoiceService;->removeVoiceInputCallback(Lcom/google/glass/voice/network/IVoiceInputCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Failed to remove voice input callback from VoiceService"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private unregisterGrammarLoaders()V
    .locals 3

    .prologue
    .line 586
    iget-object v2, p0, Lcom/google/glass/input/VoiceInputHelper;->grammarLoaders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/input/GrammarLoader;

    .line 587
    .local v0, grammarLoader:Lcom/google/glass/input/GrammarLoader;
    invoke-virtual {v0}, Lcom/google/glass/input/GrammarLoader;->unregisterForUpdates()V

    goto :goto_0

    .line 589
    .end local v0           #grammarLoader:Lcom/google/glass/input/GrammarLoader;
    :cond_0
    return-void
.end method


# virtual methods
.method public addGrammarLoader(Lcom/google/glass/input/GrammarLoader;)Lcom/google/glass/input/VoiceInputHelper;
    .locals 1
    .parameter "grammarLoader"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->grammarLoaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    return-object p0
.end method

.method public varargs addGrammarLoaders([Lcom/google/glass/input/GrammarLoader;)V
    .locals 4
    .parameter "grammarLoaders"

    .prologue
    .line 333
    move-object v0, p1

    .local v0, arr$:[Lcom/google/glass/input/GrammarLoader;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 334
    .local v1, grammarLoader:Lcom/google/glass/input/GrammarLoader;
    invoke-virtual {p0, v1}, Lcom/google/glass/input/VoiceInputHelper;->addGrammarLoader(Lcom/google/glass/input/GrammarLoader;)Lcom/google/glass/input/VoiceInputHelper;

    .line 333
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 336
    .end local v1           #grammarLoader:Lcom/google/glass/input/GrammarLoader;
    :cond_0
    return-void
.end method

.method public addVoiceServiceListener()V
    .locals 2

    .prologue
    .line 340
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 341
    sget-object v0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceListeners:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceListener:Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 342
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->bindVoiceService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    :goto_0
    return-void

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceListener:Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;

    invoke-static {v0}, Lcom/google/glass/input/VoiceInputHelper;->addVoiceServiceListener(Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;)V

    goto :goto_0
.end method

.method public attachVoiceInputCallback(Lcom/google/glass/voice/network/IVoiceInputCallback;)V
    .locals 4
    .parameter "newVoiceInputCallback"

    .prologue
    const/4 v3, 0x0

    .line 393
    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceInputCallback:Lcom/google/glass/voice/network/IVoiceInputCallback;

    if-ne v1, p1, :cond_0

    .line 394
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Ignoring attachVoiceInputCallback, callback is already attached."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    :goto_0
    return-void

    .line 398
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->bindVoiceService()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 399
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "attachVoiceInputCallback called before VoiceService connected"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 404
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceInputCallback:Lcom/google/glass/voice/network/IVoiceInputCallback;

    if-eqz v1, :cond_2

    .line 405
    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceInputCallback:Lcom/google/glass/voice/network/IVoiceInputCallback;

    invoke-direct {p0, v1}, Lcom/google/glass/input/VoiceInputHelper;->removeVoiceInputCallback(Lcom/google/glass/voice/network/IVoiceInputCallback;)V

    .line 407
    :cond_2
    iput-object p1, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceInputCallback:Lcom/google/glass/voice/network/IVoiceInputCallback;

    .line 408
    sget-object v1, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    invoke-interface {v1, p1}, Lcom/google/glass/voice/IVoiceService;->addVoiceInputCallback(Lcom/google/glass/voice/network/IVoiceInputCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Failed to attach voice input callback to VoiceService"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public detachVoiceInputCallback()V
    .locals 3

    .prologue
    .line 436
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceInputCallback:Lcom/google/glass/voice/network/IVoiceInputCallback;

    if-nez v0, :cond_0

    .line 437
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Ignoring detachVoiceInputCallback when no callback attached."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 443
    :goto_0
    return-void

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceInputCallback:Lcom/google/glass/voice/network/IVoiceInputCallback;

    invoke-direct {p0, v0}, Lcom/google/glass/input/VoiceInputHelper;->removeVoiceInputCallback(Lcom/google/glass/voice/network/IVoiceInputCallback;)V

    .line 442
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceInputCallback:Lcom/google/glass/voice/network/IVoiceInputCallback;

    goto :goto_0
.end method

.method public dispatchResampledAudioData([BII)V
    .locals 3
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 637
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;

    invoke-interface {v0}, Lcom/google/glass/input/VoiceListener;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 638
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Listener is not running, ignoring resampledAudioData"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 643
    :goto_0
    return-void

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/glass/input/VoiceListener;->onResampledAudioData([BII)Z

    goto :goto_0
.end method

.method public dispatchVoiceAmplitude()V
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 647
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;

    invoke-interface {v0}, Lcom/google/glass/input/VoiceListener;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 648
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Listener is not running, ignoring voiceAmplitude"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 653
    :goto_0
    return-void

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;

    iget-wide v1, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceAmplitude:D

    invoke-interface {v0, v1, v2}, Lcom/google/glass/input/VoiceListener;->onVoiceAmplitudeChanged(D)Z

    goto :goto_0
.end method

.method public dispatchVoiceCommand(Lcom/google/glass/input/VoiceInputHelper$VoiceCommandEvent;)V
    .locals 1
    .parameter "commandEvent"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 603
    #getter for: Lcom/google/glass/input/VoiceInputHelper$VoiceCommandEvent;->voiceCommand:Lcom/google/glass/voice/VoiceCommand;
    invoke-static {p1}, Lcom/google/glass/input/VoiceInputHelper$VoiceCommandEvent;->access$1100(Lcom/google/glass/input/VoiceInputHelper$VoiceCommandEvent;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/input/VoiceInputHelper;->getResultingConfig(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/glass/input/VoiceInputHelper$VoiceCommandEvent;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 604
    return-void
.end method

.method public dispatchVoiceConfigChanged(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 3
    .parameter "newConfig"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 593
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;

    invoke-interface {v0}, Lcom/google/glass/input/VoiceListener;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 594
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Listener is not running, ignoring voiceConfigChanged"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 599
    :goto_0
    return-void

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;

    iget-object v1, p0, Lcom/google/glass/input/VoiceInputHelper;->expectedVoiceConfig:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {p1, v1}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/google/glass/input/VoiceListener;->onVoiceConfigChanged(Lcom/google/glass/voice/VoiceConfig;Z)V

    goto :goto_0
.end method

.method public endpointNetworkRecognizer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 451
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->bindVoiceService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Trying to endpoint before connection to VoiceService established"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 461
    :goto_0
    return-void

    .line 457
    :cond_0
    :try_start_0
    sget-object v1, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    invoke-interface {v1}, Lcom/google/glass/voice/IVoiceService;->endpointNetworkRecognizer()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 458
    :catch_0
    move-exception v0

    .line 459
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Failed to endpoint network recognizer"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getLoadedConfig(Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;
    .locals 1
    .parameter "name"

    .prologue
    .line 525
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->loadedConfigs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method

.method public getVoiceConfig()Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper;->currentVoiceConfig:Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method

.method public isVoiceServiceBound()Z
    .locals 1

    .prologue
    .line 366
    sget-object v0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceConnection:Lcom/google/glass/util/SafeServiceConnection;

    invoke-virtual {v0}, Lcom/google/glass/util/SafeServiceConnection;->isConnected()Z

    move-result v0

    return v0
.end method

.method public loadConfig(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;
    .locals 7
    .parameter "name"
    .parameter "phrases"

    .prologue
    const/4 v6, 0x0

    .line 492
    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {v0, p1, p2}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 494
    .local v0, config:Lcom/google/glass/voice/VoiceConfig;
    :try_start_0
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Loading config %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 495
    sget-object v2, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    invoke-interface {v2, v0}, Lcom/google/glass/voice/IVoiceService;->loadConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 496
    iget-object v2, p0, Lcom/google/glass/input/VoiceInputHelper;->loadedConfigs:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    .end local v0           #config:Lcom/google/glass/voice/VoiceConfig;
    :goto_0
    return-object v0

    .line 498
    .restart local v0       #config:Lcom/google/glass/voice/VoiceConfig;
    :catch_0
    move-exception v1

    .line 499
    .local v1, e:Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Failed to load voice config"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 500
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reloadConfig(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/VoiceConfig;
    .locals 5
    .parameter "name"
    .parameter "newConfig"

    .prologue
    const/4 v4, 0x0

    .line 506
    invoke-virtual {p0, p1}, Lcom/google/glass/input/VoiceInputHelper;->getLoadedConfig(Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v1

    .line 507
    .local v1, loadedConfig:Lcom/google/glass/voice/VoiceConfig;
    invoke-virtual {p2, v1}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 508
    sget-object v2, Lcom/google/glass/input/VoiceInputHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Asked to reload identical config, ignoring."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 519
    .end local v1           #loadedConfig:Lcom/google/glass/voice/VoiceConfig;
    :goto_0
    return-object v1

    .line 513
    .restart local v1       #loadedConfig:Lcom/google/glass/voice/VoiceConfig;
    :cond_0
    :try_start_0
    sget-object v2, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    invoke-interface {v2, p2, v1}, Lcom/google/glass/voice/IVoiceService;->reloadConfig(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/voice/VoiceConfig;)V

    .line 514
    iget-object v2, p0, Lcom/google/glass/input/VoiceInputHelper;->loadedConfigs:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    iget-object v2, p0, Lcom/google/glass/input/VoiceInputHelper;->loadedConfigs:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p2

    .line 516
    goto :goto_0

    .line 517
    :catch_0
    move-exception v0

    .line 518
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Failed to reload config"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 519
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeVoiceServiceListener()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 371
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 372
    sget-object v1, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceListeners:Ljava/util/Set;

    iget-object v2, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceListener:Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 373
    invoke-virtual {p0}, Lcom/google/glass/input/VoiceInputHelper;->isVoiceServiceBound()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    :try_start_0
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Removing listener from VoiceService: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceListener:Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 376
    sget-object v1, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    iget-object v2, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceListener:Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;

    invoke-interface {v1, v2}, Lcom/google/glass/voice/IVoiceService;->removeListener(Lcom/google/glass/voice/IVoiceServiceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->dispatchVoiceServiceDisconnected()V

    .line 383
    return-void

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Failed to detach listener"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 467
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/input/VoiceInputHelper;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;Z)V

    .line 468
    return-void
.end method

.method public setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;Z)V
    .locals 4
    .parameter "config"
    .parameter "allowScreenOff"

    .prologue
    const/4 v3, 0x0

    .line 476
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->bindVoiceService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Trying to change VoiceConfig before VoiceService connected"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 487
    :goto_0
    return-void

    .line 482
    :cond_0
    :try_start_0
    sget-object v1, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    iget-object v2, p0, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceListener:Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;

    invoke-virtual {v2}, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/google/glass/voice/IVoiceService;->setConfig(Lcom/google/glass/voice/VoiceConfig;Ljava/lang/String;)V

    .line 483
    iput-object p1, p0, Lcom/google/glass/input/VoiceInputHelper;->expectedVoiceConfig:Lcom/google/glass/voice/VoiceConfig;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 484
    :catch_0
    move-exception v0

    .line 485
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Failed to set voice config"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setWantAudioData(Z)V
    .locals 7
    .parameter "wantAudioData"

    .prologue
    const/4 v6, 0x0

    .line 556
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->bindVoiceService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 557
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Trying to set wantAudioData before VoiceService connected."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 567
    :goto_0
    return-void

    .line 562
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Setting wantAudioData: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 563
    sget-object v1, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    invoke-interface {v1, p1}, Lcom/google/glass/voice/IVoiceService;->setWantAudioData(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 564
    :catch_0
    move-exception v0

    .line 565
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Failed to set wantAudioData"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public unloadConfig(Ljava/lang/String;)V
    .locals 6
    .parameter "name"

    .prologue
    const/4 v5, 0x0

    .line 530
    invoke-virtual {p0, p1}, Lcom/google/glass/input/VoiceInputHelper;->getLoadedConfig(Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    .line 531
    .local v0, config:Lcom/google/glass/voice/VoiceConfig;
    if-nez v0, :cond_0

    .line 532
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "No config to unload named %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 542
    :goto_0
    return-void

    .line 537
    :cond_0
    :try_start_0
    sget-object v2, Lcom/google/glass/input/VoiceInputHelper;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    invoke-interface {v2, v0}, Lcom/google/glass/voice/IVoiceService;->unloadConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 538
    iget-object v2, p0, Lcom/google/glass/input/VoiceInputHelper;->loadedConfigs:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 539
    :catch_0
    move-exception v1

    .line 540
    .local v1, e:Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/google/glass/input/VoiceInputHelper;->listenerLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Failed to unload voice config"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
