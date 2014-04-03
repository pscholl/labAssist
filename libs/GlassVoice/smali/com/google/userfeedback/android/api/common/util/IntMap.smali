.class public Lcom/google/userfeedback/android/api/common/util/IntMap;
.super Ljava/lang/Object;
.source "IntMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;
    }
.end annotation


# static fields
.field private static final INITIAL_LOWER_BUFFER_SIZE:I = 0x10

.field private static final MAX_LOWER_BUFFER_SIZE:I = 0x80


# instance fields
.field private higher:Ljava/util/Hashtable;

.field private lower:[Ljava/lang/Object;

.field private lowerCount:I

.field private maxKey:I

.field private maxLowerKey:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 106
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/google/userfeedback/android/api/common/util/IntMap;-><init>(I)V

    .line 107
    return-void
.end method

.method constructor <init>(I)V
    .locals 3
    .parameter "initialLowerBufferSize"

    .prologue
    const/high16 v2, -0x8000

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/16 v0, 0x10

    .line 117
    .local v0, lowerBufferSize:I
    if-lez p1, :cond_0

    .line 118
    const/16 v1, 0x80

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 120
    :cond_0
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->lower:[Ljava/lang/Object;

    .line 121
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->lowerCount:I

    .line 122
    iput v2, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->maxKey:I

    .line 123
    iput v2, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->maxLowerKey:I

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/google/userfeedback/android/api/common/util/IntMap;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->maxLowerKey:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/userfeedback/android/api/common/util/IntMap;)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->lower:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/userfeedback/android/api/common/util/IntMap;)Ljava/util/Hashtable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->higher:Ljava/util/Hashtable;

    return-object v0
.end method

