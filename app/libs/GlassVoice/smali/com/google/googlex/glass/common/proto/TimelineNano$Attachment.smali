.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
.super Lcom/google/protobuf/nano/MessageNano;
.source "TimelineNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Attachment"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;


# instance fields
.field private bitField0_:I

.field private clientCachePath_:Ljava/lang/String;

.field private contentType_:Ljava/lang/String;

.field private contentUrl_:Ljava/lang/String;

.field private creationTime_:J

.field private id_:Ljava/lang/String;

.field private isProcessingContent_:Z

.field private source_:Ljava/lang/String;

.field private thumbnailUrl_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2291
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 2292
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 2297
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->id_:Ljava/lang/String;

    .line 2319
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentType_:Ljava/lang/String;

    .line 2341
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentUrl_:Ljava/lang/String;

    .line 2363
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->thumbnailUrl_:Ljava/lang/String;

    .line 2385
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->clientCachePath_:Ljava/lang/String;

    .line 2407
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->creationTime_:J

    .line 2426
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->isProcessingContent_:Z

    .line 2445
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->source_:Ljava/lang/String;

    .line 2292
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2642
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2636
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2467
    iput v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    .line 2468
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->id_:Ljava/lang/String;

    .line 2469
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentType_:Ljava/lang/String;

    .line 2470
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentUrl_:Ljava/lang/String;

    .line 2471
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->thumbnailUrl_:Ljava/lang/String;

    .line 2472
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->clientCachePath_:Ljava/lang/String;

    .line 2473
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->creationTime_:J

    .line 2474
    iput-boolean v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->isProcessingContent_:Z

    .line 2475
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->source_:Ljava/lang/String;

    .line 2476
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->cachedSize:I

    .line 2477
    return-object p0
.end method

.method public clearClientCachePath()Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 1

    .prologue
    .line 2401
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->clientCachePath_:Ljava/lang/String;

    .line 2402
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    .line 2403
    return-object p0
.end method

.method public clearContentType()Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 1

    .prologue
    .line 2335
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentType_:Ljava/lang/String;

    .line 2336
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    .line 2337
    return-object p0
.end method

.method public clearContentUrl()Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 1

    .prologue
    .line 2357
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentUrl_:Ljava/lang/String;

    .line 2358
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    .line 2359
    return-object p0
.end method

.method public clearCreationTime()Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 2

    .prologue
    .line 2420
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->creationTime_:J

    .line 2421
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    .line 2422
    return-object p0
.end method

.method public clearId()Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 1

    .prologue
    .line 2313
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->id_:Ljava/lang/String;

    .line 2314
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    .line 2315
    return-object p0
.end method

.method public clearIsProcessingContent()Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 1

    .prologue
    .line 2439
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->isProcessingContent_:Z

    .line 2440
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    .line 2441
    return-object p0
.end method

.method public clearSource()Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 1

    .prologue
    .line 2461
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->source_:Ljava/lang/String;

    .line 2462
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    .line 2463
    return-object p0
.end method

.method public clearThumbnailUrl()Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 1

    .prologue
    .line 2379
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->thumbnailUrl_:Ljava/lang/String;

    .line 2380
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    .line 2381
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2482
    if-ne p1, p0, :cond_1

    .line 2485
    :cond_0
    :goto_0
    return v1

    .line 2483
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 2484
    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 2485
    .local v0, other:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->id_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->id_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentType_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentType_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentUrl_:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentUrl_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->thumbnailUrl_:Ljava/lang/String;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->thumbnailUrl_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->clientCachePath_:Ljava/lang/String;

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->clientCachePath_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_5
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->creationTime_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->creationTime_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->isProcessingContent_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->isProcessingContent_:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->source_:Ljava/lang/String;

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->source_:Ljava/lang/String;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->id_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->id_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentType_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentType_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentUrl_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentUrl_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->thumbnailUrl_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->thumbnailUrl_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->clientCachePath_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->clientCachePath_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_5

    :cond_9
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->source_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->source_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_0
.end method

.method public getClientCachePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2387
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->clientCachePath_:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2321
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentType_:Ljava/lang/String;

    return-object v0
.end method

