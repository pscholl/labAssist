.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
.super Lcom/google/protobuf/nano/MessageNano;
.source "TimelineNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MenuItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem$TravelMode;,
        Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem$State;,
        Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem$Action;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;


# instance fields
.field private action_:I

.field private bitField0_:I

.field private broadcastAction_:Ljava/lang/String;

.field private id_:Ljava/lang/String;

.field private payload_:Ljava/lang/String;

.field private recipient_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

.field private removeWhenSelected_:Z

.field private travelMode_:I

.field public value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4286
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4287
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 4331
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->id_:Ljava/lang/String;

    .line 4353
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->action_:I

    .line 4372
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .line 4375
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->broadcastAction_:Ljava/lang/String;

    .line 4397
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->removeWhenSelected_:Z

    .line 4416
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->travelMode_:I

    .line 4454
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->payload_:Ljava/lang/String;

    .line 4287
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4710
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4704
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4476
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    .line 4477
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->id_:Ljava/lang/String;

    .line 4478
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->action_:I

    .line 4479
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .line 4480
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->broadcastAction_:Ljava/lang/String;

    .line 4481
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->removeWhenSelected_:Z

    .line 4482
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->travelMode_:I

    .line 4483
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 4484
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->payload_:Ljava/lang/String;

    .line 4485
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->cachedSize:I

    .line 4486
    return-object p0
.end method

.method public clearAction()Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .locals 1

    .prologue
    .line 4366
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->action_:I

    .line 4367
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    .line 4368
    return-object p0
.end method

.method public clearBroadcastAction()Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .locals 1

    .prologue
    .line 4391
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->broadcastAction_:Ljava/lang/String;

    .line 4392
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    .line 4393
    return-object p0
.end method

.method public clearId()Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .locals 1

    .prologue
    .line 4347
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->id_:Ljava/lang/String;

    .line 4348
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    .line 4349
    return-object p0
.end method

.method public clearPayload()Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .locals 1

    .prologue
    .line 4470
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->payload_:Ljava/lang/String;

    .line 4471
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    .line 4472
    return-object p0
.end method

.method public clearRecipient()Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .locals 1

    .prologue
    .line 4450
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 4451
    return-object p0
.end method

.method public clearRemoveWhenSelected()Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .locals 1

    .prologue
    .line 4410
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->removeWhenSelected_:Z

    .line 4411
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    .line 4412
    return-object p0
.end method

.method public clearTravelMode()Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .locals 1

    .prologue
    .line 4429
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->travelMode_:I

    .line 4430
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    .line 4431
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4491
    if-ne p1, p0, :cond_1

    .line 4494
    :cond_0
    :goto_0
    return v1

    .line 4492
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 4493
    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 4494
    .local v0, other:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->id_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->id_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->action_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->action_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->broadcastAction_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->broadcastAction_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_2
    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->removeWhenSelected_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->removeWhenSelected_:Z

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->travelMode_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->travelMode_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v3, :cond_3

    :goto_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->payload_:Ljava/lang/String;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->payload_:Ljava/lang/String;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->id_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->id_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->broadcastAction_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->broadcastAction_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->payload_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->payload_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getAction()I
    .locals 1

    .prologue
    .line 4355
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->action_:I

    return v0
.end method

.method public getBroadcastAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4377
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->broadcastAction_:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4333
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4456
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->payload_:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipient()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 4437
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    return-object v0
.end method

.method public getRemoveWhenSelected()Z
    .locals 1

    .prologue
    .line 4399
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->removeWhenSelected_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 4554
    const/4 v4, 0x0

    .line 4555
    .local v4, size:I
    iget v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 4556
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->id_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 4559
    :cond_0
    iget v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 4560
    const/4 v5, 0x2

    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->action_:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 4563
    :cond_1
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    if-eqz v5, :cond_2

    .line 4564
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 4565
    .local v1, element:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    const/4 v5, 0x3

    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 4564
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4569
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_2
    iget v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_3

    .line 4570
    const/4 v5, 0x5

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->broadcastAction_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 4573
    :cond_3
    iget v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_4

    .line 4574
    const/4 v5, 0x7

    iget-boolean v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->removeWhenSelected_:Z

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    .line 4577
    :cond_4
    iget v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_5

    .line 4578
    const/16 v5, 0x8

    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->travelMode_:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 4581
    :cond_5
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v5, :cond_6

    .line 4582
    const/16 v5, 0x9

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 4585
    :cond_6
    iget v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_7

    .line 4586
    const/16 v5, 0xa

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->payload_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 4589
    :cond_7
    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->cachedSize:I

    .line 4590
    return v4
