.class public Lcom/google/glass/voice/CommandRecognizerLoader;
.super Ljava/lang/Object;
.source "CommandRecognizerLoader.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final asyncExecutor:Ljava/util/concurrent/Executor;

.field private final context:Landroid/content/Context;

.field private final loadedRecognizers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/glass/voice/HotwordRecognizer;",
            ">;"
        }
    .end annotation
.end field

.field private final recognizerFactory:Lcom/google/glass/voice/RecognizerFactory;

.field final recognizersToDestroy:Ljava/util/Set;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/glass/voice/HotwordRecognizer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/CommandRecognizerLoader;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/voice/RecognizerFactory;Ljava/util/concurrent/Executor;)V
    .locals 1
    .parameter "context"
    .parameter "recognizerFactory"
    .parameter "asyncExecutor"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcom/google/common/collect/Maps;->newConcurrentMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->loadedRecognizers:Ljava/util/Map;

    .line 40
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->recognizersToDestroy:Ljava/util/Set;

    .line 46
    iput-object p1, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->context:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->recognizerFactory:Lcom/google/glass/voice/RecognizerFactory;

    .line 48
    iput-object p3, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->asyncExecutor:Ljava/util/concurrent/Executor;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/CommandRecognizerLoader;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/glass/voice/CommandRecognizerLoader;->destroyRecognizers()V

    return-void
.end method

.method private destroyRecognizers()V
    .locals 3

    .prologue
    .line 167
    iget-object v2, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->recognizersToDestroy:Ljava/util/Set;

    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/HotwordRecognizer;

    .line 168
    .local v1, recognizer:Lcom/google/glass/voice/HotwordRecognizer;
    invoke-interface {v1}, Lcom/google/glass/voice/HotwordRecognizer;->destroy()V

    .line 169
    iget-object v2, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->recognizersToDestroy:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    .end local v1           #recognizer:Lcom/google/glass/voice/HotwordRecognizer;
    :cond_0
    return-void
.end method

