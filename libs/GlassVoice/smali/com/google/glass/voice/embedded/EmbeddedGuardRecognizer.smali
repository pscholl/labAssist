.class public Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;
.super Ljava/lang/Object;
.source "EmbeddedGuardRecognizer.java"

# interfaces
.implements Lcom/google/glass/voice/HotwordRecognizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer$GlassGuardRecognizer;
    }
.end annotation


# static fields
.field private static final GRECO_DIR:Ljava/io/File; = null

#the value of this static final field might be set in the static constructor
.field private static final PIPE_SIZE_BYTES:I = 0x0

.field private static final RECOGNIZER_CONFIG:Ljava/lang/String; = "deep_guard.ascii_config"

.field private static final SAMPLE_RATE:I = 0x3e80

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private audioBuffer:Lcom/google/glass/util/BytePipe;

.field private audioLengthMillis:J

.field private hotwordAlignmentOffsetMillis:J

.field private lastVoiceCommand:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

.field private recognizer:Lcom/google/speech/recognizer/Recognizer;

.field private recognizerThread:Ljava/lang/Thread;

.field private resourceManager:Lcom/google/glass/voice/embedded/GlassResourceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 47
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/usr/srec/en-US/voice/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->GRECO_DIR:Ljava/io/File;

    .line 56
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Lcom/google/glass/voice/AudioByteUtils;->getByteLength(J)I

    move-result v0

    sput v0, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->PIPE_SIZE_BYTES:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object v0, p0, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->lastVoiceCommand:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    .line 78
    iput-object v0, p0, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->resourceManager:Lcom/google/glass/voice/embedded/GlassResourceManager;

    .line 81
    new-instance v0, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer$GlassGuardRecognizer;

    invoke-direct {v0}, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer$GlassGuardRecognizer;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->recognizer:Lcom/google/speech/recognizer/Recognizer;

    .line 84
    invoke-direct {p0}, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->reinitialize()V

    .line 85
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->lastVoiceCommand:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;)Lcom/google/speech/recognizer/Recognizer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->recognizer:Lcom/google/speech/recognizer/Recognizer;

    return-object v0
.end method

.method private createRecognizerCallback()Lcom/google/speech/recognizer/RecognizerCallback;
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer$1;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer$1;-><init>(Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;)V

    return-object v0
.end method

