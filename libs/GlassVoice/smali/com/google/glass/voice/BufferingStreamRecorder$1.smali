.class final Lcom/google/glass/voice/BufferingStreamRecorder$1;
.super Ljava/lang/Object;
.source "BufferingStreamRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/BufferingStreamRecorder;->createRecordThreadRunnable(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/io/InputStream;Ljava/lang/Object;Lcom/google/glass/util/CircularByteBuffer;I)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final buffer:[B

.field private overflowLogged:Z

.field private final recordThreadLogger:Lcom/google/glass/logging/FormattingLogger;

.field final synthetic val$bytesPerRead:I

.field final synthetic val$circularBuffer:Lcom/google/glass/util/CircularByteBuffer;

.field final synthetic val$isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$readMonitor:Ljava/lang/Object;

.field final synthetic val$recordExecutor:Ljava/util/concurrent/ExecutorService;

.field final synthetic val$underlyingStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(ILjava/util/concurrent/atomic/AtomicBoolean;Ljava/io/InputStream;Lcom/google/glass/util/CircularByteBuffer;Ljava/util/concurrent/ExecutorService;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    iput p1, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->val$bytesPerRead:I

    iput-object p2, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->val$isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->val$underlyingStream:Ljava/io/InputStream;

    iput-object p4, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->val$circularBuffer:Lcom/google/glass/util/CircularByteBuffer;

    iput-object p5, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->val$recordExecutor:Ljava/util/concurrent/ExecutorService;

    iput-object p6, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->val$readMonitor:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {}, Lcom/google/glass/voice/BufferingStreamRecorder;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "recordThread"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->recordThreadLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 59
    iget v0, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->val$bytesPerRead:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->buffer:[B

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->overflowLogged:Z

    return-void
.end method

.method private notifyReadMonitor()V
    .locals 2

    .prologue
    .line 105
    iget-object v1, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->val$readMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->val$readMonitor:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 107
    monitor-exit v1

    .line 108
    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 71
    iget-object v2, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->val$isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 73
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->val$underlyingStream:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->buffer:[B

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 75
    .local v1, read:I
    if-gtz v1, :cond_0

    .line 76
    iget-object v2, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->recordThreadLogger:Lcom/google/glass/logging/FormattingLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping recording because read returned: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    iget-object v2, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->val$isRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    invoke-direct {p0}, Lcom/google/glass/voice/BufferingStreamRecorder$1;->notifyReadMonitor()V

    .line 102
    .end local v1           #read:I
    :goto_0
    return-void

    .line 82
    .restart local v1       #read:I
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->val$circularBuffer:Lcom/google/glass/util/CircularByteBuffer;

    iget-object v3, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->buffer:[B

    const/4 v4, 0x0

    invoke-static {v3, v4, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/util/CircularByteBuffer;->put(Ljava/nio/ByteBuffer;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    iget-boolean v2, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->overflowLogged:Z

    if-nez v2, :cond_1

    .line 84
    iget-object v2, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->recordThreadLogger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Buffer overflow!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->overflowLogged:Z

    .line 92
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->val$recordExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    invoke-direct {p0}, Lcom/google/glass/voice/BufferingStreamRecorder$1;->notifyReadMonitor()V

    goto :goto_0

    .line 88
    :cond_2
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->overflowLogged:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 93
    .end local v1           #read:I
    :catch_0
    move-exception v0

    .line 94
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    iget-object v2, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->recordThreadLogger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "IOException from underlying stream."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 96
    invoke-direct {p0}, Lcom/google/glass/voice/BufferingStreamRecorder$1;->notifyReadMonitor()V

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-direct {p0}, Lcom/google/glass/voice/BufferingStreamRecorder$1;->notifyReadMonitor()V

    throw v2

    .line 99
    :cond_3
    iget-object v2, p0, Lcom/google/glass/voice/BufferingStreamRecorder$1;->recordThreadLogger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Stopped recording"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    invoke-direct {p0}, Lcom/google/glass/voice/BufferingStreamRecorder$1;->notifyReadMonitor()V

    goto :goto_0
.end method
