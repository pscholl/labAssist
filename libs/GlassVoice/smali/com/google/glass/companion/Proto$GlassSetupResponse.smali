.class public final Lcom/google/glass/companion/Proto$GlassSetupResponse;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlassSetupResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/Proto$GlassSetupResponse$SetupStatus;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$GlassSetupResponse;


# instance fields
.field private bitField0_:I

.field private setupStatus_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5363
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$GlassSetupResponse;

    sput-object v0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$GlassSetupResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5364
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 5374
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setupStatus_:I

    .line 5364
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassSetupResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5469
    new-instance v0, Lcom/google/glass/companion/Proto$GlassSetupResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$GlassSetupResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$GlassSetupResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassSetupResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$GlassSetupResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 5463
    new-instance v0, Lcom/google/glass/companion/Proto$GlassSetupResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$GlassSetupResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$GlassSetupResponse;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/glass/companion/Proto$GlassSetupResponse;
    .locals 1

    .prologue
    .line 5393
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->bitField0_:I

    .line 5394
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setupStatus_:I

    .line 5395
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->cachedSize:I

    .line 5396
    return-object p0
.end method

.method public clearSetupStatus()Lcom/google/glass/companion/Proto$GlassSetupResponse;
    .locals 1

    .prologue
    .line 5387
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setupStatus_:I

    .line 5388
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->bitField0_:I

    .line 5389
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5401
    if-ne p1, p0, :cond_1

    .line 5404
    :cond_0
    :goto_0
    return v1

    .line 5402
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$GlassSetupResponse;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 5403
    check-cast v0, Lcom/google/glass/companion/Proto$GlassSetupResponse;

    .line 5404
    .local v0, other:Lcom/google/glass/companion/Proto$GlassSetupResponse;
    iget v3, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setupStatus_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setupStatus_:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 5422
    const/4 v0, 0x0

    .line 5423
    .local v0, size:I
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5424
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setupStatus_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5427
    :cond_0
    iput v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->cachedSize:I

    .line 5428
    return v0
.end method

.method public getSetupStatus()I
    .locals 1

    .prologue
    .line 5376
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setupStatus_:I

    return v0
.end method

.method public hasSetupStatus()Z
    .locals 1

    .prologue
    .line 5384
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->bitField0_:I

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
    .locals 2

    .prologue
    .line 5408
    const/16 v0, 0x11

    .line 5409
    .local v0, result:I
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setupStatus_:I

    add-int/lit16 v0, v1, 0x20f

    .line 5410
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassSetupResponse;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 5436
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 5437
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 5441
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5442
    :sswitch_0
    return-object p0

    .line 5447
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 5448
    .local v1, temp:I
    if-eq v1, v3, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 5450
    :cond_1
    iput v1, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setupStatus_:I

    .line 5454
    :goto_1
    iget v2, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->bitField0_:I

    goto :goto_0

    .line 5452
    :cond_2
    iput v3, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setupStatus_:I

    goto :goto_1

    .line 5437
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 5360
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$GlassSetupResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassSetupResponse;

    move-result-object v0

    return-object v0
.end method

.method public setSetupStatus(I)Lcom/google/glass/companion/Proto$GlassSetupResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 5379
    iput p1, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setupStatus_:I

    .line 5380
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->bitField0_:I

    .line 5381
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
    .line 5415
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 5416
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setupStatus_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5418
    :cond_0
    return-void
.end method
