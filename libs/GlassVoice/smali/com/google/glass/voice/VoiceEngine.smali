.class public Lcom/google/glass/voice/VoiceEngine;
.super Landroid/content/ContextWrapper;
.source "VoiceEngine.java"

# interfaces
.implements Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/VoiceEngine$ScreenOffBroadcastReceiver;,
        Lcom/google/glass/voice/VoiceEngine$InputEffectsConfigChangeListener;,
        Lcom/google/glass/voice/VoiceEngine$ConfigChangeListener;,
        Lcom/google/glass/voice/VoiceEngine$RefeedingConfigChangeListener;,
        Lcom/google/glass/voice/VoiceEngine$DictationModeAmplitudeChangeListener;
    }
.end annotation


# static fields
.field private static final ALLOW_INPUT_EFFECTS_PARAMETER_NAME:Ljava/lang/String; = "allow_input_effects"

#the value of this static final field might be set in the static constructor
.field static final HOTWORD_COMMAND_AUDIO_BUFFER_SIZE_MS:J = 0x0L

.field private static final MAX_MISSED_COMMAND_COUNT:I = 0x5

.field private static final MSG_POST_RESAMPLED_AUDIO_DATA:I = 0x1

.field private static final MSG_SCREEN_OFF:I = 0x0

.field public static final PER_RECOGNIZER_AUDIO_LOGGING:Z = false

.field private static final READ_BUFFER_SIZE:I = 0xa0

#the value of this static final field might be set in the static constructor
.field private static final REFEED_BYTES:I = 0x0

.field private static final REFEED_MS:I = 0xc8

.field static backgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static backgroundThreadFactory:Lcom/google/glass/util/ThreadCheckThreadFactory;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final screenOffReceiverLogger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private activeRecognizer:Lcom/google/glass/voice/HotwordRecognizer;

.field private final audioRefeedBuffer:Lcom/google/glass/util/CircularByteBuffer;

.field private final audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

.field private configChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/voice/VoiceEngine$ConfigChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile currentConfig:Lcom/google/glass/voice/VoiceConfig;

.field private final handler:Landroid/os/Handler;

.field private final httpRequestDispatcher:Lcom/google/glass/net/AndroidHttpRequestDispatcher;

.field private interleaver:Lcom/google/glass/voice/InterleavingInputStream;

.field private lastHotwordResult:Lcom/google/glass/voice/HotwordResult;

.field private lastVoiceCommandAudio:Ljava/nio/ByteBuffer;

.field private volatile listener:Lcom/google/glass/voice/VoiceServiceListener;

.field private microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

.field private final missedCommands:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/glass/voice/VoiceCommand;",
            ">;"
        }
    .end annotation
.end field

.field private mockAudio:[B

.field private final pendingVoiceInputCallback:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/glass/voice/network/VoiceInputCallback;",
            ">;"
        }
    .end annotation
.end field

.field powerHelper:Lcom/google/glass/util/PowerHelper;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field final readFromMicrophone:Ljava/lang/Runnable;

.field recognizerController:Lcom/google/glass/voice/network/RecognizerController;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final recognizerLoader:Lcom/google/glass/voice/CommandRecognizerLoader;

.field private final savedAudioStorage:Lcom/google/glass/logging/audio/SavedAudioStorage;

.field private final screenOffReceiver:Lcom/google/glass/voice/VoiceEngine$ScreenOffBroadcastReceiver;

.field private final shouldReadFromMic:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final targetVoiceConfig:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/glass/voice/VoiceConfig;",
            ">;"
        }
    .end annotation
.end field

