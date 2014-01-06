.class public final Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
.super Lcom/google/protobuf/nano/MessageNano;
.source "MapRenderingServiceNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/proto/MapRenderingServiceNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Polyline"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;


# instance fields
.field public colorArgb:I

.field public vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

.field public width:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    sput-object v0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 225
    sget-object v0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    .line 228
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->width:F

    .line 231
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->colorArgb:I

    .line 222
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    new-instance v0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 347
    new-instance v0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    .locals 1

    .prologue
    .line 234
    sget-object v0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    .line 235
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->width:F

    .line 236
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->colorArgb:I

    .line 237
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->cachedSize:I

    .line 238
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 243
    if-ne p1, p0, :cond_1

    .line 246
    :cond_0
    :goto_0
    return v1

    .line 244
    :cond_1
    instance-of v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 245
    check-cast v0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    .line 246
    .local v0, other:Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    iget-object v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->width:F

    iget v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->width:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->colorArgb:I

    iget v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->colorArgb:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 281
    const/4 v4, 0x0

    .line 282
    .local v4, size:I
    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-eqz v5, :cond_0

    .line 283
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    .local v0, arr$:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 284
    .local v1, element:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    const/4 v5, 0x1

    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 283
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 288
    .end local v0           #arr$:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    .end local v1           #element:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    iget v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->width:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_1

    .line 289
    const/4 v5, 0x2

    iget v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->width:F

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v5

    add-int/2addr v4, v5

    .line 292
    :cond_1
    iget v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->colorArgb:I

    if-eqz v5, :cond_2

    .line 293
    const/4 v5, 0x3

    iget v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->colorArgb:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 296
    :cond_2
    iput v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->cachedSize:I

    .line 297
    return v4
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 252
    const/16 v1, 0x11

    .line 253
    .local v1, result:I
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-nez v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 259
    :cond_0
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->width:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int v1, v2, v3

    .line 260
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->colorArgb:I

    add-int v1, v2, v3

    .line 261
    return v1

    .line 255
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 256
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    add-int v1, v3, v2

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    :cond_2
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    .locals 7
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 305
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 306
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 310
    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 311
    :sswitch_0
    return-object p0

    .line 316
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 317
    .local v0, arrayLength:I
    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-nez v5, :cond_2

    move v1, v4

    .line 318
    .local v1, i:I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    .line 319
    .local v2, newArray:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-eqz v5, :cond_1

    .line 320
    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 322
    :cond_1
    iput-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    .line 323
    :goto_2
    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 324
    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    new-instance v6, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-direct {v6}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;-><init>()V

    aput-object v6, v5, v1

    .line 325
    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 326
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 323
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 317
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    :cond_2
    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    array-length v1, v5

    goto :goto_1

    .line 329
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    :cond_3
    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    new-instance v6, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-direct {v6}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;-><init>()V

    aput-object v6, v5, v1

    .line 330
    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 334
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v5

    iput v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->width:F

    goto :goto_0

    .line 338
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFixed32()I

    move-result v5

    iput v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->colorArgb:I

    goto :goto_0

    .line 306
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
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
    .line 218
    invoke-virtual {p0, p1}, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    iget-object v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-eqz v4, :cond_0

    .line 267
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    .local v0, arr$:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 268
    .local v1, element:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    const/4 v4, 0x1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 267
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 271
    .end local v0           #arr$:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    .end local v1           #element:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    iget v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->width:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    .line 272
    const/4 v4, 0x2

    iget v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->width:F

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 274
    :cond_1
    iget v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->colorArgb:I

    if-eqz v4, :cond_2

    .line 275
    const/4 v4, 0x3

    iget v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->colorArgb:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32(II)V

    .line 277
    :cond_2
    return-void
.end method
