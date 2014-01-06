.class public Lcom/google/glass/voice/MicrophoneInputStream;
.super Ljava/io/InputStream;
.source "MicrophoneInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/MicrophoneInputStream$1;,
        Lcom/google/glass/voice/MicrophoneInputStream$MicrophoneInputStreamListener;,
        Lcom/google/glass/voice/MicrophoneInputStream$NativeAudioInputStream;
    }
.end annotation


# static fields
.field public static final MAX_AMPLITUDE:D = 32767.0

.field private static final MICROSECONDS_BETWEEN_AMPLITUDE:J = 0xc350L

.field public static final MICROSECONDS_PER_SAMPLE_16_KHZ:F = 62.5f

.field public static final MICROSECONDS_PER_SAMPLE_8_KHZ:F = 125.0f

.field static final READ_BUFFER_BYTES_PER_READ:I = 0x2c0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final READ_BUFFER_LENGTH_SECONDS:I = 0x4

.field public static final SAMPLE_RATE_16000_HZ:I = 0x3e80

.field public static final SAMPLE_RATE_8000_HZ:I = 0x1f40

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final audioInterface:Lcom/google/glass/voice/ConcurrentAudioInterface;

.field private delegateStream:Ljava/io/InputStream;

.field private final listener:Lcom/google/glass/voice/MicrophoneInputStream$MicrophoneInputStreamListener;

.field protected listening:Z

.field private final microsecondsPerSample:F

.field private microsecondsSinceLastAmplitude:J

.field private final sampleRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/MicrophoneInputStream;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/voice/NativeAudioInterfaceWrapper;Lcom/google/glass/voice/MicrophoneInputStream$MicrophoneInputStreamListener;I)V
    .locals 2
    .parameter "nativeAudioInterface"
    .parameter "listener"
    .parameter "sampleRate"

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 68
    const-wide/32 v0, 0xc350

    iput-wide v0, p0, Lcom/google/glass/voice/MicrophoneInputStream;->microsecondsSinceLastAmplitude:J

    .line 132
    iput-object p2, p0, Lcom/google/glass/voice/MicrophoneInputStream;->listener:Lcom/google/glass/voice/MicrophoneInputStream$MicrophoneInputStreamListener;

    .line 133
    iput p3, p0, Lcom/google/glass/voice/MicrophoneInputStream;->sampleRate:I

    .line 134
    new-instance v0, Lcom/google/glass/voice/ConcurrentAudioInterface;

    invoke-direct {v0, p1}, Lcom/google/glass/voice/ConcurrentAudioInterface;-><init>(Lcom/google/glass/voice/NativeAudioInterfaceWrapper;)V

    iput-object v0, p0, Lcom/google/glass/voice/MicrophoneInputStream;->audioInterface:Lcom/google/glass/voice/ConcurrentAudioInterface;

    .line 135
    invoke-static {p3}, Lcom/google/glass/voice/MicrophoneInputStream;->determineMicrosecondsPerSample(I)F

    move-result v0

    iput v0, p0, Lcom/google/glass/voice/MicrophoneInputStream;->microsecondsPerSample:F

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/MicrophoneInputStream;)Lcom/google/glass/voice/ConcurrentAudioInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneInputStream;->audioInterface:Lcom/google/glass/voice/ConcurrentAudioInterface;

    return-object v0
.end method

