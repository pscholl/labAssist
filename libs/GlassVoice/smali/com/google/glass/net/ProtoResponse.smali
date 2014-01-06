.class public Lcom/google/glass/net/ProtoResponse;
.super Ljava/lang/Object;
.source "ProtoResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/protobuf/nano/MessageNano;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final ERROR_CODE_UNSET:I = -0x1


# instance fields
.field private final errorCode:I

.field private final responseProto:Lcom/google/protobuf/nano/MessageNano;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILcom/google/protobuf/nano/MessageNano;)V
    .locals 1
    .parameter "errorCode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, this:Lcom/google/glass/net/ProtoResponse;,"Lcom/google/glass/net/ProtoResponse<TT;>;"
    .local p2, responseProto:Lcom/google/protobuf/nano/MessageNano;,"TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 30
    iput p1, p0, Lcom/google/glass/net/ProtoResponse;->errorCode:I

    .line 31
    iput-object p2, p0, Lcom/google/glass/net/ProtoResponse;->responseProto:Lcom/google/protobuf/nano/MessageNano;

    .line 32
    return-void

    .line 29
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static cancel()Lcom/google/glass/net/ProtoResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">()",
            "Lcom/google/glass/net/ProtoResponse",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lcom/google/glass/net/ProtoResponse;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/glass/net/ProtoResponse;-><init>(ILcom/google/protobuf/nano/MessageNano;)V

    return-object v0
.end method

.method public static error(I)Lcom/google/glass/net/ProtoResponse;
    .locals 2
    .parameter "errorCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(I)",
            "Lcom/google/glass/net/ProtoResponse",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 63
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 64
    new-instance v0, Lcom/google/glass/net/ProtoResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/net/ProtoResponse;-><init>(ILcom/google/protobuf/nano/MessageNano;)V

    return-object v0
.end method

.method public static success(Lcom/google/protobuf/nano/MessageNano;)Lcom/google/glass/net/ProtoResponse;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(TT;)",
            "Lcom/google/glass/net/ProtoResponse",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, responseProto:Lcom/google/protobuf/nano/MessageNano;,"TT;"
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 69
    new-instance v0, Lcom/google/glass/net/ProtoResponse;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p0}, Lcom/google/glass/net/ProtoResponse;-><init>(ILcom/google/protobuf/nano/MessageNano;)V

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 46
    .local p0, this:Lcom/google/glass/net/ProtoResponse;,"Lcom/google/glass/net/ProtoResponse<TT;>;"
    invoke-virtual {p0}, Lcom/google/glass/net/ProtoResponse;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/glass/net/ProtoResponse;->errorCode:I

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x8000

    goto :goto_0
.end method

.method public getResponseProto()Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, this:Lcom/google/glass/net/ProtoResponse;,"Lcom/google/glass/net/ProtoResponse<TT;>;"
    iget-object v0, p0, Lcom/google/glass/net/ProtoResponse;->responseProto:Lcom/google/protobuf/nano/MessageNano;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 2

    .prologue
    .line 36
    .local p0, this:Lcom/google/glass/net/ProtoResponse;,"Lcom/google/glass/net/ProtoResponse<TT;>;"
    iget v0, p0, Lcom/google/glass/net/ProtoResponse;->errorCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/net/ProtoResponse;->responseProto:Lcom/google/protobuf/nano/MessageNano;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isError()Z
    .locals 2

    .prologue
    .line 41
    .local p0, this:Lcom/google/glass/net/ProtoResponse;,"Lcom/google/glass/net/ProtoResponse<TT;>;"
    iget v0, p0, Lcom/google/glass/net/ProtoResponse;->errorCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 51
    .local p0, this:Lcom/google/glass/net/ProtoResponse;,"Lcom/google/glass/net/ProtoResponse<TT;>;"
    iget-object v0, p0, Lcom/google/glass/net/ProtoResponse;->responseProto:Lcom/google/protobuf/nano/MessageNano;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
