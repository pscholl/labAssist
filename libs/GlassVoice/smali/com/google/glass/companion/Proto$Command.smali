.class public final Lcom/google/glass/companion/Proto$Command;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Command"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/Proto$Command$CommandType;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$Command;


# instance fields
.field public command:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4168
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$Command;

    sput-object v0, Lcom/google/glass/companion/Proto$Command;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$Command;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4169
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 4178
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$Command;->command:I

    .line 4169
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Command;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4252
    new-instance v0, Lcom/google/glass/companion/Proto$Command;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Command;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$Command;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Command;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$Command;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4246
    new-instance v0, Lcom/google/glass/companion/Proto$Command;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Command;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Command;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/glass/companion/Proto$Command;
    .locals 1

    .prologue
    .line 4181
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$Command;->command:I

    .line 4182
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$Command;->cachedSize:I

    .line 4183
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4188
    if-ne p1, p0, :cond_1

    .line 4191
    :cond_0
    :goto_0
    return v1

    .line 4189
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$Command;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 4190
    check-cast v0, Lcom/google/glass/companion/Proto$Command;

    .line 4191
    .local v0, other:Lcom/google/glass/companion/Proto$Command;
    iget v3, p0, Lcom/google/glass/companion/Proto$Command;->command:I

    iget v4, v0, Lcom/google/glass/companion/Proto$Command;->command:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4207
    const/4 v0, 0x0

    .line 4208
    .local v0, size:I
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/companion/Proto$Command;->command:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4210
    iput v0, p0, Lcom/google/glass/companion/Proto$Command;->cachedSize:I

    .line 4211
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 4195
    const/16 v0, 0x11

    .line 4196
    .local v0, result:I
    iget v1, p0, Lcom/google/glass/companion/Proto$Command;->command:I

    add-int/lit16 v0, v1, 0x20f

    .line 4197
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Command;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4219
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4220
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 4224
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4225
    :sswitch_0
    return-object p0

    .line 4230
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 4231
    .local v1, temp:I
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 4234
    :cond_1
    iput v1, p0, Lcom/google/glass/companion/Proto$Command;->command:I

    goto :goto_0

    .line 4236
    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/glass/companion/Proto$Command;->command:I

    goto :goto_0

    .line 4220
    nop

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
    .line 4165
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$Command;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Command;

    move-result-object v0

    return-object v0
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
    .line 4202
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/companion/Proto$Command;->command:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4203
    return-void
.end method
