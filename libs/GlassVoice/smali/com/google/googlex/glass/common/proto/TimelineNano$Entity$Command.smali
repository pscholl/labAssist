.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
.super Lcom/google/protobuf/nano/MessageNano;
.source "TimelineNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Command"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command$InvocationMode;,
        Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command$InputType;,
        Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command$CommandType;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;


# instance fields
.field private bitField0_:I

.field private completionLabel_:Ljava/lang/String;

.field private inputType_:I

.field private invocationMode_:I

.field private isVoiceEnabled_:Z

.field private pendingLabel_:Ljava/lang/String;

.field private type_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3029
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3030
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 3058
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->type_:I

    .line 3077
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->isVoiceEnabled_:Z

    .line 3096
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->inputType_:I

    .line 3115
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->pendingLabel_:Ljava/lang/String;

    .line 3137
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->completionLabel_:Ljava/lang/String;

    .line 3159
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->invocationMode_:I

    .line 3030
    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3178
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    .line 3179
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->type_:I

    .line 3180
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->isVoiceEnabled_:Z

    .line 3181
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->inputType_:I

    .line 3182
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->pendingLabel_:Ljava/lang/String;

    .line 3183
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->completionLabel_:Ljava/lang/String;

    .line 3184
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->invocationMode_:I

    .line 3185
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->cachedSize:I

    .line 3186
    return-object p0
.end method

.method public clearCompletionLabel()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .locals 1

    .prologue
    .line 3153
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->completionLabel_:Ljava/lang/String;

    .line 3154
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    .line 3155
    return-object p0
.end method

.method public clearInputType()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .locals 1

    .prologue
    .line 3109
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->inputType_:I

    .line 3110
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    .line 3111
    return-object p0
.end method

.method public clearInvocationMode()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .locals 1

    .prologue
    .line 3172
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->invocationMode_:I

    .line 3173
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    .line 3174
    return-object p0
.end method

.method public clearIsVoiceEnabled()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .locals 1

    .prologue
    .line 3090
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->isVoiceEnabled_:Z

    .line 3091
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    .line 3092
    return-object p0
.end method

.method public clearPendingLabel()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .locals 1

    .prologue
    .line 3131
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->pendingLabel_:Ljava/lang/String;

    .line 3132
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    .line 3133
    return-object p0
.end method

.method public clearType()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .locals 1

    .prologue
    .line 3071
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->type_:I

    .line 3072
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    .line 3073
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3191
    if-ne p1, p0, :cond_1

    .line 3194
    :cond_0
    :goto_0
    return v1

    .line 3192
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 3193
    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    .line 3194
    .local v0, other:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->type_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->type_:I

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->isVoiceEnabled_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->isVoiceEnabled_:Z

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->inputType_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->inputType_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->pendingLabel_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->pendingLabel_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->completionLabel_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->completionLabel_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_2
    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->invocationMode_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->invocationMode_:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->pendingLabel_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->pendingLabel_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->completionLabel_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->completionLabel_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2
.end method

.method public getCompletionLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3139
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->completionLabel_:Ljava/lang/String;

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 3098
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->inputType_:I

    return v0
.end method

.method public getInvocationMode()I
    .locals 1

    .prologue
    .line 3161
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->invocationMode_:I

    return v0
.end method

.method public getIsVoiceEnabled()Z
    .locals 1

    .prologue
    .line 3079
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->isVoiceEnabled_:Z

    return v0
.end method

.method public getPendingLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3117
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->pendingLabel_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3237
    const/4 v0, 0x0

    .line 3238
    .local v0, size:I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 3239
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->type_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3242
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 3243
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->isVoiceEnabled_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3246
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 3247
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->inputType_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3250
    :cond_2
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 3251
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->pendingLabel_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3254
    :cond_3
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 3255
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->completionLabel_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3258
    :cond_4
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 3259
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->invocationMode_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3262
    :cond_5
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->cachedSize:I

    .line 3263
    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 3060
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->type_:I

    return v0
.end method

