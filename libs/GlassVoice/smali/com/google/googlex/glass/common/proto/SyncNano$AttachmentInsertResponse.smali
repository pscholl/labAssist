.class public final Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;
.super Lcom/google/protobuf/nano/MessageNano;
.source "SyncNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/SyncNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AttachmentInsertResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse$ResponseCode;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;


# instance fields
.field private attachmentId_:Ljava/lang/String;

.field private bitField0_:I

.field private responseCode_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2351
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;

    sput-object v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2352
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 2362
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->responseCode_:I

    .line 2381
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->attachmentId_:Ljava/lang/String;

    .line 2352
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2486
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2480
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;

    return-object v0
.end method


# virtual methods
.method public clearAttachmentId()Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;
    .locals 1

    .prologue
    .line 2397
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->attachmentId_:Ljava/lang/String;

    .line 2398
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->bitField0_:I

    .line 2399
    return-object p0
.end method

.method public clearResponseCode()Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;
    .locals 1

    .prologue
    .line 2375
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->responseCode_:I

    .line 2376
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->bitField0_:I

    .line 2377
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2404
    if-ne p1, p0, :cond_1

    .line 2407
    :cond_0
    :goto_0
    return v1

    .line 2405
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 2406
    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;

    .line 2407
    .local v0, other:Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->responseCode_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->responseCode_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->attachmentId_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->attachmentId_:Ljava/lang/String;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->attachmentId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->attachmentId_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getAttachmentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2383
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->attachmentId_:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    .line 2364
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->responseCode_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2430
    const/4 v0, 0x0

    .line 2431
    .local v0, size:I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2432
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->responseCode_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2435
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 2436
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->attachmentId_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2439
    :cond_1
    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->cachedSize:I

    .line 2440
    return v0
.end method

.method public hasAttachmentId()Z
    .locals 1

    .prologue
    .line 2394
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->bitField0_:I

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
    .line 2372
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->bitField0_:I

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
    .line 2412
    const/16 v0, 0x11

    .line 2413
    .local v0, result:I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->responseCode_:I

    add-int/lit16 v0, v1, 0x20f

    .line 2414
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->attachmentId_:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int v0, v2, v1

    .line 2415
    return v0

    .line 2414
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->attachmentId_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2448
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2449
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2453
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2454
    :sswitch_0
    return-object p0

    .line 2459
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 2460
    .local v1, temp:I
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 2462
    :cond_1
    iput v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->responseCode_:I

    .line 2466
    :goto_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->bitField0_:I

    goto :goto_0

    .line 2464
    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->responseCode_:I

    goto :goto_1

    .line 2470
    .end local v1           #temp:I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->attachmentId_:Ljava/lang/String;

    .line 2471
    iget v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->bitField0_:I

    goto :goto_0

    .line 2449
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
    .line 2348
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;

    move-result-object v0

    return-object v0
.end method

.method public setAttachmentId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 2386
    if-nez p1, :cond_0

    .line 2387
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2389
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->attachmentId_:Ljava/lang/String;

    .line 2390
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->bitField0_:I

    .line 2391
    return-object p0
.end method

.method public setResponseCode(I)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 2367
    iput p1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->responseCode_:I

    .line 2368
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->bitField0_:I

    .line 2369
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
    .line 2420
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2421
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->responseCode_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2423
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 2424
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->attachmentId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2426
    :cond_1
    return-void
.end method
