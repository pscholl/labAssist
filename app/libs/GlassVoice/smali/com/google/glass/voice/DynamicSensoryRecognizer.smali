.class public Lcom/google/glass/voice/DynamicSensoryRecognizer;
.super Lcom/google/glass/voice/Sensory;
.source "DynamicSensoryRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/DynamicSensoryRecognizer$UnrecognizablePhrasesException;
    }
.end annotation


# static fields
.field private static final GRAMMAR_DISJUNCTION_OPERATOR:Ljava/lang/String; = "|"

.field public static final MAX_GRAMMAR_PHRASES:I = 0x14

.field private static final PARAM_A_DYNAMIC_PHRASESPOT:I = 0x19

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final tagToPhrase:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final grammar:Ljava/lang/String;

.field private final ltsFile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/DynamicSensoryRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 46
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/DynamicSensoryRecognizer;->tagToPhrase:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 17
    .parameter "context"
    .parameter "recogFile"
    .parameter "ltsFile"
    .parameter "phrases"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/voice/DynamicSensoryRecognizer$UnrecognizablePhrasesException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct/range {p0 .. p1}, Lcom/google/glass/voice/Sensory;-><init>(Landroid/content/Context;)V

    .line 89
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/glass/voice/DynamicSensoryRecognizer;->ltsFile:Ljava/lang/String;

    .line 97
    move-object/from16 v0, p4

    array-length v2, v0

    const/16 v5, 0x14

    if-le v2, v5, :cond_0

    .line 98
    new-instance v2, Lcom/google/glass/voice/DynamicSensoryRecognizer$UnrecognizablePhrasesException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Too many phrases ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", max "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x14

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/google/glass/voice/DynamicSensoryRecognizer$UnrecognizablePhrasesException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 106
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/voice/DynamicSensoryRecognizer;->nativeInitPhrasespotDynamic()J

    move-result-wide v3

    .line 107
    .local v3, sensoryContext:J
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/google/glass/voice/DynamicSensoryRecognizer;->getPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/google/glass/voice/DynamicSensoryRecognizer;->nativeNormalizeText(JLjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 110
    .local v11, normalizedPhrases:[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    array-length v2, v11

    if-ge v9, v2, :cond_1

    .line 111
    sget-object v2, Lcom/google/glass/voice/DynamicSensoryRecognizer;->tagToPhrase:Ljava/util/Map;

    aget-object v5, p4, v9

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aget-object v6, p4, v9

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 114
    :cond_1
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v15

    .line 115
    .local v15, validPhraseList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v16

    .line 116
    .local v16, validTagList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    :goto_1
    array-length v2, v11

    if-ge v9, v2, :cond_3

    .line 117
    aget-object v10, v11, v9

    .line 118
    .local v10, normalizedPhrase:Ljava/lang/String;
    aget-object v12, p4, v9

    .line 119
    .local v12, originalPhrase:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 129
    :cond_2
    invoke-interface {v15, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 131
    .local v13, tag:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v2, Lcom/google/glass/voice/DynamicSensoryRecognizer;->tagToPhrase:Ljava/util/Map;

    invoke-interface {v2, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 138
    .end local v10           #normalizedPhrase:Ljava/lang/String;
    .end local v12           #originalPhrase:Ljava/lang/String;
    .end local v13           #tag:Ljava/lang/String;
    :cond_3
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v15, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    .line 139
    .local v14, validPhraseArray:[Ljava/lang/String;
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v14, v2}, Lcom/google/glass/voice/DynamicSensoryRecognizer;->generateGrammar([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/glass/voice/DynamicSensoryRecognizer;->grammar:Ljava/lang/String;

    .line 141
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/glass/voice/DynamicSensoryRecognizer;->generateGrammarWords([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 143
    .local v8, words:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/voice/DynamicSensoryRecognizer;->grammar:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v8, :cond_4

    array-length v2, v8

    if-nez v2, :cond_5

    .line 144
    :cond_4
    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/google/glass/voice/DynamicSensoryRecognizer;->sensoryContext:J

    .line 145
    new-instance v2, Lcom/google/glass/voice/DynamicSensoryRecognizer$UnrecognizablePhrasesException;

    const-string v5, "Error generating grammar, Sensory object not correctly initialized"

    invoke-direct {v2, v5}, Lcom/google/glass/voice/DynamicSensoryRecognizer$UnrecognizablePhrasesException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 149
    :cond_5
    invoke-static/range {p1 .. p2}, Lcom/google/glass/voice/DynamicSensoryRecognizer;->getPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/google/glass/voice/DynamicSensoryRecognizer;->getPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/glass/voice/DynamicSensoryRecognizer;->grammar:Ljava/lang/String;

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/google/glass/voice/DynamicSensoryRecognizer;->nativeCompileGrammar(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v5

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/google/glass/voice/DynamicSensoryRecognizer;->sensoryContext:J

    .line 151
    return-void
.end method

.method static generateGrammar([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "phrases"
    .parameter "tags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/voice/DynamicSensoryRecognizer$UnrecognizablePhrasesException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x14

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 176
    if-eqz p0, :cond_0

    array-length v7, p0

    if-nez v7, :cond_1

    .line 177
    :cond_0
    new-instance v5, Lcom/google/glass/voice/DynamicSensoryRecognizer$UnrecognizablePhrasesException;

    const-string v6, "Null or empty array of phrases provided for grammar, returning null grammar"

    invoke-direct {v5, v6}, Lcom/google/glass/voice/DynamicSensoryRecognizer$UnrecognizablePhrasesException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 181
    :cond_1
    array-length v7, p0

    if-le v7, v11, :cond_2

    .line 182
    new-instance v7, Lcom/google/glass/voice/DynamicSensoryRecognizer$UnrecognizablePhrasesException;

    const-string v8, "Too many phrases (%d, max %d), returning null grammar"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    array-length v10, p0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v5

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Lcom/google/glass/voice/DynamicSensoryRecognizer$UnrecognizablePhrasesException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 187
    :cond_2
    if-eqz p1, :cond_3

    array-length v7, p0

    array-length v8, p1

    if-ne v7, v8, :cond_5

    :cond_3
    :goto_0
    invoke-static {v5}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .local v0, b:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v5, p0

    if-ge v2, v5, :cond_7

    .line 194
    const-string v5, "w"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    aget-object v5, p0, v2

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 196
    .local v4, wordsInPhrase:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    array-length v5, v4

    if-ge v3, v5, :cond_6

    .line 197
    aget-object v5, v4, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    if-eqz p1, :cond_4

    .line 202
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_4

    .line 203
    const-string v5, "%"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    aget-object v5, v4, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const-string v5, "_tag_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    aget-object v5, p1, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :cond_4
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0           #b:Ljava/lang/StringBuilder;
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #wordsInPhrase:[Ljava/lang/String;
    :cond_5
    move v5, v6

    .line 187
    goto :goto_0

    .line 212
    .restart local v0       #b:Ljava/lang/StringBuilder;
    .restart local v2       #i:I
    .restart local v3       #j:I
    .restart local v4       #wordsInPhrase:[Ljava/lang/String;
    :cond_6
    const-string v5, "; "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 216
    .end local v3           #j:I
    .end local v4           #wordsInPhrase:[Ljava/lang/String;
    :cond_7
    const-string v5, "g = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const/4 v2, 0x1

    :goto_3
    array-length v5, p0

    add-int/lit8 v5, v5, 0x1

    if-ge v2, v5, :cond_9

    .line 218
    const-string v5, "$w"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    array-length v5, p0

    if-ne v2, v5, :cond_8

    .line 220
    const-string v5, "; "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 222
    :cond_8
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "|"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 229
    :cond_9
    const/4 v2, 0x1

    :goto_5
    array-length v5, p0

    add-int/lit8 v5, v5, 0x1

    if-ge v2, v5, :cond_a

    .line 230
    const-string v5, "paramA: $w"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v7, 0x19

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "; "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    const-string v5, "paramB: $w"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " -"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "; "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 235
    :cond_a
    sget-object v5, Lcom/google/glass/voice/DynamicSensoryRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Generated dynamic grammar"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v5, v7, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "%"

    const-string v7, "%%"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, escaped:Ljava/lang/String;
    const/4 v5, 0x3

    const-string v6, "DynamicSensory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dynamic grammar: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private generateGrammarWords([Ljava/lang/String;)[Ljava/lang/String;
    .locals 18
    .parameter "phrases"

    .prologue
    .line 256
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v13, v0

    if-nez v13, :cond_2

    .line 257
    :cond_0
    sget-object v13, Lcom/google/glass/voice/DynamicSensoryRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v14, "Null or empty array of phrases provided for grammar words, returning null words"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-interface {v13, v14, v15}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    const/4 v1, 0x0

    .line 283
    :cond_1
    :goto_0
    return-object v1

    .line 261
    :cond_2
    move-object/from16 v0, p1

    array-length v13, v0

    const/16 v14, 0x14

    if-le v13, v14, :cond_3

    .line 262
    sget-object v13, Lcom/google/glass/voice/DynamicSensoryRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v14, "Too many phrases (%s, max 20), returning null grammar"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-interface {v13, v14, v15}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    const/4 v1, 0x0

    goto :goto_0

    .line 267
    :cond_3
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v11, words:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v2, p1

    .local v2, arr$:[Ljava/lang/String;
    array-length v7, v2

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    move v6, v5

    .end local v2           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .local v6, i$:I
    :goto_1
    if-ge v6, v7, :cond_5

    aget-object v9, v2, v6

    .line 271
    .local v9, phrase:Ljava/lang/String;
    const-string v13, " "

    invoke-virtual {v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 272
    .local v12, wordsInPhrase:[Ljava/lang/String;
    move-object v3, v12

    .local v3, arr$:[Ljava/lang/String;
    array-length v8, v3

    .local v8, len$:I
    const/4 v5, 0x0

    .end local v6           #i$:I
    .restart local v5       #i$:I
    :goto_2
    if-ge v5, v8, :cond_4

    aget-object v10, v3, v5

    .line 273
    .local v10, word:Ljava/lang/String;
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 270
    .end local v10           #word:Ljava/lang/String;
    :cond_4
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    .end local v5           #i$:I
    .restart local v6       #i$:I
    goto :goto_1

    .line 278
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v8           #len$:I
    .end local v9           #phrase:Ljava/lang/String;
    .end local v12           #wordsInPhrase:[Ljava/lang/String;
    :cond_5
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    new-array v1, v13, [Ljava/lang/String;

    .line 279
    .local v1, arr:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v4, v13, :cond_1

    .line 280
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    aput-object v13, v1, v4

    .line 279
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method


# virtual methods
.method getGrammarRuleCountForTests()I
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/glass/voice/DynamicSensoryRecognizer;->grammar:Ljava/lang/String;

    const-string v1, "\\|"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method getGrammarRuleForTests()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/glass/voice/DynamicSensoryRecognizer;->grammar:Ljava/lang/String;

    return-object v0
.end method

.method public getLtsFileBeingUsedForTests()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/glass/voice/DynamicSensoryRecognizer;->ltsFile:Ljava/lang/String;

    return-object v0
.end method

.method public stringToCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;
    .locals 3
    .parameter "literal"

    .prologue
    .line 288
    new-instance v1, Lcom/google/glass/voice/VoiceCommand;

    sget-object v0, Lcom/google/glass/voice/DynamicSensoryRecognizer;->tagToPhrase:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/glass/voice/VoiceCommand;->getSemanticTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/google/glass/voice/VoiceCommand;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 293
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isUser()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "(redacted)"

    .line 294
    .local v0, grammar:Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DynamicSensoryRecognizer [grammar="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 293
    .end local v0           #grammar:Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/DynamicSensoryRecognizer;->grammar:Ljava/lang/String;

    goto :goto_0
.end method
