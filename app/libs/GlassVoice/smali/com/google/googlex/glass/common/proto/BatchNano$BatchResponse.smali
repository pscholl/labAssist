.class public final Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;
.super Lcom/google/protobuf/nano/MessageNano;
.source "BatchNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/BatchNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BatchResponse"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;


# instance fields
.field public response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 716
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;

    sput-object v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 717
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 720
    sget-object v0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    .line 717
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 808
    new-instance v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 802
    new-instance v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 724
    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    .line 727
    :goto_0
    return v1

    .line 725
    :cond_0
    instance-of v1, p1, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 726
    check-cast v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;

    .line 727
    .local v0, other:Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 752
    const/4 v4, 0x0

    .line 753
    .local v4, size:I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    if-eqz v5, :cond_0

    .line 754
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 755
    .local v1, element:Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    const/4 v5, 0x1

    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 754
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 759
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    iput v4, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->cachedSize:I

    .line 760
    return v4
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 731
    const/16 v1, 0x11

    .line 732
    .local v1, result:I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    if-nez v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 738
    :cond_0
    return v1

    .line 734
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 735
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    add-int v1, v3, v2

    .line 734
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 735
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;
    .locals 7
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 768
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 769
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 773
    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 774
    :sswitch_0
    return-object p0

    .line 779
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 780
    .local v0, arrayLength:I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    if-nez v5, :cond_2

    move v1, v4

    .line 781
    .local v1, i:I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    .line 782
    .local v2, newArray:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    if-eqz v5, :cond_1

    .line 783
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 785
    :cond_1
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    .line 786
    :goto_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 787
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    new-instance v6, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;-><init>()V

    aput-object v6, v5, v1

    .line 788
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 789
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 786
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 780
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    :cond_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    array-length v1, v5

    goto :goto_1

    .line 792
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    :cond_3
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    new-instance v6, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;-><init>()V

    aput-object v6, v5, v1

    .line 793
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 769
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
    .line 713
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;

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
    .line 743
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    if-eqz v4, :cond_0

    .line 744
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 745
    .local v1, element:Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    const/4 v4, 0x1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 744
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 748
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    return-void
.end method
