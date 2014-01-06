.class public Lcom/google/glass/voice/VoiceCommandService;
.super Landroid/app/Service;
.source "VoiceCommandService.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final binder:Landroid/os/IBinder;

.field private final lock:Ljava/lang/Object;

.field private voiceCommandListener:Lcom/google/android/glass/voice/IVoiceCommandListener;

.field private final voiceCommandMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/glass/voice/VoiceCommand;",
            ">;"
        }
    .end annotation
.end field

.field voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final voiceServiceConnection:Lcom/google/glass/util/SafeServiceConnection;

.field final voiceServiceListener:Lcom/google/glass/voice/IVoiceServiceListener;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommandService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceCommandService;->lock:Ljava/lang/Object;

    .line 28
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceCommandService;->voiceCommandMap:Ljava/util/Map;

    .line 32
    new-instance v0, Lcom/google/glass/voice/VoiceCommandService$1;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceCommandService$1;-><init>(Lcom/google/glass/voice/VoiceCommandService;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceCommandService;->binder:Landroid/os/IBinder;

    .line 84
    new-instance v0, Lcom/google/glass/voice/VoiceCommandService$2;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceCommandService$2;-><init>(Lcom/google/glass/voice/VoiceCommandService;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceCommandService;->voiceServiceListener:Lcom/google/glass/voice/IVoiceServiceListener;

    .line 120
    new-instance v0, Lcom/google/glass/voice/VoiceCommandService$3;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.google.glass.voice"

    const-string v3, "com.google.glass.voice.VoiceService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/VoiceCommandService$3;-><init>(Lcom/google/glass/voice/VoiceCommandService;Landroid/content/ComponentName;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceCommandService;->voiceServiceConnection:Lcom/google/glass/util/SafeServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/VoiceCommandService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/voice/VoiceCommandService;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/voice/VoiceCommandService;)Lcom/google/android/glass/voice/IVoiceCommandListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/voice/VoiceCommandService;->voiceCommandListener:Lcom/google/android/glass/voice/IVoiceCommandListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/glass/voice/VoiceCommandService;Lcom/google/android/glass/voice/IVoiceCommandListener;)Lcom/google/android/glass/voice/IVoiceCommandListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/google/glass/voice/VoiceCommandService;->voiceCommandListener:Lcom/google/android/glass/voice/IVoiceCommandListener;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/glass/voice/VoiceCommandService;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/voice/VoiceCommandService;->voiceCommandMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/glass/voice/VoiceCommandService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/glass/voice/VoiceCommandService;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 148
    iget-object v0, p0, Lcom/google/glass/voice/VoiceCommandService;->voiceServiceConnection:Lcom/google/glass/util/SafeServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/glass/util/SafeServiceConnection;->bind(Landroid/content/Context;)Lcom/google/glass/util/SafeServiceConnection;

    .line 149
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 158
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/voice/VoiceCommandService;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    iget-object v2, p0, Lcom/google/glass/voice/VoiceCommandService;->voiceServiceListener:Lcom/google/glass/voice/IVoiceServiceListener;

    invoke-interface {v1, v2}, Lcom/google/glass/voice/IVoiceService;->removeListener(Lcom/google/glass/voice/IVoiceServiceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    iget-object v1, p0, Lcom/google/glass/voice/VoiceCommandService;->voiceServiceConnection:Lcom/google/glass/util/SafeServiceConnection;

    invoke-virtual {v1, p0}, Lcom/google/glass/util/SafeServiceConnection;->unbind(Landroid/content/Context;)Lcom/google/glass/util/SafeServiceConnection;

    .line 165
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/google/glass/voice/VoiceCommandService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Could not remove VoiceServiceListener"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
