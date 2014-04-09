.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;
.super Lcom/google/protobuf/nano/MessageNano;
.source "TimelineNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Priority"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;


# instance fields
.field private bitField0_:I

.field private glasswareAffinity_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2926
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2927
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 2932
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->glasswareAffinity_:I

    .line 2927
    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2951
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->bitField0_:I

    .line 2952
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->glasswareAffinity_:I

    .line 2953
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->cachedSize:I

    .line 2954
    return-object p0
.end method

.method public clearGlasswareAffinity()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;
    .locals 1

    .prologue
    .line 2945
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->glasswareAffinity_:I

    .line 2946
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->bitField0_:I

    .line 2947
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2959
    if-ne p1, p0, :cond_1

    .line 2962
    :cond_0
    :goto_0
    return v1

    .line 2960
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 2961
    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    .line 2962
    .local v0, other:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->glasswareAffinity_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->glasswareAffinity_:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getGlasswareAffinity()I
    .locals 1

    .prologue
    .line 2934
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->glasswareAffinity_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2980
    const/4 v0, 0x0

    .line 2981
    .local v0, size:I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2982
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->glasswareAffinity_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2985
    :cond_0
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->cachedSize:I

    .line 2986
    return v0
.end method

.method public hasGlasswareAffinity()Z
    .locals 1

    .prologue
    .line 2942
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->bitField0_:I

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
    .line 2966
    const/16 v0, 0x11

    .line 2967
    .local v0, result:I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->glasswareAffinity_:I

    add-int/lit16 v0, v1, 0x20f

    .line 2968
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2994
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2995
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2999
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3000
    :sswitch_0
    return-object p0

    .line 3005
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->glasswareAffinity_:I

    .line 3006
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->bitField0_:I

    goto :goto_0

    .line 2995
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
    .line 2923
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3021
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3015
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;-><init>()V

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    return-object v0
.end method

.method public setGlasswareAffinity(I)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;
    .locals 1
    .parameter "value"

    .prologue
    .line 2937
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->glasswareAffinity_:I

    .line 2938
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->bitField0_:I

    .line 2939
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
    .line 2973
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2974
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->glasswareAffinity_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 2976
    :cond_0
    return-void
.end method
