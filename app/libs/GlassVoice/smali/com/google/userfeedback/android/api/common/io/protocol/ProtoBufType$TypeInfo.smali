.class Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType$TypeInfo;
.super Ljava/lang/Object;
.source "ProtoBufType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TypeInfo"
.end annotation


# instance fields
.field private data:Ljava/lang/Object;

.field private type:I


# direct methods
.method constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .parameter "t"
    .parameter "d"

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType$TypeInfo;->type:I

    .line 87
    iput-object p2, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType$TypeInfo;->data:Ljava/lang/Object;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType$TypeInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType$TypeInfo;->type:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType$TypeInfo;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType$TypeInfo;->data:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 95
    if-ne p0, p1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v1

    .line 98
    :cond_1
    if-eqz p1, :cond_2

    instance-of v3, p1, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType$TypeInfo;

    if-nez v3, :cond_3

    :cond_2
    move v1, v2

    .line 99
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 101
    check-cast v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType$TypeInfo;

    .line 102
    .local v0, peerTypeInfo:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType$TypeInfo;
    iget v3, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType$TypeInfo;->type:I

    iget v4, v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType$TypeInfo;->type:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType$TypeInfo;->data:Ljava/lang/Object;

    iget-object v4, v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType$TypeInfo;->data:Ljava/lang/Object;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType$TypeInfo;->data:Ljava/lang/Object;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType$TypeInfo;->data:Ljava/lang/Object;

    iget-object v4, v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType$TypeInfo;->data:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType$TypeInfo;->type:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TypeInfo{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType$TypeInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType$TypeInfo;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
