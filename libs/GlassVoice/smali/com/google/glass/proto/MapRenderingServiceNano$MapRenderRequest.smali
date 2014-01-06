.class public final Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
.super Lcom/google/protobuf/nano/MessageNano;
.source "MapRenderingServiceNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/proto/MapRenderingServiceNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MapRenderRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest$Type;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;


# instance fields
.field public center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

.field public height:I

.field public id:Ljava/lang/String;

.field public latSpan:D

.field public lngSpan:D

.field public marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

.field public polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

.field public type:I

.field public uri:Ljava/lang/String;

.field public width:I

.field public zoom:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    sput-object v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 362
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 370
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    .line 373
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type:I

    .line 376
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri:Ljava/lang/String;

    .line 379
    iput v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width:I

    .line 382
    iput v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height:I

    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    .line 388
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom:F

    .line 391
    iput-wide v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan:D

    .line 394
    iput-wide v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan:D

    .line 397
    sget-object v0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    .line 400
    sget-object v0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    .line 362
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 664
    new-instance v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 658
    new-instance v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 403
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    .line 404
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type:I

    .line 405
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri:Ljava/lang/String;

    .line 406
    iput v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width:I

    .line 407
    iput v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height:I

    .line 408
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    .line 409
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom:F

    .line 410
    iput-wide v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan:D

    .line 411
    iput-wide v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan:D

    .line 412
    sget-object v0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    .line 413
    sget-object v0, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    .line 414
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->cachedSize:I

    .line 415
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 420
    if-ne p1, p0, :cond_1

    .line 423
    :cond_0
    :goto_0
    return v1

    .line 421
    :cond_1
    instance-of v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 422
    check-cast v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    .line 423
    .local v0, other:Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type:I

    iget v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_2
    iget v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width:I

    iget v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height:I

    iget v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-nez v3, :cond_3

    :goto_3
    iget v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom:F

    iget v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan:D

    iget-wide v5, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan:D

    iget-wide v5, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    iget-object v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    iget-object v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    iget-object v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-virtual {v3, v4}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3
.end method

