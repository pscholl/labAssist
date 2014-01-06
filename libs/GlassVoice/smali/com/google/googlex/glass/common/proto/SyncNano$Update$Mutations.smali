.class public final Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;
.super Lcom/google/protobuf/nano/MessageNano;
.source "SyncNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/SyncNano$Update;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mutations"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;


# instance fields
.field public attachmentDeletions:[Ljava/lang/String;

.field public item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field public itemFieldDeletions:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1128
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;

    sput-object v0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1129
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 1135
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->itemFieldDeletions:[I

    .line 1138
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    .line 1129
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1142
    if-ne p1, p0, :cond_1

    .line 1145
    :cond_0
    :goto_0
    return v1

    .line 1143
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1144
    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;

    .line 1145
    .local v0, other:Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->itemFieldDeletions:[I

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->itemFieldDeletions:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    .line 1187
    const/4 v5, 0x0

    .line 1188
    .local v5, size:I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v6, :cond_0

    .line 1189
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1192
    :cond_0
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->itemFieldDeletions:[I

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->itemFieldDeletions:[I

    array-length v6, v6

    if-lez v6, :cond_2

    .line 1193
    const/4 v1, 0x0

    .line 1194
    .local v1, dataSize:I
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->itemFieldDeletions:[I

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v2, v0, v3

    .line 1195
    .local v2, element:I
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v1, v6

    .line 1194
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1198
    .end local v2           #element:I
    :cond_1
    add-int/2addr v5, v1

    .line 1199
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->itemFieldDeletions:[I

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    .line 1201
    .end local v0           #arr$:[I
    .end local v1           #dataSize:I
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_4

    .line 1202
    const/4 v1, 0x0

    .line 1203
    .restart local v1       #dataSize:I
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v2, v0, v3

    .line 1204
    .local v2, element:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v1, v6

    .line 1203
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1207
    .end local v2           #element:Ljava/lang/String;
    :cond_3
    add-int/2addr v5, v1

    .line 1208
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    .line 1210
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #dataSize:I
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_4
    iput v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->cachedSize:I

    .line 1211
    return v5
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1151
    const/16 v1, 0x11

    .line 1152
    .local v1, result:I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 1153
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->itemFieldDeletions:[I

    if-nez v2, :cond_3

    mul-int/lit8 v1, v1, 0x1f

    .line 1159
    :cond_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    if-nez v2, :cond_4

    mul-int/lit8 v1, v1, 0x1f

    .line 1165
    :cond_1
    return v1

    .line 1152
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hashCode()I

    move-result v2

    goto :goto_0

    .line 1155
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->itemFieldDeletions:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1156
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->itemFieldDeletions:[I

    aget v4, v4, v0

    add-int v1, v2, v4

    .line 1155
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1161
    .end local v0           #i:I
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1162
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_5

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 1161
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1162
    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;
    .locals 7
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1219
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 1220
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 1224
    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1225
    :sswitch_0
    return-object p0

    .line 1230
    :sswitch_1
    new-instance v4, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    iput-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 1231
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {p1, v4}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1235
    :sswitch_2
    const/16 v4, 0x10

    invoke-static {p1, v4}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1236
    .local v0, arrayLength:I
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->itemFieldDeletions:[I

    array-length v1, v4

    .line 1237
    .local v1, i:I
    add-int v4, v1, v0

    new-array v2, v4, [I

    .line 1238
    .local v2, newArray:[I
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->itemFieldDeletions:[I

    invoke-static {v4, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1239
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->itemFieldDeletions:[I

    .line 1240
    :goto_1
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->itemFieldDeletions:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_1

    .line 1241
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->itemFieldDeletions:[I

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v5

    aput v5, v4, v1

    .line 1242
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1240
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1245
    :cond_1
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->itemFieldDeletions:[I

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v5

    aput v5, v4, v1

    goto :goto_0

    .line 1249
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[I
    :sswitch_3
    const/16 v4, 0x1a

    invoke-static {p1, v4}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1250
    .restart local v0       #arrayLength:I
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    array-length v1, v4

    .line 1251
    .restart local v1       #i:I
    add-int v4, v1, v0

    new-array v2, v4, [Ljava/lang/String;

    .line 1252
    .local v2, newArray:[Ljava/lang/String;
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    invoke-static {v4, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1253
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    .line 1254
    :goto_2
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_2

    .line 1255
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 1256
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1254
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1259
    :cond_2
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    goto :goto_0

    .line 1220
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 1125
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1274
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1268
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;-><init>()V

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;

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
    .line 1170
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v4, :cond_0

    .line 1171
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1173
    :cond_0
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->itemFieldDeletions:[I

    if-eqz v4, :cond_1

    .line 1174
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->itemFieldDeletions:[I

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, v0, v2

    .line 1175
    .local v1, element:I
    const/4 v4, 0x2

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 1174
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1178
    .end local v0           #arr$:[I
    .end local v1           #element:I
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 1179
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 1180
    .local v1, element:Ljava/lang/String;
    const/4 v4, 0x3

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1179
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1183
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #element:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_2
    return-void
.end method
