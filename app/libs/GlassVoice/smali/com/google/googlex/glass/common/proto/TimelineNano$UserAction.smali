.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
.super Lcom/google/protobuf/nano/MessageNano;
.source "TimelineNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction$Type;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;


# instance fields
.field private bitField0_:I

.field private payload_:Ljava/lang/String;

.field private type_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5048
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5049
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 5067
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->type_:I

    .line 5086
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->payload_:Ljava/lang/String;

    .line 5049
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5207
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 5201
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    .locals 1

    .prologue
    .line 5108
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->bitField0_:I

    .line 5109
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->type_:I

    .line 5110
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->payload_:Ljava/lang/String;

    .line 5111
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->cachedSize:I

    .line 5112
    return-object p0
.end method

.method public clearPayload()Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    .locals 1

    .prologue
    .line 5102
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->payload_:Ljava/lang/String;

    .line 5103
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->bitField0_:I

    .line 5104
    return-object p0
.end method

.method public clearType()Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    .locals 1

    .prologue
    .line 5080
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->type_:I

    .line 5081
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->bitField0_:I

    .line 5082
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5117
    if-ne p1, p0, :cond_1

    .line 5120
    :cond_0
    :goto_0
    return v1

    .line 5118
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 5119
    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 5120
    .local v0, other:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->type_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->type_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->payload_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->payload_:Ljava/lang/String;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->payload_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->payload_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5088
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->payload_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 5143
    const/4 v0, 0x0

    .line 5144
    .local v0, size:I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5145
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->type_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5148
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 5149
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->payload_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5152
    :cond_1
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->cachedSize:I

    .line 5153
    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 5069
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->type_:I

    return v0
.end method

.method public hasPayload()Z
    .locals 1

    .prologue
    .line 5099
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 5077
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->bitField0_:I

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
    .line 5125
    const/16 v0, 0x11

    .line 5126
    .local v0, result:I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->type_:I

    add-int/lit16 v0, v1, 0x20f

    .line 5127
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->payload_:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int v0, v2, v1

    .line 5128
    return v0

    .line 5127
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->payload_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 5161
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 5162
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 5166
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5167
    :sswitch_0
    return-object p0

    .line 5172
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 5173
    .local v1, temp:I
    if-eq v1, v3, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 5183
    :cond_1
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->type_:I

    .line 5187
    :goto_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->bitField0_:I

    goto :goto_0

    .line 5185
    :cond_2
    iput v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->type_:I

    goto :goto_1

    .line 5191
    .end local v1           #temp:I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->payload_:Ljava/lang/String;

    .line 5192
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->bitField0_:I

    goto :goto_0

    .line 5162
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
    .line 5045
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    move-result-object v0

    return-object v0
.end method

.method public setPayload(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 5091
    if-nez p1, :cond_0

    .line 5092
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5094
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->payload_:Ljava/lang/String;

    .line 5095
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->bitField0_:I

    .line 5096
    return-object p0
.end method

.method public setType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 5072
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->type_:I

    .line 5073
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->bitField0_:I

    .line 5074
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
    .line 5133
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 5134
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->type_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5136
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 5137
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->payload_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5139
    :cond_1
    return-void
.end method
