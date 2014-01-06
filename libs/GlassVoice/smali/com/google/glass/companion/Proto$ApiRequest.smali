.class public final Lcom/google/glass/companion/Proto$ApiRequest;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/Proto$ApiRequest$RequestType;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$ApiRequest;


# instance fields
.field public attachmentContent:[[B

.field private bitField0_:I

.field private projectId_:Ljava/lang/String;

.field private timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field private token_:Ljava/lang/String;

.field private type_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4407
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$ApiRequest;

    sput-object v0, Lcom/google/glass/companion/Proto$ApiRequest;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$ApiRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4408
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 4418
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId_:Ljava/lang/String;

    .line 4440
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->token_:Ljava/lang/String;

    .line 4462
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->type_:I

    .line 4500
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES_ARRAY:[[B

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    .line 4408
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4664
    new-instance v0, Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$ApiRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$ApiRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4658
    new-instance v0, Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$ApiRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ApiRequest;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4503
    iput v1, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    .line 4504
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId_:Ljava/lang/String;

    .line 4505
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->token_:Ljava/lang/String;

    .line 4506
    iput v1, p0, Lcom/google/glass/companion/Proto$ApiRequest;->type_:I

    .line 4507
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 4508
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES_ARRAY:[[B

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    .line 4509
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->cachedSize:I

    .line 4510
    return-object p0
.end method

.method public clearProjectId()Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 1

    .prologue
    .line 4434
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId_:Ljava/lang/String;

    .line 4435
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    .line 4436
    return-object p0
.end method

.method public clearTimelineItem()Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 1

    .prologue
    .line 4496
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 4497
    return-object p0
.end method

.method public clearToken()Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 1

    .prologue
    .line 4456
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->token_:Ljava/lang/String;

    .line 4457
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    .line 4458
    return-object p0
.end method

.method public clearType()Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 1

    .prologue
    .line 4475
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->type_:I

    .line 4476
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    .line 4477
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4515
    if-ne p1, p0, :cond_1

    .line 4518
    :cond_0
    :goto_0
    return v1

    .line 4516
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$ApiRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 4517
    check-cast v0, Lcom/google/glass/companion/Proto$ApiRequest;

    .line 4518
    .local v0, other:Lcom/google/glass/companion/Proto$ApiRequest;
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->token_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$ApiRequest;->token_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_2
    iget v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->type_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$ApiRequest;->type_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v3, :cond_3

    :goto_3
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    iget-object v4, v0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->token_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$ApiRequest;->token_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3
.end method

.method public getProjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4420
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    .line 4565
    const/4 v5, 0x0

    .line 4566
    .local v5, size:I
    iget v6, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    .line 4567
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId_:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 4570
    :cond_0
    iget v6, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_1

    .line 4571
    const/4 v6, 0x2

    iget-object v7, p0, Lcom/google/glass/companion/Proto$ApiRequest;->token_:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 4574
    :cond_1
    iget v6, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_2

    .line 4575
    const/4 v6, 0x3

    iget v7, p0, Lcom/google/glass/companion/Proto$ApiRequest;->type_:I

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    .line 4578
    :cond_2
    iget-object v6, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v6, :cond_3

    .line 4579
    const/4 v6, 0x4

    iget-object v7, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 4582
    :cond_3
    iget-object v6, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    array-length v6, v6

    if-lez v6, :cond_5

    .line 4583
    const/4 v1, 0x0

    .line 4584
    .local v1, dataSize:I
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    .local v0, arr$:[[B
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_4

    aget-object v2, v0, v3

    .line 4585
    .local v2, element:[B
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSizeNoTag([B)I

    move-result v6

    add-int/2addr v1, v6

    .line 4584
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4588
    .end local v2           #element:[B
    :cond_4
    add-int/2addr v5, v1

    .line 4589
    iget-object v6, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    .line 4591
    .end local v0           #arr$:[[B
    .end local v1           #dataSize:I
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_5
    iput v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->cachedSize:I

    .line 4592
    return v5
.end method

.method public getTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 4483
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4442
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->token_:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 4464
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->type_:I

    return v0
.end method

.method public hasProjectId()Z
    .locals 1

    .prologue
    .line 4431
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimelineItem()Z
    .locals 1

    .prologue
    .line 4493
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasToken()Z
    .locals 1

    .prologue
    .line 4453
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 4472
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 4526
    const/16 v2, 0x11

    .line 4527
    .local v2, result:I
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId_:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v4

    :goto_0
    add-int/lit16 v2, v3, 0x20f

    .line 4528
    mul-int/lit8 v5, v2, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->token_:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v4

    :goto_1
    add-int v2, v5, v3

    .line 4529
    mul-int/lit8 v3, v2, 0x1f

    iget v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->type_:I

    add-int v2, v3, v5

    .line 4530
    mul-int/lit8 v3, v2, 0x1f

    iget-object v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v5, :cond_3

    :goto_2
    add-int v2, v3, v4

    .line 4531
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    if-nez v3, :cond_4

    mul-int/lit8 v2, v2, 0x1f

    .line 4539
    :cond_0
    return v2

    .line 4527
    :cond_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_0

    .line 4528
    :cond_2
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->token_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1

    .line 4530
    :cond_3
    iget-object v4, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hashCode()I

    move-result v4

    goto :goto_2

    .line 4533
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 4534
    const/4 v1, 0x0

    .local v1, j:I
    :goto_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    aget-object v3, v3, v0

    array-length v3, v3

    if-ge v1, v3, :cond_5

    .line 4535
    mul-int/lit8 v3, v2, 0x1f

    iget-object v4, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    aget-object v4, v4, v0

    aget-byte v4, v4, v1

    add-int v2, v3, v4

    .line 4534
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 4533
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 8
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 4600
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 4601
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 4605
    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4606
    :sswitch_0
    return-object p0

    .line 4611
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId_:Ljava/lang/String;

    .line 4612
    iget v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    goto :goto_0

    .line 4616
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->token_:Ljava/lang/String;

    .line 4617
    iget v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    goto :goto_0

    .line 4621
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 4622
    .local v4, temp:I
    if-eqz v4, :cond_1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 4624
    :cond_1
    iput v4, p0, Lcom/google/glass/companion/Proto$ApiRequest;->type_:I

    .line 4628
    :goto_1
    iget v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    goto :goto_0

    .line 4626
    :cond_2
    iput v7, p0, Lcom/google/glass/companion/Proto$ApiRequest;->type_:I

    goto :goto_1

    .line 4632
    .end local v4           #temp:I
    :sswitch_4
    iget-object v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v5, :cond_3

    .line 4633
    new-instance v5, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 4635
    :cond_3
    iget-object v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 4639
    :sswitch_5
    const/16 v5, 0x2a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4640
    .local v0, arrayLength:I
    iget-object v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    array-length v1, v5

    .line 4641
    .local v1, i:I
    add-int v5, v1, v0

    new-array v2, v5, [[B

    .line 4642
    .local v2, newArray:[[B
    iget-object v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    invoke-static {v5, v7, v2, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4643
    iput-object v2, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    .line 4644
    :goto_2
    iget-object v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_4

    .line 4645
    iget-object v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v6

    aput-object v6, v5, v1

    .line 4646
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4644
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4649
    :cond_4
    iget-object v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v6

    aput-object v6, v5, v1

    goto :goto_0

    .line 4601
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
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
    .line 4404
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$ApiRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public setProjectId(Ljava/lang/String;)Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 4423
    if-nez p1, :cond_0

    .line 4424
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4426
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId_:Ljava/lang/String;

    .line 4427
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    .line 4428
    return-object p0
.end method

.method public setTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 4486
    if-nez p1, :cond_0

    .line 4487
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4489
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 4490
    return-object p0
.end method

.method public setToken(Ljava/lang/String;)Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 4445
    if-nez p1, :cond_0

    .line 4446
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4448
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiRequest;->token_:Ljava/lang/String;

    .line 4449
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    .line 4450
    return-object p0
.end method

.method public setType(I)Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 4467
    iput p1, p0, Lcom/google/glass/companion/Proto$ApiRequest;->type_:I

    .line 4468
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    .line 4469
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4544
    iget v4, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 4545
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId_:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4547
    :cond_0
    iget v4, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 4548
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->token_:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4550
    :cond_1
    iget v4, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    .line 4551
    const/4 v4, 0x3

    iget v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->type_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4553
    :cond_2
    iget-object v4, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v4, :cond_3

    .line 4554
    const/4 v4, 0x4

    iget-object v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 4556
    :cond_3
    iget-object v4, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    if-eqz v4, :cond_4

    .line 4557
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    .local v0, arr$:[[B
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    .line 4558
    .local v1, element:[B
    const/4 v4, 0x5

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 4557
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4561
    .end local v0           #arr$:[[B
    .end local v1           #element:[B
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_4
    return-void
.end method
