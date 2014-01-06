.class public final Lcom/google/glass/companion/Proto$GlassSetupRequest;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlassSetupRequest"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$GlassSetupRequest;


# instance fields
.field private bitField0_:I

.field private setupString_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5257
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$GlassSetupRequest;

    sput-object v0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$GlassSetupRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5258
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 5263
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->setupString_:Ljava/lang/String;

    .line 5258
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassSetupRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5355
    new-instance v0, Lcom/google/glass/companion/Proto$GlassSetupRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$GlassSetupRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$GlassSetupRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassSetupRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$GlassSetupRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 5349
    new-instance v0, Lcom/google/glass/companion/Proto$GlassSetupRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$GlassSetupRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$GlassSetupRequest;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/glass/companion/Proto$GlassSetupRequest;
    .locals 1

    .prologue
    .line 5285
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->bitField0_:I

    .line 5286
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->setupString_:Ljava/lang/String;

    .line 5287
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->cachedSize:I

    .line 5288
    return-object p0
.end method

.method public clearSetupString()Lcom/google/glass/companion/Proto$GlassSetupRequest;
    .locals 1

    .prologue
    .line 5279
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->setupString_:Ljava/lang/String;

    .line 5280
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->bitField0_:I

    .line 5281
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5293
    if-ne p1, p0, :cond_1

    .line 5296
    :cond_0
    :goto_0
    return v1

    .line 5294
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$GlassSetupRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 5295
    check-cast v0, Lcom/google/glass/companion/Proto$GlassSetupRequest;

    .line 5296
    .local v0, other:Lcom/google/glass/companion/Proto$GlassSetupRequest;
    iget-object v3, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->setupString_:Ljava/lang/String;

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->setupString_:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->setupString_:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->setupString_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 5314
    const/4 v0, 0x0

    .line 5315
    .local v0, size:I
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5316
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->setupString_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5319
    :cond_0
    iput v0, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->cachedSize:I

    .line 5320
    return v0
.end method

.method public getSetupString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5265
    iget-object v0, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->setupString_:Ljava/lang/String;

    return-object v0
.end method

.method public hasSetupString()Z
    .locals 1

    .prologue
    .line 5276
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->bitField0_:I

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
    .line 5300
    const/16 v0, 0x11

    .line 5301
    .local v0, result:I
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->setupString_:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 5302
    return v0

    .line 5301
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->setupString_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassSetupRequest;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5328
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 5329
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 5333
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5334
    :sswitch_0
    return-object p0

    .line 5339
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->setupString_:Ljava/lang/String;

    .line 5340
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->bitField0_:I

    goto :goto_0

    .line 5329
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 5254
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$GlassSetupRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassSetupRequest;

    move-result-object v0

    return-object v0
.end method

.method public setSetupString(Ljava/lang/String;)Lcom/google/glass/companion/Proto$GlassSetupRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 5268
    if-nez p1, :cond_0

    .line 5269
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5271
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->setupString_:Ljava/lang/String;

    .line 5272
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->bitField0_:I

    .line 5273
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
    .line 5307
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 5308
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->setupString_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5310
    :cond_0
    return-void
.end method
