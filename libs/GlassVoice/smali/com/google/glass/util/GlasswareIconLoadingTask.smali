.class public Lcom/google/glass/util/GlasswareIconLoadingTask;
.super Lcom/google/glass/util/GlasswareResourceLoadingTask;
.source "GlasswareIconLoadingTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/GlasswareIconLoadingTask$BitmapCacheEntry;,
        Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/util/GlasswareResourceLoadingTask",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final iconView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/GlasswareIconLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/glass/util/CachedFilesManager;Lcom/google/glass/net/ProtoRequestDispatcher;Landroid/util/LruCache;Lcom/google/glass/util/Clock;Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;Landroid/widget/ImageView;)V
    .locals 10
    .parameter "context"
    .parameter "cachedFilesManager"
    .parameter "requestDispatcher"
    .parameter
    .parameter "clock"
    .parameter "backgroundExecutor"
    .parameter "projectId"
    .parameter "size"
    .parameter "iconView"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/glass/util/CachedFilesManager;",
            "Lcom/google/glass/net/ProtoRequestDispatcher;",
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry",
            "<*>;>;",
            "Lcom/google/glass/util/Clock;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/String;",
            "Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;",
            "Landroid/widget/ImageView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    .local p4, sharedCache:Landroid/util/LruCache;,"Landroid/util/LruCache<Ljava/lang/String;Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry<*>;>;"
    #getter for: Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;->resourceType:I
    invoke-static/range {p8 .. p8}, Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;->access$000(Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;)I

    move-result v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/google/glass/util/GlasswareResourceLoadingTask;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedFilesManager;Lcom/google/glass/net/ProtoRequestDispatcher;Landroid/util/LruCache;Lcom/google/glass/util/Clock;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V

    .line 75
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->iconView:Landroid/widget/ImageView;

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;Landroid/widget/ImageView;)V
    .locals 10
    .parameter "context"
    .parameter "projectId"
    .parameter "size"
    .parameter "iconView"

    .prologue
    .line 58
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v2

    invoke-static {p1}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v3

    sget-object v4, Lcom/google/glass/util/GlasswareIconLoadingTask;->SHARED_CACHE:Landroid/util/LruCache;

    new-instance v5, Lcom/google/glass/util/Clock$Impl;

    invoke-direct {v5}, Lcom/google/glass/util/Clock$Impl;-><init>()V

    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/google/glass/util/GlasswareIconLoadingTask;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedFilesManager;Lcom/google/glass/net/ProtoRequestDispatcher;Landroid/util/LruCache;Lcom/google/glass/util/Clock;Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;Landroid/widget/ImageView;)V

    .line 66
    return-void
.end method


# virtual methods
.method protected bindContent(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    const/4 v2, 0x0

    .line 102
    if-nez p1, :cond_0

    .line 103
    sget-object v0, Lcom/google/glass/util/GlasswareIconLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Bitmap null in bindContent()"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    :goto_0
    return-void

    .line 107
    :cond_0
    sget-object v0, Lcom/google/glass/util/GlasswareIconLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Bitmap not null, setting in bindContent(), showing view"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 109
    iget-object v0, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->iconView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/util/GlasswareIconLoadingTask;->showView(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method protected bridge synthetic bindContent(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/util/GlasswareIconLoadingTask;->bindContent(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected getUserEventTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, "gi"

    return-object v0
.end method

.method protected newCacheEntry()Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Lcom/google/glass/util/GlasswareIconLoadingTask$BitmapCacheEntry;

    invoke-direct {v0}, Lcom/google/glass/util/GlasswareIconLoadingTask$BitmapCacheEntry;-><init>()V

    return-object v0
.end method

.method protected prepareContent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 86
    invoke-virtual {p0}, Lcom/google/glass/util/GlasswareIconLoadingTask;->loadContentFromCache()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 87
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 88
    sget-object v1, Lcom/google/glass/util/GlasswareIconLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Bitmap not null, setting in prepareContent()"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    iget-object v1, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 90
    iget-object v1, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v4}, Lcom/google/glass/util/GlasswareIconLoadingTask;->showView(Landroid/view/View;Z)V

    .line 91
    invoke-virtual {p0, v4}, Lcom/google/glass/util/GlasswareIconLoadingTask;->cancel(Z)V

    .line 98
    :goto_0
    return-void

    .line 93
    :cond_0
    sget-object v1, Lcom/google/glass/util/GlasswareIconLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Bitmap is null in prepareContent(), waiting for it to load."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    iget-object v1, p0, Lcom/google/glass/util/GlasswareIconLoadingTask;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v4, v4}, Lcom/google/glass/util/GlasswareIconLoadingTask;->hideView(Landroid/view/View;ZZ)V

    goto :goto_0
.end method
