.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;
.super Lcom/google/protobuf/nano/MessageNano;
.source "TimelineNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NotificationConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig$Level;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;


# instance fields
.field private bitField0_:I

.field private deliveryTime_:J

.field private level_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4902
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 4903
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 4912
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->level_:I

    .line 4931
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->deliveryTime_:J

    .line 4903
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5040
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 5034
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;
    .locals 2

    .prologue
    .line 4950
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->bitField0_:I

    .line 4951
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->level_:I

    .line 4952
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->deliveryTime_:J

    .line 4953
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->cachedSize:I

    .line 4954
    return-object p0
.end method

.method public clearDeliveryTime()Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;
    .locals 2

    .prologue
    .line 4944
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->deliveryTime_:J

    .line 4945
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->bitField0_:I

    .line 4946
    return-object p0
.end method

.method public clearLevel()Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;
    .locals 1

    .prologue
    .line 4925
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->level_:I

    .line 4926
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->bitField0_:I

    .line 4927
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4959
    if-ne p1, p0, :cond_1

    .line 4962
    :cond_0
    :goto_0
    return v1

    .line 4960
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 4961
    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    .line 4962
    .local v0, other:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->level_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->level_:I

    if-ne v3, v4, :cond_3

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->deliveryTime_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->deliveryTime_:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getDeliveryTime()J
    .locals 2

    .prologue
    .line 4933
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->deliveryTime_:J

    return-wide v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 4914
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->level_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 4985
    const/4 v0, 0x0

    .line 4986
    .local v0, size:I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4987
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->level_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4990
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 4991
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->deliveryTime_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4994
    :cond_1
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->cachedSize:I

    .line 4995
    return v0
.end method

.method public hasDeliveryTime()Z
    .locals 1

    .prologue
    .line 4941
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLevel()Z
    .locals 1

    .prologue
    .line 4922
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->bitField0_:I

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
    .locals 7

    .prologue
    .line 4967
    const/16 v0, 0x11

    .line 4968
    .local v0, result:I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->level_:I

    add-int/lit16 v0, v1, 0x20f

    .line 4969
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->deliveryTime_:J

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->deliveryTime_:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 4970
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;
    .locals 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xa

    .line 5003
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 5004
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 5008
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5009
    :sswitch_0
    return-object p0

    .line 5014
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 5015
    .local v1, temp:I
    if-ne v1, v4, :cond_1

    .line 5016
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->level_:I

    .line 5020
    :goto_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->bitField0_:I

    goto :goto_0

    .line 5018
    :cond_1
    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->level_:I

    goto :goto_1

    .line 5024
    .end local v1           #temp:I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->deliveryTime_:J

    .line 5025
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->bitField0_:I

    goto :goto_0

    .line 5004
    nop

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
    .line 4899
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    move-result-object v0

    return-object v0
.end method

.method public setDeliveryTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;
    .locals 1
    .parameter "value"

    .prologue
    .line 4936
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->deliveryTime_:J

    .line 4937
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->bitField0_:I

    .line 4938
    return-object p0
.end method

.method public setLevel(I)Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;
    .locals 1
    .parameter "value"

    .prologue
    .line 4917
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->level_:I

    .line 4918
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->bitField0_:I

    .line 4919
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4975
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4976
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->level_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4978
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4979
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->deliveryTime_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 4981
    :cond_1
    return-void
.end method
