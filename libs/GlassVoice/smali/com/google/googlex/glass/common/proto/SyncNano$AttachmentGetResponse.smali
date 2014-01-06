.class public final Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;
.super Lcom/google/protobuf/nano/MessageNano;
.source "SyncNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/SyncNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AttachmentGetResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse$ResponseCode;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;


# instance fields
.field private bitField0_:I

.field private content_:[B

.field private mimeType_:Ljava/lang/String;

.field private responseCode_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1850
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;

    sput-object v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1851
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1861
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->responseCode_:I

    .line 1880
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->mimeType_:Ljava/lang/String;

    .line 1902
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->content_:[B

    .line 1851
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2026
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2020
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;

    return-object v0
.end method


# virtual methods
.method public clearContent()Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;
    .locals 1

    .prologue
    .line 1918
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->content_:[B

    .line 1919
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->bitField0_:I

    .line 1920
    return-object p0
.end method

.method public clearMimeType()Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;
    .locals 1

    .prologue
    .line 1896
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->mimeType_:Ljava/lang/String;

    .line 1897
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->bitField0_:I

    .line 1898
    return-object p0
.end method

.method public clearResponseCode()Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;
    .locals 1

    .prologue
    .line 1874
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->responseCode_:I

    .line 1875
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->bitField0_:I

    .line 1876
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1925
    if-ne p1, p0, :cond_1

    .line 1928
    :cond_0
    :goto_0
    return v1

    .line 1926
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1927
    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;

    .line 1928
    .local v0, other:Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->responseCode_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->responseCode_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->mimeType_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->mimeType_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->content_:[B

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->content_:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->mimeType_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->mimeType_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1
.end method

.method public getContent()[B
    .locals 1

    .prologue
    .line 1904
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->content_:[B

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1882
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->mimeType_:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    .line 1863
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->responseCode_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1961
    const/4 v0, 0x0

    .line 1962
    .local v0, size:I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1963
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->responseCode_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1966
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1967
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->mimeType_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1970
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1971
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->content_:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 1974
    :cond_2
    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->cachedSize:I

    .line 1975
    return v0
.end method

.method public hasContent()Z
    .locals 1

    .prologue
    .line 1915
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMimeType()Z
    .locals 1

    .prologue
    .line 1893
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasResponseCode()Z
    .locals 1

    .prologue
    .line 1871
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->bitField0_:I

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
    .line 1934
    const/16 v1, 0x11

    .line 1935
    .local v1, result:I
    iget v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->responseCode_:I

    add-int/lit16 v1, v2, 0x20f

    .line 1936
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->mimeType_:Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    add-int v1, v3, v2

    .line 1937
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->content_:[B

    if-nez v2, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 1943
    :cond_0
    return v1

    .line 1936
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->mimeType_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 1939
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->content_:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1940
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->content_:[B

    aget-byte v3, v3, v0

    add-int v1, v2, v3

    .line 1939
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1983
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1984
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1988
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1989
    :sswitch_0
    return-object p0

    .line 1994
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 1995
    .local v1, temp:I
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1997
    :cond_1
    iput v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->responseCode_:I

    .line 2001
    :goto_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->bitField0_:I

    goto :goto_0

    .line 1999
    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->responseCode_:I

    goto :goto_1

    .line 2005
    .end local v1           #temp:I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->mimeType_:Ljava/lang/String;

    .line 2006
    iget v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->bitField0_:I

    goto :goto_0

    .line 2010
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->content_:[B

    .line 2011
    iget v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->bitField0_:I

    goto :goto_0

    .line 1984
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 1847
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;

    move-result-object v0

    return-object v0
.end method

.method public setContent([B)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 1907
    if-nez p1, :cond_0

    .line 1908
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1910
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->content_:[B

    .line 1911
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->bitField0_:I

    .line 1912
    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 1885
    if-nez p1, :cond_0

    .line 1886
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1888
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->mimeType_:Ljava/lang/String;

    .line 1889
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->bitField0_:I

    .line 1890
    return-object p0
.end method

.method public setResponseCode(I)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 1866
    iput p1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->responseCode_:I

    .line 1867
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->bitField0_:I

    .line 1868
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
    .line 1948
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1949
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->responseCode_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1951
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1952
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->mimeType_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1954
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 1955
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->content_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 1957
    :cond_2
    return-void
.end method
