.class public final Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;
.super Lcom/google/protobuf/nano/MessageNano;
.source "BatchNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/BatchNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BatchHeader"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;


# instance fields
.field public authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

.field private bitField0_:I

.field private dispatcherId_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    sput-object v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 156
    sget-object v0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    .line 159
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->dispatcherId_:J

    .line 151
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    new-instance v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 271
    new-instance v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    return-object v0
.end method


# virtual methods
.method public clearDispatcherId()Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;
    .locals 2

    .prologue
    .line 172
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->dispatcherId_:J

    .line 173
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->bitField0_:I

    .line 174
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 179
    if-ne p1, p0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v1

    .line 180
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 181
    check-cast v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    .line 182
    .local v0, other:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->dispatcherId_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->dispatcherId_:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getDispatcherId()J
    .locals 2

    .prologue
    .line 161
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->dispatcherId_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    .line 212
    const/4 v4, 0x0

    .line 213
    .local v4, size:I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    if-eqz v5, :cond_0

    .line 214
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 215
    .local v1, element:Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    const/4 v5, 0x1

    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 214
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 219
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    iget v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    .line 220
    const/4 v5, 0x2

    iget-wide v6, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->dispatcherId_:J

    invoke-static {v5, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    .line 223
    :cond_1
    iput v4, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->cachedSize:I

    .line 224
    return v4
.end method

.method public hasDispatcherId()Z
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->bitField0_:I

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
    .locals 8

    .prologue
    .line 187
    const/16 v1, 0x11

    .line 188
    .local v1, result:I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    if-nez v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 194
    :cond_0
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->dispatcherId_:J

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->dispatcherId_:J

    const/16 v7, 0x20

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 195
    return v1

    .line 190
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 191
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    add-int v1, v3, v2

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;
    .locals 7
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 232
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 233
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 237
    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 238
    :sswitch_0
    return-object p0

    .line 243
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 244
    .local v0, arrayLength:I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    if-nez v5, :cond_2

    move v1, v4

    .line 245
    .local v1, i:I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    .line 246
    .local v2, newArray:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    if-eqz v5, :cond_1

    .line 247
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    :cond_1
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    .line 250
    :goto_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 251
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    new-instance v6, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;-><init>()V

    aput-object v6, v5, v1

    .line 252
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 253
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 250
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 244
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    :cond_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    array-length v1, v5

    goto :goto_1

    .line 256
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    :cond_3
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    new-instance v6, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;-><init>()V

    aput-object v6, v5, v1

    .line 257
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 261
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->dispatcherId_:J

    .line 262
    iget v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->bitField0_:I

    goto :goto_0

    .line 233
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 147
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    move-result-object v0

    return-object v0
.end method

.method public setDispatcherId(J)Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;
    .locals 1
    .parameter "value"

    .prologue
    .line 164
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->dispatcherId_:J

    .line 165
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->bitField0_:I

    .line 166
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
    .line 200
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    if-eqz v4, :cond_0

    .line 201
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 202
    .local v1, element:Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    const/4 v4, 0x1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 201
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 205
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    iget v4, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 206
    const/4 v4, 0x2

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->dispatcherId_:J

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 208
    :cond_1
    return-void
.end method
