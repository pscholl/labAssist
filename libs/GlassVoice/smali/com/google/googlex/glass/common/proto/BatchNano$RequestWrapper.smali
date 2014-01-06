.class public final Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;
.super Lcom/google/protobuf/nano/MessageNano;
.source "BatchNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/BatchNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestWrapper"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;


# instance fields
.field private bitField0_:I

.field private data_:[B

.field private path_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    sput-object v0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 291
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->path_:Ljava/lang/String;

    .line 313
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->data_:[B

    .line 286
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 417
    new-instance v0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 411
    new-instance v0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    return-object v0
.end method


# virtual methods
.method public clearData()Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;
    .locals 1

    .prologue
    .line 329
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->data_:[B

    .line 330
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->bitField0_:I

    .line 331
    return-object p0
.end method

.method public clearPath()Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;
    .locals 1

    .prologue
    .line 307
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->path_:Ljava/lang/String;

    .line 308
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->bitField0_:I

    .line 309
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 336
    if-ne p1, p0, :cond_1

    .line 339
    :cond_0
    :goto_0
    return v1

    .line 337
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 338
    check-cast v0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    .line 339
    .local v0, other:Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->path_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->path_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->data_:[B

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->data_:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->path_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->path_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->data_:[B

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->path_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 367
    const/4 v0, 0x0

    .line 368
    .local v0, size:I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 369
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->path_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 372
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 373
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->data_:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 376
    :cond_1
    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->cachedSize:I

    .line 377
    return v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPath()Z
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->bitField0_:I

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
    .line 344
    const/16 v1, 0x11

    .line 345
    .local v1, result:I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->path_:Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 346
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->data_:[B

    if-nez v2, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 352
    :cond_0
    return v1

    .line 345
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->path_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 348
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->data_:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 349
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->data_:[B

    aget-byte v3, v3, v0

    add-int v1, v2, v3

    .line 348
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 385
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 386
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 390
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 391
    :sswitch_0
    return-object p0

    .line 396
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->path_:Ljava/lang/String;

    .line 397
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->bitField0_:I

    goto :goto_0

    .line 401
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->data_:[B

    .line 402
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->bitField0_:I

    goto :goto_0

    .line 386
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
    .line 282
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    move-result-object v0

    return-object v0
.end method

.method public setData([B)Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;
    .locals 1
    .parameter "value"

    .prologue
    .line 318
    if-nez p1, :cond_0

    .line 319
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 321
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->data_:[B

    .line 322
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->bitField0_:I

    .line 323
    return-object p0
.end method

.method public setPath(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;
    .locals 1
    .parameter "value"

    .prologue
    .line 296
    if-nez p1, :cond_0

    .line 297
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 299
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->path_:Ljava/lang/String;

    .line 300
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->bitField0_:I

    .line 301
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
    .line 357
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 358
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->path_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 360
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 361
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->data_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 363
    :cond_1
    return-void
.end method