.method public static getConfigBytes(Ljava/lang/String;)[B
    .locals 6
    .parameter "configPath"

    .prologue
    const/4 v5, 0x0

    .line 152
    :try_start_0
    sget-object v2, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading config: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/common/io/Files;->toByteArray(Ljava/io/File;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    .line 155
    :catch_0
    move-exception v1

    .line 156
    .local v1, e:Ljava/io/IOException;
    sget-object v2, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private varargs getPath([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "pathComponents"

    .prologue
    .line 169
    sget-object v2, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->GRECO_DIR:Ljava/io/File;

    .line 170
    .local v2, file:Ljava/io/File;
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move-object v3, v2

    .end local v2           #file:Ljava/io/File;
    .local v3, file:Ljava/io/File;
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .line 171
    .local v1, component:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 170
    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    move-object v3, v2

    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    goto :goto_0

    .line 173
    .end local v1           #component:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private getSearchPath()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 165
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->GRECO_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method private reinitialize()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 91
    new-instance v1, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer$GlassGuardRecognizer;

    invoke-direct {v1}, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer$GlassGuardRecognizer;-><init>()V

    .line 93
    .local v1, guardRecognizer:Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer$GlassGuardRecognizer;
    new-instance v4, Lcom/google/glass/voice/embedded/GlassResourceManager;

    invoke-direct {v4}, Lcom/google/glass/voice/embedded/GlassResourceManager;-><init>()V

    iput-object v4, p0, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->resourceManager:Lcom/google/glass/voice/embedded/GlassResourceManager;

    .line 94
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "deep_guard.ascii_config"

    aput-object v5, v4, v7

    invoke-direct {p0, v4}, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->getPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->getConfigBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 95
    .local v0, configBytes:[B
    if-nez v0, :cond_0

    .line 96
    sget-object v4, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "The recognizer controller could not be created."

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v4, p0, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->resourceManager:Lcom/google/glass/voice/embedded/GlassResourceManager;

    invoke-direct {p0}, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->getSearchPath()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/google/glass/voice/embedded/GlassResourceManager;->initFromProto([B[Ljava/lang/String;)I

    move-result v3

    .line 101
    .local v3, resourceManagerStatus:I
    if-eqz v3, :cond_1

    .line 102
    sget-object v4, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resourceManager.initFromProto error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "deep_guard.ascii_config"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 107
    :cond_1
    iget-object v4, p0, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->resourceManager:Lcom/google/glass/voice/embedded/GlassResourceManager;

    invoke-virtual {v1, v0, v4}, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer$GlassGuardRecognizer;->initFromProto([BLcom/google/speech/recognizer/ResourceManager;)I

    move-result v2

    .line 108
    .local v2, recognizerStatus:I
    if-eqz v2, :cond_2

    .line 109
    sget-object v4, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recognizer.initFromProto error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "deep_guard.ascii_config"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 113
    :cond_2
    iput-object v1, p0, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->recognizer:Lcom/google/speech/recognizer/Recognizer;

    .line 114
    iget-object v4, p0, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->recognizer:Lcom/google/speech/recognizer/Recognizer;

    invoke-direct {p0}, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->createRecognizerCallback()Lcom/google/speech/recognizer/RecognizerCallback;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/speech/recognizer/Recognizer;->addCallback(Lcom/google/speech/recognizer/RecognizerCallback;)I

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized activate()V
    .locals 4

    .prologue
    .line 210
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->recognizerThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 211
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Starting recognition that is already running."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 214
    :cond_0
    const-wide/16 v1, 0x0

    :try_start_1
    iput-wide v1, p0, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->audioLengthMillis:J

    .line 215
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->hotwordAlignmentOffsetMillis:J

    .line 217
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;-><init>()V

    .line 218
    .local v0, sessionParams:Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->setEnablePartialResults(Z)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    .line 219
    const/high16 v1, 0x467a

    invoke-virtual {v0, v1}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->setSampleRate(F)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    .line 221
    new-instance v1, Lcom/google/glass/util/BytePipe;

    sget v2, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->PIPE_SIZE_BYTES:I

    invoke-direct {v1, v2}, Lcom/google/glass/util/BytePipe;-><init>(I)V

    iput-object v1, p0, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->audioBuffer:Lcom/google/glass/util/BytePipe;

    .line 222
    iget-object v1, p0, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->recognizer:Lcom/google/speech/recognizer/Recognizer;

    iget-object v2, p0, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->audioBuffer:Lcom/google/glass/util/BytePipe;

    invoke-interface {v1, v2}, Lcom/google/speech/recognizer/Recognizer;->setAudioReader(Ljava/io/InputStream;)I

    .line 224
    sget-object v1, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Creating recognition thread"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    new-instance v1, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer$2;

    const-string v2, "RecognizerThread"

    invoke-direct {v1, p0, v2, v0}, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer$2;-><init>(Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;Ljava/lang/String;Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;)V

    iput-object v1, p0, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->recognizerThread:Ljava/lang/Thread;

    .line 236
    iget-object v1, p0, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->recognizerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized deactivate()V
    .locals 5

    .prologue
    .line 241
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->recognizerThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 243
    :try_start_1
    iget-object v2, p0, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->audioBuffer:Lcom/google/glass/util/BytePipe;

    invoke-virtual {v2}, Lcom/google/glass/util/BytePipe;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 248
    :goto_0
    :try_start_2
    sget-object v2, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cancelling Recognition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    iget-object v2, p0, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->recognizer:Lcom/google/speech/recognizer/Recognizer;

    invoke-interface {v2}, Lcom/google/speech/recognizer/Recognizer;->cancel()I

    move-result v0

    .line 250
    .local v0, cancelStatus:I
    if-eqz v0, :cond_0

    .line 251
    sget-object v2, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelRecognition error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 255
    :cond_0
    :try_start_3
    sget-object v2, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Joining recognition thread"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    iget-object v2, p0, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->recognizerThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V

    .line 257
    sget-object v2, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Joined"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 262
    :goto_1
    const/4 v2, 0x0

    :try_start_4
    iput-object v2, p0, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->recognizerThread:Ljava/lang/Thread;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 264
    .end local v0           #cancelStatus:I
    :cond_1
    monitor-exit p0

    return-void

    .line 244
    :catch_0
    move-exception v1

    .line 245
    .local v1, e:Ljava/io/IOException;
    :try_start_5
    sget-object v2, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Error closing audio buffer."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 241
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 258
    .restart local v0       #cancelStatus:I
    :catch_1
    move-exception v1

    .line 259
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_6
    sget-object v2, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Error joining recognizerThread"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public getAlignmentInfos(Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .parameter "result"
    .parameter "hotword"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/AlignmentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getStartTimeUsec()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getHotwordStartTimeUsec()J

    move-result-wide v12

    add-long/2addr v5, v12

    const-wide/16 v12, 0x3e8

    div-long v9, v5, v12

    .line 280
    .local v9, hotwordStartAbsolute:J
    iget-wide v7, p0, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->audioLengthMillis:J

    .line 282
    .local v7, hotwordEndAbsolute:J
    iget-wide v5, p0, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->hotwordAlignmentOffsetMillis:J

    sub-long v1, v9, v5

    .line 283
    .local v1, relativeStart:J
    iget-wide v5, p0, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->hotwordAlignmentOffsetMillis:J

    sub-long v3, v7, v5

    .line 285
    .local v3, relativeEnd:J
    new-instance v0, Lcom/google/glass/voice/AlignmentInfo;

    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getHotwordConfidence()F

    move-result v6

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/voice/AlignmentInfo;-><init>(JJLjava/lang/String;F)V

    .line 287
    .local v0, info:Lcom/google/glass/voice/AlignmentInfo;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v11, infos:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/AlignmentInfo;>;"
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    return-object v11
.end method

.method public stringToCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;
    .locals 1
    .parameter "str"

    .prologue
    .line 298
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->OK_GLASS:Lcom/google/glass/voice/VoiceCommand;

    return-object v0
.end method

.method public declared-synchronized writeAudio(Ljava/nio/ByteBuffer;J)Lcom/google/glass/voice/HotwordResult;
    .locals 10
    .parameter "audio"
    .parameter "sampleRate"

    .prologue
    const/4 v5, 0x0

    .line 178
    monitor-enter p0

    const-wide/16 v6, 0x3e80

    cmp-long v6, p2, v6

    if-eqz v6, :cond_0

    .line 179
    :try_start_0
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string v6, "Must have sample rate of 16000"

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 182
    :cond_0
    :try_start_1
    iget-wide v6, p0, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->audioLengthMillis:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    int-to-long v8, v8

    invoke-static {v8, v9}, Lcom/google/glass/voice/AudioByteUtils;->getMillis(J)J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->audioLengthMillis:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    :try_start_2
    iget-object v6, p0, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->audioBuffer:Lcom/google/glass/util/BytePipe;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/glass/util/BytePipe;->write(Ljava/nio/ByteBuffer;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 189
    :goto_0
    :try_start_3
    iget-object v6, p0, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->lastVoiceCommand:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    if-eqz v6, :cond_1

    .line 190
    iget-object v6, p0, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->lastVoiceCommand:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getPart(I)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->getText()Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, hotword:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->stringToCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    .line 192
    .local v0, command:Lcom/google/glass/voice/VoiceCommand;
    iget-object v6, p0, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->lastVoiceCommand:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    invoke-virtual {p0, v6, v3}, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->getAlignmentInfos(Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 193
    .local v4, infos:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/AlignmentInfo;>;"
    iget-object v6, p0, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->lastVoiceCommand:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    invoke-virtual {v6}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getHotwordConfidence()F

    move-result v1

    .line 194
    .local v1, confidence:F
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->lastVoiceCommand:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    .line 195
    if-eqz v0, :cond_1

    .line 196
    new-instance v5, Lcom/google/glass/voice/HotwordResult;

    invoke-direct {v5, v0, v1, v4}, Lcom/google/glass/voice/HotwordResult;-><init>(Lcom/google/glass/voice/VoiceCommand;FLjava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 200
    .end local v0           #command:Lcom/google/glass/voice/VoiceCommand;
    .end local v1           #confidence:F
    .end local v3           #hotword:Ljava/lang/String;
    .end local v4           #infos:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/AlignmentInfo;>;"
    :cond_1
    monitor-exit p0

    return-object v5

    .line 185
    :catch_0
    move-exception v2

    .line 186
    .local v2, e:Ljava/io/IOException;
    :try_start_4
    sget-object v6, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Error piping audio."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method