.method public getSerializedSize()I
    .locals 10

    .prologue
    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    .line 505
    const/4 v4, 0x0

    .line 506
    .local v4, size:I
    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 507
    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    invoke-static {v7, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 510
    :cond_0
    iget v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type:I

    if-eq v5, v7, :cond_1

    .line 511
    const/4 v5, 0x2

    iget v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 514
    :cond_1
    iget v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width:I

    if-eqz v5, :cond_2

    .line 515
    const/4 v5, 0x3

    iget v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 518
    :cond_2
    iget v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height:I

    if-eqz v5, :cond_3

    .line 519
    const/4 v5, 0x4

    iget v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 522
    :cond_3
    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-eqz v5, :cond_4

    .line 523
    const/4 v5, 0x5

    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 526
    :cond_4
    iget v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_5

    .line 527
    const/4 v5, 0x6

    iget v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom:F

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v5

    add-int/2addr v4, v5

    .line 530
    :cond_5
    iget-wide v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan:D

    cmpl-double v5, v5, v8

    if-eqz v5, :cond_6

    .line 531
    const/16 v5, 0x8

    iget-wide v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan:D

    invoke-static {v5, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v5

    add-int/2addr v4, v5

    .line 534
    :cond_6
    iget-wide v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan:D

    cmpl-double v5, v5, v8

    if-eqz v5, :cond_7

    .line 535
    const/16 v5, 0x9

    iget-wide v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan:D

    invoke-static {v5, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v5

    add-int/2addr v4, v5

    .line 538
    :cond_7
    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    if-eqz v5, :cond_8

    .line 539
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    .local v0, arr$:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_8

    aget-object v1, v0, v2

    .line 540
    .local v1, element:Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    const/16 v5, 0xa

    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 539
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 544
    .end local v0           #arr$:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    .end local v1           #element:Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_8
    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    if-eqz v5, :cond_9

    .line 545
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    .local v0, arr$:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v3, :cond_9

    aget-object v1, v0, v2

    .line 546
    .local v1, element:Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    const/16 v5, 0xb

    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 545
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 550
    .end local v0           #arr$:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    .end local v1           #element:Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_9
    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 551
    const/16 v5, 0xc

    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 554
    :cond_a
    iput v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->cachedSize:I

    .line 555
    return v4
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/4 v3, 0x0

    .line 437
    const/16 v1, 0x11

    .line 438
    .local v1, result:I
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 439
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type:I

    add-int v1, v2, v4

    .line 440
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 441
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width:I

    add-int v1, v2, v4

    .line 442
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height:I

    add-int v1, v2, v4

    .line 443
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-nez v2, :cond_4

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 444
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    add-int v1, v2, v4

    .line 445
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 446
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 447
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    if-nez v2, :cond_5

    mul-int/lit8 v1, v1, 0x1f

    .line 453
    :cond_0
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    if-nez v2, :cond_7

    mul-int/lit8 v1, v1, 0x1f

    .line 459
    :cond_1
    return v1

    .line 438
    :cond_2
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 440
    :cond_3
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 443
    :cond_4
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-virtual {v2}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->hashCode()I

    move-result v2

    goto :goto_2

    .line 449
    :cond_5
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 450
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    aget-object v2, v2, v0

    if-nez v2, :cond_6

    move v2, v3

    :goto_4
    add-int v1, v4, v2

    .line 449
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 450
    :cond_6
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->hashCode()I

    move-result v2

    goto :goto_4

    .line 455
    .end local v0           #i:I
    :cond_7
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_5
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 456
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    aget-object v2, v2, v0

    if-nez v2, :cond_8

    move v2, v3

    :goto_6
    add-int v1, v4, v2

    .line 455
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 456
    :cond_8
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->hashCode()I

    move-result v2

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .locals 9
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 563
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 564
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 568
    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 569
    :sswitch_0
    return-object p0

    .line 574
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    goto :goto_0

    .line 578
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 579
    .local v4, temp:I
    if-eq v4, v8, :cond_1

    const/4 v6, 0x2

    if-ne v4, v6, :cond_2

    .line 581
    :cond_1
    iput v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type:I

    goto :goto_0

    .line 583
    :cond_2
    iput v8, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type:I

    goto :goto_0

    .line 588
    .end local v4           #temp:I
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width:I

    goto :goto_0

    .line 592
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height:I

    goto :goto_0

    .line 596
    :sswitch_5
    new-instance v6, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-direct {v6}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;-><init>()V

    iput-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    .line 597
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 601
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v6

    iput v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom:F

    goto :goto_0

    .line 605
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan:D

    goto :goto_0

    .line 609
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan:D

    goto :goto_0

    .line 613
    :sswitch_9
    const/16 v6, 0x52

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 614
    .local v0, arrayLength:I
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    if-nez v6, :cond_4

    move v1, v5

    .line 615
    .local v1, i:I
    :goto_1
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    .line 616
    .local v2, newArray:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    if-eqz v6, :cond_3

    .line 617
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 619
    :cond_3
    iput-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    .line 620
    :goto_2
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_5

    .line 621
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    new-instance v7, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    invoke-direct {v7}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;-><init>()V

    aput-object v7, v6, v1

    .line 622
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 623
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 620
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 614
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    :cond_4
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    array-length v1, v6

    goto :goto_1

    .line 626
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    :cond_5
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    new-instance v7, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    invoke-direct {v7}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;-><init>()V

    aput-object v7, v6, v1

    .line 627
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 631
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    :sswitch_a
    const/16 v6, 0x5a

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 632
    .restart local v0       #arrayLength:I
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    if-nez v6, :cond_7

    move v1, v5

    .line 633
    .restart local v1       #i:I
    :goto_3
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    .line 634
    .local v2, newArray:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    if-eqz v6, :cond_6

    .line 635
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 637
    :cond_6
    iput-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    .line 638
    :goto_4
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_8

    .line 639
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    new-instance v7, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    invoke-direct {v7}, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;-><init>()V

    aput-object v7, v6, v1

    .line 640
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 641
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 638
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 632
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    :cond_7
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    array-length v1, v6

    goto :goto_3

    .line 644
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    :cond_8
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    new-instance v7, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    invoke-direct {v7}, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;-><init>()V

    aput-object v7, v6, v1

    .line 645
    iget-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 649
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri:Ljava/lang/String;

    goto/16 :goto_0

    .line 564
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x35 -> :sswitch_6
        0x41 -> :sswitch_7
        0x49 -> :sswitch_8
        0x52 -> :sswitch_9
        0x5a -> :sswitch_a
        0x62 -> :sswitch_b
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
    .line 358
    invoke-virtual {p0, p1}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 9
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    .line 464
    iget-object v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 465
    iget-object v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    invoke-virtual {p1, v6, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 467
    :cond_0
    iget v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type:I

    if-eq v4, v6, :cond_1

    .line 468
    const/4 v4, 0x2

    iget v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 470
    :cond_1
    iget v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width:I

    if-eqz v4, :cond_2

    .line 471
    const/4 v4, 0x3

    iget v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 473
    :cond_2
    iget v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height:I

    if-eqz v4, :cond_3

    .line 474
    const/4 v4, 0x4

    iget v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 476
    :cond_3
    iget-object v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-eqz v4, :cond_4

    .line 477
    const/4 v4, 0x5

    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 479
    :cond_4
    iget v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_5

    .line 480
    const/4 v4, 0x6

    iget v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom:F

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 482
    :cond_5
    iget-wide v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan:D

    cmpl-double v4, v4, v7

    if-eqz v4, :cond_6

    .line 483
    const/16 v4, 0x8

    iget-wide v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan:D

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 485
    :cond_6
    iget-wide v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan:D

    cmpl-double v4, v4, v7

    if-eqz v4, :cond_7

    .line 486
    const/16 v4, 0x9

    iget-wide v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan:D

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 488
    :cond_7
    iget-object v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    if-eqz v4, :cond_8

    .line 489
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    .local v0, arr$:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_8

    aget-object v1, v0, v2

    .line 490
    .local v1, element:Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    const/16 v4, 0xa

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 489
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 493
    .end local v0           #arr$:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    .end local v1           #element:Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_8
    iget-object v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    if-eqz v4, :cond_9

    .line 494
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    .local v0, arr$:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v3, :cond_9

    aget-object v1, v0, v2

    .line 495
    .local v1, element:Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    const/16 v4, 0xb

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 494
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 498
    .end local v0           #arr$:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    .end local v1           #element:Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_9
    iget-object v4, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 499
    const/16 v4, 0xc

    iget-object v5, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 501
    :cond_a
    return-void
.end method
