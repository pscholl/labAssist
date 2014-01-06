.class final Lcom/google/glass/voice/StaticRecognizerFiles$2;
.super Ljava/lang/Object;
.source "StaticRecognizerFiles.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/StaticRecognizerFiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<",
        "Lcom/google/glass/voice/StaticRecognizerFiles;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/glass/voice/StaticRecognizerFiles;)Z
    .locals 1
    .parameter "fileset"

    .prologue
    .line 299
    iget-boolean v0, p1, Lcom/google/glass/voice/StaticRecognizerFiles;->rtaCompatible:Z

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 296
    check-cast p1, Lcom/google/glass/voice/StaticRecognizerFiles;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/StaticRecognizerFiles$2;->apply(Lcom/google/glass/voice/StaticRecognizerFiles;)Z

    move-result v0

    return v0
.end method
