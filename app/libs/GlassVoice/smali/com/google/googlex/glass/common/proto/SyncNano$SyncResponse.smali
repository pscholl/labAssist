.class public final Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;
.super Lcom/google/protobuf/nano/MessageNano;
.source "SyncNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/SyncNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse$ResponseCode;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;


# instance fields
.field private bitField0_:I

.field public deleteFailedItemIds:[Ljava/lang/String;

.field public insertFailedItemIds:[Ljava/lang/String;

.field public responseCode:I

.field private selectContinuationToken_:[B

.field private selectMaxWriteTimestamp_:J

.field private selectStartTime_:J

.field public selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field private syncContinuationToken_:[B

.field private syncEndTime_:J

.field private syncStartTime_:J

.field public updateFailedItemIds:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;

    sput-object v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 235
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 244
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->responseCode:I

    .line 247
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 250
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    .line 253
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    .line 256
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    .line 259
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncStartTime_:J

    .line 278
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncEndTime_:J

    .line 297
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncContinuationToken_:[B

    .line 319
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectStartTime_:J

    .line 338
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectContinuationToken_:[B

    .line 360
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectMaxWriteTimestamp_:J

    .line 235
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 677
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 671
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;

    return-object v0
.end method


# virtual methods
.method public clearSelectContinuationToken()Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;
    .locals 1

    .prologue
    .line 354
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectContinuationToken_:[B

    .line 355
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    .line 356
    return-object p0
.end method

.method public clearSelectMaxWriteTimestamp()Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;
    .locals 2

    .prologue
    .line 373
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectMaxWriteTimestamp_:J

    .line 374
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    .line 375
    return-object p0
.end method

.method public clearSelectStartTime()Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;
    .locals 2

    .prologue
    .line 332
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectStartTime_:J

    .line 333
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    .line 334
    return-object p0
.end method

.method public clearSyncContinuationToken()Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;
    .locals 1

    .prologue
    .line 313
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncContinuationToken_:[B

    .line 314
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    .line 315
    return-object p0
.end method

.method public clearSyncEndTime()Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;
    .locals 2

    .prologue
    .line 291
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncEndTime_:J

    .line 292
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    .line 293
    return-object p0
.end method

.method public clearSyncStartTime()Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;
    .locals 2

    .prologue
    .line 272
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncStartTime_:J

    .line 273
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    .line 274
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 380
    if-ne p1, p0, :cond_1

    .line 383
    :cond_0
    :goto_0
    return v1

    .line 381
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 382
    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;

    .line 383
    .local v0, other:Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->responseCode:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->responseCode:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncStartTime_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncStartTime_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncEndTime_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncEndTime_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncContinuationToken_:[B

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncContinuationToken_:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectStartTime_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectStartTime_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectContinuationToken_:[B

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectContinuationToken_:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectMaxWriteTimestamp_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectMaxWriteTimestamp_:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getSelectContinuationToken()[B
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectContinuationToken_:[B

    return-object v0
.end method

.method public getSelectMaxWriteTimestamp()J
    .locals 2

    .prologue
    .line 362
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectMaxWriteTimestamp_:J

    return-wide v0
.end method

.method public getSelectStartTime()J
    .locals 2

    .prologue
    .line 321
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectStartTime_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 9

    .prologue
    .line 487
    const/4 v5, 0x0

    .line 488
    .local v5, size:I
    const/4 v6, 0x1

    iget v7, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->responseCode:I

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    .line 490
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v6, :cond_0

    .line 491
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 492
    .local v2, element:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    const/4 v6, 0x2

    invoke-static {v6, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 491
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 496
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v2           #element:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_2

    .line 497
    const/4 v1, 0x0

    .line 498
    .local v1, dataSize:I
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 499
    .local v2, element:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v1, v6

    .line 498
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 502
    .end local v2           #element:Ljava/lang/String;
    :cond_1
    add-int/2addr v5, v1

    .line 503
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    .line 505
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #dataSize:I
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_4

    .line 506
    const/4 v1, 0x0

    .line 507
    .restart local v1       #dataSize:I
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_2
    if-ge v3, v4, :cond_3

    aget-object v2, v0, v3

    .line 508
    .restart local v2       #element:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v1, v6

    .line 507
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 511
    .end local v2           #element:Ljava/lang/String;
    :cond_3
    add-int/2addr v5, v1

    .line 512
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    .line 514
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #dataSize:I
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_4
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_6

    .line 515
    const/4 v1, 0x0

    .line 516
    .restart local v1       #dataSize:I
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_3
    if-ge v3, v4, :cond_5

    aget-object v2, v0, v3

    .line 517
    .restart local v2       #element:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v1, v6

    .line 516
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 520
    .end local v2           #element:Ljava/lang/String;
    :cond_5
    add-int/2addr v5, v1

    .line 521
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    .line 523
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #dataSize:I
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_6
    iget v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_7

    .line 524
    const/4 v6, 0x6

    iget-wide v7, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncStartTime_:J

    invoke-static {v6, v7, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v6

    add-int/2addr v5, v6

    .line 527
    :cond_7
    iget v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_8

    .line 528
    const/4 v6, 0x7

    iget-wide v7, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncEndTime_:J

    invoke-static {v6, v7, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v6

    add-int/2addr v5, v6

    .line 531
    :cond_8
    iget v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_9

    .line 532
    const/16 v6, 0x8

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncContinuationToken_:[B

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v6

    add-int/2addr v5, v6

    .line 535
    :cond_9
    iget v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_a

    .line 536
    const/16 v6, 0x9

    iget-wide v7, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectStartTime_:J

    invoke-static {v6, v7, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v6

    add-int/2addr v5, v6

    .line 539
    :cond_a
    iget v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_b

    .line 540
    const/16 v6, 0xa

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectContinuationToken_:[B

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v6

    add-int/2addr v5, v6

    .line 543
    :cond_b
    iget v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_c

    .line 544
    const/16 v6, 0xb

    iget-wide v7, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectMaxWriteTimestamp_:J

    invoke-static {v6, v7, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v6

    add-int/2addr v5, v6

    .line 547
    :cond_c
    iput v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->cachedSize:I

    .line 548
    return v5
.end method

.method public getSyncContinuationToken()[B
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncContinuationToken_:[B

    return-object v0
.end method

.method public getSyncEndTime()J
    .locals 2

    .prologue
    .line 280
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncEndTime_:J

    return-wide v0
.end method

.method public getSyncStartTime()J
    .locals 2

    .prologue
    .line 261
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncStartTime_:J

    return-wide v0
.end method

.method public hasSelectContinuationToken()Z
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSelectMaxWriteTimestamp()Z
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSelectStartTime()Z
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSyncContinuationToken()Z
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSyncEndTime()Z
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSyncStartTime()Z
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

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
    const/16 v7, 0x20

    const/4 v3, 0x0

    .line 397
    const/16 v1, 0x11

    .line 398
    .local v1, result:I
    iget v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->responseCode:I

    add-int/lit16 v1, v2, 0x20f

    .line 399
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v2, :cond_6

    mul-int/lit8 v1, v1, 0x1f

    .line 405
    :cond_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    if-nez v2, :cond_8

    mul-int/lit8 v1, v1, 0x1f

    .line 411
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    if-nez v2, :cond_a

    mul-int/lit8 v1, v1, 0x1f

    .line 417
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    if-nez v2, :cond_c

    mul-int/lit8 v1, v1, 0x1f

    .line 423
    :cond_3
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncStartTime_:J

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncStartTime_:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 424
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncEndTime_:J

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncEndTime_:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 425
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncContinuationToken_:[B

    if-nez v2, :cond_e

    mul-int/lit8 v1, v1, 0x1f

    .line 431
    :cond_4
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectStartTime_:J

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectStartTime_:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 432
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectContinuationToken_:[B

    if-nez v2, :cond_f

    mul-int/lit8 v1, v1, 0x1f

    .line 438
    :cond_5
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectMaxWriteTimestamp_:J

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectMaxWriteTimestamp_:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 439
    return v1

    .line 401
    :cond_6
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 402
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    aget-object v2, v2, v0

    if-nez v2, :cond_7

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 401
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 402
    :cond_7
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hashCode()I

    move-result v2

    goto :goto_1

    .line 407
    .end local v0           #i:I
    :cond_8
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 408
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_9

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 407
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 408
    :cond_9
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 413
    .end local v0           #i:I
    :cond_a
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 414
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_b

    move v2, v3

    :goto_5
    add-int v1, v4, v2

    .line 413
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 414
    :cond_b
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    .line 419
    .end local v0           #i:I
    :cond_c
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 420
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_d

    move v2, v3

    :goto_7
    add-int v1, v4, v2

    .line 419
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 420
    :cond_d
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_7

    .line 427
    .end local v0           #i:I
    :cond_e
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_8
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncContinuationToken_:[B

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 428
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncContinuationToken_:[B

    aget-byte v3, v3, v0

    add-int v1, v2, v3

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 434
    .end local v0           #i:I
    :cond_f
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_9
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectContinuationToken_:[B

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 435
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectContinuationToken_:[B

    aget-byte v3, v3, v0

    add-int v1, v2, v3

    .line 434
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;
    .locals 8
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 556
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 557
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 561
    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 562
    :sswitch_0
    return-object p0

    .line 567
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 568
    .local v4, temp:I
    if-nez v4, :cond_1

    .line 569
    iput v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->responseCode:I

    goto :goto_0

    .line 571
    :cond_1
    iput v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->responseCode:I

    goto :goto_0

    .line 576
    .end local v4           #temp:I
    :sswitch_2
    const/16 v6, 0x12

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 577
    .local v0, arrayLength:I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v6, :cond_3

    move v1, v5

    .line 578
    .local v1, i:I
    :goto_1
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 579
    .local v2, newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v6, :cond_2

    .line 580
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 582
    :cond_2
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 583
    :goto_2
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_4

    .line 584
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    aput-object v7, v6, v1

    .line 585
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 586
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 583
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 577
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_3
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    array-length v1, v6

    goto :goto_1

    .line 589
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_4
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    aput-object v7, v6, v1

    .line 590
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 594
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :sswitch_3
    const/16 v6, 0x1a

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 595
    .restart local v0       #arrayLength:I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    array-length v1, v6

    .line 596
    .restart local v1       #i:I
    add-int v6, v1, v0

    new-array v2, v6, [Ljava/lang/String;

    .line 597
    .local v2, newArray:[Ljava/lang/String;
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 598
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    .line 599
    :goto_3
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_5

    .line 600
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 601
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 599
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 604
    :cond_5
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    goto/16 :goto_0

    .line 608
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Ljava/lang/String;
    :sswitch_4
    const/16 v6, 0x22

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 609
    .restart local v0       #arrayLength:I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    array-length v1, v6

    .line 610
    .restart local v1       #i:I
    add-int v6, v1, v0

    new-array v2, v6, [Ljava/lang/String;

    .line 611
    .restart local v2       #newArray:[Ljava/lang/String;
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 612
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    .line 613
    :goto_4
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_6

    .line 614
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 615
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 613
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 618
    :cond_6
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    goto/16 :goto_0

    .line 622
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Ljava/lang/String;
    :sswitch_5
    const/16 v6, 0x2a

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 623
    .restart local v0       #arrayLength:I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    array-length v1, v6

    .line 624
    .restart local v1       #i:I
    add-int v6, v1, v0

    new-array v2, v6, [Ljava/lang/String;

    .line 625
    .restart local v2       #newArray:[Ljava/lang/String;
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 626
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    .line 627
    :goto_5
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_7

    .line 628
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 629
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 627
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 632
    :cond_7
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    goto/16 :goto_0

    .line 636
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Ljava/lang/String;
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncStartTime_:J

    .line 637
    iget v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    goto/16 :goto_0

    .line 641
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncEndTime_:J

    .line 642
    iget v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    goto/16 :goto_0

    .line 646
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncContinuationToken_:[B

    .line 647
    iget v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    goto/16 :goto_0

    .line 651
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectStartTime_:J

    .line 652
    iget v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    goto/16 :goto_0

    .line 656
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectContinuationToken_:[B

    .line 657
    iget v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    goto/16 :goto_0

    .line 661
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectMaxWriteTimestamp_:J

    .line 662
    iget v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    goto/16 :goto_0

    .line 557
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
        0x58 -> :sswitch_b
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
    .line 231
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;

    move-result-object v0

    return-object v0
.end method

.method public setSelectContinuationToken([B)Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 343
    if-nez p1, :cond_0

    .line 344
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 346
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectContinuationToken_:[B

    .line 347
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    .line 348
    return-object p0
.end method

.method public setSelectMaxWriteTimestamp(J)Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 365
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectMaxWriteTimestamp_:J

    .line 366
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    .line 367
    return-object p0
.end method

.method public setSelectStartTime(J)Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 324
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectStartTime_:J

    .line 325
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    .line 326
    return-object p0
.end method

.method public setSyncContinuationToken([B)Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 302
    if-nez p1, :cond_0

    .line 303
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 305
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncContinuationToken_:[B

    .line 306
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    .line 307
    return-object p0
.end method

.method public setSyncEndTime(J)Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 283
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncEndTime_:J

    .line 284
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    .line 285
    return-object p0
.end method

.method public setSyncStartTime(J)Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 264
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncStartTime_:J

    .line 265
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    .line 266
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 444
    const/4 v4, 0x1

    iget v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->responseCode:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 445
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v4, :cond_0

    .line 446
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 447
    .local v1, element:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    const/4 v4, 0x2

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 446
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 450
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 451
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 452
    .local v1, element:Ljava/lang/String;
    const/4 v4, 0x3

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 451
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 455
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #element:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 456
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_2
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 457
    .restart local v1       #element:Ljava/lang/String;
    const/4 v4, 0x4

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 456
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 460
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #element:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_2
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 461
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_3
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 462
    .restart local v1       #element:Ljava/lang/String;
    const/4 v4, 0x5

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 461
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 465
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #element:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_3
    iget v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    .line 466
    const/4 v4, 0x6

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncStartTime_:J

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 468
    :cond_4
    iget v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    .line 469
    const/4 v4, 0x7

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncEndTime_:J

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 471
    :cond_5
    iget v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_6

    .line 472
    const/16 v4, 0x8

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncContinuationToken_:[B

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 474
    :cond_6
    iget v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_7

    .line 475
    const/16 v4, 0x9

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectStartTime_:J

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 477
    :cond_7
    iget v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_8

    .line 478
    const/16 v4, 0xa

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectContinuationToken_:[B

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 480
    :cond_8
    iget v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_9

    .line 481
    const/16 v4, 0xb

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectMaxWriteTimestamp_:J

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 483
    :cond_9
    return-void
.end method
