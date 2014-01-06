.class public final Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto$MotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PointerProperties"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;


# instance fields
.field private bitField0_:I

.field private id_:I

.field private toolType_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1003
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    sput-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1004
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1009
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->id_:I

    .line 1028
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->toolType_:I

    .line 1004
    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1047
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

    .line 1048
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->id_:I

    .line 1049
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->toolType_:I

    .line 1050
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->cachedSize:I

    .line 1051
    return-object p0
.end method

.method public clearId()Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    .locals 1

    .prologue
    .line 1022
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->id_:I

    .line 1023
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

    .line 1024
    return-object p0
.end method

.method public clearToolType()Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    .locals 1

    .prologue
    .line 1041
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->toolType_:I

    .line 1042
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

    .line 1043
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1056
    if-ne p1, p0, :cond_1

    .line 1059
    :cond_0
    :goto_0
    return v1

    .line 1057
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1058
    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    .line 1059
    .local v0, other:Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->id_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->id_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->toolType_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->toolType_:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 1011
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->id_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1082
    const/4 v0, 0x0

    .line 1083
    .local v0, size:I
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1084
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->id_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1087
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1088
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->toolType_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1091
    :cond_1
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->cachedSize:I

    .line 1092
    return v0
.end method

.method public getToolType()I
    .locals 1

    .prologue
    .line 1030
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->toolType_:I

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 1019
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasToolType()Z
    .locals 1

    .prologue
    .line 1038
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

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
    .line 1064
    const/16 v0, 0x11

    .line 1065
    .local v0, result:I
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->id_:I

    add-int/lit16 v0, v1, 0x20f

    .line 1066
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->toolType_:I

    add-int v0, v1, v2

    .line 1067
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1100
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1101
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1105
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1106
    :sswitch_0
    return-object p0

    .line 1111
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->id_:I

    .line 1112
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

    goto :goto_0

    .line 1116
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->toolType_:I

    .line 1117
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

    goto :goto_0

    .line 1101
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 1000
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1132
    new-instance v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1126
    new-instance v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;-><init>()V

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    return-object v0
.end method

.method public setId(I)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    .locals 1
    .parameter "value"

    .prologue
    .line 1014
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->id_:I

    .line 1015
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

    .line 1016
    return-object p0
.end method

.method public setToolType(I)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    .locals 1
    .parameter "value"

    .prologue
    .line 1033
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->toolType_:I

    .line 1034
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

    .line 1035
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
    .line 1072
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1073
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->id_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1075
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1076
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->toolType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1078
    :cond_1
    return-void
.end method
