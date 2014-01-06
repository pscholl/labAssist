.class public Lcom/google/glass/voice/StaticSensoryRecognizer;
.super Lcom/google/glass/voice/Sensory;
.source "StaticSensoryRecognizer.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field final filesets:Ljava/util/List;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/StaticRecognizerFiles;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/google/glass/voice/StaticSensoryRecognizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/StaticSensoryRecognizer;->TAG:Ljava/lang/String;

    .line 20
    sget-object v0, Lcom/google/glass/voice/StaticSensoryRecognizer;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/StaticSensoryRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 7
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/StaticRecognizerFiles;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, filesets:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/StaticRecognizerFiles;>;"
    invoke-direct {p0, p1}, Lcom/google/glass/voice/Sensory;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p2, p0, Lcom/google/glass/voice/StaticSensoryRecognizer;->filesets:Ljava/util/List;

    .line 28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 29
    .local v0, filesetCount:I
    new-array v2, v0, [Ljava/lang/String;

    .line 30
    .local v2, recogFilePaths:[Ljava/lang/String;
    new-array v4, v0, [Ljava/lang/String;

    .line 32
    .local v4, searchFilePaths:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 33
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 35
    .local v3, recognizerFileset:Lcom/google/glass/voice/StaticRecognizerFiles;
    iget-object v5, v3, Lcom/google/glass/voice/StaticRecognizerFiles;->recogFile:Ljava/lang/String;

    invoke-static {p1, v5}, Lcom/google/glass/voice/StaticSensoryRecognizer;->getPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 36
    iget-object v5, v3, Lcom/google/glass/voice/StaticRecognizerFiles;->searchFile:Ljava/lang/String;

    invoke-static {p1, v5}, Lcom/google/glass/voice/StaticSensoryRecognizer;->getPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 32
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    .end local v3           #recognizerFileset:Lcom/google/glass/voice/StaticRecognizerFiles;
    :cond_0
    invoke-virtual {p0, v2, v4}, Lcom/google/glass/voice/StaticSensoryRecognizer;->nativeInitPhrasespot([Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/glass/voice/StaticSensoryRecognizer;->sensoryContext:J

    .line 39
    return-void
.end method

.method public static newStaticSensoryRecognizer(Landroid/content/Context;Lcom/google/glass/voice/StaticRecognizerFiles;)Lcom/google/glass/voice/Sensory;
    .locals 3
    .parameter "context"
    .parameter "recognizerFiles"

    .prologue
    .line 48
    iget-boolean v0, p1, Lcom/google/glass/voice/StaticRecognizerFiles;->rtaCompatible:Z

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lcom/google/glass/voice/StaticSensoryRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Using RTA-compatible recognition files but hybrid recognition is unnecessary!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    :cond_0
    new-instance v0, Lcom/google/glass/voice/StaticSensoryRecognizer;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/StaticSensoryRecognizer;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-object v0
.end method

.method public static newStaticSensoryRecognizer(Landroid/content/Context;Ljava/util/List;)Lcom/google/glass/voice/Sensory;
    .locals 5
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/StaticRecognizerFiles;",
            ">;)",
            "Lcom/google/glass/voice/Sensory;"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, recogFiles:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/StaticRecognizerFiles;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 64
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Must provide recog files."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 67
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 68
    .local v0, filesetCount:I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 69
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/voice/StaticRecognizerFiles;

    invoke-static {p0, v3}, Lcom/google/glass/voice/StaticSensoryRecognizer;->newStaticSensoryRecognizer(Landroid/content/Context;Lcom/google/glass/voice/StaticRecognizerFiles;)Lcom/google/glass/voice/Sensory;

    move-result-object v3

    .line 78
    :goto_0
    return-object v3

    .line 72
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 73
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 74
    .local v2, recognizerFileset:Lcom/google/glass/voice/StaticRecognizerFiles;
    iget-boolean v3, v2, Lcom/google/glass/voice/StaticRecognizerFiles;->combined:Z

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    .line 75
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Only the first recognizer fileset can be precombined."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 72
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 78
    .end local v2           #recognizerFileset:Lcom/google/glass/voice/StaticRecognizerFiles;
    :cond_4
    new-instance v3, Lcom/google/glass/voice/StaticSensoryRecognizer;

    invoke-direct {v3, p0, p1}, Lcom/google/glass/voice/StaticSensoryRecognizer;-><init>(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public final stringToCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;
    .locals 6
    .parameter "literal"

    .prologue
    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Null or empty literal: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_0
    const/16 v2, 0x5f

    const/16 v3, 0x20

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 90
    sget-object v2, Lcom/google/glass/voice/VoiceCommand;->staticCommands:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceCommand;

    .line 91
    .local v0, c:Lcom/google/glass/voice/VoiceCommand;
    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceCommand;->getLiteral()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    .end local v0           #c:Lcom/google/glass/voice/VoiceCommand;
    :goto_0
    return-object v0

    .line 96
    :cond_2
    sget-object v2, Lcom/google/glass/voice/StaticSensoryRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "No static command for this literal, synthesizing"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    const/4 v2, 0x4

    sget-object v3, Lcom/google/glass/voice/StaticSensoryRecognizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Literal: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance v0, Lcom/google/glass/voice/VoiceCommand;

    invoke-direct {v0, p1}, Lcom/google/glass/voice/VoiceCommand;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 103
    const-string v0, "StaticSensoryRecognizer [filesets=%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/glass/voice/StaticSensoryRecognizer;->filesets:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
