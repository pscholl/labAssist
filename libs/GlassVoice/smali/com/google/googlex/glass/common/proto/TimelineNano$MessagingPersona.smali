.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
.super Lcom/google/protobuf/nano/MessageNano;
.source "TimelineNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessagingPersona"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;


# instance fields
.field public acceptType:[Ljava/lang/String;

.field private bitField0_:I

.field private isDefault_:Z

.field private personaId_:Ljava/lang/String;

.field public sharingFeature:[I

.field private source_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2650
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2651
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 2656
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->source_:Ljava/lang/String;

    .line 2678
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->personaId_:Ljava/lang/String;

    .line 2700
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->isDefault_:Z

    .line 2719
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    .line 2722
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->sharingFeature:[I

    .line 2651
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2897
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2891
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2725
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    .line 2726
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->source_:Ljava/lang/String;

    .line 2727
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->personaId_:Ljava/lang/String;

    .line 2728
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->isDefault_:Z

    .line 2729
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    .line 2730
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->sharingFeature:[I

    .line 2731
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->cachedSize:I

    .line 2732
    return-object p0
.end method

.method public clearIsDefault()Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .locals 1

    .prologue
    .line 2713
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->isDefault_:Z

    .line 2714
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    .line 2715
    return-object p0
.end method

.method public clearPersonaId()Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .locals 1

    .prologue
    .line 2694
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->personaId_:Ljava/lang/String;

    .line 2695
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    .line 2696
    return-object p0
.end method

.method public clearSource()Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .locals 1

    .prologue
    .line 2672
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->source_:Ljava/lang/String;

    .line 2673
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    .line 2674
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2737
    if-ne p1, p0, :cond_1

    .line 2740
    :cond_0
    :goto_0
    return v1

    .line 2738
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 2739
    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .line 2740
    .local v0, other:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->source_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->source_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->personaId_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->personaId_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_2
    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->isDefault_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->isDefault_:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->sharingFeature:[I

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->sharingFeature:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->source_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->source_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->personaId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->personaId_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2
.end method

.method public getIsDefault()Z
    .locals 1

    .prologue
    .line 2702
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->isDefault_:Z

    return v0
.end method

.method public getPersonaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->personaId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    .line 2792
    const/4 v5, 0x0

    .line 2793
    .local v5, size:I
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    .line 2794
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->source_:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 2797
    :cond_0
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_1

    .line 2798
    const/4 v6, 0x2

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->personaId_:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 2801
    :cond_1
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_2

    .line 2802
    const/4 v6, 0x3

    iget-boolean v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->isDefault_:Z

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v6

    add-int/2addr v5, v6

    .line 2805
    :cond_2
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_4

    .line 2806
    const/4 v1, 0x0

    .line 2807
    .local v1, dataSize:I
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v2, v0, v3

    .line 2808
    .local v2, element:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v1, v6

    .line 2807
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2811
    .end local v2           #element:Ljava/lang/String;
    :cond_3
    add-int/2addr v5, v1

    .line 2812
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    .line 2814
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #dataSize:I
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_4
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->sharingFeature:[I

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->sharingFeature:[I

    array-length v6, v6

    if-lez v6, :cond_6

    .line 2815
    const/4 v1, 0x0

    .line 2816
    .restart local v1       #dataSize:I
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->sharingFeature:[I

    .local v0, arr$:[I
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_1
    if-ge v3, v4, :cond_5

    aget v2, v0, v3

    .line 2817
    .local v2, element:I
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v1, v6

    .line 2816
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2820
    .end local v2           #element:I
    :cond_5
    add-int/2addr v5, v1

    .line 2821
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->sharingFeature:[I

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    .line 2823
    .end local v0           #arr$:[I
    .end local v1           #dataSize:I
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_6
    iput v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->cachedSize:I

    .line 2824
    return v5
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2658
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->source_:Ljava/lang/String;

    return-object v0
.end method

.method public hasIsDefault()Z
    .locals 1

    .prologue
    .line 2710
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPersonaId()Z
    .locals 1

    .prologue
    .line 2691
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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
    .line 2669
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

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
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 2748
    const/16 v1, 0x11

    .line 2749
    .local v1, result:I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->source_:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 2750
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->personaId_:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 2751
    mul-int/lit8 v4, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->isDefault_:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_2
    add-int v1, v4, v2

    .line 2752
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    if-nez v2, :cond_5

    mul-int/lit8 v1, v1, 0x1f

    .line 2758
    :cond_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->sharingFeature:[I

    if-nez v2, :cond_7

    mul-int/lit8 v1, v1, 0x1f

    .line 2764
    :cond_1
    return v1

    .line 2749
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->source_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 2750
    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->personaId_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 2751
    :cond_4
    const/4 v2, 0x2

    goto :goto_2

    .line 2754
    :cond_5
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 2755
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_6

    move v2, v3

    :goto_4
    add-int v1, v4, v2

    .line 2754
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2755
    :cond_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    .line 2760
    .end local v0           #i:I
    :cond_7
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->sharingFeature:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 2761
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->sharingFeature:[I

    aget v3, v3, v0

    add-int v1, v2, v3

    .line 2760
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .locals 7
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2832
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 2833
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 2837
    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2838
    :sswitch_0
    return-object p0

    .line 2843
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->source_:Ljava/lang/String;

    .line 2844
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    goto :goto_0

    .line 2848
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->personaId_:Ljava/lang/String;

    .line 2849
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    goto :goto_0

    .line 2853
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->isDefault_:Z

    .line 2854
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    goto :goto_0

    .line 2858
    :sswitch_4
    const/16 v4, 0x22

    invoke-static {p1, v4}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2859
    .local v0, arrayLength:I
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    array-length v1, v4

    .line 2860
    .local v1, i:I
    add-int v4, v1, v0

    new-array v2, v4, [Ljava/lang/String;

    .line 2861
    .local v2, newArray:[Ljava/lang/String;
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    invoke-static {v4, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2862
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    .line 2863
    :goto_1
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_1

    .line 2864
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 2865
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2863
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2868
    :cond_1
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    goto :goto_0

    .line 2872
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Ljava/lang/String;
    :sswitch_5
    const/16 v4, 0x28

    invoke-static {p1, v4}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2873
    .restart local v0       #arrayLength:I
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->sharingFeature:[I

    array-length v1, v4

    .line 2874
    .restart local v1       #i:I
    add-int v4, v1, v0

    new-array v2, v4, [I

    .line 2875
    .local v2, newArray:[I
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->sharingFeature:[I

    invoke-static {v4, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2876
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->sharingFeature:[I

    .line 2877
    :goto_2
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->sharingFeature:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_2

    .line 2878
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->sharingFeature:[I

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v4, v1

    .line 2879
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2877
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2882
    :cond_2
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->sharingFeature:[I

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    aput v5, v4, v1

    goto/16 :goto_0

    .line 2833
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
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
    .line 2647
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    move-result-object v0

    return-object v0
.end method

.method public setIsDefault(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .locals 1
    .parameter "value"

    .prologue
    .line 2705
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->isDefault_:Z

    .line 2706
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    .line 2707
    return-object p0
.end method

.method public setPersonaId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .locals 1
    .parameter "value"

    .prologue
    .line 2683
    if-nez p1, :cond_0

    .line 2684
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2686
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->personaId_:Ljava/lang/String;

    .line 2687
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    .line 2688
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .locals 1
    .parameter "value"

    .prologue
    .line 2661
    if-nez p1, :cond_0

    .line 2662
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2664
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->source_:Ljava/lang/String;

    .line 2665
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    .line 2666
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
    .line 2769
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 2770
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->source_:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2772
    :cond_0
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 2773
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->personaId_:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2775
    :cond_1
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    .line 2776
    const/4 v4, 0x3

    iget-boolean v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->isDefault_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2778
    :cond_2
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 2779
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->acceptType:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 2780
    .local v1, element:Ljava/lang/String;
    const/4 v4, 0x4

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2779
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2783
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #element:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_3
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->sharingFeature:[I

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->sharingFeature:[I

    array-length v4, v4

    if-lez v4, :cond_4

    .line 2784
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->sharingFeature:[I

    .local v0, arr$:[I
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v3, :cond_4

    aget v1, v0, v2

    .line 2785
    .local v1, element:I
    const/4 v4, 0x5

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2784
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2788
    .end local v0           #arr$:[I
    .end local v1           #element:I
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_4
    return-void
.end method
