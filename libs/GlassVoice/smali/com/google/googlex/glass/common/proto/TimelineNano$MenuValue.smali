.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
.super Lcom/google/protobuf/nano/MessageNano;
.source "TimelineNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MenuValue"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;


# instance fields
.field private bitField0_:I

.field private displayName_:Ljava/lang/String;

.field private iconUrl_:Ljava/lang/String;

.field private state_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4718
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4719
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 4724
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->state_:I

    .line 4743
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->displayName_:Ljava/lang/String;

    .line 4765
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->iconUrl_:Ljava/lang/String;

    .line 4719
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4894
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4888
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4787
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    .line 4788
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->state_:I

    .line 4789
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->displayName_:Ljava/lang/String;

    .line 4790
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->iconUrl_:Ljava/lang/String;

    .line 4791
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->cachedSize:I

    .line 4792
    return-object p0
.end method

.method public clearDisplayName()Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .locals 1

    .prologue
    .line 4759
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->displayName_:Ljava/lang/String;

    .line 4760
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    .line 4761
    return-object p0
.end method

.method public clearIconUrl()Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .locals 1

    .prologue
    .line 4781
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->iconUrl_:Ljava/lang/String;

    .line 4782
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    .line 4783
    return-object p0
.end method

.method public clearState()Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .locals 1

    .prologue
    .line 4737
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->state_:I

    .line 4738
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    .line 4739
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4797
    if-ne p1, p0, :cond_1

    .line 4800
    :cond_0
    :goto_0
    return v1

    .line 4798
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 4799
    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .line 4800
    .local v0, other:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->state_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->state_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->displayName_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->displayName_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->iconUrl_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->iconUrl_:Ljava/lang/String;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->displayName_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->displayName_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->iconUrl_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->iconUrl_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4745
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->displayName_:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4767
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->iconUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4828
    const/4 v0, 0x0

    .line 4829
    .local v0, size:I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 4830
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->displayName_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4833
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 4834
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->iconUrl_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4837
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 4838
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->state_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4841
    :cond_2
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->cachedSize:I

    .line 4842
    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 4726
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->state_:I

    return v0
.end method

.method public hasDisplayName()Z
    .locals 1

    .prologue
    .line 4756
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIconUrl()Z
    .locals 1

    .prologue
    .line 4778
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasState()Z
    .locals 1

    .prologue
    .line 4734
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

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
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 4806
    const/16 v0, 0x11

    .line 4807
    .local v0, result:I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->state_:I

    add-int/lit16 v0, v1, 0x20f

    .line 4808
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->displayName_:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v3, v1

    .line 4809
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->iconUrl_:Ljava/lang/String;

    if-nez v3, :cond_1

    :goto_1
    add-int v0, v1, v2

    .line 4810
    return v0

    .line 4808
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->displayName_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 4809
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->iconUrl_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4850
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4851
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 4855
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4856
    :sswitch_0
    return-object p0

    .line 4861
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->displayName_:Ljava/lang/String;

    .line 4862
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    goto :goto_0

    .line 4866
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->iconUrl_:Ljava/lang/String;

    .line 4867
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    goto :goto_0

    .line 4871
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 4872
    .local v1, temp:I
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 4875
    :cond_1
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->state_:I

    .line 4879
    :goto_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    goto :goto_0

    .line 4877
    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->state_:I

    goto :goto_1

    .line 4851
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
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
    .line 4715
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    move-result-object v0

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .locals 1
    .parameter "value"

    .prologue
    .line 4748
    if-nez p1, :cond_0

    .line 4749
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4751
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->displayName_:Ljava/lang/String;

    .line 4752
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    .line 4753
    return-object p0
.end method

.method public setIconUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .locals 1
    .parameter "value"

    .prologue
    .line 4770
    if-nez p1, :cond_0

    .line 4771
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4773
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->iconUrl_:Ljava/lang/String;

    .line 4774
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    .line 4775
    return-object p0
.end method

.method public setState(I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .locals 1
    .parameter "value"

    .prologue
    .line 4729
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->state_:I

    .line 4730
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    .line 4731
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
    .line 4815
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 4816
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->displayName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4818
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 4819
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->iconUrl_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4821
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 4822
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->state_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4824
    :cond_2
    return-void
.end method