.method static hash(Lcom/google/glass/voice/VoiceConfig;)I
    .locals 3
    .parameter "voiceConfig"

    .prologue
    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getSensitivity()Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getCustomPhrases()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private unloadHashes(Ljava/lang/Iterable;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, hashes:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 131
    .local v0, hash:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->loadedRecognizers:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/voice/HotwordRecognizer;

    .line 132
    .local v2, recognizer:Lcom/google/glass/voice/HotwordRecognizer;
    if-eqz v2, :cond_0

    .line 133
    iget-object v3, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->recognizersToDestroy:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    :cond_0
    sget-object v3, Lcom/google/glass/voice/CommandRecognizerLoader;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "No recognizer to unload for %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 138
    .end local v0           #hash:Ljava/lang/Integer;
    .end local v2           #recognizer:Lcom/google/glass/voice/HotwordRecognizer;
    :cond_1
    return-void
.end method


# virtual methods
.method public dumpState(Ljava/io/PrintWriter;)V
    .locals 4
    .parameter "writer"

    .prologue
    .line 189
    iget-object v2, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->loadedRecognizers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 190
    .local v1, recognizerEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/google/glass/voice/HotwordRecognizer;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 193
    .end local v1           #recognizerEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/google/glass/voice/HotwordRecognizer;>;"
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Recognizers to destroy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->recognizersToDestroy:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method protected finalize()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v2, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->loadedRecognizers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 178
    .local v0, hash:I
    sget-object v2, Lcom/google/glass/voice/CommandRecognizerLoader;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Command recognizer resources leaked for hash %s!"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 181
    .end local v0           #hash:I
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 182
    return-void
.end method

.method public getRecognizer(Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/HotwordRecognizer;
    .locals 3
    .parameter "voiceConfig"

    .prologue
    .line 58
    invoke-static {p1}, Lcom/google/glass/voice/CommandRecognizerLoader;->hash(Lcom/google/glass/voice/VoiceConfig;)I

    move-result v0

    .line 59
    .local v0, hash:I
    iget-object v1, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->loadedRecognizers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/CommandRecognizerLoader;->load(Lcom/google/glass/voice/VoiceConfig;)V

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->loadedRecognizers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/HotwordRecognizer;

    return-object v1
.end method

.method declared-synchronized load(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 8
    .parameter "voiceConfig"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/google/glass/voice/CommandRecognizerLoader;->hash(Lcom/google/glass/voice/VoiceConfig;)I

    move-result v0

    .line 96
    .local v0, hash:I
    iget-object v3, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->loadedRecognizers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->recognizersToDestroy:Ljava/util/Set;

    iget-object v4, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->loadedRecognizers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 98
    sget-object v3, Lcom/google/glass/voice/CommandRecognizerLoader;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Have already loaded %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 102
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->recognizerFactory:Lcom/google/glass/voice/RecognizerFactory;

    iget-object v4, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->context:Landroid/content/Context;

    invoke-virtual {v3, v4, p1}, Lcom/google/glass/voice/RecognizerFactory;->createRecognizer(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v1

    .line 103
    .local v1, newRecognizer:Lcom/google/glass/voice/HotwordRecognizer;
    sget-object v3, Lcom/google/glass/voice/CommandRecognizerLoader;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Loaded recognizer for voiceConfig %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    iget-object v3, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->loadedRecognizers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/voice/HotwordRecognizer;

    .line 111
    .local v2, previousRecognizer:Lcom/google/glass/voice/HotwordRecognizer;
    if-eqz v2, :cond_0

    .line 112
    sget-object v3, Lcom/google/glass/voice/CommandRecognizerLoader;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Already have recognizer for hash %s, slating for destruction."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iget-object v3, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->recognizersToDestroy:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 95
    .end local v0           #hash:I
    .end local v1           #newRecognizer:Lcom/google/glass/voice/HotwordRecognizer;
    .end local v2           #previousRecognizer:Lcom/google/glass/voice/HotwordRecognizer;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized load(Ljava/util/Collection;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/google/glass/voice/VoiceConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, voiceConfigs:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/google/glass/voice/VoiceConfig;>;"
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceConfig;

    .line 77
    .local v0, config:Lcom/google/glass/voice/VoiceConfig;
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/CommandRecognizerLoader;->load(Lcom/google/glass/voice/VoiceConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 76
    .end local v0           #config:Lcom/google/glass/voice/VoiceConfig;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 79
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public loadAsync(Ljava/util/Collection;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/google/glass/voice/VoiceConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, voiceConfigs:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/google/glass/voice/VoiceConfig;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/VoiceConfig;

    .line 84
    .local v1, voiceConfig:Lcom/google/glass/voice/VoiceConfig;
    iget-object v2, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->asyncExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/glass/voice/CommandRecognizerLoader$1;

    invoke-direct {v3, p0, v1}, Lcom/google/glass/voice/CommandRecognizerLoader$1;-><init>(Lcom/google/glass/voice/CommandRecognizerLoader;Lcom/google/glass/voice/VoiceConfig;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 91
    .end local v1           #voiceConfig:Lcom/google/glass/voice/VoiceConfig;
    :cond_0
    return-void
.end method

.method public unload(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/google/glass/voice/VoiceConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, voiceConfigs:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/google/glass/voice/VoiceConfig;>;"
    new-instance v0, Lcom/google/glass/voice/CommandRecognizerLoader$2;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/CommandRecognizerLoader$2;-><init>(Lcom/google/glass/voice/CommandRecognizerLoader;)V

    invoke-static {p1, v0}, Lcom/google/common/collect/Iterables;->transform(Ljava/lang/Iterable;Lcom/google/common/base/Function;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/voice/CommandRecognizerLoader;->unloadHashes(Ljava/lang/Iterable;)V

    .line 127
    return-void
.end method

.method public unloadAll()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->loadedRecognizers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/voice/CommandRecognizerLoader;->unloadHashes(Ljava/lang/Iterable;)V

    .line 163
    invoke-direct {p0}, Lcom/google/glass/voice/CommandRecognizerLoader;->destroyRecognizers()V

    .line 164
    return-void
.end method

.method public unloadReplacedRecognizers()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->recognizersToDestroy:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->asyncExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/glass/voice/CommandRecognizerLoader$3;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/CommandRecognizerLoader$3;-><init>(Lcom/google/glass/voice/CommandRecognizerLoader;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
