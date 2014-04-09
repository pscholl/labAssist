.class Lcom/google/glass/voice/VoiceCommandService$3;
.super Lcom/google/glass/util/SafeServiceConnection;
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
.method constructor <init>(Lcom/google/glass/voice/VoiceCommandService;Landroid/content/ComponentName;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/glass/voice/VoiceCommandService$3;->this$0:Lcom/google/glass/voice/VoiceCommandService;

    invoke-direct {p0, p2}, Lcom/google/glass/util/SafeServiceConnection;-><init>(Landroid/content/ComponentName;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 141
    invoke-static {}, Lcom/google/glass/voice/VoiceCommandService;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onServiceConnectedInternal(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter "name"
    .parameter "binder"

    .prologue
    const/4 v4, 0x0

    .line 125
    invoke-static {}, Lcom/google/glass/voice/VoiceCommandService;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "VoiceService connected"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    iget-object v1, p0, Lcom/google/glass/voice/VoiceCommandService$3;->this$0:Lcom/google/glass/voice/VoiceCommandService;

    invoke-static {p2}, Lcom/google/glass/voice/IVoiceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/glass/voice/IVoiceService;

    move-result-object v2

    iput-object v2, v1, Lcom/google/glass/voice/VoiceCommandService;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/voice/VoiceCommandService$3;->this$0:Lcom/google/glass/voice/VoiceCommandService;

    iget-object v1, v1, Lcom/google/glass/voice/VoiceCommandService;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    iget-object v2, p0, Lcom/google/glass/voice/VoiceCommandService$3;->this$0:Lcom/google/glass/voice/VoiceCommandService;

    iget-object v2, v2, Lcom/google/glass/voice/VoiceCommandService;->voiceServiceListener:Lcom/google/glass/voice/IVoiceServiceListener;

    invoke-interface {v1, v2}, Lcom/google/glass/voice/IVoiceService;->addListener(Lcom/google/glass/voice/IVoiceServiceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/google/glass/voice/VoiceCommandService;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Could not add VoiceServiceListener"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onServiceDisconnectedInternal(Landroid/content/ComponentName;Z)V
    .locals 3
    .parameter "name"
    .parameter "isError"

    .prologue
    .line 136
    invoke-static {}, Lcom/google/glass/voice/VoiceCommandService;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "VoiceService disconnected."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    return-void
.end method
