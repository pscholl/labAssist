.class public final Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
.super Lcom/google/protobuf/nano/MessageNano;
.source "BatchNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/BatchNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthToken"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;


# instance fields
.field private bitField0_:I

.field private type_:I

.field private value_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    sput-object v0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->type_:I

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->value_:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    new-instance v0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 136
    new-instance v0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    return-object v0
.end method


# virtual methods
.method public clearType()Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->type_:I

    .line 33
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->bitField0_:I

    .line 34
    return-object p0
.end method

.method public clearValue()Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    .locals 1

    .prologue
    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->value_:Ljava/lang/String;

    .line 55
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->bitField0_:I

    .line 56
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 61
    if-ne p1, p0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v1

    .line 62
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 63
    check-cast v0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    .line 64
    .local v0, other:Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->type_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->type_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->value_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->value_:Ljava/lang/String;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->value_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->value_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, size:I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 89
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->type_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 92
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 93
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->value_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 96
    :cond_1
    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->cachedSize:I

    .line 97
    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->type_:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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
    .line 69
    const/16 v0, 0x11

    .line 70
    .local v0, result:I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->type_:I

    add-int/lit16 v0, v1, 0x20f

    .line 71
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->value_:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int v0, v2, v1

    .line 72
    return v0

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->value_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 105
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 106
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 110
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    :sswitch_0
    return-object p0

    .line 116
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 117
    .local v1, temp:I
    if-ne v1, v3, :cond_1

    .line 118
    iput v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->type_:I

    .line 122
    :goto_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->bitField0_:I

    goto :goto_0

    .line 120
    :cond_1
    iput v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->type_:I

    goto :goto_1

    .line 126
    .end local v1           #temp:I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->value_:Ljava/lang/String;

    .line 127
    iget v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->bitField0_:I

    goto :goto_0

    .line 106
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
    .line 10
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    move-result-object v0

    return-object v0
.end method

.method public setType(I)Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    .locals 1
    .parameter "value"

    .prologue
    .line 24
    iput p1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->type_:I

    .line 25
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->bitField0_:I

    .line 26
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    .locals 1
    .parameter "value"

    .prologue
    .line 43
    if-nez p1, :cond_0

    .line 44
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 46
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->value_:Ljava/lang/String;

    .line 47
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->bitField0_:I

    .line 48
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
    .line 77
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 78
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->type_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 80
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 81
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->value_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 83
    :cond_1
    return-void
.end method
