.class public final Lcom/google/glass/companion/Proto$MotionEvent;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MotionEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;,
        Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$MotionEvent;


# instance fields
.field private action_:I

.field private bitField0_:I

.field private buttonState_:I

.field private deviceId_:I

.field private downTime_:J

.field private edgeFlags_:I

.field private eventTime_:J

.field private flags_:I

.field private metaState_:I

.field public pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

.field private pointerCount_:I

.field public pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

.field private source_:I

.field private xPrecision_:F

.field private yPrecision_:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 997
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$MotionEvent;

    sput-object v0, Lcom/google/glass/companion/Proto$MotionEvent;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$MotionEvent;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 998
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1515
    iput-wide v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime_:J

    .line 1534
    iput-wide v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime_:J

    .line 1553
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->action_:I

    .line 1572
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount_:I

    .line 1591
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    .line 1594
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    .line 1597
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState_:I

    .line 1616
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState_:I

    .line 1635
    iput v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision_:F

    .line 1654
    iput v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision_:F

    .line 1673
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId_:I

    .line 1692
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags_:I

    .line 1711
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->source_:I

    .line 1730
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->flags_:I

    .line 998
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2058
    new-instance v0, Lcom/google/glass/companion/Proto$MotionEvent;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$MotionEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$MotionEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2052
    new-instance v0, Lcom/google/glass/companion/Proto$MotionEvent;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$MotionEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1749
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 1750
    iput-wide v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime_:J

    .line 1751
    iput-wide v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime_:J

    .line 1752
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->action_:I

    .line 1753
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount_:I

    .line 1754
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    .line 1755
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    .line 1756
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState_:I

    .line 1757
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState_:I

    .line 1758
    iput v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision_:F

    .line 1759
    iput v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision_:F

    .line 1760
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId_:I

    .line 1761
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags_:I

    .line 1762
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->source_:I

    .line 1763
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->flags_:I

    .line 1764
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->cachedSize:I

    .line 1765
    return-object p0
.end method

.method public clearAction()Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1

    .prologue
    .line 1566
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->action_:I

    .line 1567
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 1568
    return-object p0
.end method

.method public clearButtonState()Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1

    .prologue
    .line 1629
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState_:I

    .line 1630
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 1631
    return-object p0
.end method

.method public clearDeviceId()Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1

    .prologue
    .line 1686
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId_:I

    .line 1687
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 1688
    return-object p0
.end method

.method public clearDownTime()Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 2

    .prologue
    .line 1528
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime_:J

    .line 1529
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 1530
    return-object p0
.end method

.method public clearEdgeFlags()Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1

    .prologue
    .line 1705
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags_:I

    .line 1706
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 1707
    return-object p0
.end method

.method public clearEventTime()Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 2

    .prologue
    .line 1547
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime_:J

    .line 1548
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 1549
    return-object p0
.end method

.method public clearFlags()Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1

    .prologue
    .line 1743
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->flags_:I

    .line 1744
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 1745
    return-object p0
.end method

.method public clearMetaState()Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1

    .prologue
    .line 1610
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState_:I

    .line 1611
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 1612
    return-object p0
.end method

.method public clearPointerCount()Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1

    .prologue
    .line 1585
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount_:I

    .line 1586
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 1587
    return-object p0
.end method

.method public clearSource()Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1

    .prologue
    .line 1724
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->source_:I

    .line 1725
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 1726
    return-object p0
.end method

.method public clearXPrecision()Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1

    .prologue
    .line 1648
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision_:F

    .line 1649
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 1650
    return-object p0
.end method

.method public clearYPrecision()Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1

    .prologue
    .line 1667
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision_:F

    .line 1668
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 1669
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1770
    if-ne p1, p0, :cond_1

    .line 1773
    :cond_0
    :goto_0
    return v1

    .line 1771
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$MotionEvent;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1772
    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent;

    .line 1773
    .local v0, other:Lcom/google/glass/companion/Proto$MotionEvent;
    iget-wide v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime_:J

    iget-wide v5, v0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime_:J

    iget-wide v5, v0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->action_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$MotionEvent;->action_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision_:F

    iget v4, v0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision_:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision_:F

    iget v4, v0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision_:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->source_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$MotionEvent;->source_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->flags_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$MotionEvent;->flags_:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getAction()I
    .locals 1

    .prologue
    .line 1555
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->action_:I

    return v0