.method private static compareHashtable(Ljava/util/Hashtable;Ljava/util/Hashtable;)Z
    .locals 8
    .parameter "h1"
    .parameter "h2"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 341
    if-ne p0, p1, :cond_1

    .line 360
    :cond_0
    :goto_0
    return v4

    .line 344
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v4, v5

    .line 345
    goto :goto_0

    .line 347
    :cond_3
    invoke-virtual {p0}, Ljava/util/Hashtable;->size()I

    move-result v6

    invoke-virtual {p1}, Ljava/util/Hashtable;->size()I

    move-result v7

    if-eq v6, v7, :cond_4

    move v4, v5

    .line 348
    goto :goto_0

    .line 351
    :cond_4
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 352
    .local v0, h1Keys:Ljava/util/Enumeration;
    :cond_5
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 353
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    .line 354
    .local v3, key:Ljava/lang/Object;
    invoke-virtual {p0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 355
    .local v1, h1Value:Ljava/lang/Object;
    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 356
    .local v2, h2Value:Ljava/lang/Object;
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    move v4, v5

    .line 357
    goto :goto_0
.end method

.method private compareLowerBuffer([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 5
    .parameter "lower1"
    .parameter "lower2"

    .prologue
    const/4 v2, 0x0

    .line 316
    array-length v3, p1

    array-length v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 318
    .local v1, min:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 319
    aget-object v3, p1, v0

    if-nez v3, :cond_0

    aget-object v3, p2, v0

    if-nez v3, :cond_1

    :cond_0
    aget-object v3, p1, v0

    if-eqz v3, :cond_2

    aget-object v3, p1, v0

    aget-object v4, p2, v0

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 334
    :cond_1
    :goto_1
    return v2

    .line 318
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    :cond_3
    array-length v3, p1

    array-length v4, p2

    if-le v3, v4, :cond_4

    .line 326
    move v0, v1

    :goto_2
    array-length v3, p1

    if-ge v0, v3, :cond_5

    .line 327
    aget-object v3, p1, v0

    if-nez v3, :cond_1

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 329
    :cond_4
    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_5

    .line 330
    move v0, v1

    :goto_3
    array-length v3, p2

    if-ge v0, v3, :cond_5

    .line 331
    aget-object v3, p2, v0

    if-nez v3, :cond_1

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 334
    :cond_5
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private expandLowerIfNecessary(I)Z
    .locals 5
    .parameter "key"

    .prologue
    const/16 v4, 0x80

    const/4 v2, 0x0

    .line 370
    if-ge p1, v4, :cond_1

    iget-object v3, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->lower:[Ljava/lang/Object;

    array-length v3, v3

    if-lt p1, v3, :cond_1

    if-lez p1, :cond_1

    .line 371
    iget-object v3, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->lower:[Ljava/lang/Object;

    array-length v1, v3

    .line 373
    .local v1, size:I
    :cond_0
    shl-int/lit8 v1, v1, 0x1

    .line 374
    if-le v1, p1, :cond_0

    .line 375
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 376
    new-array v0, v1, [Ljava/lang/Object;

    .line 377
    .local v0, newLower:[Ljava/lang/Object;
    iget-object v3, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->lower:[Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->lower:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 378
    iput-object v0, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->lower:[Ljava/lang/Object;

    .line 379
    const/4 v2, 0x1

    .line 381
    .end local v0           #newLower:[Ljava/lang/Object;
    .end local v1           #size:I
    :cond_1
    return v2
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    const/high16 v3, -0x8000

    .line 174
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->lower:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->lower:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->higher:Ljava/util/Hashtable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->higher:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 178
    :cond_1
    iput v3, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->maxKey:I

    .line 179
    iput v3, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->maxLowerKey:I

    .line 180
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->lowerCount:I

    .line 181
    return-void
.end method

.method public containsKey(I)Z
    .locals 2
    .parameter "key"

    .prologue
    const/4 v0, 0x0

    .line 267
    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->lower:[Ljava/lang/Object;

    array-length v1, v1

    if-ge p1, v1, :cond_1

    .line 268
    iget-object v1, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->lower:[Ljava/lang/Object;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 272
    :cond_0
    :goto_0
    return v0

    .line 269
    :cond_1
    iget-object v1, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->higher:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->higher:Ljava/util/Hashtable;

    invoke-static {p1}, Lcom/google/userfeedback/android/api/common/util/Primitives;->toInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "object"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 301
    if-ne p0, p1, :cond_1

    .line 311
    :cond_0
    :goto_0
    return v1

    .line 304
    :cond_1
    if-eqz p1, :cond_2

    instance-of v3, p1, Lcom/google/userfeedback/android/api/common/util/IntMap;

    if-nez v3, :cond_3

    :cond_2
    move v1, v2

    .line 305
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 307
    check-cast v0, Lcom/google/userfeedback/android/api/common/util/IntMap;

    .line 308
    .local v0, peer:Lcom/google/userfeedback/android/api/common/util/IntMap;
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/common/util/IntMap;->size()I

    move-result v3

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/common/util/IntMap;->size()I

    move-result v4

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 309
    goto :goto_0

    .line 311
    :cond_4
    iget-object v3, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->lower:[Ljava/lang/Object;

    iget-object v4, v0, Lcom/google/userfeedback/android/api/common/util/IntMap;->lower:[Ljava/lang/Object;

    invoke-direct {p0, v3, v4}, Lcom/google/userfeedback/android/api/common/util/IntMap;->compareLowerBuffer([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->higher:Ljava/util/Hashtable;

    iget-object v4, v0, Lcom/google/userfeedback/android/api/common/util/IntMap;->higher:Ljava/util/Hashtable;

    invoke-static {v3, v4}, Lcom/google/userfeedback/android/api/common/util/IntMap;->compareHashtable(Ljava/util/Hashtable;Ljava/util/Hashtable;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .parameter "key"

    .prologue
    const/4 v0, 0x0

    .line 191
    iget v1, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->maxLowerKey:I

    if-gt p1, v1, :cond_1

    if-ltz p1, :cond_1

    .line 192
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->lower:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 198
    :cond_0
    :goto_0
    return-object v0

    .line 193
    :cond_1
    iget v1, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->maxKey:I

    if-gt p1, v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->higher:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    .line 196
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->higher:Ljava/util/Hashtable;

    invoke-static {p1}, Lcom/google/userfeedback/android/api/common/util/Primitives;->toInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getNumBytesOverhead()I
    .locals 4

    .prologue
    .line 404
    iget-object v3, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->lower:[Ljava/lang/Object;

    array-length v3, v3

    mul-int/lit8 v2, v3, 0x4

    .line 405
    .local v2, lowerOverhead:I
    const/4 v0, 0x0

    .line 406
    .local v0, higherBoxedKeysOverhead:I
    const/4 v1, 0x0

    .line 407
    .local v1, higherHashtableOverhead:I
    iget-object v3, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->higher:Ljava/util/Hashtable;

    if-eqz v3, :cond_0

    .line 408
    iget-object v3, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->higher:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    mul-int/lit8 v0, v3, 0x4

    .line 409
    iget-object v3, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->higher:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v1, v3, 0x3

    .line 411
    :cond_0
    add-int v3, v2, v0

    add-int/2addr v3, v1

    return v3
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 279
    const/4 v0, 0x1

    .line 280
    .local v0, hashCode:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->lower:[Ljava/lang/Object;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 281
    iget-object v3, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->lower:[Ljava/lang/Object;

    aget-object v2, v3, v1

    .line 282
    .local v2, value:Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 283
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    add-int v0, v3, v1

    .line 280
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 288
    .end local v2           #value:Ljava/lang/Object;
    :cond_1
    iget-object v3, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->higher:Ljava/util/Hashtable;

    if-nez v3, :cond_2

    .end local v0           #hashCode:I
    :goto_1
    return v0

    .restart local v0       #hashCode:I
    :cond_2
    iget-object v3, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->higher:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/common/util/IntMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keys()Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;

    invoke-direct {v0, p0}, Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;-><init>(Lcom/google/userfeedback/android/api/common/util/IntMap;)V

    return-object v0
.end method

.method public maxKey()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->maxKey:I

    return v0
.end method

.method public newIntMapWithSameBufferSize()Lcom/google/userfeedback/android/api/common/util/IntMap;
    .locals 2

    .prologue
    .line 134
    new-instance v0, Lcom/google/userfeedback/android/api/common/util/IntMap;

    iget v1, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->maxLowerKey:I

    invoke-direct {v0, v1}, Lcom/google/userfeedback/android/api/common/util/IntMap;-><init>(I)V

    return-object v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 213
    if-nez p2, :cond_0

    .line 214
    invoke-virtual {p0, p1}, Lcom/google/userfeedback/android/api/common/util/IntMap;->remove(I)Ljava/lang/Object;

    .line 235
    :goto_0
    return-void

    .line 217
    :cond_0
    iget v0, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->maxKey:I

    if-le p1, v0, :cond_1

    .line 218
    iput p1, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->maxKey:I

    .line 220
    :cond_1
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->lower:[Ljava/lang/Object;

    array-length v0, v0

    if-lt p1, v0, :cond_3

    :cond_2
    invoke-direct {p0, p1}, Lcom/google/userfeedback/android/api/common/util/IntMap;->expandLowerIfNecessary(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 221
    :cond_3
    iget v0, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->maxLowerKey:I

    if-le p1, v0, :cond_5

    .line 222
    iput p1, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->maxLowerKey:I

    .line 224
    iget v0, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->lowerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->lowerCount:I

    .line 228
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->lower:[Ljava/lang/Object;

    aput-object p2, v0, p1

    goto :goto_0

    .line 225
    :cond_5
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->lower:[Ljava/lang/Object;

    aget-object v0, v0, p1

    if-nez v0, :cond_4

    .line 226
    iget v0, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->lowerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->lowerCount:I

    goto :goto_1

    .line 230
    :cond_6
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->higher:Ljava/util/Hashtable;

    if-nez v0, :cond_7

    .line 231
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->higher:Ljava/util/Hashtable;

    .line 233
    :cond_7
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->higher:Ljava/util/Hashtable;

    invoke-static {p1}, Lcom/google/userfeedback/android/api/common/util/Primitives;->toInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 3
    .parameter "key"

    .prologue
    .line 246
    const/4 v0, 0x0

    .line 247
    .local v0, deleted:Ljava/lang/Object;
    if-ltz p1, :cond_2

    iget-object v1, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->lower:[Ljava/lang/Object;

    array-length v1, v1

    if-ge p1, v1, :cond_2

    .line 248
    iget-object v1, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->lower:[Ljava/lang/Object;

    aget-object v0, v1, p1

    .line 249
    if-eqz v0, :cond_0

    .line 250
    iget v1, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->lowerCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->lowerCount:I

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->lower:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, p1

    .line 256
    .end local v0           #deleted:Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object v0

    .line 253
    .restart local v0       #deleted:Ljava/lang/Object;
    :cond_2
    iget-object v1, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->higher:Ljava/util/Hashtable;

    if-eqz v1, :cond_1

    .line 254
    iget-object v1, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->higher:Ljava/util/Hashtable;

    invoke-static {p1}, Lcom/google/userfeedback/android/api/common/util/Primitives;->toInteger(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->higher:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->lowerCount:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->lowerCount:I

    iget-object v1, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->higher:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 386
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "IntMap{lower:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 387
    .local v0, buffer:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->lower:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 388
    iget-object v2, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->lower:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 389
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 390
    const-string v2, "=>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 391
    iget-object v2, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->lower:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 392
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 387
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 395
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", higher:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/userfeedback/android/api/common/util/IntMap;->higher:Ljava/util/Hashtable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 396
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
