.class public final Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;
.super Lcom/google/protobuf/nano/MessageNano;
.source "SyncNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/SyncNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AttachmentInsertRequest"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;


# instance fields
.field private bitField0_:I

.field private content_:[B

.field private creationTime_:J

.field private description_:Ljava/lang/String;

.field private deviceId_:Ljava/lang/String;

.field private mimeType_:Ljava/lang/String;

.field private name_:Ljava/lang/String;

.field private source_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2034
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;

    sput-object v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 2035
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 2040
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->deviceId_:Ljava/lang/String;

    .line 2062
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->mimeType_:Ljava/lang/String;

    .line 2084
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->content_:[B

    .line 2106
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->description_:Ljava/lang/String;

    .line 2128
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->name_:Ljava/lang/String;

    .line 2150
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->creationTime_:J

    .line 2169
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->source_:Ljava/lang/String;

    .line 2035
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2343
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2337
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;

    return-object v0
.end method


# virtual methods
.method public clearContent()Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;
    .locals 1

    .prologue
    .line 2100
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->content_:[B

    .line 2101
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    .line 2102
    return-object p0
.end method

.method public clearCreationTime()Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;
    .locals 2

    .prologue
    .line 2163
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->creationTime_:J

    .line 2164
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    .line 2165
    return-object p0
.end method

.method public clearDescription()Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;
    .locals 1

    .prologue
    .line 2122
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->description_:Ljava/lang/String;

    .line 2123
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    .line 2124
    return-object p0
.end method

.method public clearDeviceId()Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;
    .locals 1

    .prologue
    .line 2056
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->deviceId_:Ljava/lang/String;

    .line 2057
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    .line 2058
    return-object p0
.end method

.method public clearMimeType()Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;
    .locals 1

    .prologue
    .line 2078
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->mimeType_:Ljava/lang/String;

    .line 2079
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    .line 2080
    return-object p0
.end method

.method public clearName()Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;
    .locals 1

    .prologue
    .line 2144
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->name_:Ljava/lang/String;

    .line 2145
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    .line 2146
    return-object p0
.end method

.method public clearSource()Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;
    .locals 1

    .prologue
    .line 2185
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->source_:Ljava/lang/String;

    .line 2186
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    .line 2187
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2192
    if-ne p1, p0, :cond_1

    .line 2195
    :cond_0
    :goto_0
    return v1

    .line 2193
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 2194
    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;

    .line 2195
    .local v0, other:Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->deviceId_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->deviceId_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->mimeType_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->mimeType_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->content_:[B

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->content_:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->description_:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->description_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->name_:Ljava/lang/String;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->name_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_4
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->creationTime_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->creationTime_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->source_:Ljava/lang/String;

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->source_:Ljava/lang/String;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->deviceId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->deviceId_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->mimeType_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->mimeType_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->description_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->description_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->name_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->name_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->source_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->source_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getContent()[B
    .locals 1

    .prologue
    .line 2086
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->content_:[B

    return-object v0
.end method

.method public getCreationTime()J
    .locals 2

    .prologue
    .line 2152
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->creationTime_:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2108
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2042
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->deviceId_:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2064
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->mimeType_:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2130
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 2248
    const/4 v0, 0x0

    .line 2249
    .local v0, size:I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2250
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->deviceId_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2253
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 2254
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->mimeType_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2257
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 2258
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->content_:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 2261
    :cond_2
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 2262
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->description_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2265
    :cond_3
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 2266
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->name_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2269
    :cond_4
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 2270
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->creationTime_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2273
    :cond_5
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 2274
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->source_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2277
    :cond_6
    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->cachedSize:I

    .line 2278
    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2171
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->source_:Ljava/lang/String;

    return-object v0
.end method

.method public hasContent()Z
    .locals 1

    .prologue
    .line 2097
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCreationTime()Z
    .locals 1

    .prologue
    .line 2160
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDescription()Z
    .locals 1

    .prologue
    .line 2119
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeviceId()Z
    .locals 1

    .prologue
    .line 2053
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMimeType()Z
    .locals 1

    .prologue
    .line 2075
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 2141
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSource()Z
    .locals 1

    .prologue
    .line 2182
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 2205
    const/16 v1, 0x11

    .line 2206
    .local v1, result:I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->deviceId_:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 2207
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->mimeType_:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 2208
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->content_:[B

    if-nez v2, :cond_3

    mul-int/lit8 v1, v1, 0x1f

    .line 2214
    :cond_0
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->description_:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 2215
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->name_:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 2216
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->creationTime_:J

    iget-wide v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->creationTime_:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 2217
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->source_:Ljava/lang/String;

    if-nez v4, :cond_6

    :goto_4
    add-int v1, v2, v3

    .line 2218
    return v1

    .line 2206
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->deviceId_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 2207
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->mimeType_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 2210
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->content_:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 2211
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->content_:[B

    aget-byte v4, v4, v0

    add-int v1, v2, v4

    .line 2210
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2214
    .end local v0           #i:I
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->description_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 2215
    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->name_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 2217
    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->source_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_4
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2286
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2287
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2291
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2292
    :sswitch_0
    return-object p0

    .line 2297
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->deviceId_:Ljava/lang/String;

    .line 2298
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    goto :goto_0

    .line 2302
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->mimeType_:Ljava/lang/String;

    .line 2303
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    goto :goto_0

    .line 2307
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->content_:[B

    .line 2308
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    goto :goto_0

    .line 2312
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->description_:Ljava/lang/String;

    .line 2313
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    goto :goto_0

    .line 2317
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->name_:Ljava/lang/String;

    .line 2318
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    goto :goto_0

    .line 2322
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->creationTime_:J

    .line 2323
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    goto :goto_0

    .line 2327
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->source_:Ljava/lang/String;

    .line 2328
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    goto :goto_0

    .line 2287
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
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
    .line 2031
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;

    move-result-object v0

    return-object v0
.end method

.method public setContent([B)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 2089
    if-nez p1, :cond_0

    .line 2090
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2092
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->content_:[B

    .line 2093
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    .line 2094
    return-object p0
.end method

.method public setCreationTime(J)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 2155
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->creationTime_:J

    .line 2156
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    .line 2157
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 2111
    if-nez p1, :cond_0

    .line 2112
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2114
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->description_:Ljava/lang/String;

    .line 2115
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    .line 2116
    return-object p0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 2045
    if-nez p1, :cond_0

    .line 2046
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2048
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->deviceId_:Ljava/lang/String;

    .line 2049
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    .line 2050
    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 2067
    if-nez p1, :cond_0

    .line 2068
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2070
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->mimeType_:Ljava/lang/String;

    .line 2071
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    .line 2072
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 2133
    if-nez p1, :cond_0

    .line 2134
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2136
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->name_:Ljava/lang/String;

    .line 2137
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    .line 2138
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 2174
    if-nez p1, :cond_0

    .line 2175
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2177
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->source_:Ljava/lang/String;

    .line 2178
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    .line 2179
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
    .line 2223
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2224
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->deviceId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2226
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 2227
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->mimeType_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2229
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 2230
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->content_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 2232
    :cond_2
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 2233
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->description_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2235
    :cond_3
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 2236
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->name_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2238
    :cond_4
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 2239
    const/4 v0, 0x6

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->creationTime_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 2241
    :cond_5
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 2242
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->source_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2244
    :cond_6
    return-void
.end method