.end method

.method public getTravelMode()I
    .locals 1

    .prologue
    .line 4418
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->travelMode_:I

    return v0
.end method

.method public hasAction()Z
    .locals 1

    .prologue
    .line 4363
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBroadcastAction()Z
    .locals 1

    .prologue
    .line 4388
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 4344
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPayload()Z
    .locals 1

    .prologue
    .line 4467
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRecipient()Z
    .locals 1

    .prologue
    .line 4447
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRemoveWhenSelected()Z
    .locals 1

    .prologue
    .line 4407
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTravelMode()Z
    .locals 1

    .prologue
    .line 4426
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 4505
    const/16 v1, 0x11

    .line 4506
    .local v1, result:I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->id_:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 4507
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->action_:I

    add-int v1, v2, v4

    .line 4508
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    if-nez v2, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 4514
    :cond_0
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->broadcastAction_:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 4515
    mul-int/lit8 v4, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->removeWhenSelected_:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    :goto_2
    add-int v1, v4, v2

    .line 4516
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->travelMode_:I

    add-int v1, v2, v4

    .line 4517
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v2, :cond_6

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 4518
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->payload_:Ljava/lang/String;

    if-nez v4, :cond_7

    :goto_4
    add-int v1, v2, v3

    .line 4519
    return v1

    .line 4506
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->id_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 4510
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 4511
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    move v2, v3

    :goto_6
    add-int v1, v4, v2

    .line 4510
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 4511
    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->hashCode()I

    move-result v2

    goto :goto_6

    .line 4514
    .end local v0           #i:I
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->broadcastAction_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 4515
    :cond_5
    const/4 v2, 0x2

    goto :goto_2

    .line 4517
    :cond_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hashCode()I

    move-result v2

    goto :goto_3

    .line 4518
    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->payload_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_4
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .locals 11
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v5, 0x0

    .line 4598
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 4599
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 4603
    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 4604
    :sswitch_0
    return-object p0

    .line 4609
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->id_:Ljava/lang/String;

    .line 4610
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    goto :goto_0

    .line 4614
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 4615
    .local v4, temp:I
    if-eqz v4, :cond_1

    if-eq v4, v8, :cond_1

    if-eq v4, v9, :cond_1

    if-eq v4, v10, :cond_1

    const/4 v6, 0x5

    if-eq v4, v6, :cond_1

    const/4 v6, 0x6

    if-eq v4, v6, :cond_1

    const/4 v6, 0x7

    if-eq v4, v6, :cond_1

    const/16 v6, 0x8

    if-eq v4, v6, :cond_1

    const/16 v6, 0x9

    if-eq v4, v6, :cond_1

    const/16 v6, 0xa

    if-eq v4, v6, :cond_1

    const/16 v6, 0xb

    if-eq v4, v6, :cond_1

    const/16 v6, 0xc

    if-eq v4, v6, :cond_1

    const/16 v6, 0xd

    if-eq v4, v6, :cond_1

    const/16 v6, 0xe

    if-eq v4, v6, :cond_1

    const/16 v6, 0xf

    if-eq v4, v6, :cond_1

    const/16 v6, 0x10

    if-eq v4, v6, :cond_1

    const/16 v6, 0x11

    if-eq v4, v6, :cond_1

    const/16 v6, 0x12

    if-eq v4, v6, :cond_1

    const/16 v6, 0x13

    if-eq v4, v6, :cond_1

    const/16 v6, 0x14

    if-eq v4, v6, :cond_1

    const/16 v6, 0x15

    if-eq v4, v6, :cond_1

    const/16 v6, 0x16

    if-ne v4, v6, :cond_2

    .line 4637
    :cond_1
    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->action_:I

    .line 4641
    :goto_1
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    goto :goto_0

    .line 4639
    :cond_2
    iput v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->action_:I

    goto :goto_1

    .line 4645
    .end local v4           #temp:I
    :sswitch_3
    const/16 v6, 0x1a

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4646
    .local v0, arrayLength:I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    if-nez v6, :cond_4

    move v1, v5

    .line 4647
    .local v1, i:I
    :goto_2
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .line 4648
    .local v2, newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    if-eqz v6, :cond_3

    .line 4649
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4651
    :cond_3
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .line 4652
    :goto_3
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_5

    .line 4653
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;-><init>()V

    aput-object v7, v6, v1

    .line 4654
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 4655
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4652
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4646
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    :cond_4
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    array-length v1, v6

    goto :goto_2

    .line 4658
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    :cond_5
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;-><init>()V

    aput-object v7, v6, v1

    .line 4659
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 4663
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->broadcastAction_:Ljava/lang/String;

    .line 4664
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    goto/16 :goto_0

    .line 4668
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->removeWhenSelected_:Z

    .line 4669
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    goto/16 :goto_0

    .line 4673
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 4674
    .restart local v4       #temp:I
    if-eqz v4, :cond_6

    const/4 v6, 0x1

    if-eq v4, v6, :cond_6

    if-eq v4, v8, :cond_6

    if-eq v4, v9, :cond_6

    if-ne v4, v10, :cond_7

    .line 4679
    :cond_6
    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->travelMode_:I

    .line 4683
    :goto_4
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    goto/16 :goto_0

    .line 4681
    :cond_7
    iput v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->travelMode_:I

    goto :goto_4

    .line 4687
    .end local v4           #temp:I
    :sswitch_7
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v6, :cond_8

    .line 4688
    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;-><init>()V

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 4690
    :cond_8
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 4694
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->payload_:Ljava/lang/String;

    .line 4695
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    goto/16 :goto_0

    .line 4599
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x2a -> :sswitch_4
        0x38 -> :sswitch_5
        0x40 -> :sswitch_6
        0x4a -> :sswitch_7
        0x52 -> :sswitch_8
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
    .line 4283
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setAction(I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 4358
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->action_:I

    .line 4359
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    .line 4360
    return-object p0
.end method

.method public setBroadcastAction(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 4380
    if-nez p1, :cond_0

    .line 4381
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4383
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->broadcastAction_:Ljava/lang/String;

    .line 4384
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    .line 4385
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 4336
    if-nez p1, :cond_0

    .line 4337
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4339
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->id_:Ljava/lang/String;

    .line 4340
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    .line 4341
    return-object p0
.end method

.method public setPayload(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 4459
    if-nez p1, :cond_0

    .line 4460
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4462
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->payload_:Ljava/lang/String;

    .line 4463
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    .line 4464
    return-object p0
.end method

.method public setRecipient(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 4440
    if-nez p1, :cond_0

    .line 4441
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4443
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 4444
    return-object p0
.end method

.method public setRemoveWhenSelected(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 4402
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->removeWhenSelected_:Z

    .line 4403
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    .line 4404
    return-object p0
.end method

.method public setTravelMode(I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 4421
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->travelMode_:I

    .line 4422
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    .line 4423
    return-object p0
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
    .line 4524
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 4525
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->id_:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4527
    :cond_0
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 4528
    const/4 v4, 0x2

    iget v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->action_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4530
    :cond_1
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    if-eqz v4, :cond_2

    .line 4531
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 4532
    .local v1, element:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    const/4 v4, 0x3

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 4531
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4535
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_2
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_3

    .line 4536
    const/4 v4, 0x5

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->broadcastAction_:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4538
    :cond_3
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_4

    .line 4539
    const/4 v4, 0x7

    iget-boolean v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->removeWhenSelected_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4541
    :cond_4
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_5

    .line 4542
    const/16 v4, 0x8

    iget v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->travelMode_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4544
    :cond_5
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v4, :cond_6

    .line 4545
    const/16 v4, 0x9

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 4547
    :cond_6
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_7

    .line 4548
    const/16 v4, 0xa

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->payload_:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4550
    :cond_7
    return-void
.end method
