.class Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;
.super Lcom/google/glass/voice/IVoiceServiceListener$Stub;
.source "VoiceInputHelper.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/input/VoiceInputHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalVoiceServiceListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/voice/IVoiceServiceListener$Stub;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/input/VoiceInputHelper;

.field private final timeCreated:J


# direct methods
.method constructor <init>(Lcom/google/glass/input/VoiceInputHelper;)V
    .locals 2
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    invoke-direct {p0}, Lcom/google/glass/voice/IVoiceServiceListener$Stub;-><init>()V

    .line 222
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->timeCreated:J

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;)I
    .locals 4
    .parameter "another"

    .prologue
    .line 282
    iget-wide v0, p0, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->timeCreated:J

    iget-wide v2, p1, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->timeCreated:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 283
    const/4 v0, 0x0

    .line 286
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->timeCreated:J

    iget-wide v2, p1, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->timeCreated:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 220
    check-cast p1, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->compareTo(Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;)I

    move-result v0

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #getter for: Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;
    invoke-static {v0}, Lcom/google/glass/input/VoiceInputHelper;->access$1000(Lcom/google/glass/input/VoiceInputHelper;)Lcom/google/glass/input/VoiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/input/VoiceListener;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onResampledAudioData([BII)V
    .locals 2
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #getter for: Lcom/google/glass/input/VoiceInputHelper;->voiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/input/VoiceInputHelper;->access$600(Lcom/google/glass/input/VoiceInputHelper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1, p2, p3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 256
    return-void
.end method

.method public onVoiceAmplitudeChanged(D)V
    .locals 2
    .parameter "amplitude"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #setter for: Lcom/google/glass/input/VoiceInputHelper;->voiceAmplitude:D
    invoke-static {v0, p1, p2}, Lcom/google/glass/input/VoiceInputHelper;->access$802(Lcom/google/glass/input/VoiceInputHelper;D)D

    .line 261
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #getter for: Lcom/google/glass/input/VoiceInputHelper;->voiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/input/VoiceInputHelper;->access$600(Lcom/google/glass/input/VoiceInputHelper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 262
    return-void
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
    .locals 4
    .parameter "command"

    .prologue
    .line 234
    new-instance v1, Lcom/google/glass/input/VoiceInputHelper$VoiceCommandEvent;

    invoke-direct {v1, p1}, Lcom/google/glass/input/VoiceInputHelper$VoiceCommandEvent;-><init>(Lcom/google/glass/voice/VoiceCommand;)V

    .line 235
    .local v1, event:Lcom/google/glass/input/VoiceInputHelper$VoiceCommandEvent;
    iget-object v2, p0, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #getter for: Lcom/google/glass/input/VoiceInputHelper;->voiceHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/google/glass/input/VoiceInputHelper;->access$600(Lcom/google/glass/input/VoiceInputHelper;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 237
    :try_start_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    const-wide/16 v2, 0x7d0

    :try_start_1
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 245
    #getter for: Lcom/google/glass/input/VoiceInputHelper$VoiceCommandEvent;->resultingConfig:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v1}, Lcom/google/glass/input/VoiceInputHelper$VoiceCommandEvent;->access$700(Lcom/google/glass/input/VoiceInputHelper$VoiceCommandEvent;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/voice/VoiceConfig;

    monitor-exit v1

    .line 249
    :goto_0
    return-object v2

    .line 246
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 249
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onVoiceConfigChanged(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #setter for: Lcom/google/glass/input/VoiceInputHelper;->currentVoiceConfig:Lcom/google/glass/voice/VoiceConfig;
    invoke-static {v0, p1}, Lcom/google/glass/input/VoiceInputHelper;->access$902(Lcom/google/glass/input/VoiceInputHelper;Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/VoiceConfig;

    .line 267
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #getter for: Lcom/google/glass/input/VoiceInputHelper;->voiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/input/VoiceInputHelper;->access$600(Lcom/google/glass/input/VoiceInputHelper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 268
    return-void
.end method

.method public onVoiceServiceConnected()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #getter for: Lcom/google/glass/input/VoiceInputHelper;->voiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/input/VoiceInputHelper;->access$600(Lcom/google/glass/input/VoiceInputHelper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 226
    return-void
.end method

.method public onVoiceServiceDisconnected()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #getter for: Lcom/google/glass/input/VoiceInputHelper;->voiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/input/VoiceInputHelper;->access$600(Lcom/google/glass/input/VoiceInputHelper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 230
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
