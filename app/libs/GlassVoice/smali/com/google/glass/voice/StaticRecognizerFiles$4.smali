.class final Lcom/google/glass/voice/StaticRecognizerFiles$4;
.super Ljava/lang/Object;
.source "StaticRecognizerFiles.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/StaticRecognizerFiles;->optimizeSensitivity(Ljava/util/List;Lcom/google/glass/voice/VoiceConfig$Sensitivity;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Lcom/google/glass/voice/StaticRecognizerFiles;",
        "Lcom/google/glass/voice/StaticRecognizerFiles;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$sensitivity:Lcom/google/glass/voice/VoiceConfig$Sensitivity;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceConfig$Sensitivity;)V
    .locals 0
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lcom/google/glass/voice/StaticRecognizerFiles$4;->val$sensitivity:Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/glass/voice/StaticRecognizerFiles;)Lcom/google/glass/voice/StaticRecognizerFiles;
    .locals 6
    .parameter "fileset"

    .prologue
    .line 349
    iget-object v3, p1, Lcom/google/glass/voice/StaticRecognizerFiles;->sensitivity:Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    iget-object v4, p0, Lcom/google/glass/voice/StaticRecognizerFiles$4;->val$sensitivity:Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    if-ne v3, v4, :cond_1

    .line 364
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 353
    .restart local p1
    :cond_1
    iget-object v3, p1, Lcom/google/glass/voice/StaticRecognizerFiles;->recognizedLiterals:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 354
    invoke-static {}, Lcom/google/glass/voice/StaticRecognizerFiles;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Cannot match requested sensitivity %s for multi-phrase fileset."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 358
    :cond_2
    iget-object v3, p1, Lcom/google/glass/voice/StaticRecognizerFiles;->recognizedLiterals:Ljava/util/Set;

    invoke-static {v3}, Lcom/google/common/collect/Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 359
    .local v2, literal:Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/voice/StaticRecognizerFiles;->access$100()Lcom/google/common/collect/Multimap;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 360
    .local v0, alternative:Lcom/google/glass/voice/StaticRecognizerFiles;
    iget-object v3, v0, Lcom/google/glass/voice/StaticRecognizerFiles;->sensitivity:Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    iget-object v4, p0, Lcom/google/glass/voice/StaticRecognizerFiles$4;->val$sensitivity:Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    if-ne v3, v4, :cond_3

    move-object p1, v0

    .line 361
    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 346
    check-cast p1, Lcom/google/glass/voice/StaticRecognizerFiles;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/StaticRecognizerFiles$4;->apply(Lcom/google/glass/voice/StaticRecognizerFiles;)Lcom/google/glass/voice/StaticRecognizerFiles;

    move-result-object v0

    return-object v0
.end method
