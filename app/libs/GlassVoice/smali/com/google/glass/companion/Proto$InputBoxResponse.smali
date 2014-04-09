.class public final Lcom/google/glass/companion/Proto$InputBoxResponse;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InputBoxResponse"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$InputBoxResponse;


# instance fields
.field private bitField0_:I

.field private handlerObject_:[B

.field private response_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5109
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$InputBoxResponse;

    sput-object v0, Lcom/google/glass/companion/Proto$InputBoxResponse;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$InputBoxResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5110
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 5115
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->response_:Ljava/lang/String;

    .line 5137
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->handlerObject_:[B

    .line 5110
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$InputBoxResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5249
    new-instance v0, Lcom/google/glass/companion/Proto$InputBoxResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$InputBoxResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$InputBoxResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$InputBoxResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$InputBoxResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 5243
    new-instance v0, Lcom/google/glass/companion/Proto$InputBoxResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$InputBoxResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$InputBoxResponse;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/glass/companion/Proto$InputBoxResponse;
    .locals 1

    .prologue
    .line 5159
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->bitField0_:I

    .line 5160
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->response_:Ljava/lang/String;

    .line 5161
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->handlerObject_:[B

    .line 5162
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->cachedSize:I

    .line 5163
    return-object p0
.end method

.method public clearHandlerObject()Lcom/google/glass/companion/Proto$InputBoxResponse;
    .locals 1

    .prologue
    .line 5153
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->handlerObject_:[B

    .line 5154
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->bitField0_:I

    .line 5155
    return-object p0
.end method

.method public clearResponse()Lcom/google/glass/companion/Proto$InputBoxResponse;
    .locals 1

    .prologue
    .line 5131
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->response_:Ljava/lang/String;

    .line 5132
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->bitField0_:I

    .line 5133
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5168
    if-ne p1, p0, :cond_1

    .line 5171
    :cond_0
    :goto_0
    return v1

    .line 5169
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$InputBoxResponse;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 5170
    check-cast v0, Lcom/google/glass/companion/Proto$InputBoxResponse;

    .line 5171
    .local v0, other:Lcom/google/glass/companion/Proto$InputBoxResponse;
    iget-object v3, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->response_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$InputBoxResponse;->response_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->handlerObject_:[B

    iget-object v4, v0, Lcom/google/glass/companion/Proto$InputBoxResponse;->handlerObject_:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->response_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$InputBoxResponse;->response_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1
.end method

.method public getHandlerObject()[B
    .locals 1

    .prologue
    .line 5139
    iget-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->handlerObject_:[B

    return-object v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5117
    iget-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->response_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 5199
    const/4 v0, 0x0

    .line 5200
    .local v0, size:I
    iget v1, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5201
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->response_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5204
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 5205
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->handlerObject_:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 5208
    :cond_1
    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->cachedSize:I

    .line 5209
    return v0
.end method

.method public hasHandlerObject()Z
    .locals 1

    .prologue
    .line 5150
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasResponse()Z
    .locals 1

    .prologue
    .line 5128
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->bitField0_:I

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
    .line 5176
    const/16 v1, 0x11

    .line 5177
    .local v1, result:I
    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->response_:Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 5178
    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->handlerObject_:[B

    if-nez v2, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 5184
    :cond_0
    return v1

    .line 5177
    :cond_1
    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->response_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 5180
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->handlerObject_:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 5181
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->handlerObject_:[B

    aget-byte v3, v3, v0

    add-int v1, v2, v3

    .line 5180
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$InputBoxResponse;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5217
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 5218
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 5222
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5223
    :sswitch_0
    return-object p0

    .line 5228
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->response_:Ljava/lang/String;

    .line 5229
    iget v1, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->bitField0_:I

    goto :goto_0

    .line 5233
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->handlerObject_:[B

    .line 5234
    iget v1, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->bitField0_:I

    goto :goto_0

    .line 5218
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
    .line 5106
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$InputBoxResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$InputBoxResponse;

    move-result-object v0

    return-object v0
.end method

.method public setHandlerObject([B)Lcom/google/glass/companion/Proto$InputBoxResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 5142
    if-nez p1, :cond_0

    .line 5143
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5145
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->handlerObject_:[B

    .line 5146
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->bitField0_:I

    .line 5147
    return-object p0
.end method

.method public setResponse(Ljava/lang/String;)Lcom/google/glass/companion/Proto$InputBoxResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 5120
    if-nez p1, :cond_0

    .line 5121
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5123
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->response_:Ljava/lang/String;

    .line 5124
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->bitField0_:I

    .line 5125
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
    .line 5189
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 5190
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->response_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5192
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 5193
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->handlerObject_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 5195
    :cond_1
    return-void
.end method