.method public getContentUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2343
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getCreationTime()J
    .locals 2

    .prologue
    .line 2409
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->creationTime_:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2299
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsProcessingContent()Z
    .locals 1

    .prologue
    .line 2428
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->isProcessingContent_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 2538
    const/4 v0, 0x0

    .line 2539
    .local v0, size:I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2540
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->id_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2543
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 2544
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentType_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2547
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 2548
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentUrl_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2551
    :cond_2
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 2552
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->thumbnailUrl_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2555
    :cond_3
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 2556
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->clientCachePath_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2559
    :cond_4
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 2560
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->creationTime_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2563
    :cond_5
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 2564
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->isProcessingContent_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2567
    :cond_6
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 2568
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->source_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2571
    :cond_7
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->cachedSize:I

    .line 2572
    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2447
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->source_:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2365
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->thumbnailUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public hasClientCachePath()Z
    .locals 1

    .prologue
    .line 2398
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasContentType()Z
    .locals 1

    .prologue
    .line 2332
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasContentUrl()Z
    .locals 1

    .prologue
    .line 2354
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCreationTime()Z
    .locals 1

    .prologue
    .line 2417
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 2310
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsProcessingContent()Z
    .locals 1

    .prologue
    .line 2436
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSource()Z
    .locals 1

    .prologue
    .line 2458
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasThumbnailUrl()Z
    .locals 1

    .prologue
    .line 2376
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 2496
    const/16 v0, 0x11

    .line 2497
    .local v0, result:I
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->id_:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 2498
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentType_:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 2499
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentUrl_:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    add-int v0, v3, v1

    .line 2500
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->thumbnailUrl_:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    :goto_3
    add-int v0, v3, v1

    .line 2501
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->clientCachePath_:Ljava/lang/String;

    if-nez v1, :cond_4

    move v1, v2

    :goto_4
    add-int v0, v3, v1

    .line 2502
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->creationTime_:J

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->creationTime_:J

    const/16 v7, 0x20

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v1, v3

    .line 2503
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->isProcessingContent_:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    :goto_5
    add-int v0, v3, v1

    .line 2504
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->source_:Ljava/lang/String;

    if-nez v3, :cond_6

    :goto_6
    add-int v0, v1, v2

    .line 2505
    return v0

    .line 2497
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->id_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 2498
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentType_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 2499
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentUrl_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    .line 2500
    :cond_3
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->thumbnailUrl_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    .line 2501
    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->clientCachePath_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    .line 2503
    :cond_5
    const/4 v1, 0x2

    goto :goto_5

    .line 2504
    :cond_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->source_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2580
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2581
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2585
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2586
    :sswitch_0
    return-object p0

    .line 2591
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->id_:Ljava/lang/String;

    .line 2592
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    goto :goto_0

    .line 2596
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentType_:Ljava/lang/String;

    .line 2597
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    goto :goto_0

    .line 2601
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentUrl_:Ljava/lang/String;

    .line 2602
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    goto :goto_0

    .line 2606
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->thumbnailUrl_:Ljava/lang/String;

    .line 2607
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    goto :goto_0

    .line 2611
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->clientCachePath_:Ljava/lang/String;

    .line 2612
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    goto :goto_0

    .line 2616
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->creationTime_:J

    .line 2617
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    goto :goto_0

    .line 2621
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->isProcessingContent_:Z

    .line 2622
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    goto :goto_0

    .line 2626
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->source_:Ljava/lang/String;

    .line 2627
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    goto :goto_0

    .line 2581
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
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
    .line 2288
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    move-result-object v0

    return-object v0
.end method

.method public setClientCachePath(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 1
    .parameter "value"

    .prologue
    .line 2390
    if-nez p1, :cond_0

    .line 2391
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2393
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->clientCachePath_:Ljava/lang/String;

    .line 2394
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    .line 2395
    return-object p0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 1
    .parameter "value"

    .prologue
    .line 2324
    if-nez p1, :cond_0

    .line 2325
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2327
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentType_:Ljava/lang/String;

    .line 2328
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    .line 2329
    return-object p0
.end method

.method public setContentUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 1
    .parameter "value"

    .prologue
    .line 2346
    if-nez p1, :cond_0

    .line 2347
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2349
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentUrl_:Ljava/lang/String;

    .line 2350
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    .line 2351
    return-object p0
.end method

.method public setCreationTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 1
    .parameter "value"

    .prologue
    .line 2412
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->creationTime_:J

    .line 2413
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    .line 2414
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 1
    .parameter "value"

    .prologue
    .line 2302
    if-nez p1, :cond_0

    .line 2303
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2305
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->id_:Ljava/lang/String;

    .line 2306
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    .line 2307
    return-object p0
.end method

.method public setIsProcessingContent(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 1
    .parameter "value"

    .prologue
    .line 2431
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->isProcessingContent_:Z

    .line 2432
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    .line 2433
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 1
    .parameter "value"

    .prologue
    .line 2450
    if-nez p1, :cond_0

    .line 2451
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2453
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->source_:Ljava/lang/String;

    .line 2454
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    .line 2455
    return-object p0
.end method

.method public setThumbnailUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 1
    .parameter "value"

    .prologue
    .line 2368
    if-nez p1, :cond_0

    .line 2369
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2371
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->thumbnailUrl_:Ljava/lang/String;

    .line 2372
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    .line 2373
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2510
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2511
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->id_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2513
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 2514
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentType_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2516
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 2517
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentUrl_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2519
    :cond_2
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 2520
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->thumbnailUrl_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2522
    :cond_3
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 2523
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->clientCachePath_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2525
    :cond_4
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 2526
    const/4 v0, 0x6

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->creationTime_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 2528
    :cond_5
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 2529
    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->isProcessingContent_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2531
    :cond_6
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 2532
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->source_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2534
    :cond_7
    return-void
.end method
