.class public abstract Lcom/google/glass/voice/embedded/EmbeddedGlassRecognizer;
.super Ljava/lang/Object;
.source "EmbeddedGlassRecognizer.java"

# interfaces
.implements Lcom/google/glass/voice/HotwordRecognizer;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private acceptingAudio:Z

.field private final controller:Lcom/google/glass/voice/embedded/MultiRecognizerController;

.field private decoder:Lcom/google/glass/voice/embedded/MultiRecognizerController$Decoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/google/glass/voice/embedded/EmbeddedGlassRecognizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/embedded/EmbeddedGlassRecognizer;->TAG:Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/google/glass/voice/embedded/EmbeddedGlassRecognizer;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/embedded/EmbeddedGlassRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/voice/embedded/MultiRecognizerController$Decoder;)V
    .locals 3
    .parameter "context"
    .parameter "decoder"

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/embedded/EmbeddedGlassRecognizer;->acceptingAudio:Z

    .line 38
    iput-object p2, p0, Lcom/google/glass/voice/embedded/EmbeddedGlassRecognizer;->decoder:Lcom/google/glass/voice/embedded/MultiRecognizerController$Decoder;

    .line 39
    invoke-static {p1}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->getEmbeddedRecognizerController(Landroid/content/Context;)Lcom/google/glass/voice/embedded/MultiRecognizerController;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/embedded/EmbeddedGlassRecognizer;->controller:Lcom/google/glass/voice/embedded/MultiRecognizerController;

    .line 41
    iget-object v0, p0, Lcom/google/glass/voice/embedded/EmbeddedGlassRecognizer;->controller:Lcom/google/glass/voice/embedded/MultiRecognizerController;

    if-nez v0, :cond_0

    .line 42
    iput-boolean v2, p0, Lcom/google/glass/voice/embedded/EmbeddedGlassRecognizer;->acceptingAudio:Z

    .line 43
    sget-object v0, Lcom/google/glass/voice/embedded/EmbeddedGlassRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "The recognizer controller could not be created."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/voice/embedded/MultiRecognizerController$Decoder;[Ljava/lang/String;)V
    .locals 11
    .parameter "context"
    .parameter "decoder"
    .parameter "phrases"

    .prologue
    const/4 v10, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/google/glass/voice/embedded/EmbeddedGlassRecognizer;->acceptingAudio:Z

    .line 49
    iput-object p2, p0, Lcom/google/glass/voice/embedded/EmbeddedGlassRecognizer;->decoder:Lcom/google/glass/voice/embedded/MultiRecognizerController$Decoder;

    .line 50
    invoke-static {p1}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->getEmbeddedRecognizerController(Landroid/content/Context;)Lcom/google/glass/voice/embedded/MultiRecognizerController;

    move-result-object v6

    iput-object v6, p0, Lcom/google/glass/voice/embedded/EmbeddedGlassRecognizer;->controller:Lcom/google/glass/voice/embedded/MultiRecognizerController;

    .line 52
    iget-object v6, p0, Lcom/google/glass/voice/embedded/EmbeddedGlassRecognizer;->controller:Lcom/google/glass/voice/embedded/MultiRecognizerController;

    if-nez v6, :cond_1

    .line 53
    iput-boolean v10, p0, Lcom/google/glass/voice/embedded/EmbeddedGlassRecognizer;->acceptingAudio:Z

    .line 54
    sget-object v6, Lcom/google/glass/voice/embedded/EmbeddedGlassRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "The recognizer controller could not be created."

    new-array v8, v10, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    array-length v6, p3

    if-nez v6, :cond_2

    .line 59
    iput-boolean v10, p0, Lcom/google/glass/voice/embedded/EmbeddedGlassRecognizer;->acceptingAudio:Z

    .line 60
    sget-object v6, Lcom/google/glass/voice/embedded/EmbeddedGlassRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "The dynamic recognizer is empty."

    new-array v8, v10, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 64
    :cond_2
    new-instance v4, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;

    invoke-direct {v4}, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;-><init>()V

    .line 65
    .local v4, params:Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/google/glass/voice/embedded/MultiRecognizerController$Decoder;->name()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->setOutputFilenamePrefix(Ljava/lang/String;)Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;

    .line 66
    move-object v0, p3

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 67
    .local v1, hotword:Ljava/lang/String;
    new-instance v5, Lcom/google/speech/recognizer/api/Network$PathParams;

    invoke-direct {v5}, Lcom/google/speech/recognizer/api/Network$PathParams;-><init>()V

    .line 68
    .local v5, pathParams:Lcom/google/speech/recognizer/api/Network$PathParams;
    invoke-virtual {v5, v10}, Lcom/google/speech/recognizer/api/Network$PathParams;->setLastPhoneOptional(Z)Lcom/google/speech/recognizer/api/Network$PathParams;

    .line 69
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/speech/recognizer/api/Network$PathParams;->setReference(Ljava/lang/String;)Lcom/google/speech/recognizer/api/Network$PathParams;

    .line 70
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[hotword_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\s"

    const-string v9, "_"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/speech/recognizer/api/Network$PathParams;->setSymbol(Ljava/lang/String;)Lcom/google/speech/recognizer/api/Network$PathParams;

    .line 71
    invoke-virtual {v4, v5}, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->addPath(Lcom/google/speech/recognizer/api/Network$PathParams;)Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;

    .line 66
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 74
    .end local v1           #hotword:Ljava/lang/String;
    .end local v5           #pathParams:Lcom/google/speech/recognizer/api/Network$PathParams;
    :cond_3
    const/4 v6, 0x3

    sget-object v7, Lcom/google/glass/voice/embedded/EmbeddedGlassRecognizer;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Compiling custom recognizer "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " phrases: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v6, p0, Lcom/google/glass/voice/embedded/EmbeddedGlassRecognizer;->controller:Lcom/google/glass/voice/embedded/MultiRecognizerController;

    invoke-virtual {v6, p1, v4}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->compileHotwordGraph(Landroid/content/Context;Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 78
    iput-boolean v10, p0, Lcom/google/glass/voice/embedded/EmbeddedGlassRecognizer;->acceptingAudio:Z

    .line 79
    sget-object v6, Lcom/google/glass/voice/embedded/EmbeddedGlassRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to compile: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public activate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 113
    iget-boolean v1, p0, Lcom/google/glass/voice/embedded/EmbeddedGlassRecognizer;->acceptingAudio:Z

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/google/glass/voice/embedded/EmbeddedGlassRecognizer;->controller:Lcom/google/glass/voice/embedded/MultiRecognizerController;

    iget-object v2, p0, Lcom/google/glass/voice/embedded/EmbeddedGlassRecognizer;->decoder:Lcom/google/glass/voice/embedded/MultiRecognizerController$Decoder;

    invoke-virtual {v1, v2}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->switchDecoders(Lcom/google/glass/voice/embedded/MultiRecognizerController$Decoder;)Z

    move-result v0

    .line 115
    .local v0, switchedSuccessfully:Z
    if-nez v0, :cond_0

    .line 116
    sget-object v1, Lcom/google/glass/voice/embedded/EmbeddedGlassRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Switching decoders failed."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    iput-boolean v4, p0, Lcom/google/glass/voice/embedded/EmbeddedGlassRecognizer;->acceptingAudio:Z

    .line 120
    .end local v0           #switchedSuccessfully:Z
    :cond_0
    return-void
.end method

.method public declared-synchronized deactivate()V
    .locals 1

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/voice/embedded/EmbeddedGlassRecognizer;->acceptingAudio:Z

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/google/glass/voice/embedded/EmbeddedGlassRecognizer;->controller:Lcom/google/glass/voice/embedded/MultiRecognizerController;

    invoke-virtual {v0}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->resetAlignment()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :cond_0
    monitor-exit p0

    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 107
    sget-object v0, Lcom/google/glass/voice/embedded/EmbeddedGlassRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Destroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method public declared-synchronized writeAudio(Ljava/nio/ByteBuffer;J)Lcom/google/glass/voice/HotwordResult;
    .locals 6
    .parameter "audio"
    .parameter "sampleRate"

    .prologue
    const/4 v4, 0x0

    .line 86
    monitor-enter p0

    :try_start_0
    iget-boolean v5, p0, Lcom/google/glass/voice/embedded/EmbeddedGlassRecognizer;->acceptingAudio:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    .line 102
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v4

    .line 90
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/google/glass/voice/embedded/EmbeddedGlassRecognizer;->controller:Lcom/google/glass/voice/embedded/MultiRecognizerController;

    invoke-virtual {v5, p1, p2, p3}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->writeAudio(Ljava/nio/ByteBuffer;J)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    move-result-object v3

    .line 92
    .local v3, result:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    if-eqz v3, :cond_0

    .line 93
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getPart(I)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->getText()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, hotword:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/glass/voice/embedded/EmbeddedGlassRecognizer;->stringToCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    .line 95
    .local v0, command:Lcom/google/glass/voice/VoiceCommand;
    iget-object v5, p0, Lcom/google/glass/voice/embedded/EmbeddedGlassRecognizer;->controller:Lcom/google/glass/voice/embedded/MultiRecognizerController;

    invoke-virtual {v5, v3, v1}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->getAlignmentInfos(Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 97
    .local v2, infos:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/AlignmentInfo;>;"
    if-eqz v0, :cond_0

    .line 98
    new-instance v4, Lcom/google/glass/voice/HotwordResult;

    invoke-virtual {v3}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getHotwordConfidence()F

    move-result v5

    invoke-direct {v4, v0, v5, v2}, Lcom/google/glass/voice/HotwordResult;-><init>(Lcom/google/glass/voice/VoiceCommand;FLjava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 86
    .end local v0           #command:Lcom/google/glass/voice/VoiceCommand;
    .end local v1           #hotword:Ljava/lang/String;
    .end local v2           #infos:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/AlignmentInfo;>;"
    .end local v3           #result:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
