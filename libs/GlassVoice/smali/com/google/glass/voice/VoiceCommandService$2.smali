.class Lcom/google/glass/voice/VoiceCommandService$2;
.super Lcom/google/glass/voice/IVoiceServiceListener$Stub;
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
    .line 85
    iput-object p1, p0, Lcom/google/glass/voice/VoiceCommandService$2;->this$0:Lcom/google/glass/voice/VoiceCommandService;

    invoke-direct {p0}, Lcom/google/glass/voice/IVoiceServiceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lcom/google/glass/voice/VoiceCommandService;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onResampledAudioData([BII)V
    .locals 0
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 88
    return-void
.end method

.method public onVoiceAmplitudeChanged(D)V
    .locals 0
    .parameter "amplitude"

    .prologue
    .line 91
    return-void
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
    .locals 5
    .parameter "voiceCommand"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v2, p0, Lcom/google/glass/voice/VoiceCommandService$2;->this$0:Lcom/google/glass/voice/VoiceCommandService;

    #getter for: Lcom/google/glass/voice/VoiceCommandService;->lock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/google/glass/voice/VoiceCommandService;->access$000(Lcom/google/glass/voice/VoiceCommandService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 108
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/voice/VoiceCommandService$2;->this$0:Lcom/google/glass/voice/VoiceCommandService;

    #getter for: Lcom/google/glass/voice/VoiceCommandService;->voiceCommandListener:Lcom/google/android/glass/voice/IVoiceCommandListener;
    invoke-static {v2}, Lcom/google/glass/voice/VoiceCommandService;->access$100(Lcom/google/glass/voice/VoiceCommandService;)Lcom/google/android/glass/voice/IVoiceCommandListener;

    move-result-object v1

    .line 109
    .local v1, listener:Lcom/google/android/glass/voice/IVoiceCommandListener;
    iget-object v2, p0, Lcom/google/glass/voice/VoiceCommandService$2;->this$0:Lcom/google/glass/voice/VoiceCommandService;

    #getter for: Lcom/google/glass/voice/VoiceCommandService;->voiceCommandMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/google/glass/voice/VoiceCommandService;->access$200(Lcom/google/glass/voice/VoiceCommandService;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceCommand;->getLiteral()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/glass/voice/VoiceCommand;

    .line 110
    .local v0, command:Lcom/google/android/glass/voice/VoiceCommand;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 113
    invoke-interface {v1, v0}, Lcom/google/android/glass/voice/IVoiceCommandListener;->onCommand(Lcom/google/android/glass/voice/VoiceCommand;)V

    .line 116
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 110
    .end local v0           #command:Lcom/google/android/glass/voice/VoiceCommand;
    .end local v1           #listener:Lcom/google/android/glass/voice/IVoiceCommandListener;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onVoiceConfigChanged(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 94
    return-void
.end method