.end method

.method public getButtonState()I
    .locals 1

    .prologue
    .line 1618
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState_:I

    return v0
.end method

.method public getDeviceId()I
    .locals 1

    .prologue
    .line 1675
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId_:I

    return v0
.end method

.method public getDownTime()J
    .locals 2

    .prologue
    .line 1517
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime_:J

    return-wide v0
.end method

.method public getEdgeFlags()I
    .locals 1

    .prologue
    .line 1694
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags_:I

    return v0
.end method

.method public getEventTime()J
    .locals 2

    .prologue
    .line 1536
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime_:J

    return-wide v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 1732
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->flags_:I

    return v0
.end method

.method public getMetaState()I
    .locals 1

    .prologue
    .line 1599
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState_:I

    return v0
.end method

.method public getPointerCount()I
    .locals 1

    .prologue
    .line 1574
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    .line 1870
    const/4 v4, 0x0

    .line 1871
    .local v4, size:I
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 1872
    const/4 v5, 0x1

    iget-wide v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime_:J

    invoke-static {v5, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    .line 1875
    :cond_0
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 1876
    const/4 v5, 0x2

    iget-wide v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime_:J

    invoke-static {v5, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    .line 1879
    :cond_1
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2

    .line 1880
    const/4 v5, 0x3

    iget v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->action_:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 1883
    :cond_2
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_3

    .line 1884
    const/4 v5, 0x4

    iget v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount_:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 1887
    :cond_3
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    if-eqz v5, :cond_4

    .line 1888
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    .local v0, arr$:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    .line 1889
    .local v1, element:Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    const/4 v5, 0x5

    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1888
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1893
    .end local v0           #arr$:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    .end local v1           #element:Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_4
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    if-eqz v5, :cond_5

    .line 1894
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    .local v0, arr$:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v3, :cond_5

    aget-object v1, v0, v2

    .line 1895
    .local v1, element:Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    const/4 v5, 0x6

    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1894
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1899
    .end local v0           #arr$:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .end local v1           #element:Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_5
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_6

    .line 1900
    const/4 v5, 0x7

    iget v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState_:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 1903
    :cond_6
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_7

    .line 1904
    const/16 v5, 0x8

    iget v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState_:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 1907
    :cond_7
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_8

    .line 1908
    const/16 v5, 0x9

    iget v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision_:F

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v5

    add-int/2addr v4, v5

    .line 1911
    :cond_8
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_9

    .line 1912
    const/16 v5, 0xa

    iget v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision_:F

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v5

    add-int/2addr v4, v5

    .line 1915
    :cond_9
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_a

    .line 1916
    const/16 v5, 0xb

    iget v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId_:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 1919
    :cond_a
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v5, v5, 0x200

    if-eqz v5, :cond_b

    .line 1920
    const/16 v5, 0xc

    iget v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags_:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 1923
    :cond_b
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_c

    .line 1924
    const/16 v5, 0xd

    iget v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->source_:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 1927
    :cond_c
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v5, v5, 0x800

    if-eqz v5, :cond_d

    .line 1928
    const/16 v5, 0xe

    iget v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->flags_:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 1931
    :cond_d
    iput v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->cachedSize:I

    .line 1932
    return v4
.end method

.method public getSource()I
    .locals 1

    .prologue
    .line 1713
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->source_:I

    return v0
.end method

.method public getXPrecision()F
    .locals 1

    .prologue
    .line 1637
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision_:F

    return v0
.end method

.method public getYPrecision()F
    .locals 1

    .prologue
    .line 1656
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision_:F

    return v0
.end method

.method public hasAction()Z
    .locals 1

    .prologue
    .line 1563
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasButtonState()Z
    .locals 1

    .prologue
    .line 1626
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeviceId()Z
    .locals 1

    .prologue
    .line 1683
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDownTime()Z
    .locals 1

    .prologue
    .line 1525
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEdgeFlags()Z
    .locals 1

    .prologue
    .line 1702
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEventTime()Z
    .locals 1

    .prologue
    .line 1544
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFlags()Z
    .locals 1

    .prologue
    .line 1740
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMetaState()Z
    .locals 1

    .prologue
    .line 1607
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPointerCount()Z
    .locals 1

    .prologue
    .line 1582
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

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
    .line 1721
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasXPrecision()Z
    .locals 1

    .prologue
    .line 1645
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasYPrecision()Z
    .locals 1

    .prologue
    .line 1664
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/4 v3, 0x0

    .line 1790
    const/16 v1, 0x11

    .line 1791
    .local v1, result:I
    iget-wide v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime_:J

    iget-wide v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime_:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v2, v4

    add-int/lit16 v1, v2, 0x20f

    .line 1792
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime_:J

    iget-wide v6, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime_:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 1793
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->action_:I

    add-int v1, v2, v4

    .line 1794
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount_:I

    add-int v1, v2, v4

    .line 1795
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    if-nez v2, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 1801
    :cond_0
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    if-nez v2, :cond_4

    mul-int/lit8 v1, v1, 0x1f

    .line 1807
    :cond_1
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState_:I

    add-int v1, v2, v3

    .line 1808
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState_:I

    add-int v1, v2, v3

    .line 1809
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision_:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int v1, v2, v3

    .line 1810
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision_:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int v1, v2, v3

    .line 1811
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId_:I

    add-int v1, v2, v3

    .line 1812
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags_:I

    add-int v1, v2, v3

    .line 1813
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->source_:I

    add-int v1, v2, v3

    .line 1814
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent;->flags_:I

    add-int v1, v2, v3

    .line 1815
    return v1

    .line 1797
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1798
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 1797
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1798
    :cond_3
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->hashCode()I

    move-result v2

    goto :goto_1

    .line 1803
    .end local v0           #i:I
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1804
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    aget-object v2, v2, v0

    if-nez v2, :cond_5

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 1803
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1804
    :cond_5
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->hashCode()I

    move-result v2

    goto :goto_3
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 7
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1940
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 1941
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 1945
    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1946
    :sswitch_0
    return-object p0

    .line 1951
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime_:J

    .line 1952
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    goto :goto_0

    .line 1956
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime_:J

    .line 1957
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    goto :goto_0

    .line 1961
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->action_:I

    .line 1962
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    goto :goto_0

    .line 1966
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount_:I

    .line 1967
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    goto :goto_0

    .line 1971
    :sswitch_5
    const/16 v5, 0x2a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1972
    .local v0, arrayLength:I
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    if-nez v5, :cond_2

    move v1, v4

    .line 1973
    .local v1, i:I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    .line 1974
    .local v2, newArray:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    if-eqz v5, :cond_1

    .line 1975
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1977
    :cond_1
    iput-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    .line 1978
    :goto_2
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 1979
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    new-instance v6, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    invoke-direct {v6}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;-><init>()V

    aput-object v6, v5, v1

    .line 1980
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1981
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1978
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1972
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    :cond_2
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    array-length v1, v5

    goto :goto_1

    .line 1984
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    :cond_3
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    new-instance v6, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    invoke-direct {v6}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;-><init>()V

    aput-object v6, v5, v1

    .line 1985
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1989
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    :sswitch_6
    const/16 v5, 0x32

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1990
    .restart local v0       #arrayLength:I
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    if-nez v5, :cond_5

    move v1, v4

    .line 1991
    .restart local v1       #i:I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    .line 1992
    .local v2, newArray:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    if-eqz v5, :cond_4

    .line 1993
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1995
    :cond_4
    iput-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    .line 1996
    :goto_4
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    .line 1997
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    new-instance v6, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    invoke-direct {v6}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;-><init>()V

    aput-object v6, v5, v1

    .line 1998
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1999
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1996
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1990
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    :cond_5
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    array-length v1, v5

    goto :goto_3

    .line 2002
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    :cond_6
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    new-instance v6, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    invoke-direct {v6}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;-><init>()V

    aput-object v6, v5, v1

    .line 2003
    iget-object v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2007
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState_:I

    .line 2008
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2012
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState_:I

    .line 2013
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2017
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision_:F

    .line 2018
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2022
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision_:F

    .line 2023
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit16 v5, v5, 0x80

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2027
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId_:I

    .line 2028
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit16 v5, v5, 0x100

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2032
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags_:I

    .line 2033
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit16 v5, v5, 0x200

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2037
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->source_:I

    .line 2038
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    goto/16 :goto_0

    .line 2042
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->flags_:I

    .line 2043
    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    goto/16 :goto_0

    .line 1941
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x4d -> :sswitch_9
        0x55 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
        0x70 -> :sswitch_e
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
    .line 994
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$MotionEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public setAction(I)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 1558
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->action_:I

    .line 1559
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 1560
    return-object p0
.end method

.method public setButtonState(I)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 1621
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState_:I

    .line 1622
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 1623
    return-object p0
.end method

.method public setDeviceId(I)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 1678
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId_:I

    .line 1679
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 1680
    return-object p0
.end method

.method public setDownTime(J)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 1520
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime_:J

    .line 1521
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 1522
    return-object p0
.end method

.method public setEdgeFlags(I)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 1697
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags_:I

    .line 1698
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 1699
    return-object p0
.end method

.method public setEventTime(J)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 1539
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime_:J

    .line 1540
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 1541
    return-object p0
.end method

.method public setFlags(I)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 1735
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->flags_:I

    .line 1736
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 1737
    return-object p0
.end method

.method public setMetaState(I)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 1602
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState_:I

    .line 1603
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 1604
    return-object p0
.end method

.method public setPointerCount(I)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 1577
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount_:I

    .line 1578
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 1579
    return-object p0
.end method

.method public setSource(I)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 1716
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->source_:I

    .line 1717
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 1718
    return-object p0
.end method

.method public setXPrecision(F)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 1640
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision_:F

    .line 1641
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 1642
    return-object p0
.end method

.method public setYPrecision(F)Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 1659
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision_:F

    .line 1660
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    .line 1661
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
    .line 1820
    iget v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 1821
    const/4 v4, 0x1

    iget-wide v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->downTime_:J

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 1823
    :cond_0
    iget v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 1824
    const/4 v4, 0x2

    iget-wide v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->eventTime_:J

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 1826
    :cond_1
    iget v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    .line 1827
    const/4 v4, 0x3

    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->action_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1829
    :cond_2
    iget v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_3

    .line 1830
    const/4 v4, 0x4

    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1832
    :cond_3
    iget-object v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    if-eqz v4, :cond_4

    .line 1833
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    .local v0, arr$:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    .line 1834
    .local v1, element:Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    const/4 v4, 0x5

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1833
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1837
    .end local v0           #arr$:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    .end local v1           #element:Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_4
    iget-object v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    if-eqz v4, :cond_5

    .line 1838
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    .local v0, arr$:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v3, :cond_5

    aget-object v1, v0, v2

    .line 1839
    .local v1, element:Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    const/4 v4, 0x6

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1838
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1842
    .end local v0           #arr$:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .end local v1           #element:Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_5
    iget v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_6

    .line 1843
    const/4 v4, 0x7

    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->metaState_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1845
    :cond_6
    iget v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_7

    .line 1846
    const/16 v4, 0x8

    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->buttonState_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1848
    :cond_7
    iget v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_8

    .line 1849
    const/16 v4, 0x9

    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision_:F

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1851
    :cond_8
    iget v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_9

    .line 1852
    const/16 v4, 0xa

    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision_:F

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1854
    :cond_9
    iget v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_a

    .line 1855
    const/16 v4, 0xb

    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->deviceId_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1857
    :cond_a
    iget v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_b

    .line 1858
    const/16 v4, 0xc

    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1860
    :cond_b
    iget v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_c

    .line 1861
    const/16 v4, 0xd

    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->source_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1863
    :cond_c
    iget v4, p0, Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_d

    .line 1864
    const/16 v4, 0xe

    iget v5, p0, Lcom/google/glass/companion/Proto$MotionEvent;->flags_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1866
    :cond_d
    return-void
.end method
