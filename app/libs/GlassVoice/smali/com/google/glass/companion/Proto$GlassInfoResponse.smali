.class public final Lcom/google/glass/companion/Proto$GlassInfoResponse;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlassInfoResponse"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$GlassInfoResponse;


# instance fields
.field private batteryLevel_:I

.field private bitField0_:I

.field private deviceName_:Ljava/lang/String;

.field private externalStorageAvailableBytes_:J

.field private externalStorageTotalBytes_:J

.field private needSetup_:Z

.field private softwareVersion_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3618
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$GlassInfoResponse;

    sput-object v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$GlassInfoResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 3619
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 3624
    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->batteryLevel_:I

    .line 3643
    iput-wide v2, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageTotalBytes_:J

    .line 3662
    iput-wide v2, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageAvailableBytes_:J

    .line 3681
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    .line 3703
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    .line 3725
    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->needSetup_:Z

    .line 3619
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3889
    new-instance v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$GlassInfoResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$GlassInfoResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3883
    new-instance v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$GlassInfoResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 3744
    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    .line 3745
    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->batteryLevel_:I

    .line 3746
    iput-wide v2, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageTotalBytes_:J

    .line 3747
    iput-wide v2, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageAvailableBytes_:J

    .line 3748
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    .line 3749
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    .line 3750
    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->needSetup_:Z

    .line 3751
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->cachedSize:I

    .line 3752
    return-object p0
.end method

.method public clearBatteryLevel()Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1

    .prologue
    .line 3637
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->batteryLevel_:I

    .line 3638
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    .line 3639
    return-object p0
.end method

.method public clearDeviceName()Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1

    .prologue
    .line 3697
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    .line 3698
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    .line 3699
    return-object p0
.end method

.method public clearExternalStorageAvailableBytes()Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 2

    .prologue
    .line 3675
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageAvailableBytes_:J

    .line 3676
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    .line 3677
    return-object p0
.end method

.method public clearExternalStorageTotalBytes()Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 2

    .prologue
    .line 3656
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageTotalBytes_:J

    .line 3657
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    .line 3658
    return-object p0
.end method

.method public clearNeedSetup()Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1

    .prologue
    .line 3738
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->needSetup_:Z

    .line 3739
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    .line 3740
    return-object p0
.end method

.method public clearSoftwareVersion()Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1

    .prologue
    .line 3719
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    .line 3720
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    .line 3721
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3757
    if-ne p1, p0, :cond_1

    .line 3760
    :cond_0
    :goto_0
    return v1

    .line 3758
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$GlassInfoResponse;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 3759
    check-cast v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;

    .line 3760
    .local v0, other:Lcom/google/glass/companion/Proto$GlassInfoResponse;
    iget v3, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->batteryLevel_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->batteryLevel_:I

    if-ne v3, v4, :cond_3

    iget-wide v3, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageTotalBytes_:J

    iget-wide v5, v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageTotalBytes_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageAvailableBytes_:J

    iget-wide v5, v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageAvailableBytes_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_2
    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->needSetup_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->needSetup_:Z

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2
.end method

.method public getBatteryLevel()I
    .locals 1

    .prologue
    .line 3626
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->batteryLevel_:I

    return v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3683
    iget-object v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalStorageAvailableBytes()J
    .locals 2

    .prologue
    .line 3664
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageAvailableBytes_:J

    return-wide v0
.end method

.method public getExternalStorageTotalBytes()J
    .locals 2

    .prologue
    .line 3645
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageTotalBytes_:J

    return-wide v0
.end method

.method public getNeedSetup()Z
    .locals 1

    .prologue
    .line 3727
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->needSetup_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 3803
    const/4 v0, 0x0

    .line 3804
    .local v0, size:I
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 3805
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->batteryLevel_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3808
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 3809
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageTotalBytes_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3812
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 3813
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageAvailableBytes_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3816
    :cond_2
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 3817
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3820
    :cond_3
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 3821
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3824
    :cond_4
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 3825
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->needSetup_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3828
    :cond_5
    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->cachedSize:I

    .line 3829
    return v0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3705
    iget-object v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public hasBatteryLevel()Z
    .locals 1

    .prologue
    .line 3634
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeviceName()Z
    .locals 1

    .prologue
    .line 3694
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasExternalStorageAvailableBytes()Z
    .locals 1

    .prologue
    .line 3672
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasExternalStorageTotalBytes()Z
    .locals 1

    .prologue
    .line 3653
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNeedSetup()Z
    .locals 1

    .prologue
    .line 3735
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSoftwareVersion()Z
    .locals 1

    .prologue
    .line 3716
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

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

    const/4 v2, 0x0

    .line 3769
    const/16 v0, 0x11

    .line 3770
    .local v0, result:I
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->batteryLevel_:I

    add-int/lit16 v0, v1, 0x20f

    .line 3771
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageTotalBytes_:J

    iget-wide v5, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageTotalBytes_:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v1, v3

    .line 3772
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageAvailableBytes_:J

    iget-wide v5, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageAvailableBytes_:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v1, v3

    .line 3773
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v3, v1

    .line 3774
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    if-nez v3, :cond_1

    :goto_1
    add-int v0, v1, v2

    .line 3775
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->needSetup_:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_2
    add-int v0, v2, v1

    .line 3776
    return v0

    .line 3773
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 3774
    :cond_1
    iget-object v2, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 3775
    :cond_2
    const/4 v1, 0x2

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3837
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3838
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 3842
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3843
    :sswitch_0
    return-object p0

    .line 3848
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->batteryLevel_:I

    .line 3849
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    goto :goto_0

    .line 3853
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageTotalBytes_:J

    .line 3854
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    goto :goto_0

    .line 3858
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageAvailableBytes_:J

    .line 3859
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    goto :goto_0

    .line 3863
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    .line 3864
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    goto :goto_0

    .line 3868
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    .line 3869
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    goto :goto_0

    .line 3873
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->needSetup_:Z

    .line 3874
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    goto :goto_0

    .line 3838
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
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
    .line 3615
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$GlassInfoResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public setBatteryLevel(I)Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 3629
    iput p1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->batteryLevel_:I

    .line 3630
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    .line 3631
    return-object p0
.end method

.method public setDeviceName(Ljava/lang/String;)Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 3686
    if-nez p1, :cond_0

    .line 3687
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3689
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    .line 3690
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    .line 3691
    return-object p0
.end method

.method public setExternalStorageAvailableBytes(J)Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 3667
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageAvailableBytes_:J

    .line 3668
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    .line 3669
    return-object p0
.end method

.method public setExternalStorageTotalBytes(J)Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 3648
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageTotalBytes_:J

    .line 3649
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    .line 3650
    return-object p0
.end method

.method public setNeedSetup(Z)Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 3730
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->needSetup_:Z

    .line 3731
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    .line 3732
    return-object p0
.end method

.method public setSoftwareVersion(Ljava/lang/String;)Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 3708
    if-nez p1, :cond_0

    .line 3709
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3711
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    .line 3712
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    .line 3713
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
    .line 3781
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3782
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->batteryLevel_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3784
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 3785
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageTotalBytes_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 3787
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 3788
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->externalStorageAvailableBytes_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 3790
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 3791
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->deviceName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3793
    :cond_3
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 3794
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->softwareVersion_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3796
    :cond_4
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 3797
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoResponse;->needSetup_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3799
    :cond_5
    return-void
.end method
