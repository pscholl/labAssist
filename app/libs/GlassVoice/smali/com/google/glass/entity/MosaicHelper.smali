.class public Lcom/google/glass/entity/MosaicHelper;
.super Ljava/lang/Object;
.source "MosaicHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/entity/MosaicHelper$MosaicFuture;,
        Lcom/google/glass/entity/MosaicHelper$MosaicImageLoaderFactory;
    }
.end annotation


# static fields
.field private static final ALL_PATH:Ljava/lang/String; = "/all"

.field private static final CONTACT_IMAGE_AUTHORITY:Ljava/lang/String; = "contact-image"

.field private static final CREATOR_PATH:Ljava/lang/String; = "/creator"

.field private static final MAX_MOSAIC_HEIGHT:I = 0x168

.field private static final MAX_MOSAIC_WIDTH:I = 0x280

.field private static final MOSAIC_CACHE_MAX_BYTES:I = 0x400000

.field private static final SCHEME:Ljava/lang/String; = "glass"

.field private static instance:Lcom/google/glass/entity/MosaicHelper;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;

.field private final imageLoaderFactory:Lcom/google/glass/entity/MosaicHelper$MosaicImageLoaderFactory;

.field private final mosaicCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/MosaicHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/glass/entity/MosaicHelper$MosaicImageLoaderFactory;)V
    .locals 2
    .parameter "context"
    .parameter "imageLoaderFactory"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Lcom/google/glass/entity/MosaicHelper$1;

    const/high16 v1, 0x40

    invoke-direct {v0, p0, v1}, Lcom/google/glass/entity/MosaicHelper$1;-><init>(Lcom/google/glass/entity/MosaicHelper;I)V

    iput-object v0, p0, Lcom/google/glass/entity/MosaicHelper;->mosaicCache:Landroid/util/LruCache;

    .line 128
    iput-object p1, p0, Lcom/google/glass/entity/MosaicHelper;->context:Landroid/content/Context;

    .line 129
    iput-object p2, p0, Lcom/google/glass/entity/MosaicHelper;->imageLoaderFactory:Lcom/google/glass/entity/MosaicHelper$MosaicImageLoaderFactory;

    .line 130
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/glass/entity/MosaicHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/entity/MosaicHelper;Lcom/google/glass/widget/MosaicView;)[B
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/google/glass/entity/MosaicHelper;->mosaicViewToJpeg(Lcom/google/glass/widget/MosaicView;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/entity/MosaicHelper;)Landroid/util/LruCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/glass/entity/MosaicHelper;->mosaicCache:Landroid/util/LruCache;

    return-object v0
.end method

.method public static getInstance()Lcom/google/glass/entity/MosaicHelper;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/google/glass/entity/MosaicHelper;->instance:Lcom/google/glass/entity/MosaicHelper;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 97
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 98
    sget-object v0, Lcom/google/glass/entity/MosaicHelper;->instance:Lcom/google/glass/entity/MosaicHelper;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/google/glass/entity/MosaicHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/glass/entity/MosaicHelper$MosaicImageLoaderFactory;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/glass/entity/MosaicHelper$MosaicImageLoaderFactory;-><init>(Lcom/google/glass/entity/MosaicHelper$1;)V

    invoke-direct {v0, v1, v2}, Lcom/google/glass/entity/MosaicHelper;-><init>(Landroid/content/Context;Lcom/google/glass/entity/MosaicHelper$MosaicImageLoaderFactory;)V

    sput-object v0, Lcom/google/glass/entity/MosaicHelper;->instance:Lcom/google/glass/entity/MosaicHelper;

    .line 101
    :cond_0
    return-void
.end method

.method public static isGlassMosaicUri(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 121
    invoke-virtual {p0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "glass"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "contact-image"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mosaicViewToJpeg(Lcom/google/glass/widget/MosaicView;)[B
    .locals 6
    .parameter "view"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 255
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 256
    invoke-virtual {p1, v5}, Lcom/google/glass/widget/MosaicView;->setDrawingCacheEnabled(Z)V

    .line 258
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/widget/MosaicView;->measure(II)V

    .line 261
    invoke-virtual {p1}, Lcom/google/glass/widget/MosaicView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/glass/widget/MosaicView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p1, v4, v4, v2, v3}, Lcom/google/glass/widget/MosaicView;->layout(IIII)V

    .line 262
    invoke-virtual {p1, v5}, Lcom/google/glass/widget/MosaicView;->buildDrawingCache(Z)V

    .line 263
    invoke-virtual {p1}, Lcom/google/glass/widget/MosaicView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 265
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 266
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 267
    invoke-virtual {p1, v4}, Lcom/google/glass/widget/MosaicView;->setDrawingCacheEnabled(Z)V

    .line 268
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getCachedMosaicImage(Lcom/google/glass/widget/ImageLoader;)[B
    .locals 3
    .parameter "imageLoader"

    .prologue
    .line 137
    iget-object v1, p0, Lcom/google/glass/entity/MosaicHelper;->mosaicCache:Landroid/util/LruCache;

    monitor-enter v1

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/entity/MosaicHelper;->mosaicCache:Landroid/util/LruCache;

    invoke-interface {p1}, Lcom/google/glass/widget/ImageLoader;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    monitor-exit v1

    return-object v0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getImageLoader(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Landroid/net/Uri;)Lcom/google/glass/widget/ImageLoader;
    .locals 13
    .parameter "item"
    .parameter "uri"

    .prologue
    const/4 v9, 0x3

    const/4 v12, 0x2

    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 147
    invoke-static {p2}, Lcom/google/glass/entity/MosaicHelper;->isGlassMosaicUri(Landroid/net/Uri;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 148
    sget-object v6, Lcom/google/glass/entity/MosaicHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Cannot handle URI: %s"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object p2, v8, v10

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    :goto_0
    return-object v5

    .line 154
    :cond_0
    :try_start_0
    const-string v6, "w"

    invoke-virtual {p2, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 155
    .local v4, width:I
    const-string v6, "h"

    invoke-virtual {p2, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 161
    .local v1, height:I
    if-lez v4, :cond_1

    if-gtz v1, :cond_2

    .line 162
    :cond_1
    sget-object v6, Lcom/google/glass/entity/MosaicHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Invalid mosaic dimensions: %dx%d for %s"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    aput-object p2, v8, v12

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 156
    .end local v1           #height:I
    .end local v4           #width:I
    :catch_0
    move-exception v0

    .line 157
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v6, Lcom/google/glass/entity/MosaicHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Unable to extract dimensions: %s"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object p2, v8, v10

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 166
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v1       #height:I
    .restart local v4       #width:I
    :cond_2
    const/16 v6, 0x280

    if-gt v4, v6, :cond_3

    const/16 v6, 0x168

    if-le v1, v6, :cond_4

    .line 167
    :cond_3
    const/high16 v6, 0x4420

    int-to-float v7, v4

    div-float/2addr v6, v7

    const/high16 v7, 0x43b4

    int-to-float v8, v1

    div-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 169
    .local v3, scaleRatio:F
    int-to-float v6, v4

    mul-float/2addr v6, v3

    float-to-int v4, v6

    .line 170
    int-to-float v6, v1

    mul-float/2addr v6, v3

    float-to-int v1, v6

    .line 171
    sget-object v6, Lcom/google/glass/entity/MosaicHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Reducing mosaic dimensions to %dx%d for %s"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    aput-object p2, v8, v12

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    .end local v3           #scaleRatio:F
    :cond_4
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, path:Ljava/lang/String;
    const-string v6, "/all"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 176
    iget-object v5, p0, Lcom/google/glass/entity/MosaicHelper;->imageLoaderFactory:Lcom/google/glass/entity/MosaicHelper$MosaicImageLoaderFactory;

    invoke-virtual {v5, p1, v10, v4, v1}, Lcom/google/glass/entity/MosaicHelper$MosaicImageLoaderFactory;->createImageLoader(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ZII)Lcom/google/glass/widget/ImageLoader;

    move-result-object v5

    goto/16 :goto_0

    .line 177
    :cond_5
    const-string v6, "/creator"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 178
    iget-object v5, p0, Lcom/google/glass/entity/MosaicHelper;->imageLoaderFactory:Lcom/google/glass/entity/MosaicHelper$MosaicImageLoaderFactory;

    invoke-virtual {v5, p1, v11, v4, v1}, Lcom/google/glass/entity/MosaicHelper$MosaicImageLoaderFactory;->createImageLoader(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ZII)Lcom/google/glass/widget/ImageLoader;

    move-result-object v5

    goto/16 :goto_0

    .line 180
    :cond_6
    sget-object v6, Lcom/google/glass/entity/MosaicHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Unknown mosaic type: %s"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object p2, v8, v10

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method handleCellsLoaded(Lcom/google/glass/widget/MosaicView;Lcom/google/glass/entity/MosaicHelper$MosaicFuture;Lcom/google/glass/util/Stopwatch;Ljava/lang/String;)V
    .locals 6
    .parameter "view"
    .parameter "resultFuture"
    .parameter "loadTimer"
    .parameter "cacheKey"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 233
    invoke-virtual {p2}, Lcom/google/glass/entity/MosaicHelper$MosaicFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    :goto_0
    return-void

    .line 236
    :cond_0
    invoke-virtual {p3}, Lcom/google/glass/util/Stopwatch;->stop()Lcom/google/glass/util/Stopwatch;

    .line 237
    new-instance v0, Lcom/google/glass/entity/MosaicHelper$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/entity/MosaicHelper$4;-><init>(Lcom/google/glass/entity/MosaicHelper;Lcom/google/glass/widget/MosaicView;Ljava/lang/String;Lcom/google/glass/entity/MosaicHelper$MosaicFuture;Lcom/google/glass/util/Stopwatch;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/glass/entity/MosaicHelper$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public renderMosaicToJpeg(Landroid/net/Uri;Lcom/google/glass/widget/ImageLoader;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 9
    .parameter "uri"
    .parameter "imageLoader"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/glass/widget/ImageLoader;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 194
    invoke-interface {p2}, Lcom/google/glass/widget/ImageLoader;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 196
    .local v5, key:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/entity/MosaicHelper;->mosaicCache:Landroid/util/LruCache;

    monitor-enter v1

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/entity/MosaicHelper;->mosaicCache:Landroid/util/LruCache;

    invoke-virtual {v0, v5}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 198
    .local v6, cachedData:[B
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    if-eqz v6, :cond_0

    .line 200
    sget-object v0, Lcom/google/glass/entity/MosaicHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Returning mosaic from cache: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-interface {v0, v1, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    invoke-static {v6}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    .line 227
    :goto_0
    return-object v3

    .line 198
    .end local v6           #cachedData:[B
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 205
    .restart local v6       #cachedData:[B
    :cond_0
    new-instance v2, Lcom/google/glass/widget/MosaicView;

    iget-object v0, p0, Lcom/google/glass/entity/MosaicHelper;->context:Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/google/glass/widget/MosaicView;-><init>(Landroid/content/Context;)V

    .line 206
    .local v2, view:Lcom/google/glass/widget/MosaicView;
    new-instance v3, Lcom/google/glass/entity/MosaicHelper$MosaicFuture;

    invoke-direct {v3, v2, p1}, Lcom/google/glass/entity/MosaicHelper$MosaicFuture;-><init>(Lcom/google/glass/widget/MosaicView;Landroid/net/Uri;)V

    .line 207
    .local v3, resultFuture:Lcom/google/glass/entity/MosaicHelper$MosaicFuture;
    new-instance v0, Lcom/google/glass/util/Stopwatch;

    const-string v1, "Load time"

    invoke-direct {v0, v1}, Lcom/google/glass/util/Stopwatch;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/glass/util/Stopwatch;->start()Lcom/google/glass/util/Stopwatch;

    move-result-object v4

    .line 210
    .local v4, loadTimer:Lcom/google/glass/util/Stopwatch;
    new-instance v0, Lcom/google/glass/entity/MosaicHelper$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/entity/MosaicHelper$2;-><init>(Lcom/google/glass/entity/MosaicHelper;Lcom/google/glass/widget/MosaicView;Lcom/google/glass/entity/MosaicHelper$MosaicFuture;Lcom/google/glass/util/Stopwatch;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/google/glass/widget/MosaicView;->setCellsLoadedListener(Lcom/google/glass/widget/MosaicView$CellsLoadedListener;)V

    .line 221
    invoke-static {}, Lcom/google/glass/util/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/entity/MosaicHelper$3;

    invoke-direct {v1, p0, v2, p2}, Lcom/google/glass/entity/MosaicHelper$3;-><init>(Lcom/google/glass/entity/MosaicHelper;Lcom/google/glass/widget/MosaicView;Lcom/google/glass/widget/ImageLoader;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
