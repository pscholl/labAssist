.class public final Lcom/google/googlex/glass/common/proto/SyncNano$Select;
.super Lcom/google/protobuf/nano/MessageNano;
.source "SyncNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/SyncNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Select"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$Select;


# instance fields
.field private bitField0_:I

.field private continuationToken_:[B

.field private maxItems_:I

.field private modifiedAfterTime_:J

.field private modifiedBeforeTime_:J

.field private startTime_:J

.field private writeAfterTime_:J

.field private writeBeforeTime_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 685
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    sput-object v0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 686
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 691
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->maxItems_:I

    .line 710
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedAfterTime_:J

    .line 729
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedBeforeTime_:J

    .line 748
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeAfterTime_:J

    .line 767
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeBeforeTime_:J

    .line 786
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->startTime_:J

    .line 805
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->continuationToken_:[B

    .line 686
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$Select;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 979
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncNano$Select;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/SyncNano$Select;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 973
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncNano$Select;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    return-object v0
.end method


# virtual methods
.method public clearContinuationToken()Lcom/google/googlex/glass/common/proto/SyncNano$Select;
    .locals 1

    .prologue
    .line 821
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->continuationToken_:[B

    .line 822
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    .line 823
    return-object p0
.end method

.method public clearMaxItems()Lcom/google/googlex/glass/common/proto/SyncNano$Select;
    .locals 1

    .prologue
    .line 704
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->maxItems_:I

    .line 705
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    .line 706
    return-object p0
.end method

.method public clearModifiedAfterTime()Lcom/google/googlex/glass/common/proto/SyncNano$Select;
    .locals 2

    .prologue
    .line 723
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedAfterTime_:J

    .line 724
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    .line 725
    return-object p0
.end method

.method public clearModifiedBeforeTime()Lcom/google/googlex/glass/common/proto/SyncNano$Select;
    .locals 2

    .prologue
    .line 742
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedBeforeTime_:J

    .line 743
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    .line 744
    return-object p0
.end method

.method public clearStartTime()Lcom/google/googlex/glass/common/proto/SyncNano$Select;
    .locals 2

    .prologue
    .line 799
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->startTime_:J

    .line 800
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    .line 801
    return-object p0
.end method

.method public clearWriteAfterTime()Lcom/google/googlex/glass/common/proto/SyncNano$Select;
    .locals 2

    .prologue
    .line 761
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeAfterTime_:J

    .line 762
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    .line 763
    return-object p0
.end method

.method public clearWriteBeforeTime()Lcom/google/googlex/glass/common/proto/SyncNano$Select;
    .locals 2

    .prologue
    .line 780
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeBeforeTime_:J

    .line 781
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    .line 782
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 828
    if-ne p1, p0, :cond_1

    .line 831
    :cond_0
    :goto_0
    return v1

    .line 829
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 830
    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    .line 831
    .local v0, other:Lcom/google/googlex/glass/common/proto/SyncNano$Select;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->maxItems_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->maxItems_:I

    if-ne v3, v4, :cond_3

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedAfterTime_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedAfterTime_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedBeforeTime_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedBeforeTime_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeAfterTime_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeAfterTime_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeBeforeTime_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeBeforeTime_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->startTime_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->startTime_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->continuationToken_:[B

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->continuationToken_:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getContinuationToken()[B
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->continuationToken_:[B

    return-object v0
.end method

.method public getMaxItems()I
    .locals 1

    .prologue
    .line 693
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->maxItems_:I

    return v0
.end method

.method public getModifiedAfterTime()J
    .locals 2

    .prologue
    .line 712
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedAfterTime_:J

    return-wide v0
.end method

.method public getModifiedBeforeTime()J
    .locals 2

    .prologue
    .line 731
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedBeforeTime_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 884
    const/4 v0, 0x0

    .line 885
    .local v0, size:I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 886
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->maxItems_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 889
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 890
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeAfterTime_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 893
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2

    .line 894
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeBeforeTime_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 897
    :cond_2
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_3

    .line 898
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->continuationToken_:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 901
    :cond_3
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 902
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedAfterTime_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 905
    :cond_4
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    .line 906
    const/16 v1, 0x8

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedBeforeTime_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 909
    :cond_5
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_6

    .line 910
    const/16 v1, 0x9

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->startTime_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 913
    :cond_6
    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->cachedSize:I

    .line 914
    return v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 788
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->startTime_:J

    return-wide v0
.end method

.method public getWriteAfterTime()J
    .locals 2

    .prologue
    .line 750
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeAfterTime_:J

    return-wide v0
.end method

.method public getWriteBeforeTime()J
    .locals 2

    .prologue
    .line 769
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeBeforeTime_:J

    return-wide v0
.end method

.method public hasContinuationToken()Z
    .locals 1

    .prologue
    .line 818
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMaxItems()Z
    .locals 1

    .prologue
    .line 701
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasModifiedAfterTime()Z
    .locals 1

    .prologue
    .line 720
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasModifiedBeforeTime()Z
    .locals 1

    .prologue
    .line 739
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStartTime()Z
    .locals 1

    .prologue
    .line 796
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWriteAfterTime()Z
    .locals 1

    .prologue
    .line 758
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWriteBeforeTime()Z
    .locals 1

    .prologue
    .line 777
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

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

    .line 841
    const/16 v1, 0x11

    .line 842
    .local v1, result:I
    iget v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->maxItems_:I

    add-int/lit16 v1, v2, 0x20f

    .line 843
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedAfterTime_:J

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedAfterTime_:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 844
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedBeforeTime_:J

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedBeforeTime_:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 845
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeAfterTime_:J

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeAfterTime_:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 846
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeBeforeTime_:J

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeBeforeTime_:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 847
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->startTime_:J

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->startTime_:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 848
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->continuationToken_:[B

    if-nez v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 854
    :cond_0
    return v1

    .line 850
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->continuationToken_:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 851
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->continuationToken_:[B

    aget-byte v3, v3, v0

    add-int v1, v2, v3

    .line 850
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$Select;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 922
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 923
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 927
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 928
    :sswitch_0
    return-object p0

    .line 933
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->maxItems_:I

    .line 934
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    goto :goto_0

    .line 938
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeAfterTime_:J

    .line 939
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    goto :goto_0

    .line 943
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeBeforeTime_:J

    .line 944
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    goto :goto_0

    .line 948
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->continuationToken_:[B

    .line 949
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    goto :goto_0

    .line 953
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedAfterTime_:J

    .line 954
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    goto :goto_0

    .line 958
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedBeforeTime_:J

    .line 959
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    goto :goto_0

    .line 963
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->startTime_:J

    .line 964
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    goto :goto_0

    .line 923
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x38 -> :sswitch_5
        0x40 -> :sswitch_6
        0x48 -> :sswitch_7
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
    .line 682
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    move-result-object v0

    return-object v0
.end method

.method public setContinuationToken([B)Lcom/google/googlex/glass/common/proto/SyncNano$Select;
    .locals 1
    .parameter "value"

    .prologue
    .line 810
    if-nez p1, :cond_0

    .line 811
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 813
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->continuationToken_:[B

    .line 814
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    .line 815
    return-object p0
.end method

.method public setMaxItems(I)Lcom/google/googlex/glass/common/proto/SyncNano$Select;
    .locals 1
    .parameter "value"

    .prologue
    .line 696
    iput p1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->maxItems_:I

    .line 697
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    .line 698
    return-object p0
.end method

.method public setModifiedAfterTime(J)Lcom/google/googlex/glass/common/proto/SyncNano$Select;
    .locals 1
    .parameter "value"

    .prologue
    .line 715
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedAfterTime_:J

    .line 716
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    .line 717
    return-object p0
.end method

.method public setModifiedBeforeTime(J)Lcom/google/googlex/glass/common/proto/SyncNano$Select;
    .locals 1
    .parameter "value"

    .prologue
    .line 734
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedBeforeTime_:J

    .line 735
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    .line 736
    return-object p0
.end method

.method public setStartTime(J)Lcom/google/googlex/glass/common/proto/SyncNano$Select;
    .locals 1
    .parameter "value"

    .prologue
    .line 791
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->startTime_:J

    .line 792
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    .line 793
    return-object p0
.end method

.method public setWriteAfterTime(J)Lcom/google/googlex/glass/common/proto/SyncNano$Select;
    .locals 1
    .parameter "value"

    .prologue
    .line 753
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeAfterTime_:J

    .line 754
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    .line 755
    return-object p0
.end method

.method public setWriteBeforeTime(J)Lcom/google/googlex/glass/common/proto/SyncNano$Select;
    .locals 1
    .parameter "value"

    .prologue
    .line 772
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeBeforeTime_:J

    .line 773
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    .line 774
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
    .line 859
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 860
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->maxItems_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 862
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 863
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeAfterTime_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 865
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    .line 866
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->writeBeforeTime_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 868
    :cond_2
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_3

    .line 869
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->continuationToken_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 871
    :cond_3
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 872
    const/4 v0, 0x7

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedAfterTime_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 874
    :cond_4
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    .line 875
    const/16 v0, 0x8

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->modifiedBeforeTime_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 877
    :cond_5
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 878
    const/16 v0, 0x9

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->startTime_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 880
    :cond_6
    return-void
.end method
