.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
.super Lcom/google/protobuf/nano/MessageNano;
.source "TimelineNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LinkSpec"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;


# instance fields
.field private bitField0_:I

.field private end_:I

.field private start_:I

.field private url_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1693
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1694
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1699
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->start_:I

    .line 1718
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->end_:I

    .line 1737
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->url_:Ljava/lang/String;

    .line 1694
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1859
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1853
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1759
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    .line 1760
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->start_:I

    .line 1761
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->end_:I

    .line 1762
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->url_:Ljava/lang/String;

    .line 1763
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->cachedSize:I

    .line 1764
    return-object p0
.end method

.method public clearEnd()Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    .locals 1

    .prologue
    .line 1731
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->end_:I

    .line 1732
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    .line 1733
    return-object p0
.end method

.method public clearStart()Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    .locals 1

    .prologue
    .line 1712
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->start_:I

    .line 1713
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    .line 1714
    return-object p0
.end method

.method public clearUrl()Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    .locals 1

    .prologue
    .line 1753
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->url_:Ljava/lang/String;

    .line 1754
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    .line 1755
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1769
    if-ne p1, p0, :cond_1

    .line 1772
    :cond_0
    :goto_0
    return v1

    .line 1770
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1771
    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .line 1772
    .local v0, other:Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->start_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->start_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->end_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->end_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->url_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->url_:Ljava/lang/String;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->url_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->url_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getEnd()I
    .locals 1

    .prologue
    .line 1720
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->end_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1800
    const/4 v0, 0x0

    .line 1801
    .local v0, size:I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1802
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->start_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1805
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1806
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->end_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1809
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1810
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->url_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1813
    :cond_2
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->cachedSize:I

    .line 1814
    return v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 1701
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->start_:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1739
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasEnd()Z
    .locals 1

    .prologue
    .line 1728
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStart()Z
    .locals 1

    .prologue
    .line 1709
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 1750
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

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
    .locals 3

    .prologue
    .line 1778
    const/16 v0, 0x11

    .line 1779
    .local v0, result:I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->start_:I

    add-int/lit16 v0, v1, 0x20f

    .line 1780
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->end_:I

    add-int v0, v1, v2

    .line 1781
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->url_:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int v0, v2, v1

    .line 1782
    return v0

    .line 1781
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->url_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1822
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1823
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1827
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1828
    :sswitch_0
    return-object p0

    .line 1833
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->start_:I

    .line 1834
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    goto :goto_0

    .line 1838
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->end_:I

    .line 1839
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    goto :goto_0

    .line 1843
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->url_:Ljava/lang/String;

    .line 1844
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    goto :goto_0

    .line 1823
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 1690
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    move-result-object v0

    return-object v0
.end method

.method public setEnd(I)Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    .locals 1
    .parameter "value"

    .prologue
    .line 1723
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->end_:I

    .line 1724
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    .line 1725
    return-object p0
.end method

.method public setStart(I)Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    .locals 1
    .parameter "value"

    .prologue
    .line 1704
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->start_:I

    .line 1705
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    .line 1706
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    .locals 1
    .parameter "value"

    .prologue
    .line 1742
    if-nez p1, :cond_0

    .line 1743
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1745
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->url_:Ljava/lang/String;

    .line 1746
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    .line 1747
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
    .line 1787
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1788
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->start_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 1790
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1791
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->end_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 1793
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 1794
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->url_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1796
    :cond_2
    return-void
.end method