.field private volatile wantAudioData:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 74
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 76
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "screenOffReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceEngine;->screenOffReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 104
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/voice/VoiceEngine;->HOTWORD_COMMAND_AUDIO_BUFFER_SIZE_MS:J

    .line 185
    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Lcom/google/glass/voice/AudioByteUtils;->getByteLength(J)I

    move-result v0

    sput v0, Lcom/google/glass/voice/VoiceEngine;->REFEED_BYTES:I

    .line 369
    new-instance v0, Lcom/google/glass/util/ThreadCheckThreadFactory;

    new-instance v1, Lcom/google/glass/async/PriorityThreadFactory;

    const/16 v2, 0xa

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v4}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/backgroundExecutor"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/glass/async/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/glass/util/ThreadCheckThreadFactory;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/google/glass/voice/VoiceEngine;->backgroundThreadFactory:Lcom/google/glass/util/ThreadCheckThreadFactory;

    .line 373
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->backgroundThreadFactory:Lcom/google/glass/util/ThreadCheckThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceEngine;->backgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "base"

    .prologue
    .line 389
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/voice/VoiceEngine;-><init>(Landroid/content/Context;Lcom/google/glass/voice/MicrophoneInputStream;)V

    .line 390
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/glass/voice/MicrophoneInputStream;)V
    .locals 6
    .parameter "base"
    .parameter "mis"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const-wide/16 v4, 0x3e80

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 394
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 110
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    .line 125
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->shouldReadFromMic:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 128
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$1;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceEngine$1;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->readFromMicrophone:Ljava/lang/Runnable;

    .line 248
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/glass/voice/VoiceEngine$ConfigChangeListener;

    new-instance v1, Lcom/google/glass/voice/VoiceEngine$InputEffectsConfigChangeListener;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/VoiceEngine$InputEffectsConfigChangeListener;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v2

    const/4 v1, 0x1

    new-instance v2, Lcom/google/glass/voice/VoiceEngine$RefeedingConfigChangeListener;

    invoke-direct {v2, p0, v3}, Lcom/google/glass/voice/VoiceEngine$RefeedingConfigChangeListener;-><init>(Lcom/google/glass/voice/VoiceEngine;Lcom/google/glass/voice/VoiceEngine$1;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->configChangeListeners:Ljava/util/List;

    .line 255
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->missedCommands:Ljava/util/Queue;

    .line 261
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/VoiceEngine$2;-><init>(Lcom/google/glass/voice/VoiceEngine;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->handler:Landroid/os/Handler;

    .line 283
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$ScreenOffBroadcastReceiver;

    invoke-direct {v0, p0, v3}, Lcom/google/glass/voice/VoiceEngine$ScreenOffBroadcastReceiver;-><init>(Lcom/google/glass/voice/VoiceEngine;Lcom/google/glass/voice/VoiceEngine$1;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->screenOffReceiver:Lcom/google/glass/voice/VoiceEngine$ScreenOffBroadcastReceiver;

    .line 357
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->pendingVoiceInputCallback:Ljava/util/concurrent/atomic/AtomicReference;

    .line 365
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->targetVoiceConfig:Ljava/util/concurrent/atomic/AtomicReference;

    .line 378
    invoke-static {v4, v5}, Lcom/google/glass/logging/audio/SavedAudioStorage;->newAudioSaver(J)Lcom/google/glass/logging/audio/AudioSaver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    .line 383
    iput-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->mockAudio:[B

    .line 396
    invoke-static {p0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->createContainer(Landroid/content/Context;)V

    .line 397
    invoke-static {}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getContainer()Lcom/google/glass/voice/network/VoiceSearchContainer;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->getEndpointerEventPreprocessors()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getRecognizerController(Ljava/util/List;)Lcom/google/glass/voice/network/RecognizerController;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    .line 400
    new-instance v0, Lcom/google/glass/voice/CommandRecognizerLoader;

    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->createRecognizerFactory()Lcom/google/glass/voice/RecognizerFactory;

    move-result-object v1

    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/glass/voice/CommandRecognizerLoader;-><init>(Landroid/content/Context;Lcom/google/glass/voice/RecognizerFactory;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerLoader:Lcom/google/glass/voice/CommandRecognizerLoader;

    .line 402
    new-instance v0, Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    invoke-direct {v0, p0}, Lcom/google/glass/net/AndroidHttpRequestDispatcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->httpRequestDispatcher:Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    .line 403
    new-instance v0, Lcom/google/glass/logging/audio/SavedAudioStorage;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->httpRequestDispatcher:Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    invoke-static {p0, v1}, Lcom/google/glass/logging/audio/S3SavedAudioSyncer;->createS3SavedAudioSyncer(Landroid/content/Context;Lcom/google/glass/net/HttpRequestDispatcher;)Lcom/google/glass/logging/audio/S3SavedAudioSyncer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/logging/audio/SavedAudioStorage;-><init>(Lcom/google/glass/logging/audio/SavedAudioSyncer;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->savedAudioStorage:Lcom/google/glass/logging/audio/SavedAudioStorage;

    .line 405
    new-instance v0, Lcom/google/glass/util/CircularByteBuffer;

    sget-wide v1, Lcom/google/glass/voice/VoiceEngine;->HOTWORD_COMMAND_AUDIO_BUFFER_SIZE_MS:J

    mul-long/2addr v1, v4

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/util/CircularByteBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->audioRefeedBuffer:Lcom/google/glass/util/CircularByteBuffer;

    .line 407
    new-instance v0, Lcom/google/glass/util/PowerHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->powerHelper:Lcom/google/glass/util/PowerHelper;

    .line 409
    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->createMicrophoneInputStream()Lcom/google/glass/voice/MicrophoneInputStream;

    move-result-object p2

    .end local p2
    :cond_0
    iput-object p2, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    .line 410
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/VoiceEngine;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->shouldReadFromMic:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/glass/voice/VoiceConfig;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-static {p0}, Lcom/google/glass/voice/VoiceEngine;->isNetworkConfig(Lcom/google/glass/voice/VoiceConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/google/glass/voice/VoiceEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->blockingAttachVoiceInputCallback()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/glass/voice/VoiceEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->blockingDetachVoiceInputCallback()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/glass/voice/VoiceEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->blockingEndpointNetworkRecognizer()V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/glass/voice/VoiceEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->initialize()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/CommandRecognizerLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerLoader:Lcom/google/glass/voice/CommandRecognizerLoader;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/glass/voice/VoiceEngine;)Ljava/util/Queue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->missedCommands:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/glass/voice/VoiceEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->blockingSetConfigToTarget()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/MicrophoneInputStream;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/glass/voice/VoiceEngine;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->screenOffReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/voice/VoiceEngine;[BII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/voice/VoiceEngine;->handleAudioData([BII)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/VoiceConfig;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/VoiceServiceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->listener:Lcom/google/glass/voice/VoiceServiceListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/InterleavingInputStream;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->interleaver:Lcom/google/glass/voice/InterleavingInputStream;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/glass/voice/VoiceEngine;Lcom/google/glass/voice/InterleavingInputStream;)Lcom/google/glass/voice/InterleavingInputStream;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine;->interleaver:Lcom/google/glass/voice/InterleavingInputStream;

    return-object p1
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 71
    sget v0, Lcom/google/glass/voice/VoiceEngine;->REFEED_BYTES:I

    return v0
.end method

.method static synthetic access$800(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/util/CircularByteBuffer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->audioRefeedBuffer:Lcom/google/glass/util/CircularByteBuffer;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/HotwordResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->lastHotwordResult:Lcom/google/glass/voice/HotwordResult;

    return-object v0
.end method

.method private assertBackgroundThread()V
    .locals 1

    .prologue
    .line 998
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->backgroundThreadFactory:Lcom/google/glass/util/ThreadCheckThreadFactory;

    invoke-virtual {v0}, Lcom/google/glass/util/ThreadCheckThreadFactory;->assertThread()V

    .line 999
    return-void
.end method

.method private blockingAttachVoiceInputCallback()V
    .locals 3

    .prologue
    .line 936
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->assertBackgroundThread()V

    .line 937
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->pendingVoiceInputCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/network/VoiceInputCallback;

    .line 938
    .local v0, voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    invoke-virtual {v1, v0}, Lcom/google/glass/voice/network/RecognizerController;->attachVoiceInputCallback(Lcom/google/glass/voice/network/VoiceInputCallback;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 941
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->pendingVoiceInputCallback:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 943
    :cond_0
    return-void
.end method

.method private blockingDetachVoiceInputCallback()V
    .locals 2

    .prologue
    .line 947
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->assertBackgroundThread()V

    .line 948
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->pendingVoiceInputCallback:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 949
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/RecognizerController;->detachVoiceInputCallback()V

    .line 950
    return-void
.end method

.method private blockingEndpointNetworkRecognizer()V
    .locals 1

    .prologue
    .line 954
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->assertBackgroundThread()V

    .line 955
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/RecognizerController;->stopListening()V

    .line 956
    return-void
.end method

.method private blockingSetConfigToTarget()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 748
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->assertBackgroundThread()V

    .line 749
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->targetVoiceConfig:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/VoiceConfig;

    .line 750
    .local v1, config:Lcom/google/glass/voice/VoiceConfig;
    invoke-virtual {v1}, Lcom/google/glass/voice/VoiceConfig;->shouldAllowScreenOff()Z

    move-result v0

    .line 751
    .local v0, allowScreenOff:Z
    sget-object v3, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "setConfig called with %s"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v7

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 756
    if-nez v0, :cond_0

    sget-object v3, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v1, v3}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v3}, Lcom/google/glass/util/PowerHelper;->isScreenOn()Z

    move-result v3

    if-nez v3, :cond_0

    .line 757
    sget-object v3, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Attempt to set a VoiceConfig while screen is off - setting to OFF instead."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 758
    sget-object v1, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    .line 761
    :cond_0
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v3, v1}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 762
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerLoader:Lcom/google/glass/voice/CommandRecognizerLoader;

    invoke-virtual {v3}, Lcom/google/glass/voice/CommandRecognizerLoader;->unloadReplacedRecognizers()V

    .line 764
    sget-object v3, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "VoiceConfig changing from %s to %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    aput-object v6, v5, v7

    aput-object v1, v5, v8

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 765
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {p0, v3, v1}, Lcom/google/glass/voice/VoiceEngine;->onConfigChange(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/voice/VoiceConfig;)V

    .line 766
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->listener:Lcom/google/glass/voice/VoiceServiceListener;

    if-eqz v3, :cond_1

    .line 767
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->listener:Lcom/google/glass/voice/VoiceServiceListener;

    invoke-interface {v3, v1}, Lcom/google/glass/voice/VoiceServiceListener;->onVoiceConfigChanged(Lcom/google/glass/voice/VoiceConfig;)V

    .line 769
    :cond_1
    sget-object v3, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v1, v3}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 771
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->stopReadingFromMicrophone()V

    .line 772
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->stopHotwordRecognition()V

    .line 773
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->stopNetworkRecognizer()V

    .line 774
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->stopMicrophone()V

    .line 775
    iput-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    .line 796
    :cond_2
    :goto_0
    return-void

    .line 777
    :cond_3
    invoke-virtual {v1}, Lcom/google/glass/voice/VoiceConfig;->isHotword()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 778
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v3}, Lcom/google/glass/logging/audio/AudioSaver;->isSavingAudio()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, v1}, Lcom/google/glass/voice/VoiceEngine;->shouldSaveAudio(Lcom/google/glass/voice/VoiceConfig;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 781
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->finishSavingAudio()V

    .line 784
    :cond_4
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    invoke-static {v3}, Lcom/google/glass/voice/VoiceEngine;->isNetworkConfig(Lcom/google/glass/voice/VoiceConfig;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 785
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->stopNetworkRecognizer()V

    .line 790
    :cond_5
    :try_start_0
    invoke-direct {p0, v1}, Lcom/google/glass/voice/VoiceEngine;->startVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 791
    :catch_0
    move-exception v2

    .line 792
    .local v2, e:Ljava/io/IOException;
    sget-object v3, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Exception starting microphone for %s"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v7

    invoke-interface {v3, v2, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static final computeSpeakableEntityHashCode(Ljava/util/Collection;)I
    .locals 5
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 291
    .local p0, entities:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 292
    .local v2, idAndDisplayNameSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 293
    .local v0, entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/google/glass/entity/EntityHelper;->getDisplayName(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 295
    .end local v0           #entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->hashCode()I

    move-result v3

    return v3
.end method

.method private final createMicrophoneInputStream()Lcom/google/glass/voice/MicrophoneInputStream;
    .locals 4

    .prologue
    .line 442
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Creating MIS..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 443
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$6;

    new-instance v1, Lcom/google/glass/voice/NativeAudioInterfaceWrapper;

    invoke-direct {v1}, Lcom/google/glass/voice/NativeAudioInterfaceWrapper;-><init>()V

    new-instance v2, Lcom/google/glass/voice/VoiceEngine$DictationModeAmplitudeChangeListener;

    invoke-direct {v2, p0}, Lcom/google/glass/voice/VoiceEngine$DictationModeAmplitudeChangeListener;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    const/16 v3, 0x3e80

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/glass/voice/VoiceEngine$6;-><init>(Lcom/google/glass/voice/VoiceEngine;Lcom/google/glass/voice/NativeAudioInterfaceWrapper;Lcom/google/glass/voice/MicrophoneInputStream$MicrophoneInputStreamListener;I)V

    return-object v0
.end method

.method private createMockMicrophoneInputStream()Lcom/google/glass/voice/MockMicrophoneInputStream;
    .locals 4

    .prologue
    .line 455
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$7;

    new-instance v1, Lcom/google/glass/voice/NativeAudioInterfaceWrapper;

    invoke-direct {v1}, Lcom/google/glass/voice/NativeAudioInterfaceWrapper;-><init>()V

    new-instance v2, Lcom/google/glass/voice/VoiceEngine$DictationModeAmplitudeChangeListener;

    invoke-direct {v2, p0}, Lcom/google/glass/voice/VoiceEngine$DictationModeAmplitudeChangeListener;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    const/16 v3, 0x3e80

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/glass/voice/VoiceEngine$7;-><init>(Lcom/google/glass/voice/VoiceEngine;Lcom/google/glass/voice/NativeAudioInterfaceWrapper;Lcom/google/glass/voice/MicrophoneInputStream$MicrophoneInputStreamListener;I)V

    return-object v0
.end method

.method private final createRecognizerFactory()Lcom/google/glass/voice/RecognizerFactory;
    .locals 2

    .prologue
    .line 514
    new-instance v0, Lcom/google/glass/voice/SensoryRecognizerFactory;

    invoke-direct {v0}, Lcom/google/glass/voice/SensoryRecognizerFactory;-><init>()V

    .line 516
    .local v0, sensoryFactory:Lcom/google/glass/voice/RecognizerFactory;
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isUser()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/google/glass/util/Labs$Feature;->GRC_GRD:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 517
    new-instance v1, Lcom/google/glass/voice/embedded/CombinedRecognizerFactory;

    invoke-direct {v1, v0}, Lcom/google/glass/voice/embedded/CombinedRecognizerFactory;-><init>(Lcom/google/glass/voice/RecognizerFactory;)V

    move-object v0, v1

    .line 524
    .end local v0           #sensoryFactory:Lcom/google/glass/voice/RecognizerFactory;
    :cond_0
    :goto_0
    return-object v0

    .line 520
    .restart local v0       #sensoryFactory:Lcom/google/glass/voice/RecognizerFactory;
    :cond_1
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isUser()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/glass/util/Labs$Feature;->GRC_VC:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    new-instance v0, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;

    .end local v0           #sensoryFactory:Lcom/google/glass/voice/RecognizerFactory;
    invoke-direct {v0}, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;-><init>()V

    goto :goto_0
.end method

.method private doInBackground(Ljava/lang/Runnable;)V
    .locals 3
    .parameter "task"

    .prologue
    .line 471
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 473
    .local v0, exceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;
    sget-object v1, Lcom/google/glass/voice/VoiceEngine;->backgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/google/glass/voice/VoiceEngine$8;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/glass/voice/VoiceEngine$8;-><init>(Lcom/google/glass/voice/VoiceEngine;Ljava/lang/Runnable;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 484
    return-void
.end method

.method private finishSavingAudio()V
    .locals 3

    .prologue
    .line 665
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v0}, Lcom/google/glass/logging/audio/AudioSaver;->finishSavingAudio()V

    .line 666
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceEngine;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine;->savedAudioStorage:Lcom/google/glass/logging/audio/SavedAudioStorage;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/audio/AudioSaver;->registerWithStorage(Landroid/content/Context;Lcom/google/glass/logging/audio/SavedAudioStorage;)V

    .line 667
    return-void
.end method

.method private declared-synchronized getActiveRecognizer()Lcom/google/glass/voice/HotwordRecognizer;
    .locals 1

    .prologue
    .line 991
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->activeRecognizer:Lcom/google/glass/voice/HotwordRecognizer;

    if-nez v0, :cond_0

    .line 992
    sget-object v0, Lcom/google/glass/voice/RecognizerFactory;->NO_OP_RECOGNIZER:Lcom/google/glass/voice/HotwordRecognizer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 994
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->activeRecognizer:Lcom/google/glass/voice/HotwordRecognizer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 991
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final getEndpointerEventPreprocessors()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 528
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/glass/voice/SoundSearchEventPreprocessor;

    invoke-direct {v2, p0}, Lcom/google/glass/voice/SoundSearchEventPreprocessor;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/google/glass/voice/GetDirectionsRefeedingEventPreprocessor;

    invoke-direct {v2, p0}, Lcom/google/glass/voice/GetDirectionsRefeedingEventPreprocessor;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private handleAudioData([BII)V
    .locals 8
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v7, 0x0

    .line 606
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    sget-object v4, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v3, v4}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 657
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 612
    .local v0, audioRecordingBuffer:Ljava/nio/ByteBuffer;
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    invoke-static {v3}, Lcom/google/glass/voice/VoiceEngine;->isNetworkConfig(Lcom/google/glass/voice/VoiceConfig;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 614
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/glass/voice/network/RecognizerController;->writeAudio(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 615
    :catch_0
    move-exception v3

    goto :goto_0

    .line 621
    :cond_2
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->getActiveRecognizer()Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v2

    .line 623
    .local v2, recognizer:Lcom/google/glass/voice/HotwordRecognizer;
    if-nez v2, :cond_3

    .line 624
    sget-object v3, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Ignoring audio due to null recognizer!"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 629
    :cond_3
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v3}, Lcom/google/glass/logging/audio/AudioSaver;->isSavingAudio()Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0xa0

    if-ne p3, v3, :cond_4

    .line 630
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v3, p1, p2, p3}, Lcom/google/glass/logging/audio/AudioSaver;->saveAudio([BII)V

    .line 634
    :cond_4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    invoke-virtual {v4}, Lcom/google/glass/voice/MicrophoneInputStream;->getSampleRate()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {v2, v3, v4, v5}, Lcom/google/glass/voice/HotwordRecognizer;->writeAudio(Ljava/nio/ByteBuffer;J)Lcom/google/glass/voice/HotwordResult;

    move-result-object v1

    .line 637
    .local v1, hotwordResult:Lcom/google/glass/voice/HotwordResult;
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->audioRefeedBuffer:Lcom/google/glass/util/CircularByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/glass/util/CircularByteBuffer;->put(Ljava/nio/ByteBuffer;)Z

    .line 639
    if-eqz v1, :cond_0

    .line 644
    sget-object v3, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Hotword recognizer triggered a recognition result"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 645
    const/4 v3, 0x4

    sget-object v4, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v4}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Recognition result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 647
    invoke-virtual {v1}, Lcom/google/glass/voice/HotwordResult;->getRecognizedCommand()Lcom/google/glass/voice/VoiceCommand;

    move-result-object v3

    if-nez v3, :cond_5

    .line 648
    sget-object v3, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Recognized command was null, not firing a voice command"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 652
    :cond_5
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v3, v1}, Lcom/google/glass/logging/audio/AudioSaver;->onResult(Lcom/google/glass/voice/HotwordResult;)V

    .line 653
    iput-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->lastHotwordResult:Lcom/google/glass/voice/HotwordResult;

    .line 654
    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->audioRefeedBuffer:Lcom/google/glass/util/CircularByteBuffer;

    invoke-static {v1, v3}, Lcom/google/glass/voice/AudioByteUtils;->getLastCommandAudio(Lcom/google/glass/voice/HotwordResult;Lcom/google/glass/util/CircularByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->lastVoiceCommandAudio:Ljava/nio/ByteBuffer;

    .line 655
    invoke-virtual {v1}, Lcom/google/glass/voice/HotwordResult;->getRecognizedCommand()Lcom/google/glass/voice/VoiceCommand;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/glass/voice/VoiceEngine;->publishCommand(Lcom/google/glass/voice/VoiceCommand;)V

    goto/16 :goto_0
.end method

.method private initialize()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 500
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->assertBackgroundThread()V

    .line 501
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Initializing"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 503
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerLoader:Lcom/google/glass/voice/CommandRecognizerLoader;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/glass/voice/VoiceConfig;

    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->GUARD:Lcom/google/glass/voice/VoiceConfig;

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/CommandRecognizerLoader;->load(Ljava/util/Collection;)V

    .line 505
    sget-object v0, Lcom/google/glass/voice/RecognizerFactory;->NO_OP_RECOGNIZER:Lcom/google/glass/voice/HotwordRecognizer;

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->activeRecognizer:Lcom/google/glass/voice/HotwordRecognizer;

    .line 510
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->screenOffReceiver:Lcom/google/glass/voice/VoiceEngine$ScreenOffBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/voice/VoiceEngine$ScreenOffBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 511
    return-void
.end method

.method private static isNetworkConfig(Lcom/google/glass/voice/VoiceConfig;)Z
    .locals 2
    .parameter "config"

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getOpenEndedMode()Lcom/google/glass/voice/OpenEndedMode;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/OpenEndedMode;->NONE:Lcom/google/glass/voice/OpenEndedMode;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onConfigChange(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/voice/VoiceConfig;)V
    .locals 3
    .parameter "from"
    .parameter "to"

    .prologue
    .line 803
    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine;->configChangeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceEngine$ConfigChangeListener;

    .line 804
    .local v0, configChangeListener:Lcom/google/glass/voice/VoiceEngine$ConfigChangeListener;
    invoke-interface {v0, p1, p2}, Lcom/google/glass/voice/VoiceEngine$ConfigChangeListener;->onConfigChange(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/voice/VoiceConfig;)V

    goto :goto_0

    .line 806
    .end local v0           #configChangeListener:Lcom/google/glass/voice/VoiceEngine$ConfigChangeListener;
    :cond_0
    return-void
.end method

.method private queueMissedCommand(Lcom/google/glass/voice/VoiceCommand;)V
    .locals 4
    .parameter "command"

    .prologue
    .line 687
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 688
    const/4 v0, 0x3

    sget-object v1, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v1}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Queueing missed command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 689
    :goto_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->missedCommands:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 690
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->missedCommands:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_0

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->missedCommands:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 693
    return-void
.end method

.method private declared-synchronized setActiveRecognizer(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 4
    .parameter "config"

    .prologue
    .line 969
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->assertBackgroundThread()V

    .line 971
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->activeRecognizer:Lcom/google/glass/voice/HotwordRecognizer;

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->activeRecognizer:Lcom/google/glass/voice/HotwordRecognizer;

    invoke-interface {v0}, Lcom/google/glass/voice/HotwordRecognizer;->deactivate()V

    .line 975
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerLoader:Lcom/google/glass/voice/CommandRecognizerLoader;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/CommandRecognizerLoader;->getRecognizer(Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->activeRecognizer:Lcom/google/glass/voice/HotwordRecognizer;

    .line 976
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Setting active recognizer: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 978
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->activeRecognizer:Lcom/google/glass/voice/HotwordRecognizer;

    if-eqz v0, :cond_1

    .line 979
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->activeRecognizer:Lcom/google/glass/voice/HotwordRecognizer;

    invoke-interface {v0}, Lcom/google/glass/voice/HotwordRecognizer;->activate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 981
    :cond_1
    monitor-exit p0

    return-void

    .line 969
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private shouldSaveAudio(Lcom/google/glass/voice/VoiceConfig;)Z
    .locals 1
    .parameter "config"

    .prologue
    .line 799
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->SAVE_AUDIO:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceConfig;->shouldSaveAudio()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startHotwordRecognition(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 4
    .parameter "config"

    .prologue
    .line 904
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->assertBackgroundThread()V

    .line 905
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Starting voice recognition with config: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 906
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceEngine;->setActiveRecognizer(Lcom/google/glass/voice/VoiceConfig;)V

    .line 907
    return-void
.end method

.method private startMicrophone()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 852
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->assertBackgroundThread()V

    .line 853
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    invoke-virtual {v0}, Lcom/google/glass/voice/MicrophoneInputStream;->isListening()Z

    move-result v0

    if-nez v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/glass/logging/audio/AudioSaver;->prepareToSaveAudio(Ljava/lang/String;)V

    .line 855
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    invoke-virtual {v0}, Lcom/google/glass/voice/MicrophoneInputStream;->startListening()V

    .line 857
    :cond_0
    return-void
.end method

.method private startNetworkRecognizer(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 3
    .parameter "config"

    .prologue
    .line 919
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->assertBackgroundThread()V

    .line 921
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    invoke-virtual {v0, p1, p0}, Lcom/google/glass/voice/network/RecognizerController;->startListening(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;)V

    .line 922
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->pendingVoiceInputCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 926
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->pendingVoiceInputCallback:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/network/VoiceInputCallback;

    invoke-virtual {v1, v0}, Lcom/google/glass/voice/network/RecognizerController;->attachVoiceInputCallback(Lcom/google/glass/voice/network/VoiceInputCallback;)Z

    .line 928
    :cond_0
    return-void
.end method

.method private startReadingFromMicrophone()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 876
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->shouldReadFromMic:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 877
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Starting microphoneRead Runnable to write to handleAudioData"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 878
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->backgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->readFromMicrophone:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 882
    :goto_0
    return-void

    .line 880
    :cond_0
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Attempted to start reading from the microphone but it is already reading"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private startVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 2
    .parameter "config"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 816
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->startMicrophone()V

    .line 819
    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceConfig;->getOpenEndedMode()Lcom/google/glass/voice/OpenEndedMode;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/OpenEndedMode;->NONE:Lcom/google/glass/voice/OpenEndedMode;

    if-eq v0, v1, :cond_0

    .line 820
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceEngine;->startNetworkRecognizer(Lcom/google/glass/voice/VoiceConfig;)V

    .line 825
    :goto_0
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    .line 826
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->startReadingFromMicrophone()V

    .line 827
    return-void

    .line 822
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceEngine;->startHotwordRecognition(Lcom/google/glass/voice/VoiceConfig;)V

    goto :goto_0
.end method

.method private stopHotwordRecognition()V
    .locals 3

    .prologue
    .line 910
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Stopping hotword recognition"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 911
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceEngine;->setActiveRecognizer(Lcom/google/glass/voice/VoiceConfig;)V

    .line 912
    return-void
.end method

.method private stopMicrophone()V
    .locals 1

    .prologue
    .line 864
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->assertBackgroundThread()V

    .line 865
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    invoke-virtual {v0}, Lcom/google/glass/voice/MicrophoneInputStream;->stopListening()V

    .line 866
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v0}, Lcom/google/glass/logging/audio/AudioSaver;->isSavingAudio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 867
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->finishSavingAudio()V

    .line 869
    :cond_0
    return-void
.end method

.method private stopNetworkRecognizer()V
    .locals 1

    .prologue
    .line 963
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->assertBackgroundThread()V

    .line 964
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerController:Lcom/google/glass/voice/network/RecognizerController;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/RecognizerController;->cancel()V

    .line 965
    return-void
.end method

.method private stopReadingFromMicrophone()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 889
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->shouldReadFromMic:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 890
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Stopped reading from microphone."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 891
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v0}, Lcom/google/glass/logging/audio/AudioSaver;->isSavingAudio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 892
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->finishSavingAudio()V

    .line 897
    :cond_0
    :goto_0
    return-void

    .line 895
    :cond_1
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Trying to stop reading from microphone but it is already stopped"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public attachVoiceInputCallback(Lcom/google/glass/voice/network/VoiceInputCallback;)V
    .locals 1
    .parameter "voiceInputCallback"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->pendingVoiceInputCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 331
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$3;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceEngine$3;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceEngine;->doInBackground(Ljava/lang/Runnable;)V

    .line 337
    return-void
.end method

.method cleanupSynchronously()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 538
    sget-object v1, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Destroying VoiceEngine"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 546
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    invoke-virtual {v1}, Lcom/google/glass/voice/MicrophoneInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    :goto_0
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->screenOffReceiver:Lcom/google/glass/voice/VoiceEngine$ScreenOffBroadcastReceiver;

    invoke-virtual {v1, p0}, Lcom/google/glass/voice/VoiceEngine$ScreenOffBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 552
    new-instance v1, Lcom/google/glass/voice/VoiceEngine$10;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/VoiceEngine$10;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    invoke-direct {p0, v1}, Lcom/google/glass/voice/VoiceEngine;->doInBackground(Ljava/lang/Runnable;)V

    .line 559
    invoke-static {}, Lcom/google/glass/voice/network/VoiceSearchContainer;->destroyContainer()V

    .line 561
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->httpRequestDispatcher:Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    if-eqz v1, :cond_0

    .line 562
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->httpRequestDispatcher:Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    invoke-virtual {v1}, Lcom/google/glass/net/AndroidHttpRequestDispatcher;->close()V

    .line 566
    :cond_0
    :try_start_1
    sget-object v1, Lcom/google/glass/voice/VoiceEngine;->backgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 567
    sget-object v1, Lcom/google/glass/voice/VoiceEngine;->backgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 571
    :goto_1
    return-void

    .line 547
    :catch_0
    move-exception v0

    .line 548
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Error closing microphone"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 568
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 569
    .local v0, e:Ljava/lang/InterruptedException;
    sget-object v1, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to shutdown background executor."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public detachVoiceInputCallback()V
    .locals 1

    .prologue
    .line 340
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$4;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceEngine$4;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceEngine;->doInBackground(Ljava/lang/Runnable;)V

    .line 346
    return-void
.end method

.method public dumpState(Ljava/io/PrintWriter;)V
    .locals 8
    .parameter "writer"

    .prologue
    const/4 v7, 0x1

    .line 1013
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Active recognizer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/voice/VoiceEngine;->activeRecognizer:Lcom/google/glass/voice/HotwordRecognizer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1014
    const-string v5, "Config change listeners: "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1015
    iget-object v5, p0, Lcom/google/glass/voice/VoiceEngine;->configChangeListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/voice/VoiceEngine$ConfigChangeListener;

    .line 1016
    .local v3, listener:Lcom/google/glass/voice/VoiceEngine$ConfigChangeListener;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1018
    .end local v3           #listener:Lcom/google/glass/voice/VoiceEngine$ConfigChangeListener;
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1019
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current config: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1020
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Target config: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/voice/VoiceEngine;->targetVoiceConfig:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1022
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Last hotword result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/voice/VoiceEngine;->lastHotwordResult:Lcom/google/glass/voice/HotwordResult;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1023
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1024
    const-string v5, "Receivers: "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1026
    new-array v0, v7, [Lcom/google/glass/util/SafeBroadcastReceiver;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/glass/voice/VoiceEngine;->screenOffReceiver:Lcom/google/glass/voice/VoiceEngine$ScreenOffBroadcastReceiver;

    aput-object v6, v0, v5

    .local v0, arr$:[Lcom/google/glass/util/SafeBroadcastReceiver;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 1027
    .local v4, receiver:Lcom/google/glass/util/SafeBroadcastReceiver;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/glass/util/SafeBroadcastReceiver;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " registered: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/glass/util/SafeBroadcastReceiver;->isRegistered()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; result extras: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v7}, Lcom/google/glass/util/SafeBroadcastReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1026
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1030
    .end local v4           #receiver:Lcom/google/glass/util/SafeBroadcastReceiver;
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1031
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Should read from mic: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/voice/VoiceEngine;->shouldReadFromMic:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1032
    const-string v5, "Recognizer loader:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1033
    iget-object v5, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerLoader:Lcom/google/glass/voice/CommandRecognizerLoader;

    invoke-virtual {v5, p1}, Lcom/google/glass/voice/CommandRecognizerLoader;->dumpState(Ljava/io/PrintWriter;)V

    .line 1034
    return-void
.end method

.method public endpointNetworkRecognizer()V
    .locals 1

    .prologue
    .line 349
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$5;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceEngine$5;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceEngine;->doInBackground(Ljava/lang/Runnable;)V

    .line 355
    return-void
.end method

.method getConfig()Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method

.method getLastHotwordResult()Lcom/google/glass/voice/HotwordResult;
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->lastHotwordResult:Lcom/google/glass/voice/HotwordResult;

    return-object v0
.end method

.method getOpenEndedMode()Lcom/google/glass/voice/OpenEndedMode;
    .locals 1

    .prologue
    .line 835
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceEngine;->getConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceConfig;->getOpenEndedMode()Lcom/google/glass/voice/OpenEndedMode;

    move-result-object v0

    return-object v0
.end method

.method initializeAsynchronously()V
    .locals 3

    .prologue
    .line 487
    sget-object v0, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Creating VoiceEngine!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 491
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$9;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceEngine$9;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceEngine;->doInBackground(Ljava/lang/Runnable;)V

    .line 497
    return-void
.end method

.method isConfigIdentical(Lcom/google/glass/voice/VoiceConfig;)Z
    .locals 1
    .parameter "voiceConfig"

    .prologue
    .line 744
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->targetVoiceConfig:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public loadConfig(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 839
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerLoader:Lcom/google/glass/voice/CommandRecognizerLoader;

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/CommandRecognizerLoader;->loadAsync(Ljava/util/Collection;)V

    .line 840
    return-void
.end method

.method public onResampledAudioData([BII)V
    .locals 5
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 576
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;

    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v1, v2}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    iget-boolean v1, p0, Lcom/google/glass/voice/VoiceEngine;->wantAudioData:Z

    if-eqz v1, :cond_0

    .line 584
    if-lt p3, v4, :cond_0

    .line 588
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->listener:Lcom/google/glass/voice/VoiceServiceListener;

    if-eqz v1, :cond_0

    .line 591
    new-array v0, p3, [B

    .line 592
    .local v0, copy:[B
    invoke-static {p1, p2, v0, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 598
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->handler:Landroid/os/Handler;

    invoke-static {v1, v4, v3, p3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method publishCommand(Lcom/google/glass/voice/VoiceCommand;)V
    .locals 6
    .parameter "command"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 671
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 672
    sget-object v1, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "publishCommand"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 673
    const/4 v1, 0x3

    sget-object v2, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v2}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "publishCommand: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 674
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->listener:Lcom/google/glass/voice/VoiceServiceListener;

    if-eqz v1, :cond_1

    .line 675
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->listener:Lcom/google/glass/voice/VoiceServiceListener;

    invoke-interface {v1, p1}, Lcom/google/glass/voice/VoiceServiceListener;->onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    .line 676
    .local v0, nextConfig:Lcom/google/glass/voice/VoiceConfig;
    if-eqz v0, :cond_0

    .line 677
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceEngine;->setConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 684
    .end local v0           #nextConfig:Lcom/google/glass/voice/VoiceConfig;
    :cond_0
    :goto_0
    return-void

    .line 681
    :cond_1
    sget-object v1, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Voice command triggered while we had no listener; queueing"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 682
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceEngine;->queueMissedCommand(Lcom/google/glass/voice/VoiceCommand;)V

    goto :goto_0
.end method

.method refeedLastCommand()V
    .locals 7

    .prologue
    .line 719
    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine;->lastVoiceCommandAudio:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_0

    .line 720
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No command to refeed."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 723
    :cond_0
    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine;->lastVoiceCommandAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/google/glass/voice/AudioByteUtils;->getMillis(J)J

    move-result-wide v0

    .line 724
    .local v0, refeedMillis:J
    sget-object v2, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "millis in %s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/glass/voice/VoiceEngine;->lastVoiceCommandAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 725
    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine;->interleaver:Lcom/google/glass/voice/InterleavingInputStream;

    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine;->lastVoiceCommandAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Lcom/google/glass/voice/InterleavingInputStream;->interleave(Ljava/nio/ByteBuffer;)V

    .line 726
    return-void
.end method

.method setConfig(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 733
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->targetVoiceConfig:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 734
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$12;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceEngine$12;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceEngine;->doInBackground(Ljava/lang/Runnable;)V

    .line 740
    return-void
.end method

.method setListener(Lcom/google/glass/voice/VoiceServiceListener;)V
    .locals 1
    .parameter "listener"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 697
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine;->listener:Lcom/google/glass/voice/VoiceServiceListener;

    .line 699
    if-eqz p1, :cond_0

    .line 700
    new-instance v0, Lcom/google/glass/voice/VoiceEngine$11;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceEngine$11;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceEngine;->doInBackground(Ljava/lang/Runnable;)V

    .line 716
    :cond_0
    return-void
.end method

.method public setMockAudio([B)V
    .locals 4
    .parameter "mockAudio"

    .prologue
    .line 414
    sget-object v1, Lcom/google/glass/voice/VoiceEngine;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "setMockAudio"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->mockAudio:[B

    if-ne p1, v1, :cond_1

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine;->mockAudio:[B

    .line 420
    if-eqz p1, :cond_3

    .line 421
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    instance-of v1, v1, Lcom/google/glass/voice/MockMicrophoneInputStream;

    if-nez v1, :cond_2

    .line 422
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->createMockMicrophoneInputStream()Lcom/google/glass/voice/MockMicrophoneInputStream;

    move-result-object v0

    .line 423
    .local v0, mockmis:Lcom/google/glass/voice/MockMicrophoneInputStream;
    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    .line 425
    .end local v0           #mockmis:Lcom/google/glass/voice/MockMicrophoneInputStream;
    :cond_2
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    check-cast v1, Lcom/google/glass/voice/MockMicrophoneInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/google/glass/voice/MockMicrophoneInputStream;->feedCannedAudio(Ljava/io/InputStream;)V

    goto :goto_0

    .line 429
    :cond_3
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    instance-of v1, v1, Lcom/google/glass/voice/MockMicrophoneInputStream;

    if-eqz v1, :cond_0

    .line 430
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceEngine;->createMicrophoneInputStream()Lcom/google/glass/voice/MicrophoneInputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;

    goto :goto_0
.end method

.method public setWantAudioData(Z)V
    .locals 0
    .parameter "wantAudioData"

    .prologue
    .line 1006
    iput-boolean p1, p0, Lcom/google/glass/voice/VoiceEngine;->wantAudioData:Z

    .line 1007
    return-void
.end method

.method public unloadConfig(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 843
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine;->recognizerLoader:Lcom/google/glass/voice/CommandRecognizerLoader;

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/CommandRecognizerLoader;->unload(Ljava/util/Collection;)V

    .line 844
    return-void
.end method
