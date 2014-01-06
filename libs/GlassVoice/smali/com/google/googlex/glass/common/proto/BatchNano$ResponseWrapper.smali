.class public final Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
.super Lcom/google/protobuf/nano/MessageNano;
.source "BatchNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/BatchNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResponseWrapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper$ErrorCode;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;


# instance fields
.field private bitField0_:I

.field private data_:[B

.field private errorCode_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 560
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    sput-object v0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 561
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 575
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->errorCode_:I

    .line 594
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->data_:[B

    .line 561
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 708
    new-instance v0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 702
    new-instance v0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    return-object v0
.end method


# virtual methods
.method public clearData()Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    .locals 1

    .prologue
    .line 610
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->data_:[B

    .line 611
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->bitField0_:I

    .line 612
    return-object p0
.end method

.method public clearErrorCode()Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    .locals 1

    .prologue
    .line 588
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->errorCode_:I

    .line 589
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->bitField0_:I

    .line 590
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 617
    if-ne p1, p0, :cond_1

    .line 620
    :cond_0
    :goto_0
    return v1

    .line 618
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 619
    check-cast v0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    .line 620
    .local v0, other:Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->errorCode_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->errorCode_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->data_:[B

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->data_:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->data_:[B

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 577
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->errorCode_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 648
    const/4 v0, 0x0

    .line 649
    .local v0, size:I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 650
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->errorCode_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 653
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 654
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->data_:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 657
    :cond_1
    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->cachedSize:I

    .line 658
    return v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 607
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasErrorCode()Z
    .locals 1

    .prologue
    .line 585
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->bitField0_:I

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
    .locals 4

    .prologue
    .line 625
    const/16 v1, 0x11

    .line 626
    .local v1, result:I
    iget v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->errorCode_:I

    add-int/lit16 v1, v2, 0x20f

    .line 627
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->data_:[B

    if-nez v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 633
    :cond_0
    return v1

    .line 629
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->data_:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 630
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->data_:[B

    aget-byte v3, v3, v0

    add-int v1, v2, v3

    .line 629
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 666
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 667
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 671
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 672
    :sswitch_0
    return-object p0

    .line 677
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 678
    .local v1, temp:I
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 684
    :cond_1
    iput v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->errorCode_:I

    .line 688
    :goto_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->bitField0_:I

    goto :goto_0

    .line 686
    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->errorCode_:I

    goto :goto_1

    .line 692
    .end local v1           #temp:I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->data_:[B

    .line 693
    iget v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->bitField0_:I

    goto :goto_0

    .line 667
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 557
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    move-result-object v0

    return-object v0
.end method

.method public setData([B)Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    .locals 1
    .parameter "value"

    .prologue
    .line 599
    if-nez p1, :cond_0

    .line 600
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 602
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->data_:[B

    .line 603
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->bitField0_:I

    .line 604
    return-object p0
.end method

.method public setErrorCode(I)Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    .locals 1
    .parameter "value"

    .prologue
    .line 580
    iput p1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->errorCode_:I

    .line 581
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->bitField0_:I

    .line 582
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
    .line 638
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 639
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->errorCode_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 641
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 642
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->data_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 644
    :cond_1
    return-void
.end method
