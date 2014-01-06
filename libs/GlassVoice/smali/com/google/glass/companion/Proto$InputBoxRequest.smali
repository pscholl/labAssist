.class public final Lcom/google/glass/companion/Proto$InputBoxRequest;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InputBoxRequest"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$InputBoxRequest;


# instance fields
.field private bitField0_:I

.field private dismissInputBox_:Z

.field private handlerObject_:[B

.field private hintText_:Ljava/lang/String;

.field private inputType_:I

.field private summaryText_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4856
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$InputBoxRequest;

    sput-object v0, Lcom/google/glass/companion/Proto$InputBoxRequest;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$InputBoxRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4857
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 4862
    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->dismissInputBox_:Z

    .line 4881
    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->inputType_:I

    .line 4900
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->summaryText_:Ljava/lang/String;

    .line 4922
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->hintText_:Ljava/lang/String;

    .line 4944
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->handlerObject_:[B

    .line 4857
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$InputBoxRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5101
    new-instance v0, Lcom/google/glass/companion/Proto$InputBoxRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$InputBoxRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$InputBoxRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$InputBoxRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$InputBoxRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 5095
    new-instance v0, Lcom/google/glass/companion/Proto$InputBoxRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$InputBoxRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$InputBoxRequest;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/glass/companion/Proto$InputBoxRequest;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4966
    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    .line 4967
    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->dismissInputBox_:Z

    .line 4968
    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->inputType_:I

    .line 4969
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->summaryText_:Ljava/lang/String;

    .line 4970
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->hintText_:Ljava/lang/String;

    .line 4971
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->handlerObject_:[B

    .line 4972
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->cachedSize:I

    .line 4973
    return-object p0
.end method

.method public clearDismissInputBox()Lcom/google/glass/companion/Proto$InputBoxRequest;
    .locals 1

    .prologue
    .line 4875
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->dismissInputBox_:Z

    .line 4876
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    .line 4877
    return-object p0
.end method

.method public clearHandlerObject()Lcom/google/glass/companion/Proto$InputBoxRequest;
    .locals 1

    .prologue
    .line 4960
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->handlerObject_:[B

    .line 4961
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    .line 4962
    return-object p0
.end method

.method public clearHintText()Lcom/google/glass/companion/Proto$InputBoxRequest;
    .locals 1

    .prologue
    .line 4938
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->hintText_:Ljava/lang/String;

    .line 4939
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    .line 4940
    return-object p0
.end method

.method public clearInputType()Lcom/google/glass/companion/Proto$InputBoxRequest;
    .locals 1

    .prologue
    .line 4894
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->inputType_:I

    .line 4895
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    .line 4896
    return-object p0
.end method

.method public clearSummaryText()Lcom/google/glass/companion/Proto$InputBoxRequest;
    .locals 1

    .prologue
    .line 4916
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->summaryText_:Ljava/lang/String;

    .line 4917
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    .line 4918
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4978
    if-ne p1, p0, :cond_1

    .line 4981
    :cond_0
    :goto_0
    return v1

    .line 4979
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$InputBoxRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 4980
    check-cast v0, Lcom/google/glass/companion/Proto$InputBoxRequest;

    .line 4981
    .local v0, other:Lcom/google/glass/companion/Proto$InputBoxRequest;
    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->dismissInputBox_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/Proto$InputBoxRequest;->dismissInputBox_:Z

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->inputType_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$InputBoxRequest;->inputType_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->summaryText_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$InputBoxRequest;->summaryText_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->hintText_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$InputBoxRequest;->hintText_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_2
    iget-object v3, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->handlerObject_:[B

    iget-object v4, v0, Lcom/google/glass/companion/Proto$InputBoxRequest;->handlerObject_:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->summaryText_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$InputBoxRequest;->summaryText_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->hintText_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$InputBoxRequest;->hintText_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2
.end method

.method public getDismissInputBox()Z
    .locals 1

    .prologue
    .line 4864
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->dismissInputBox_:Z

    return v0
.end method

.method public getHandlerObject()[B
    .locals 1

    .prologue
    .line 4946
    iget-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->handlerObject_:[B

    return-object v0
.end method

.method public getHintText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4924
    iget-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->hintText_:Ljava/lang/String;

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 4883
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->inputType_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 5024
    const/4 v0, 0x0

    .line 5025
    .local v0, size:I
    iget v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5026
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->dismissInputBox_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5029
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 5030
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->inputType_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5033
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 5034
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->summaryText_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5037
    :cond_2
    iget v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 5038
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->hintText_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5041
    :cond_3
    iget v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 5042
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->handlerObject_:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 5045
    :cond_4
    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->cachedSize:I

    .line 5046
    return v0
.end method

.method public getSummaryText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4902
    iget-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->summaryText_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDismissInputBox()Z
    .locals 1

    .prologue
    .line 4872
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHandlerObject()Z
    .locals 1

    .prologue
    .line 4957
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHintText()Z
    .locals 1

    .prologue
    .line 4935
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInputType()Z
    .locals 1

    .prologue
    .line 4891
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSummaryText()Z
    .locals 1

    .prologue
    .line 4913
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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

    .line 4989
    const/16 v1, 0x11

    .line 4990
    .local v1, result:I
    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->dismissInputBox_:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 4991
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->inputType_:I

    add-int v1, v2, v4

    .line 4992
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->summaryText_:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 4993
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->hintText_:Ljava/lang/String;

    if-nez v4, :cond_3

    :goto_2
    add-int v1, v2, v3

    .line 4994
    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->handlerObject_:[B

    if-nez v2, :cond_4

    mul-int/lit8 v1, v1, 0x1f

    .line 5000
    :cond_0
    return v1

    .line 4990
    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    .line 4992
    :cond_2
    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->summaryText_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 4993
    :cond_3
    iget-object v3, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->hintText_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    .line 4996
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->handlerObject_:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 4997
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->handlerObject_:[B

    aget-byte v3, v3, v0

    add-int v1, v2, v3

    .line 4996
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$InputBoxRequest;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5054
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 5055
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 5059
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5060
    :sswitch_0
    return-object p0

    .line 5065
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->dismissInputBox_:Z

    .line 5066
    iget v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    goto :goto_0

    .line 5070
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->inputType_:I

    .line 5071
    iget v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    goto :goto_0

    .line 5075
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->summaryText_:Ljava/lang/String;

    .line 5076
    iget v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    goto :goto_0

    .line 5080
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->hintText_:Ljava/lang/String;

    .line 5081
    iget v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    goto :goto_0

    .line 5085
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->handlerObject_:[B

    .line 5086
    iget v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    goto :goto_0

    .line 5055
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
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
    .line 4853
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$InputBoxRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$InputBoxRequest;

    move-result-object v0

    return-object v0
.end method

.method public setDismissInputBox(Z)Lcom/google/glass/companion/Proto$InputBoxRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 4867
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->dismissInputBox_:Z

    .line 4868
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    .line 4869
    return-object p0
.end method

.method public setHandlerObject([B)Lcom/google/glass/companion/Proto$InputBoxRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 4949
    if-nez p1, :cond_0

    .line 4950
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4952
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->handlerObject_:[B

    .line 4953
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    .line 4954
    return-object p0
.end method

.method public setHintText(Ljava/lang/String;)Lcom/google/glass/companion/Proto$InputBoxRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 4927
    if-nez p1, :cond_0

    .line 4928
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4930
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->hintText_:Ljava/lang/String;

    .line 4931
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    .line 4932
    return-object p0
.end method

.method public setInputType(I)Lcom/google/glass/companion/Proto$InputBoxRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 4886
    iput p1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->inputType_:I

    .line 4887
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    .line 4888
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/String;)Lcom/google/glass/companion/Proto$InputBoxRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 4905
    if-nez p1, :cond_0

    .line 4906
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4908
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->summaryText_:Ljava/lang/String;

    .line 4909
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    .line 4910
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
    .line 5005
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 5006
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->dismissInputBox_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5008
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 5009
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->inputType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5011
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 5012
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->summaryText_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5014
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 5015
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->hintText_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5017
    :cond_3
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 5018
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxRequest;->handlerObject_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 5020
    :cond_4
    return-void
.end method
