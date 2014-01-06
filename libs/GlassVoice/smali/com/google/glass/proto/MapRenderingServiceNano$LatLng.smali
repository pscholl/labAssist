.class public final Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
.super Lcom/google/protobuf/nano/MessageNano;
.source "MapRenderingServiceNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/proto/MapRenderingServiceNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LatLng"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;


# instance fields
.field public lat:D

.field public lng:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    sput-object v0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 13
    iput-wide v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat:D

    .line 16
    iput-wide v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng:D

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat:D

    .line 20
    iput-wide v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng:D

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->cachedSize:I

    .line 22
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 27
    if-ne p1, p0, :cond_1

    .line 30
    :cond_0
    :goto_0
    return v1

    .line 28
    :cond_1
    instance-of v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 29
    check-cast v0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    .line 30
    .local v0, other:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    iget-wide v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat:D

    iget-wide v5, v0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng:D

    iget-wide v5, v0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, size:I
    iget-wide v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat:D

    cmpl-double v1, v1, v4

    if-eqz v1, :cond_0

    .line 55
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat:D

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 58
    :cond_0
    iget-wide v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng:D

    cmpl-double v1, v1, v4

    if-eqz v1, :cond_1

    .line 59
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng:D

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 62
    :cond_1
    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->cachedSize:I

    .line 63
    return v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 35
    const/16 v0, 0x11

    .line 36
    .local v0, result:I
    iget-wide v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    ushr-long/2addr v3, v6

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/lit16 v0, v1, 0x20f

    .line 37
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 38
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 72
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 76
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    :sswitch_0
    return-object p0

    .line 82
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat:D

    goto :goto_0

    .line 86
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng:D

    goto :goto_0

    .line 72
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x11 -> :sswitch_2
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
    invoke-virtual {p0, p1}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0x0

    .line 43
    iget-wide v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat:D

    cmpl-double v0, v0, v3

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 46
    :cond_0
    iget-wide v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng:D

    cmpl-double v0, v0, v3

    if-eqz v0, :cond_1

    .line 47
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 49
    :cond_1
    return-void
.end method
