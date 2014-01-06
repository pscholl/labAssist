.class public Lcom/google/glass/input/VoiceInputHelper$VoiceCommandEvent;
.super Ljava/lang/Object;
.source "VoiceInputHelper.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/input/VoiceInputHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VoiceCommandEvent"
.end annotation


# instance fields
.field private final resultingConfig:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/glass/voice/VoiceConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final voiceCommand:Lcom/google/glass/voice/VoiceCommand;


# direct methods
.method public constructor <init>(Lcom/google/glass/voice/VoiceCommand;)V
    .locals 1
    .parameter "voiceCommand"

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$VoiceCommandEvent;->resultingConfig:Ljava/util/concurrent/atomic/AtomicReference;

    .line 203
    iput-object p1, p0, Lcom/google/glass/input/VoiceInputHelper$VoiceCommandEvent;->voiceCommand:Lcom/google/glass/voice/VoiceCommand;

    .line 204
    return-void
.end method

.method static synthetic access$1100(Lcom/google/glass/input/VoiceInputHelper$VoiceCommandEvent;)Lcom/google/glass/voice/VoiceCommand;
    .locals 1
    .parameter "x0"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$VoiceCommandEvent;->voiceCommand:Lcom/google/glass/voice/VoiceCommand;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/input/VoiceInputHelper$VoiceCommandEvent;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$VoiceCommandEvent;->resultingConfig:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method


# virtual methods
.method public getVoiceCommand()Lcom/google/glass/voice/VoiceCommand;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$VoiceCommandEvent;->voiceCommand:Lcom/google/glass/voice/VoiceCommand;

    return-object v0
.end method

.method public declared-synchronized setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 1
    .parameter "resultingConfig"

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$VoiceCommandEvent;->resultingConfig:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 208
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    monitor-exit p0

    return-void

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
