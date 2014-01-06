.class public final Lcom/google/googlex/glass/common/proto/SyncNano$Delete;
.super Lcom/google/protobuf/nano/MessageNano;
.source "SyncNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/SyncNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Delete"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;


# instance fields
.field private bitField0_:I

.field private timelineItemId_:Ljava/lang/String;

.field public userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1449
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    sput-object v0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1450
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1455
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->timelineItemId_:Ljava/lang/String;

    .line 1477
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 1450
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$Delete;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1579
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/SyncNano$Delete;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1573
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    return-object v0
.end method


# virtual methods
.method public clearTimelineItemId()Lcom/google/googlex/glass/common/proto/SyncNano$Delete;
    .locals 1

    .prologue
    .line 1471
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->timelineItemId_:Ljava/lang/String;

    .line 1472
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->bitField0_:I

    .line 1473
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1481
    if-ne p1, p0, :cond_1

    .line 1484
    :cond_0
    :goto_0
    return v1

    .line 1482
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1483
    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    .line 1484
    .local v0, other:Lcom/google/googlex/glass/common/proto/SyncNano$Delete;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->timelineItemId_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->timelineItemId_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->timelineItemId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->timelineItemId_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 1514
    const/4 v4, 0x0

    .line 1515
    .local v4, size:I
    iget v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 1516
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->timelineItemId_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1519
    :cond_0
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-eqz v5, :cond_1

    .line 1520
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 1521
    .local v1, element:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    const/4 v5, 0x2

    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1520
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1525
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    iput v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->cachedSize:I

    .line 1526
    return v4
.end method

.method public getTimelineItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1457
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->timelineItemId_:Ljava/lang/String;

    return-object v0
.end method

.method public hasTimelineItemId()Z
    .locals 1

    .prologue
    .line 1468
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->bitField0_:I

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
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1489
    const/16 v1, 0x11

    .line 1490
    .local v1, result:I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->timelineItemId_:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 1491
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-nez v2, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 1497
    :cond_0
    return v1

    .line 1490
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->timelineItemId_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 1493
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1494
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 1493
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1494
    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->hashCode()I

    move-result v2

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$Delete;
    .locals 7
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1534
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 1535
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 1539
    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1540
    :sswitch_0
    return-object p0

    .line 1545
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->timelineItemId_:Ljava/lang/String;

    .line 1546
    iget v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->bitField0_:I

    goto :goto_0

    .line 1550
    :sswitch_2
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1551
    .local v0, arrayLength:I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-nez v5, :cond_2

    move v1, v4

    .line 1552
    .local v1, i:I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 1553
    .local v2, newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-eqz v5, :cond_1

    .line 1554
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1556
    :cond_1
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 1557
    :goto_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 1558
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;-><init>()V

    aput-object v6, v5, v1

    .line 1559
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1560
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1557
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1551
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    :cond_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    array-length v1, v5

    goto :goto_1

    .line 1563
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    :cond_3
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;-><init>()V

    aput-object v6, v5, v1

    .line 1564
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1535
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 1446
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    move-result-object v0

    return-object v0
.end method

.method public setTimelineItemId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/SyncNano$Delete;
    .locals 1
    .parameter "value"

    .prologue
    .line 1460
    if-nez p1, :cond_0

    .line 1461
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1463
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->timelineItemId_:Ljava/lang/String;

    .line 1464
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->bitField0_:I

    .line 1465
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
    .line 1502
    iget v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 1503
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->timelineItemId_:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1505
    :cond_0
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-eqz v4, :cond_1

    .line 1506
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 1507
    .local v1, element:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    const/4 v4, 0x2

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1506
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1510
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    return-void
.end method
