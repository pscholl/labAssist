.class public final Lcom/google/glass/companion/Proto$GlassInfoRequest;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlassInfoRequest"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$GlassInfoRequest;


# instance fields
.field private bitField0_:I

.field private requestBatteryLevel_:Z

.field private requestDeviceName_:Z

.field private requestNeedSetup_:Z

.field private requestSoftwareVersion_:Z

.field private requestStorageInfo_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3379
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$GlassInfoRequest;

    sput-object v0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$GlassInfoRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3380
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 3385
    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestBatteryLevel_:Z

    .line 3404
    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestStorageInfo_:Z

    .line 3423
    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestDeviceName_:Z

    .line 3442
    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestSoftwareVersion_:Z

    .line 3461
    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestNeedSetup_:Z

    .line 3380
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3610
    new-instance v0, Lcom/google/glass/companion/Proto$GlassInfoRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$GlassInfoRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$GlassInfoRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassInfoRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3604
    new-instance v0, Lcom/google/glass/companion/Proto$GlassInfoRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$GlassInfoRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$GlassInfoRequest;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3480
    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    .line 3481
    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestBatteryLevel_:Z

    .line 3482
    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestStorageInfo_:Z

    .line 3483
    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestDeviceName_:Z

    .line 3484
    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestSoftwareVersion_:Z

    .line 3485
    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestNeedSetup_:Z

    .line 3486
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->cachedSize:I

    .line 3487
    return-object p0
.end method

.method public clearRequestBatteryLevel()Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1

    .prologue
    .line 3398
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestBatteryLevel_:Z

    .line 3399
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    .line 3400
    return-object p0
.end method

.method public clearRequestDeviceName()Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1

    .prologue
    .line 3436
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestDeviceName_:Z

    .line 3437
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    .line 3438
    return-object p0
.end method

.method public clearRequestNeedSetup()Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1

    .prologue
    .line 3474
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestNeedSetup_:Z

    .line 3475
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    .line 3476
    return-object p0
.end method

.method public clearRequestSoftwareVersion()Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1

    .prologue
    .line 3455
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestSoftwareVersion_:Z

    .line 3456
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    .line 3457
    return-object p0
.end method

.method public clearRequestStorageInfo()Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1

    .prologue
    .line 3417
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestStorageInfo_:Z

    .line 3418
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    .line 3419
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3492
    if-ne p1, p0, :cond_1

    .line 3495
    :cond_0
    :goto_0
    return v1

    .line 3493
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$GlassInfoRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 3494
    check-cast v0, Lcom/google/glass/companion/Proto$GlassInfoRequest;

    .line 3495
    .local v0, other:Lcom/google/glass/companion/Proto$GlassInfoRequest;
    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestBatteryLevel_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestBatteryLevel_:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestStorageInfo_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestStorageInfo_:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestDeviceName_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestDeviceName_:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestSoftwareVersion_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestSoftwareVersion_:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestNeedSetup_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestNeedSetup_:Z

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getRequestBatteryLevel()Z
    .locals 1

    .prologue
    .line 3387
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestBatteryLevel_:Z

    return v0
.end method

.method public getRequestDeviceName()Z
    .locals 1

    .prologue
    .line 3425
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestDeviceName_:Z

    return v0
.end method

.method public getRequestNeedSetup()Z
    .locals 1

    .prologue
    .line 3463
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestNeedSetup_:Z

    return v0
.end method

.method public getRequestSoftwareVersion()Z
    .locals 1

    .prologue
    .line 3444
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestSoftwareVersion_:Z

    return v0
.end method

.method public getRequestStorageInfo()Z
    .locals 1

    .prologue
    .line 3406
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestStorageInfo_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3533
    const/4 v0, 0x0

    .line 3534
    .local v0, size:I
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 3535
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestBatteryLevel_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3538
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 3539
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestStorageInfo_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3542
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 3543
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestDeviceName_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3546
    :cond_2
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 3547
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestSoftwareVersion_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3550
    :cond_3
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 3551
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestNeedSetup_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3554
    :cond_4
    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->cachedSize:I

    .line 3555
    return v0
.end method

.method public hasRequestBatteryLevel()Z
    .locals 1

    .prologue
    .line 3395
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRequestDeviceName()Z
    .locals 1

    .prologue
    .line 3433
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRequestNeedSetup()Z
    .locals 1

    .prologue
    .line 3471
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRequestSoftwareVersion()Z
    .locals 1

    .prologue
    .line 3452
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRequestStorageInfo()Z
    .locals 1

    .prologue
    .line 3414
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 3503
    const/16 v0, 0x11

    .line 3504
    .local v0, result:I
    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestBatteryLevel_:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 3505
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestStorageInfo_:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v4, v1

    .line 3506
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestDeviceName_:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    add-int v0, v4, v1

    .line 3507
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestSoftwareVersion_:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_3
    add-int v0, v4, v1

    .line 3508
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v4, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestNeedSetup_:Z

    if-eqz v4, :cond_4

    :goto_4
    add-int v0, v1, v2

    .line 3509
    return v0

    :cond_0
    move v1, v3

    .line 3504
    goto :goto_0

    :cond_1
    move v1, v3

    .line 3505
    goto :goto_1

    :cond_2
    move v1, v3

    .line 3506
    goto :goto_2

    :cond_3
    move v1, v3

    .line 3507
    goto :goto_3

    :cond_4
    move v2, v3

    .line 3508
    goto :goto_4
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3563
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3564
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 3568
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3569
    :sswitch_0
    return-object p0

    .line 3574
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestBatteryLevel_:Z

    .line 3575
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    goto :goto_0

    .line 3579
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestStorageInfo_:Z

    .line 3580
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    goto :goto_0

    .line 3584
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestDeviceName_:Z

    .line 3585
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    goto :goto_0

    .line 3589
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestSoftwareVersion_:Z

    .line 3590
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    goto :goto_0

    .line 3594
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestNeedSetup_:Z

    .line 3595
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    goto :goto_0

    .line 3564
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
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
    .line 3376
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$GlassInfoRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassInfoRequest;

    move-result-object v0

    return-object v0
.end method

.method public setRequestBatteryLevel(Z)Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 3390
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestBatteryLevel_:Z

    .line 3391
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    .line 3392
    return-object p0
.end method

.method public setRequestDeviceName(Z)Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 3428
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestDeviceName_:Z

    .line 3429
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    .line 3430
    return-object p0
.end method

.method public setRequestNeedSetup(Z)Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 3466
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestNeedSetup_:Z

    .line 3467
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    .line 3468
    return-object p0
.end method

.method public setRequestSoftwareVersion(Z)Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 3447
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestSoftwareVersion_:Z

    .line 3448
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    .line 3449
    return-object p0
.end method

.method public setRequestStorageInfo(Z)Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 3409
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestStorageInfo_:Z

    .line 3410
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    .line 3411
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3514
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3515
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestBatteryLevel_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3517
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 3518
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestStorageInfo_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3520
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 3521
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestDeviceName_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3523
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 3524
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestSoftwareVersion_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3526
    :cond_3
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 3527
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestNeedSetup_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3529
    :cond_4
    return-void
.end method
