.class public final Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;
.super Lcom/google/protobuf/nano/MessageNano;
.source "SyncNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScreenDimensions"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;


# instance fields
.field private bitField0_:I

.field private heightPixels_:I

.field private widthPixels_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1593
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;

    sput-object v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1594
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1599
    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->widthPixels_:I

    .line 1618
    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->heightPixels_:I

    .line 1594
    return-void
.end method


# virtual methods
.method public clearHeightPixels()Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;
    .locals 1

    .prologue
    .line 1631
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->heightPixels_:I

    .line 1632
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    .line 1633
    return-object p0
.end method

.method public clearWidthPixels()Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;
    .locals 1

    .prologue
    .line 1612
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->widthPixels_:I

    .line 1613
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    .line 1614
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1638
    if-ne p1, p0, :cond_1

    .line 1641
    :cond_0
    :goto_0
    return v1

    .line 1639
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1640
    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;

    .line 1641
    .local v0, other:Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->widthPixels_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->widthPixels_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->heightPixels_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->heightPixels_:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getHeightPixels()I
    .locals 1

    .prologue
    .line 1620
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->heightPixels_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1664
    const/4 v0, 0x0

    .line 1665
    .local v0, size:I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1666
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->widthPixels_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1669
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1670
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->heightPixels_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1673
    :cond_1
    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->cachedSize:I

    .line 1674
    return v0
.end method

.method public getWidthPixels()I
    .locals 1

    .prologue
    .line 1601
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->widthPixels_:I

    return v0
.end method

.method public hasHeightPixels()Z
    .locals 1

    .prologue
    .line 1628
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWidthPixels()Z
    .locals 1

    .prologue
    .line 1609
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->bitField0_:I

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
    .locals 3

    .prologue
    .line 1646
    const/16 v0, 0x11

    .line 1647
    .local v0, result:I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->widthPixels_:I

    add-int/lit16 v0, v1, 0x20f

    .line 1648
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->heightPixels_:I

    add-int v0, v1, v2

    .line 1649
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1682
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1683
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1687
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1688
    :sswitch_0
    return-object p0

    .line 1693
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->widthPixels_:I

    .line 1694
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    goto :goto_0

    .line 1698
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->heightPixels_:I

    .line 1699
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    goto :goto_0

    .line 1683
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 1590
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1714
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1708
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;-><init>()V

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;

    return-object v0
.end method

.method public setHeightPixels(I)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;
    .locals 1
    .parameter "value"

    .prologue
    .line 1623
    iput p1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->heightPixels_:I

    .line 1624
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    .line 1625
    return-object p0
.end method

.method public setWidthPixels(I)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;
    .locals 1
    .parameter "value"

    .prologue
    .line 1604
    iput p1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->widthPixels_:I

    .line 1605
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    .line 1606
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
    .line 1654
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1655
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->widthPixels_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1657
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1658
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->heightPixels_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1660
    :cond_1
    return-void
.end method
