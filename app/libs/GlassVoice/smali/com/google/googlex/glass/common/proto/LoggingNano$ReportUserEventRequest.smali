.class public final Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
.super Lcom/google/protobuf/nano/MessageNano;
.source "LoggingNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/LoggingNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReportUserEventRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest$UserEventSource;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;


# instance fields
.field private action_:Ljava/lang/String;

.field private bitField0_:I

.field private data_:Ljava/lang/String;

.field private hardwareVersion_:Ljava/lang/String;

.field private sessionId_:Ljava/lang/String;

.field private softwareVersion_:Ljava/lang/String;

.field private timestamp_:J

.field public userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

.field private userEventSource_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;

    sput-object v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 215
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventSource_:I

    .line 234
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->action_:Ljava/lang/String;

    .line 256
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->data_:Ljava/lang/String;

    .line 278
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->sessionId_:Ljava/lang/String;

    .line 300
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->timestamp_:J

    .line 319
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->softwareVersion_:Ljava/lang/String;

    .line 341
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->hardwareVersion_:Ljava/lang/String;

    .line 363
    sget-object v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->EMPTY_ARRAY:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 205
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 555
    new-instance v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 549
    new-instance v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;

    return-object v0
.end method


# virtual methods
.method public clearAction()Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    .locals 1

    .prologue
    .line 250
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->action_:Ljava/lang/String;

    .line 251
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    .line 252
    return-object p0
.end method

.method public clearData()Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    .locals 1

    .prologue
    .line 272
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->data_:Ljava/lang/String;

    .line 273
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    .line 274
    return-object p0
.end method

.method public clearHardwareVersion()Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    .locals 1

    .prologue
    .line 357
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->hardwareVersion_:Ljava/lang/String;

    .line 358
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    .line 359
    return-object p0
.end method

.method public clearSessionId()Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    .locals 1

    .prologue
    .line 294
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->sessionId_:Ljava/lang/String;

    .line 295
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    .line 296
    return-object p0
.end method

.method public clearSoftwareVersion()Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    .locals 1

    .prologue
    .line 335
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->softwareVersion_:Ljava/lang/String;

    .line 336
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    .line 337
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    .locals 2

    .prologue
    .line 313
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->timestamp_:J

    .line 314
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    .line 315
    return-object p0
.end method

.method public clearUserEventSource()Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventSource_:I

    .line 229
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    .line 230
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 367
    if-ne p1, p0, :cond_1

    .line 370
    :cond_0
    :goto_0
    return v1

    .line 368
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 369
    check-cast v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;

    .line 370
    .local v0, other:Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventSource_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventSource_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->action_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->action_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->data_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->data_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->sessionId_:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->sessionId_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_3
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->timestamp_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->timestamp_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->softwareVersion_:Ljava/lang/String;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->softwareVersion_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->hardwareVersion_:Ljava/lang/String;

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->hardwareVersion_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->action_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->action_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->data_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->data_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->sessionId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->sessionId_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->softwareVersion_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->softwareVersion_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->hardwareVersion_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->hardwareVersion_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_5
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->action_:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->data_:Ljava/lang/String;

    return-object v0
.end method

