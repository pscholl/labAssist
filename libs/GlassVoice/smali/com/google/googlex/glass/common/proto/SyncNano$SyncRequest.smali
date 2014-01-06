.class public final Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;
.super Lcom/google/protobuf/nano/MessageNano;
.source "SyncNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/SyncNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncRequest"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;


# instance fields
.field public delete:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

.field public deviceId:Ljava/lang/String;

.field public insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

.field private select_:Lcom/google/googlex/glass/common/proto/SyncNano$Select;

.field public update:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;

    sput-object v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 32
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    .line 35
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->update:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    .line 38
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->deviceId:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 220
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;

    return-object v0
.end method


# virtual methods
.method public clearSelect()Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->select_:Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    .line 29
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 45
    if-ne p1, p0, :cond_1

    .line 48
    :cond_0
    :goto_0
    return v1

    .line 46
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 47
    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;

    .line 48
    .local v0, other:Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->select_:Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->select_:Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->update:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->update:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->deviceId:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->deviceId:Ljava/lang/String;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->select_:Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->select_:Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->deviceId:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->deviceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getSelect()Lcom/google/googlex/glass/common/proto/SyncNano$Select;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->select_:Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 105
    const/4 v4, 0x0

    .line 106
    .local v4, size:I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->select_:Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    if-eqz v5, :cond_0

    .line 107
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->select_:Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 110
    :cond_0
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    if-eqz v5, :cond_1

    .line 111
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 112
    .local v1, element:Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;
    const/4 v5, 0x2

    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->update:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    if-eqz v5, :cond_2

    .line 117
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->update:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 118
    .local v1, element:Lcom/google/googlex/glass/common/proto/SyncNano$Update;
    const/4 v5, 0x3

    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 117
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 122
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/SyncNano$Update;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    if-eqz v5, :cond_3

    .line 123
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_2
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 124
    .local v1, element:Lcom/google/googlex/glass/common/proto/SyncNano$Delete;
    const/4 v5, 0x4

    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 128
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/SyncNano$Delete;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_3
    const/4 v5, 0x5

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->deviceId:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 130
    iput v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->cachedSize:I

    .line 131
    return v4
.end method

