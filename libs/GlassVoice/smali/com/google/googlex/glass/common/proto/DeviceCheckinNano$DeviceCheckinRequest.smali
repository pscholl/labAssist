.class public final Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;
.super Lcom/google/protobuf/nano/MessageNano;
.source "DeviceCheckinNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/DeviceCheckinNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceCheckinRequest"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;


# instance fields
.field public build:Lcom/google/googlex/glass/common/proto/BuildNano$Build;

.field public deviceId:Ljava/lang/String;

.field public serialNumber:Ljava/lang/String;

.field public sessionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;

    sput-object v0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->deviceId:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->serialNumber:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->build:Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->sessionId:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    new-instance v0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 130
    new-instance v0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;
    .locals 1

    .prologue
    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->deviceId:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->serialNumber:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->build:Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->sessionId:Ljava/lang/String;

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->cachedSize:I

    .line 30
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 35
    if-ne p1, p0, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v1

    .line 36
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 37
    check-cast v0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;

    .line 38
    .local v0, other:Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->deviceId:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->deviceId:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->serialNumber:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->serialNumber:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->build:Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->build:Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    if-nez v3, :cond_3

    :goto_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->sessionId:Ljava/lang/String;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->sessionId:Ljava/lang/String;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->deviceId:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->deviceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->serialNumber:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->serialNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->build:Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->build:Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->sessionId:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->sessionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, size:I
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->deviceId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->deviceId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->serialNumber:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 77
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->serialNumber:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->build:Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    if-eqz v1, :cond_2

    .line 81
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->build:Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 84
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->sessionId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 85
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->sessionId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 88
    :cond_3
    iput v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->cachedSize:I

    .line 89
    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 45
    const/16 v0, 0x11

    .line 46
    .local v0, result:I
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->deviceId:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 47
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->serialNumber:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 48
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->build:Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    add-int v0, v3, v1

    .line 49
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->sessionId:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_3
    add-int v0, v1, v2

    .line 50
    return v0

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->deviceId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 47
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->serialNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 48
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->build:Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->hashCode()I

    move-result v1

    goto :goto_2

    .line 49
    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->sessionId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 98
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 102
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    :sswitch_0
    return-object p0

    .line 108
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->deviceId:Ljava/lang/String;

    goto :goto_0

    .line 112
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->serialNumber:Ljava/lang/String;

    goto :goto_0

    .line 116
    :sswitch_3
    new-instance v1, Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    invoke-direct {v1}, Lcom/google/googlex/glass/common/proto/BuildNano$Build;-><init>()V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->build:Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    .line 117
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->build:Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 121
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->sessionId:Ljava/lang/String;

    goto :goto_0

    .line 98
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
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
    .line 6
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;

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
    .line 55
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->deviceId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->serialNumber:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->serialNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->build:Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    if-eqz v0, :cond_2

    .line 62
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->build:Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->sessionId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 65
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->sessionId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 67
    :cond_3
    return-void
.end method
