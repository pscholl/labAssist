.class final Lcom/google/glass/voice/StaticRecognizerFiles$3;
.super Ljava/lang/Object;
.source "StaticRecognizerFiles.java"

# interfaces
.implements Ljava/util/Comparator;


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
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/glass/voice/StaticRecognizerFiles;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/glass/voice/StaticRecognizerFiles;Lcom/google/glass/voice/StaticRecognizerFiles;)I
    .locals 2
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 313
    iget-object v0, p1, Lcom/google/glass/voice/StaticRecognizerFiles;->recognizedLiterals:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p2, Lcom/google/glass/voice/StaticRecognizerFiles;->recognizedLiterals:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->compare(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 310
    check-cast p1, Lcom/google/glass/voice/StaticRecognizerFiles;

    .end local p1
    check-cast p2, Lcom/google/glass/voice/StaticRecognizerFiles;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/voice/StaticRecognizerFiles$3;->compare(Lcom/google/glass/voice/StaticRecognizerFiles;Lcom/google/glass/voice/StaticRecognizerFiles;)I

    move-result v0

    return v0
.end method
