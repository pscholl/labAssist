.class public final Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
.super Lcom/google/protobuf/nano/MessageNano;
.source "GlassExtensionsNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/GlassExtensionsNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlassUserEventProto"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;


# instance fields
.field public eventData:Ljava/lang/String;

.field public eventSerial:J

.field public eventTimeMs:J

.field public eventType:Ljava/lang/String;

.field public performanceStats:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    sput-object v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->EMPTY_ARRAY:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 344
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 347
    iput-wide v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventTimeMs:J

    .line 350
    iput-wide v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSerial:J

    .line 353
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventType:Ljava/lang/String;

    .line 356
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventData:Ljava/lang/String;

    .line 359
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    .line 344
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 487
    new-instance v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    invoke-direct {v0}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 481
    new-instance v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    invoke-direct {v0}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 362
    iput-wide v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventTimeMs:J

    .line 363
    iput-wide v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSerial:J

    .line 364
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventType:Ljava/lang/String;

    .line 365
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventData:Ljava/lang/String;

    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    .line 367
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->cachedSize:I

    .line 368
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 373
    if-ne p1, p0, :cond_1

    .line 376
    :cond_0
    :goto_0
    return v1

    .line 374
    :cond_1
    instance-of v3, p1, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 375
    check-cast v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 376
    .local v0, other:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    iget-wide v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventTimeMs:J

    iget-wide v5, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventTimeMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSerial:J

    iget-wide v5, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSerial:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventType:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventType:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventData:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventData:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_2
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventType:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventData:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventData:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    iget-object v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    invoke-virtual {v3, v4}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 414
    const/4 v0, 0x0

    .line 415
    .local v0, size:I
    iget-wide v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventTimeMs:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_0

    .line 416
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventTimeMs:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 419
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventType:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 420
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventType:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 423
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventData:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 424
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventData:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 427
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    if-eqz v1, :cond_3

    .line 428
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 431
    :cond_3
    iget-wide v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSerial:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_4

    .line 432
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSerial:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 435
    :cond_4
    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->cachedSize:I

    .line 436
    return v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/16 v7, 0x20

    const/4 v2, 0x0

    .line 384
    const/16 v0, 0x11

    .line 385
    .local v0, result:I
    iget-wide v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventTimeMs:J

    iget-wide v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventTimeMs:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/lit16 v0, v1, 0x20f

    .line 386
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSerial:J

    iget-wide v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSerial:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v1, v3

    .line 387
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventType:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v3, v1

    .line 388
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventData:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 389
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    if-nez v3, :cond_2

    :goto_2
    add-int v0, v1, v2

    .line 390
    return v0

    .line 387
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 388
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventData:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 389
    :cond_2
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    invoke-virtual {v2}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->hashCode()I

    move-result v2

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 444
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 445
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 449
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 450
    :sswitch_0
    return-object p0

    .line 455
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventTimeMs:J

    goto :goto_0

    .line 459
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventType:Ljava/lang/String;

    goto :goto_0

    .line 463
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventData:Ljava/lang/String;

    goto :goto_0

    .line 467
    :sswitch_4
    new-instance v1, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    invoke-direct {v1}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;-><init>()V

    iput-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    .line 468
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 472
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSerial:J

    goto :goto_0

    .line 445
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    invoke-virtual {p0, p1}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0x0

    .line 395
    iget-wide v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventTimeMs:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    .line 396
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventTimeMs:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventType:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 399
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventData:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 402
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventData:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 404
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    if-eqz v0, :cond_3

    .line 405
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 407
    :cond_3
    iget-wide v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSerial:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_4

    .line 408
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSerial:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 410
    :cond_4
    return-void
.end method