.method public hasSelect()Z
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->select_:Lcom/google/googlex/glass/common/proto/SyncNano$Select;

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

    .line 56
    const/16 v1, 0x11

    .line 57
    .local v1, result:I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->select_:Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    if-nez v2, :cond_3

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 58
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    if-nez v2, :cond_4

    mul-int/lit8 v1, v1, 0x1f

    .line 64
    :cond_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->update:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    if-nez v2, :cond_6

    mul-int/lit8 v1, v1, 0x1f

    .line 70
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    if-nez v2, :cond_8

    mul-int/lit8 v1, v1, 0x1f

    .line 76
    :cond_2
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->deviceId:Ljava/lang/String;

    if-nez v4, :cond_a

    :goto_1
    add-int v1, v2, v3

    .line 77
    return v1

    .line 57
    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->select_:Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->hashCode()I

    move-result v2

    goto :goto_0

    .line 60
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 61
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    aget-object v2, v2, v0

    if-nez v2, :cond_5

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 61
    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->hashCode()I

    move-result v2

    goto :goto_3

    .line 66
    .end local v0           #i:I
    :cond_6
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->update:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 67
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->update:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    aget-object v2, v2, v0

    if-nez v2, :cond_7

    move v2, v3

    :goto_5
    add-int v1, v4, v2

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 67
    :cond_7
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->update:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->hashCode()I

    move-result v2

    goto :goto_5

    .line 72
    .end local v0           #i:I
    :cond_8
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 73
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    aget-object v2, v2, v0

    if-nez v2, :cond_9

    move v2, v3

    :goto_7
    add-int v1, v4, v2

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 73
    :cond_9
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->hashCode()I

    move-result v2

    goto :goto_7

    .line 76
    .end local v0           #i:I
    :cond_a
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->deviceId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;
    .locals 7
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 139
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 140
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 144
    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 145
    :sswitch_0
    return-object p0

    .line 150
    :sswitch_1
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->select_:Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    if-nez v5, :cond_1

    .line 151
    new-instance v5, Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    invoke-direct {v5}, Lcom/google/googlex/glass/common/proto/SyncNano$Select;-><init>()V

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->select_:Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    .line 153
    :cond_1
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->select_:Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 157
    :sswitch_2
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 158
    .local v0, arrayLength:I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    if-nez v5, :cond_3

    move v1, v4

    .line 159
    .local v1, i:I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    .line 160
    .local v2, newArray:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    if-eqz v5, :cond_2

    .line 161
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    :cond_2
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    .line 164
    :goto_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_4

    .line 165
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    new-instance v6, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;-><init>()V

    aput-object v6, v5, v1

    .line 166
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 167
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 158
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;
    :cond_3
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    array-length v1, v5

    goto :goto_1

    .line 170
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;
    :cond_4
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    new-instance v6, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;-><init>()V

    aput-object v6, v5, v1

    .line 171
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 175
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;
    :sswitch_3
    const/16 v5, 0x1a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 176
    .restart local v0       #arrayLength:I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->update:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    if-nez v5, :cond_6

    move v1, v4

    .line 177
    .restart local v1       #i:I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    .line 178
    .local v2, newArray:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->update:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    if-eqz v5, :cond_5

    .line 179
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->update:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    :cond_5
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->update:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    .line 182
    :goto_4
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->update:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_7

    .line 183
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->update:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    new-instance v6, Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/SyncNano$Update;-><init>()V

    aput-object v6, v5, v1

    .line 184
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->update:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 185
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 176
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;
    :cond_6
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->update:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    array-length v1, v5

    goto :goto_3

    .line 188
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;
    :cond_7
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->update:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    new-instance v6, Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/SyncNano$Update;-><init>()V

    aput-object v6, v5, v1

    .line 189
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->update:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 193
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;
    :sswitch_4
    const/16 v5, 0x22

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 194
    .restart local v0       #arrayLength:I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    if-nez v5, :cond_9

    move v1, v4

    .line 195
    .restart local v1       #i:I
    :goto_5
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    .line 196
    .local v2, newArray:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    if-eqz v5, :cond_8

    .line 197
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    :cond_8
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    .line 200
    :goto_6
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_a

    .line 201
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    new-instance v6, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;-><init>()V

    aput-object v6, v5, v1

    .line 202
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 203
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 194
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;
    :cond_9
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    array-length v1, v5

    goto :goto_5

    .line 206
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;
    :cond_a
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    new-instance v6, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;-><init>()V

    aput-object v6, v5, v1

    .line 207
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 211
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->deviceId:Ljava/lang/String;

    goto/16 :goto_0

    .line 140
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 6
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;

    move-result-object v0

    return-object v0
.end method

.method public setSelect(Lcom/google/googlex/glass/common/proto/SyncNano$Select;)Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 18
    if-nez p1, :cond_0

    .line 19
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->select_:Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    .line 22
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
    .line 82
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->select_:Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    if-eqz v4, :cond_0

    .line 83
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->select_:Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 85
    :cond_0
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    if-eqz v4, :cond_1

    .line 86
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 87
    .local v1, element:Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;
    const/4 v4, 0x2

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->update:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    if-eqz v4, :cond_2

    .line 91
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->update:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 92
    .local v1, element:Lcom/google/googlex/glass/common/proto/SyncNano$Update;
    const/4 v4, 0x3

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 95
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/SyncNano$Update;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_2
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    if-eqz v4, :cond_3

    .line 96
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_2
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 97
    .local v1, element:Lcom/google/googlex/glass/common/proto/SyncNano$Delete;
    const/4 v4, 0x4

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 100
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/SyncNano$Delete;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_3
    const/4 v4, 0x5

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 101
    return-void
.end method
