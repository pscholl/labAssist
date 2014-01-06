.class public Lcom/google/glass/voice/VoiceService;
.super Landroid/app/Service;
.source "VoiceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;
    }
.end annotation


# static fields
.field private static final EXTRA_MOCK_AUDIO:Ljava/lang/String; = "mock_audio"

.field private static final TAG:Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final binder:Landroid/os/IBinder;

.field private callbackBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;

.field private mockAudio:[B

.field private serviceListenerBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;

.field private voiceEngine:Lcom/google/glass/voice/VoiceEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/google/glass/voice/VoiceService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 137
    new-instance v0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;-><init>(Lcom/google/glass/voice/VoiceService;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->binder:Landroid/os/IBinder;

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->mockAudio:[B

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->serviceListenerBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/glass/voice/VoiceService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->callbackBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/VoiceEngine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    return-object v0
.end method


# virtual methods
.method protected declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current Time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 201
    const-string v0, "VoiceInputCallbacks:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->callbackBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;

    new-instance v1, Lcom/google/glass/voice/VoiceService$1;

    invoke-direct {v1, p0, p2}, Lcom/google/glass/voice/VoiceService$1;-><init>(Lcom/google/glass/voice/VoiceService;Ljava/io/PrintWriter;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 208
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 209
    const-string v0, "VoiceServiceListeners:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->serviceListenerBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;

    new-instance v1, Lcom/google/glass/voice/VoiceService$2;

    invoke-direct {v1, p0, p2}, Lcom/google/glass/voice/VoiceService$2;-><init>(Lcom/google/glass/voice/VoiceService;Ljava/io/PrintWriter;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 216
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 217
    const-string v0, "VoiceEngine State:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    invoke-virtual {v0, p2}, Lcom/google/glass/voice/VoiceEngine;->dumpState(Ljava/io/PrintWriter;)V

    .line 223
    :goto_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-exit p0

    return-void

    .line 221
    :cond_0
    :try_start_1
    const-string v0, "[not connected to VoiceEngine]"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .parameter "intent"

    .prologue
    .line 146
    sget-object v0, Lcom/google/glass/voice/VoiceService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onBind"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 169
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 170
    sget-object v0, Lcom/google/glass/voice/VoiceService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onCreate"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    new-instance v0, Lcom/google/glass/voice/VoiceEngine;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceEngine;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    .line 174
    new-instance v0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    invoke-direct {v0, v1}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->callbackBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;

    .line 175
    new-instance v0, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;

    invoke-direct {v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->serviceListenerBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;

    .line 177
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceEngine;->initializeAsynchronously()V

    .line 178
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->serviceListenerBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceEngine;->setListener(Lcom/google/glass/voice/VoiceServiceListener;)V

    .line 179
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 183
    sget-object v0, Lcom/google/glass/voice/VoiceService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceEngine;->cleanupSynchronously()V

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->callbackBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->callbackBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;

    invoke-virtual {v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->close()V

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->serviceListenerBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->serviceListenerBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;

    invoke-virtual {v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;->close()V

    .line 194
    :cond_2
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 195
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 152
    sget-object v1, Lcom/google/glass/voice/VoiceService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "onStartCommand"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->mockAudio:[B

    .line 154
    .local v0, old:[B
    if-eqz p1, :cond_0

    .line 155
    const-string v1, "mock_audio"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/voice/VoiceService;->mockAudio:[B

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->mockAudio:[B

    if-eq v0, v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    iget-object v2, p0, Lcom/google/glass/voice/VoiceService;->mockAudio:[B

    invoke-virtual {v1, v2}, Lcom/google/glass/voice/VoiceEngine;->setMockAudio([B)V

    .line 164
    :cond_1
    const/4 v1, 0x1

    return v1
.end method
