.class public final Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;
.super Lcom/google/protobuf/nano/MessageNano;
.source "LoggingNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/LoggingNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetSessionIdRequest"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;


# instance fields
.field private bitField0_:I

.field private unusedField_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;

    sput-object v0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;->unusedField_:Z

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;

    return-object v0
.end method


# virtual methods
.method public clearUnusedField()Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;->unusedField_:Z

    .line 29
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;->bitField0_:I

    .line 30
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 35
    if-ne p1, p0, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v1

    .line 36
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 37
    check-cast v0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;

    .line 38
    .local v0, other:Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;
    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;->unusedField_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;->unusedField_:Z

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, size:I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 58
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;->unusedField_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    :cond_0
    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;->cachedSize:I

    .line 62
    return v0
.end method

.method public getUnusedField()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;->unusedField_:Z

    return v0
.end method

.method public hasUnusedField()Z
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;->bitField0_:I

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
    .line 42
    const/16 v0, 0x11

    .line 43
    .local v0, result:I
    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;->unusedField_:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 44
    return v0

    .line 43
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 71
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 75
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    :sswitch_0
    return-object p0

    .line 81
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;->unusedField_:Z

    .line 82
    iget v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;->bitField0_:I

    goto :goto_0

    .line 71
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
    .line 6
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;

    move-result-object v0

    return-object v0
.end method

.method public setUnusedField(Z)Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;->unusedField_:Z

    .line 21
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;->bitField0_:I

    .line 22
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
    .line 49
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;->unusedField_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 52
    :cond_0
    return-void
.end method