.method public hasCompletionLabel()Z
    .locals 1

    .prologue
    .line 3150
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

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
    .line 3106
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInvocationMode()Z
    .locals 1

    .prologue
    .line 3169
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsVoiceEnabled()Z
    .locals 1

    .prologue
    .line 3087
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPendingLabel()Z
    .locals 1

    .prologue
    .line 3128
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 3068
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

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

    .line 3203
    const/16 v0, 0x11

    .line 3204
    .local v0, result:I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->type_:I

    add-int/lit16 v0, v1, 0x20f

    .line 3205
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->isVoiceEnabled_:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int v0, v3, v1

    .line 3206
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->inputType_:I

    add-int v0, v1, v3

    .line 3207
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->pendingLabel_:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 3208
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->completionLabel_:Ljava/lang/String;

    if-nez v3, :cond_2

    :goto_2
    add-int v0, v1, v2

    .line 3209
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->invocationMode_:I

    add-int v0, v1, v2

    .line 3210
    return v0

    .line 3205
    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    .line 3207
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->pendingLabel_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 3208
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->completionLabel_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .locals 7
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3271
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3272
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 3276
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3277
    :sswitch_0
    return-object p0

    .line 3282
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 3283
    .local v1, temp:I
    if-eqz v1, :cond_1

    if-eq v1, v4, :cond_1

    if-eq v1, v5, :cond_1

    if-eq v1, v6, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 3290
    :cond_1
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->type_:I

    .line 3294
    :goto_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    goto :goto_0

    .line 3292
    :cond_2
    iput v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->type_:I

    goto :goto_1

    .line 3298
    .end local v1           #temp:I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->isVoiceEnabled_:Z

    .line 3299
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    goto :goto_0

    .line 3303
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 3304
    .restart local v1       #temp:I
    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_3

    if-eq v1, v5, :cond_3

    if-ne v1, v6, :cond_4

    .line 3308
    :cond_3
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->inputType_:I

    .line 3312
    :goto_2
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    goto :goto_0

    .line 3310
    :cond_4
    iput v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->inputType_:I

    goto :goto_2

    .line 3316
    .end local v1           #temp:I
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->pendingLabel_:Ljava/lang/String;

    .line 3317
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    goto :goto_0

    .line 3321
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->completionLabel_:Ljava/lang/String;

    .line 3322
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    goto :goto_0

    .line 3326
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 3327
    .restart local v1       #temp:I
    if-eqz v1, :cond_5

    if-eq v1, v4, :cond_5

    if-ne v1, v5, :cond_6

    .line 3330
    :cond_5
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->invocationMode_:I

    .line 3334
    :goto_3
    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    goto :goto_0

    .line 3332
    :cond_6
    iput v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->invocationMode_:I

    goto :goto_3

    .line 3272
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
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
    .line 3026
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3349
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3343
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;-><init>()V

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    return-object v0
.end method

.method public setCompletionLabel(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .locals 1
    .parameter "value"

    .prologue
    .line 3142
    if-nez p1, :cond_0

    .line 3143
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3145
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->completionLabel_:Ljava/lang/String;

    .line 3146
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    .line 3147
    return-object p0
.end method

.method public setInputType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .locals 1
    .parameter "value"

    .prologue
    .line 3101
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->inputType_:I

    .line 3102
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    .line 3103
    return-object p0
.end method

.method public setInvocationMode(I)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .locals 1
    .parameter "value"

    .prologue
    .line 3164
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->invocationMode_:I

    .line 3165
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    .line 3166
    return-object p0
.end method

.method public setIsVoiceEnabled(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .locals 1
    .parameter "value"

    .prologue
    .line 3082
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->isVoiceEnabled_:Z

    .line 3083
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    .line 3084
    return-object p0
.end method

.method public setPendingLabel(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .locals 1
    .parameter "value"

    .prologue
    .line 3120
    if-nez p1, :cond_0

    .line 3121
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3123
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->pendingLabel_:Ljava/lang/String;

    .line 3124
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    .line 3125
    return-object p0
.end method

.method public setType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .locals 1
    .parameter "value"

    .prologue
    .line 3063
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->type_:I

    .line 3064
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    .line 3065
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
    .line 3215
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3216
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->type_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3218
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 3219
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->isVoiceEnabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3221
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 3222
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->inputType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3224
    :cond_2
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 3225
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->pendingLabel_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3227
    :cond_3
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 3228
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->completionLabel_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3230
    :cond_4
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 3231
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->invocationMode_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3233
    :cond_5
    return-void
.end method