.method public getHardwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->hardwareVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    .line 430
    const/4 v4, 0x0

    .line 431
    .local v4, size:I
    iget v5, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 432
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->action_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 435
    :cond_0
    iget v5, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_1

    .line 436
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->data_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 439
    :cond_1
    iget v5, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_2

    .line 440
    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->sessionId_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 443
    :cond_2
    iget v5, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_3

    .line 444
    const/4 v5, 0x4

    iget-wide v6, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->timestamp_:J

    invoke-static {v5, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    .line 447
    :cond_3
    iget v5, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_4

    .line 448
    const/4 v5, 0x5

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->softwareVersion_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 451
    :cond_4
    iget v5, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_5

    .line 452
    const/4 v5, 0x6

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->hardwareVersion_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 455
    :cond_5
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    if-eqz v5, :cond_6

    .line 456
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .local v0, arr$:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_6

    aget-object v1, v0, v2

    .line 457
    .local v1, element:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    const/4 v5, 0x7

    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 456
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 461
    .end local v0           #arr$:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .end local v1           #element:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_6
    iget v5, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_7

    .line 462
    const/16 v5, 0x8

    iget v6, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventSource_:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 465
    :cond_7
    iput v4, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->cachedSize:I

    .line 466
    return v4
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->sessionId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->softwareVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 302
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->timestamp_:J

    return-wide v0
.end method

.method public getUserEventSource()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventSource_:I

    return v0
.end method

.method public hasAction()Z
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHardwareVersion()Z
    .locals 1

    .prologue
    .line 354
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSessionId()Z
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSoftwareVersion()Z
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUserEventSource()Z
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

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
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 381
    const/16 v1, 0x11

    .line 382
    .local v1, result:I
    iget v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventSource_:I

    add-int/lit16 v1, v2, 0x20f

    .line 383
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->action_:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    add-int v1, v4, v2

    .line 384
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->data_:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 385
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->sessionId_:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 386
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->timestamp_:J

    iget-wide v6, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->timestamp_:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 387
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->softwareVersion_:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 388
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->hardwareVersion_:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v3

    :goto_4
    add-int v1, v4, v2

    .line 389
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    if-nez v2, :cond_6

    mul-int/lit8 v1, v1, 0x1f

    .line 395
    :cond_0
    return v1

    .line 383
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->action_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 384
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->data_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 385
    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->sessionId_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 387
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->softwareVersion_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 388
    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->hardwareVersion_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    .line 391
    :cond_6
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 392
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    aget-object v2, v2, v0

    if-nez v2, :cond_7

    move v2, v3

    :goto_6
    add-int v1, v4, v2

    .line 391
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 392
    :cond_7
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->hashCode()I

    move-result v2

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
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

    .line 474
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 475
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 479
    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 480
    :sswitch_0
    return-object p0

    .line 485
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->action_:Ljava/lang/String;

    .line 486
    iget v6, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    goto :goto_0

    .line 490
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->data_:Ljava/lang/String;

    .line 491
    iget v6, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    goto :goto_0

    .line 495
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->sessionId_:Ljava/lang/String;

    .line 496
    iget v6, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    goto :goto_0

    .line 500
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->timestamp_:J

    .line 501
    iget v6, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    goto :goto_0

    .line 505
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->softwareVersion_:Ljava/lang/String;

    .line 506
    iget v6, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    goto :goto_0

    .line 510
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->hardwareVersion_:Ljava/lang/String;

    .line 511
    iget v6, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x40

    iput v6, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    goto :goto_0

    .line 515
    :sswitch_7
    const/16 v6, 0x3a

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 516
    .local v0, arrayLength:I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    if-nez v6, :cond_2

    move v1, v5

    .line 517
    .local v1, i:I
    :goto_1
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 518
    .local v2, newArray:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    if-eqz v6, :cond_1

    .line 519
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 521
    :cond_1
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 522
    :goto_2
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_3

    .line 523
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    new-instance v7, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    invoke-direct {v7}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;-><init>()V

    aput-object v7, v6, v1

    .line 524
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 525
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 522
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 516
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    :cond_2
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    array-length v1, v6

    goto :goto_1

    .line 528
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    :cond_3
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    new-instance v7, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    invoke-direct {v7}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;-><init>()V

    aput-object v7, v6, v1

    .line 529
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 533
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 534
    .local v4, temp:I
    if-eq v4, v8, :cond_4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_5

    .line 536
    :cond_4
    iput v4, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventSource_:I

    .line 540
    :goto_3
    iget v6, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    goto/16 :goto_0

    .line 538
    :cond_5
    iput v8, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventSource_:I

    goto :goto_3

    .line 475
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
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
    .line 201
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 239
    if-nez p1, :cond_0

    .line 240
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 242
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->action_:Ljava/lang/String;

    .line 243
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    .line 244
    return-object p0
.end method

.method public setData(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 261
    if-nez p1, :cond_0

    .line 262
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 264
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->data_:Ljava/lang/String;

    .line 265
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    .line 266
    return-object p0
.end method

.method public setHardwareVersion(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 346
    if-nez p1, :cond_0

    .line 347
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 349
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->hardwareVersion_:Ljava/lang/String;

    .line 350
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    .line 351
    return-object p0
.end method

.method public setSessionId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 283
    if-nez p1, :cond_0

    .line 284
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 286
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->sessionId_:Ljava/lang/String;

    .line 287
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    .line 288
    return-object p0
.end method

.method public setSoftwareVersion(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 324
    if-nez p1, :cond_0

    .line 325
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 327
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->softwareVersion_:Ljava/lang/String;

    .line 328
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    .line 329
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 305
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->timestamp_:J

    .line 306
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    .line 307
    return-object p0
.end method

.method public setUserEventSource(I)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 220
    iput p1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventSource_:I

    .line 221
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    .line 222
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    iget v4, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    .line 401
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->action_:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 403
    :cond_0
    iget v4, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1

    .line 404
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->data_:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 406
    :cond_1
    iget v4, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_2

    .line 407
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->sessionId_:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 409
    :cond_2
    iget v4, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_3

    .line 410
    const/4 v4, 0x4

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->timestamp_:J

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 412
    :cond_3
    iget v4, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_4

    .line 413
    const/4 v4, 0x5

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->softwareVersion_:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 415
    :cond_4
    iget v4, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_5

    .line 416
    const/4 v4, 0x6

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->hardwareVersion_:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 418
    :cond_5
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    if-eqz v4, :cond_6

    .line 419
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .local v0, arr$:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_6

    aget-object v1, v0, v2

    .line 420
    .local v1, element:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    const/4 v4, 0x7

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 419
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 423
    .end local v0           #arr$:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .end local v1           #element:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_6
    iget v4, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_7

    .line 424
    const/16 v4, 0x8

    iget v5, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventSource_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 426
    :cond_7
    return-void
.end method
