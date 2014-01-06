.class public final Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;
.super Lcom/google/protobuf/nano/MessageNano;
.source "LoggingNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/LoggingNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReportUserEventResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse$ResponseCode;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;


# instance fields
.field private bitField0_:I

.field private responseCode_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 563
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;

    sput-object v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 564
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 575
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->responseCode_:I

    .line 564
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 664
    new-instance v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 658
    new-instance v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;

    return-object v0
.end method


# virtual methods
.method public clearResponseCode()Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;
    .locals 1

    .prologue
    .line 588
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->responseCode_:I

    .line 589
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->bitField0_:I

    .line 590
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 595
    if-ne p1, p0, :cond_1

    .line 598
    :cond_0
    :goto_0
    return v1

    .line 596
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 597
    check-cast v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;

    .line 598
    .local v0, other:Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->responseCode_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->responseCode_:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    .line 577
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->responseCode_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 616
    const/4 v0, 0x0

    .line 617
    .local v0, size:I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 618
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->responseCode_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 621
    :cond_0
    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->cachedSize:I

    .line 622
    return v0
.end method

.method public hasResponseCode()Z
    .locals 1

    .prologue
    .line 585
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->bitField0_:I

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
    .line 602
    const/16 v0, 0x11

    .line 603
    .local v0, result:I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->responseCode_:I

    add-int/lit16 v0, v1, 0x20f

    .line 604
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 630
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 631
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 635
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 636
    :sswitch_0
    return-object p0

    .line 641
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 642
    .local v1, temp:I
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 645
    :cond_1
    iput v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->responseCode_:I

    .line 649
    :goto_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->bitField0_:I

    goto :goto_0

    .line 647
    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->responseCode_:I

    goto :goto_1

    .line 631
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
    .line 560
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;

    move-result-object v0

    return-object v0
.end method

.method public setResponseCode(I)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 580
    iput p1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->responseCode_:I

    .line 581
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->bitField0_:I

    .line 582
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
    .line 609
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 610
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->responseCode_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 612
    :cond_0
    return-void
.end method
