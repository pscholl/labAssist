.class public Lcom/google/glass/voice/SensoryRecognizerFactory;
.super Lcom/google/glass/voice/RecognizerFactory;
.source "SensoryRecognizerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/SensoryRecognizerFactory$1;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/SensoryRecognizerFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/glass/voice/RecognizerFactory;-><init>()V

    .line 59
    return-void
.end method

.method protected static containsNonEmptyString([Ljava/lang/String;)Z
    .locals 5
    .parameter "strings"

    .prologue
    .line 89
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 90
    .local v3, string:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 91
    const/4 v4, 0x1

    .line 94
    .end local v3           #string:Ljava/lang/String;
    :goto_1
    return v4

    .line 89
    .restart local v3       #string:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    .end local v3           #string:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method static varargs createBestRecognizer(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;Lcom/google/glass/voice/VoiceConfig$Sensitivity;[Ljava/lang/String;)Lcom/google/glass/voice/HotwordRecognizer;
    .locals 11
    .parameter "context"
    .parameter "letterToSoundModel"
    .parameter "sensitivity"
    .parameter "phrases"

    .prologue
    .line 105
    invoke-static {p3}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v8

    .line 106
    .local v8, remainingPhrases:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 109
    .local v7, recognizers:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/HotwordRecognizer;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 112
    .local v0, dynamicPhrases:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v8}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 113
    .local v5, phrase:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/glass/voice/StaticRecognizerFiles;->isFilesetAvailable(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 114
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-interface {v8, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    .end local v5           #phrase:Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 120
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v0, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 121
    .local v6, phraseArray:[Ljava/lang/String;
    invoke-static {p0, p1, v6}, Lcom/google/glass/voice/SensoryRecognizerFactory;->createDynamicRecognizer(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;[Ljava/lang/String;)Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v1

    .line 123
    .local v1, dynamicRecognizer:Lcom/google/glass/voice/HotwordRecognizer;
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 168
    .end local v1           #dynamicRecognizer:Lcom/google/glass/voice/HotwordRecognizer;
    .end local v6           #phraseArray:[Ljava/lang/String;
    :goto_1
    return-object v1

    .line 127
    .restart local v1       #dynamicRecognizer:Lcom/google/glass/voice/HotwordRecognizer;
    .restart local v6       #phraseArray:[Ljava/lang/String;
    :cond_2
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    .end local v1           #dynamicRecognizer:Lcom/google/glass/voice/HotwordRecognizer;
    .end local v6           #phraseArray:[Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 135
    .local v3, filesetsToMix:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/StaticRecognizerFiles;>;"
    sget-object v9, Lcom/google/glass/voice/StaticRecognizerFiles;->filesetsInCardinalityOrder:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 136
    .local v2, fileset:Lcom/google/glass/voice/StaticRecognizerFiles;
    iget-boolean v9, v2, Lcom/google/glass/voice/StaticRecognizerFiles;->rtaCompatible:Z

    if-nez v9, :cond_4

    iget-object v9, v2, Lcom/google/glass/voice/StaticRecognizerFiles;->recognizedLiterals:Ljava/util/Set;

    invoke-interface {v8, v9}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 137
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v9, v2, Lcom/google/glass/voice/StaticRecognizerFiles;->recognizedLiterals:Ljava/util/Set;

    invoke-interface {v8, v9}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 143
    .end local v2           #fileset:Lcom/google/glass/voice/StaticRecognizerFiles;
    :cond_5
    sget-object v9, Lcom/google/glass/voice/StaticRecognizerFiles;->filesetsInCardinalityOrder:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 144
    .restart local v2       #fileset:Lcom/google/glass/voice/StaticRecognizerFiles;
    iget-boolean v9, v2, Lcom/google/glass/voice/StaticRecognizerFiles;->combined:Z

    if-eqz v9, :cond_7

    sget-object v9, Lcom/google/glass/voice/StaticRecognizerFiles;->IS_PRECOMBINED:Lcom/google/common/base/Predicate;

    invoke-static {v3, v9}, Lcom/google/common/collect/Iterables;->any(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 149
    :cond_7
    iget-boolean v9, v2, Lcom/google/glass/voice/StaticRecognizerFiles;->rtaCompatible:Z

    if-eqz v9, :cond_6

    iget-object v9, v2, Lcom/google/glass/voice/StaticRecognizerFiles;->recognizedLiterals:Ljava/util/Set;

    invoke-interface {v8, v9}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 150
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v9, v2, Lcom/google/glass/voice/StaticRecognizerFiles;->recognizedLiterals:Ljava/util/Set;

    invoke-interface {v8, v9}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 156
    .end local v2           #fileset:Lcom/google/glass/voice/StaticRecognizerFiles;
    :cond_8
    sget-object v9, Lcom/google/glass/voice/StaticRecognizerFiles;->filesetsInCardinalityOrder:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 157
    .restart local v2       #fileset:Lcom/google/glass/voice/StaticRecognizerFiles;
    iget-boolean v9, v2, Lcom/google/glass/voice/StaticRecognizerFiles;->rtaCompatible:Z

    if-nez v9, :cond_9

    iget-object v9, v2, Lcom/google/glass/voice/StaticRecognizerFiles;->recognizedLiterals:Ljava/util/Set;

    invoke-interface {v8, v9}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 158
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v9, v2, Lcom/google/glass/voice/StaticRecognizerFiles;->recognizedLiterals:Ljava/util/Set;

    invoke-interface {v8, v9}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 163
    .end local v2           #fileset:Lcom/google/glass/voice/StaticRecognizerFiles;
    :cond_a
    invoke-static {v3, p2}, Lcom/google/glass/voice/StaticRecognizerFiles;->optimizeSensitivity(Ljava/util/List;Lcom/google/glass/voice/VoiceConfig$Sensitivity;)Ljava/util/List;

    move-result-object v3

    .line 164
    invoke-static {p0, v3}, Lcom/google/glass/voice/SensoryRecognizerFactory;->mixFilesets(Landroid/content/Context;Ljava/util/List;)Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_b

    .line 166
    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/glass/voice/HotwordRecognizer;

    move-object v1, v9

    goto/16 :goto_1

    .line 168
    :cond_b
    new-instance v1, Lcom/google/glass/voice/HybridHotwordRecognizer;

    invoke-direct {v1, v7}, Lcom/google/glass/voice/HybridHotwordRecognizer;-><init>(Ljava/util/List;)V

    goto/16 :goto_1
.end method

.method protected static createDynamicRecognizer(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;[Ljava/lang/String;)Lcom/google/glass/voice/HotwordRecognizer;
    .locals 6
    .parameter "context"
    .parameter "letterToSoundModel"
    .parameter "customPhrases"

    .prologue
    const/4 v5, 0x0

    .line 68
    invoke-static {p2}, Lcom/google/glass/voice/SensoryRecognizerFactory;->containsNonEmptyString([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    sget-object v1, Lcom/google/glass/voice/SensoryRecognizerFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "All custom phrases in dynamic recognizer config empty, returning no op recognizer."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    sget-object v1, Lcom/google/glass/voice/SensoryRecognizerFactory;->NO_OP_RECOGNIZER:Lcom/google/glass/voice/HotwordRecognizer;

    .line 80
    :goto_0
    return-object v1

    .line 75
    :cond_0
    :try_start_0
    new-instance v1, Lcom/google/glass/voice/DynamicSensoryRecognizer;

    const-string v2, "nn_en_us_mfcc_16k_15_big_250_v4.7.raw"

    invoke-static {p1}, Lcom/google/glass/voice/SensoryRecognizerFactory;->getLtsFile(Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, p2}, Lcom/google/glass/voice/DynamicSensoryRecognizer;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/glass/voice/DynamicSensoryRecognizer$UnrecognizablePhrasesException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, e:Lcom/google/glass/voice/DynamicSensoryRecognizer$UnrecognizablePhrasesException;
    sget-object v1, Lcom/google/glass/voice/SensoryRecognizerFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Could not compute a dynamic recognizer for phrase set %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    sget-object v1, Lcom/google/glass/voice/SensoryRecognizerFactory;->NO_OP_RECOGNIZER:Lcom/google/glass/voice/HotwordRecognizer;

    goto :goto_0
.end method

.method private static getLtsFile(Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;)Ljava/lang/String;
    .locals 4
    .parameter "letterToSoundModel"

    .prologue
    .line 55
    sget-object v0, Lcom/google/glass/voice/SensoryRecognizerFactory$1;->$SwitchMap$com$google$glass$voice$VoiceConfig$LetterToSoundModel:[I

    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 62
    sget-object v0, Lcom/google/glass/voice/SensoryRecognizerFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unrecognized LTS model constant: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    const-string v0, "lts_en_us_9.5.2b.raw"

    :goto_0
    return-object v0

    .line 57
    :pswitch_0
    const-string v0, "lts_en_us_cid_9.3.1.1.raw"

    goto :goto_0

    .line 59
    :pswitch_1
    const-string v0, "lts_en_us_9.5.2b.raw"

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static mixFilesets(Landroid/content/Context;Ljava/util/List;)Lcom/google/glass/voice/HotwordRecognizer;
    .locals 8
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
            "Lcom/google/glass/voice/HotwordRecognizer;"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, filesetsToMix:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/StaticRecognizerFiles;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 182
    .local v4, rtaCompatibleFilesets:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/StaticRecognizerFiles;>;"
    sget-object v6, Lcom/google/glass/voice/StaticRecognizerFiles;->IS_PRECOMBINED:Lcom/google/common/base/Predicate;

    const/4 v7, 0x0

    invoke-static {p1, v6, v7}, Lcom/google/common/collect/Iterables;->find(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 184
    .local v2, precombined:Lcom/google/glass/voice/StaticRecognizerFiles;
    if-eqz v2, :cond_0

    .line 185
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 189
    :cond_0
    sget-object v6, Lcom/google/glass/voice/StaticRecognizerFiles;->IS_RTA_COMPATIBLE:Lcom/google/common/base/Predicate;

    invoke-static {p1, v6}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v5

    .line 191
    .local v5, singletonRtaFilesets:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/StaticRecognizerFiles;>;"
    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 192
    invoke-interface {p1, v5}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 194
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 195
    .local v3, recognizers:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/HotwordRecognizer;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 196
    invoke-static {p0, v4}, Lcom/google/glass/voice/StaticSensoryRecognizer;->newStaticSensoryRecognizer(Landroid/content/Context;Ljava/util/List;)Lcom/google/glass/voice/Sensory;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 202
    .local v0, fileset:Lcom/google/glass/voice/StaticRecognizerFiles;
    invoke-static {p0, v0}, Lcom/google/glass/voice/StaticSensoryRecognizer;->newStaticSensoryRecognizer(Landroid/content/Context;Lcom/google/glass/voice/StaticRecognizerFiles;)Lcom/google/glass/voice/Sensory;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 205
    .end local v0           #fileset:Lcom/google/glass/voice/StaticRecognizerFiles;
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 206
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/glass/voice/HotwordRecognizer;

    .line 208
    :goto_1
    return-object v6

    :cond_3
    new-instance v6, Lcom/google/glass/voice/HybridHotwordRecognizer;

    invoke-direct {v6, v3}, Lcom/google/glass/voice/HybridHotwordRecognizer;-><init>(Ljava/util/List;)V

    goto :goto_1
.end method


# virtual methods
.method protected createCustomRecognizer(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/HotwordRecognizer;
    .locals 4
    .parameter "context"
    .parameter "config"

    .prologue
    .line 48
    sget-object v0, Lcom/google/glass/voice/SensoryRecognizerFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Creating custom recognizer: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    invoke-virtual {p2}, Lcom/google/glass/voice/VoiceConfig;->getLetterToSoundModel()Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/glass/voice/VoiceConfig;->getSensitivity()Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/glass/voice/VoiceConfig;->getCustomPhrases()[Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/google/glass/voice/SensoryRecognizerFactory;->createBestRecognizer(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;Lcom/google/glass/voice/VoiceConfig$Sensitivity;[Ljava/lang/String;)Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v0

    return-object v0
.end method