.method private calculateAmplitude([BII)D
    .locals 8
    .parameter "b"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 143
    const-wide/16 v0, 0x0

    .line 144
    .local v0, amplitude:D
    move v2, p2

    .local v2, i:I
    :goto_0
    add-int v4, p2, p3

    add-int/lit8 v4, v4, -0x2

    if-ge v2, v4, :cond_0

    .line 145
    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x8

    aget-byte v5, p1, v2

    and-int v3, v4, v5

    .line 146
    .local v3, value:I
    mul-int v4, v3, v3

    int-to-double v4, v4

    add-double/2addr v0, v4

    .line 144
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 148
    .end local v3           #value:I
    :cond_0
    div-int/lit8 v4, p3, 0x2

    int-to-double v4, v4

    div-double v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide v6, 0x40dfffc000000000L

    div-double v0, v4, v6

    .line 149
    return-wide v0
.end method

.method public static determineMicrosecondsPerSample(I)F
    .locals 3
    .parameter "sampleRate"

    .prologue
    .line 121
    const/16 v0, 0x3e80

    if-ne p0, v0, :cond_0

    .line 122
    const/high16 v0, 0x427a

    .line 124
    :goto_0
    return v0

    .line 123
    :cond_0
    const/16 v0, 0x1f40

    if-ne p0, v0, :cond_1

    .line 124
    const/high16 v0, 0x42fa

    goto :goto_0

    .line 126
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected sample rate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected createInputStream()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 200
    new-instance v0, Lcom/google/glass/voice/BufferingStreamRecorder;

    new-instance v1, Lcom/google/glass/voice/MicrophoneInputStream$NativeAudioInputStream;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/glass/voice/MicrophoneInputStream$NativeAudioInputStream;-><init>(Lcom/google/glass/voice/MicrophoneInputStream;Lcom/google/glass/voice/MicrophoneInputStream$1;)V

    iget v2, p0, Lcom/google/glass/voice/MicrophoneInputStream;->sampleRate:I

    mul-int/lit8 v2, v2, 0x4

    const/16 v3, 0x2c0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/voice/BufferingStreamRecorder;-><init>(Ljava/io/InputStream;II)V

    .line 203
    .local v0, bufferingRecorder:Lcom/google/glass/voice/BufferingStreamRecorder;
    invoke-virtual {v0}, Lcom/google/glass/voice/BufferingStreamRecorder;->startRecording()V

    .line 204
    return-object v0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/google/glass/voice/MicrophoneInputStream;->sampleRate:I

    return v0
.end method

.method public declared-synchronized isListening()Z
    .locals 1

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/voice/MicrophoneInputStream;->listening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onRawBytesRead([BII)V
    .locals 6
    .parameter "b"
    .parameter "offset"
    .parameter "readByteCount"

    .prologue
    .line 163
    div-int/lit8 v2, p3, 0x2

    int-to-long v2, v2

    iget v4, p0, Lcom/google/glass/voice/MicrophoneInputStream;->microsecondsPerSample:F

    float-to-long v4, v4

    mul-long v0, v2, v4

    .line 166
    .local v0, microsecondsForRead:J
    iget-wide v2, p0, Lcom/google/glass/voice/MicrophoneInputStream;->microsecondsSinceLastAmplitude:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/glass/voice/MicrophoneInputStream;->microsecondsSinceLastAmplitude:J

    .line 167
    iget-wide v2, p0, Lcom/google/glass/voice/MicrophoneInputStream;->microsecondsSinceLastAmplitude:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 168
    iget-object v2, p0, Lcom/google/glass/voice/MicrophoneInputStream;->listener:Lcom/google/glass/voice/MicrophoneInputStream$MicrophoneInputStreamListener;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/voice/MicrophoneInputStream;->calculateAmplitude([BII)D

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lcom/google/glass/voice/MicrophoneInputStream$MicrophoneInputStreamListener;->onAmplitudeChanged(D)V

    .line 169
    const-wide/32 v2, 0xc350

    iput-wide v2, p0, Lcom/google/glass/voice/MicrophoneInputStream;->microsecondsSinceLastAmplitude:J

    .line 171
    :cond_0
    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 4
    .parameter "b"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/glass/voice/MicrophoneInputStream;->listening:Z

    if-eqz v1, :cond_1

    .line 176
    iget-object v1, p0, Lcom/google/glass/voice/MicrophoneInputStream;->delegateStream:Ljava/io/InputStream;

    iget v2, p0, Lcom/google/glass/voice/MicrophoneInputStream;->sampleRate:I

    div-int/lit8 v2, v2, 0xa

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 178
    .local v0, readReturn:I
    if-lez v0, :cond_0

    .line 179
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/glass/voice/MicrophoneInputStream;->onRawBytesRead([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    .end local v0           #readReturn:I
    :goto_0
    monitor-exit p0

    return v0

    .line 183
    .restart local v0       #readReturn:I
    :cond_0
    :try_start_1
    sget-object v1, Lcom/google/glass/voice/MicrophoneInputStream;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Error reading from delegate input stream. Stopped listening."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    invoke-virtual {p0}, Lcom/google/glass/voice/MicrophoneInputStream;->stopListening()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    .end local v0           #readReturn:I
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 175
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized startListening()V
    .locals 5

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/voice/MicrophoneInputStream;->isListening()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    sget-object v0, Lcom/google/glass/voice/MicrophoneInputStream;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "MicrophoneInputStream is already listening."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :goto_0
    monitor-exit p0

    return-void

    .line 213
    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/glass/voice/MicrophoneInputStream;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Starting listening on MicrophoneInputStream with sample rate %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/glass/voice/MicrophoneInputStream;->sampleRate:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneInputStream;->audioInterface:Lcom/google/glass/voice/ConcurrentAudioInterface;

    invoke-virtual {v0}, Lcom/google/glass/voice/ConcurrentAudioInterface;->open()V

    .line 215
    invoke-virtual {p0}, Lcom/google/glass/voice/MicrophoneInputStream;->createInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/MicrophoneInputStream;->delegateStream:Ljava/io/InputStream;

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/MicrophoneInputStream;->listening:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopListening()V
    .locals 6

    .prologue
    .line 220
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/voice/MicrophoneInputStream;->isListening()Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    sget-object v1, Lcom/google/glass/voice/MicrophoneInputStream;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "MicrophoneInputStream has already stopped listening."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    :goto_0
    monitor-exit p0

    return-void

    .line 225
    :cond_0
    :try_start_1
    sget-object v1, Lcom/google/glass/voice/MicrophoneInputStream;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Stopping listening: %s , listener: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/google/glass/voice/MicrophoneInputStream;->listening:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/glass/voice/MicrophoneInputStream;->listener:Lcom/google/glass/voice/MicrophoneInputStream$MicrophoneInputStreamListener;

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    :try_start_2
    iget-object v1, p0, Lcom/google/glass/voice/MicrophoneInputStream;->delegateStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 232
    :goto_1
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/google/glass/voice/MicrophoneInputStream;->delegateStream:Ljava/io/InputStream;

    .line 233
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/glass/voice/MicrophoneInputStream;->listening:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 220
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, e:Ljava/io/IOException;
    :try_start_4
    sget-object v1, Lcom/google/glass/voice/MicrophoneInputStream;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "IOException while closing buffering recorder."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method
