.class Lcom/google/glass/voice/VoiceCommandService$1;
.super Lcom/google/android/glass/voice/IVoiceCommandService$Stub;
.source "VoiceCommandService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/VoiceCommandService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceCommandService;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceCommandService;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/glass/voice/VoiceCommandService$1;->this$0:Lcom/google/glass/voice/VoiceCommandService;

    invoke-direct {p0}, Lcom/google/android/glass/voice/IVoiceCommandService$Stub;-><init>()V

    return-void
.end method

.method private setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 4
    .parameter "vc"

    .prologue
    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/voice/VoiceCommandService$1;->this$0:Lcom/google/glass/voice/VoiceCommandService;

    iget-object v1, v1, Lcom/google/glass/voice/VoiceCommandService;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    iget-object v2, p0, Lcom/google/glass/voice/VoiceCommandService$1;->this$0:Lcom/google/glass/voice/VoiceCommandService;

    iget-object v2, v2, Lcom/google/glass/voice/VoiceCommandService;->voiceServiceListener:Lcom/google/glass/voice/IVoiceServiceListener;

    invoke-interface {v2}, Lcom/google/glass/voice/IVoiceServiceListener;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/google/glass/voice/IVoiceService;->setConfig(Lcom/google/glass/voice/VoiceConfig;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/google/glass/voice/VoiceCommandService;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set VoiceConfig to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public startListening(Lcom/google/android/glass/voice/IVoiceCommandListener;[Lcom/google/android/glass/voice/VoiceCommand;)V
    .locals 7
    .parameter "listener"
    .parameter "voiceCommands"

    .prologue
    .line 37
    iget-object v3, p0, Lcom/google/glass/voice/VoiceCommandService$1;->this$0:Lcom/google/glass/voice/VoiceCommandService;

    #getter for: Lcom/google/glass/voice/VoiceCommandService;->lock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/google/glass/voice/VoiceCommandService;->access$000(Lcom/google/glass/voice/VoiceCommandService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 38
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/voice/VoiceCommandService$1;->this$0:Lcom/google/glass/voice/VoiceCommandService;

    #setter for: Lcom/google/glass/voice/VoiceCommandService;->voiceCommandListener:Lcom/google/android/glass/voice/IVoiceCommandListener;
    invoke-static {v3, p1}, Lcom/google/glass/voice/VoiceCommandService;->access$102(Lcom/google/glass/voice/VoiceCommandService;Lcom/google/android/glass/voice/IVoiceCommandListener;)Lcom/google/android/glass/voice/IVoiceCommandListener;

    .line 39
    iget-object v3, p0, Lcom/google/glass/voice/VoiceCommandService$1;->this$0:Lcom/google/glass/voice/VoiceCommandService;

    #getter for: Lcom/google/glass/voice/VoiceCommandService;->voiceCommandMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/google/glass/voice/VoiceCommandService;->access$200(Lcom/google/glass/voice/VoiceCommandService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 41
    array-length v3, p2

    new-array v0, v3, [Ljava/lang/String;

    .line 42
    .local v0, commands:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_0

    .line 43
    aget-object v3, p2, v1

    invoke-virtual {v3}, Lcom/google/android/glass/voice/VoiceCommand;->getLiteral()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 44
    iget-object v3, p0, Lcom/google/glass/voice/VoiceCommandService$1;->this$0:Lcom/google/glass/voice/VoiceCommandService;

    #getter for: Lcom/google/glass/voice/VoiceCommandService;->voiceCommandMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/google/glass/voice/VoiceCommandService;->access$200(Lcom/google/glass/voice/VoiceCommandService;)Ljava/util/Map;

    move-result-object v3

    aget-object v5, p2, v1

    invoke-virtual {v5}, Lcom/google/android/glass/voice/VoiceCommand;->getLiteral()Ljava/lang/String;

    move-result-object v5

    aget-object v6, p2, v1

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    :cond_0
    new-instance v2, Lcom/google/glass/voice/VoiceConfig;

    const-string v3, "VoiceCommandServiceConfig"

    invoke-direct {v2, v3, v0}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 48
    .local v2, voiceConfig:Lcom/google/glass/voice/VoiceConfig;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-direct {p0, v2}, Lcom/google/glass/voice/VoiceCommandService$1;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 51
    return-void

    .line 48
    .end local v0           #commands:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #voiceConfig:Lcom/google/glass/voice/VoiceConfig;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public stopListening(Lcom/google/android/glass/voice/IVoiceCommandListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/glass/voice/VoiceCommandService$1;->this$0:Lcom/google/glass/voice/VoiceCommandService;

    #getter for: Lcom/google/glass/voice/VoiceCommandService;->lock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommandService;->access$000(Lcom/google/glass/voice/VoiceCommandService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceCommandService$1;->this$0:Lcom/google/glass/voice/VoiceCommandService;

    #getter for: Lcom/google/glass/voice/VoiceCommandService;->voiceCommandListener:Lcom/google/android/glass/voice/IVoiceCommandListener;
    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommandService;->access$100(Lcom/google/glass/voice/VoiceCommandService;)Lcom/google/android/glass/voice/IVoiceCommandListener;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 57
    invoke-static {}, Lcom/google/glass/voice/VoiceCommandService;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v2, "stopListening called but another IVoiceCommandListener was already set."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    monitor-exit v1

    .line 65
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceCommandService$1;->this$0:Lcom/google/glass/voice/VoiceCommandService;

    const/4 v2, 0x0

    #setter for: Lcom/google/glass/voice/VoiceCommandService;->voiceCommandListener:Lcom/google/android/glass/voice/IVoiceCommandListener;
    invoke-static {v0, v2}, Lcom/google/glass/voice/VoiceCommandService;->access$102(Lcom/google/glass/voice/VoiceCommandService;Lcom/google/android/glass/voice/IVoiceCommandListener;)Lcom/google/android/glass/voice/IVoiceCommandListener;

    .line 62
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceCommandService$1;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
