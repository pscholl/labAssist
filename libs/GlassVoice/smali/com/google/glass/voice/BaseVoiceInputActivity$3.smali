.class Lcom/google/glass/voice/BaseVoiceInputActivity$3;
.super Ljava/lang/Object;
.source "BaseVoiceInputActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/BaseVoiceInputActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/BaseVoiceInputActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 383
    iput-object p1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$3;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$3;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    invoke-virtual {v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$3;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    invoke-virtual {v1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getStartSound()Lcom/google/glass/sound/SoundManager$SoundId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 387
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$3;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->logSearchStarted(I)V

    .line 389
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$3;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    #calls: Lcom/google/glass/voice/BaseVoiceInputActivity;->reset()V
    invoke-static {v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->access$1700(Lcom/google/glass/voice/BaseVoiceInputActivity;)V

    .line 390
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$3;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    const/4 v1, 0x1

    #setter for: Lcom/google/glass/voice/BaseVoiceInputActivity;->isRetry:Z
    invoke-static {v0, v1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->access$1802(Lcom/google/glass/voice/BaseVoiceInputActivity;Z)Z

    .line 391
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$3;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$3;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    #getter for: Lcom/google/glass/voice/BaseVoiceInputActivity;->retryVoiceConfig:Lcom/google/glass/voice/VoiceConfig;
    invoke-static {v1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->access$1900(Lcom/google/glass/voice/BaseVoiceInputActivity;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 392
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$3;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$3;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v1, v1, Lcom/google/glass/voice/BaseVoiceInputActivity;->voiceInputCallback:Lcom/google/glass/voice/network/IVoiceInputCallback;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->attachVoiceInputCallback(Lcom/google/glass/voice/network/IVoiceInputCallback;)V

    .line 393
    return-void
.end method
