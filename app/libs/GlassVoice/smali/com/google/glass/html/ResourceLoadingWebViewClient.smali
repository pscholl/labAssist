.class public Lcom/google/glass/html/ResourceLoadingWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "ResourceLoadingWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/html/ResourceLoadingWebViewClient$6;,
        Lcom/google/glass/html/ResourceLoadingWebViewClient$BlockingDownloadTask;,
        Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;
    }
.end annotation


# static fields
.field private static final ATTACHMENT_SCHEME:Ljava/lang/String; = "attachment"

.field private static final CID_SCHEME:Ljava/lang/String; = "cid"

.field private static final DATA_SCHEME:Ljava/lang/String; = "data"

.field private static final FILE_SCHEME:Ljava/lang/String; = "file"

.field private static final FILE_WHITELIST:Ljava/util/Map; = null
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

.field private static final GLASS_SCHEME:Ljava/lang/String; = "glass"

.field protected static final HTTPS_SCHEME:Ljava/lang/String; = "https"

.field protected static final HTTP_SCHEME:Ljava/lang/String; = "http"

.field private static final TAG:Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

.field private final context:Landroid/content/Context;

.field private final imageUrlHelper:Lcom/google/glass/html/ImageUrlHelper;

.field private final item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field private final loadUncachedResources:Z

.field private final mapHelper:Lcom/google/glass/maps/MapHelper;

.field private final mosaicHelper:Lcom/google/glass/entity/MosaicHelper;

.field private final resourceLoadTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private final resourceLoadedCallback:Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;

.field private final thumbnailer:Lcom/google/glass/html/Thumbnailer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const-class v0, Lcom/google/glass/html/ResourceLoadingWebViewClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->TAG:Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 73
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "/system/glass_fonts/Roboto-Light.ttf"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "/system/glass_fonts/Roboto-Thin.ttf"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "/data/data/com.google.glass.home/files/stylesheets/base_style.css"

    const-string v2, "text/css"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->FILE_WHITELIST:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/maps/MapHelper;Lcom/google/glass/entity/MosaicHelper;Lcom/google/glass/html/Thumbnailer;ZLjava/util/List;Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;)V
    .locals 1
    .parameter "context"
    .parameter "item"
    .parameter "bitmapFactory"
    .parameter "mapHelper"
    .parameter "mosaicHelper"
    .parameter "thumbnailer"
    .parameter "loadUncachedResources"
    .parameter
    .parameter "resourceLoadedCallback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            "Lcom/google/glass/util/CachedBitmapFactory;",
            "Lcom/google/glass/maps/MapHelper;",
            "Lcom/google/glass/entity/MosaicHelper;",
            "Lcom/google/glass/html/Thumbnailer;",
            "Z",
            "Ljava/util/List",
            "<",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;>;",
            "Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 108
    .local p8, resourceLoadTasks:Ljava/util/List;,"Ljava/util/List<Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;>;"
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->context:Landroid/content/Context;

    .line 110
    iput-object p2, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 111
    iput-object p3, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    .line 112
    iput-object p4, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->mapHelper:Lcom/google/glass/maps/MapHelper;

    .line 113
    iput-object p5, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->mosaicHelper:Lcom/google/glass/entity/MosaicHelper;

    .line 114
    iput-object p6, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->thumbnailer:Lcom/google/glass/html/Thumbnailer;

    .line 115
    iput-boolean p7, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->loadUncachedResources:Z

    .line 116
    iput-object p8, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->resourceLoadTasks:Ljava/util/List;

    .line 117
    iput-object p9, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->resourceLoadedCallback:Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;

    .line 118
    new-instance v0, Lcom/google/glass/html/ImageUrlHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/html/ImageUrlHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->imageUrlHelper:Lcom/google/glass/html/ImageUrlHelper;

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->resourceLoadTasks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->resourceLoadedCallback:Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Lcom/google/glass/util/CachedBitmapFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Lcom/google/glass/html/Thumbnailer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->thumbnailer:Lcom/google/glass/html/Thumbnailer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Lcom/google/glass/maps/MapHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->mapHelper:Lcom/google/glass/maps/MapHelper;

    return-object v0
.end method

.method static synthetic access$600()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Lcom/google/glass/entity/MosaicHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->mosaicHelper:Lcom/google/glass/entity/MosaicHelper;

    return-object v0
.end method

.method private findAttachmentForAttachmentUri(Landroid/net/Uri;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 9
    .parameter "uri"

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 310
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 312
    sget-object v4, Lcom/google/glass/html/ResourceLoadingWebViewClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring non-uniquified URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    :goto_0
    return-object v3

    .line 316
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, indexString:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 318
    sget-object v4, Lcom/google/glass/html/ResourceLoadingWebViewClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "URL is empty: %s/%s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    iget-object v7, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 324
    :cond_1
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 330
    .local v1, index:I
    if-ltz v1, :cond_2

    iget-object v4, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v4, v4, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v4, v4, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    array-length v4, v4

    if-lt v1, v4, :cond_3

    .line 331
    :cond_2
    sget-object v4, Lcom/google/glass/html/ResourceLoadingWebViewClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Index out of bounds: %s/%s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    iget-object v7, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 325
    .end local v1           #index:I
    :catch_0
    move-exception v0

    .line 326
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/google/glass/html/ResourceLoadingWebViewClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Unable to parse attachment index: %s/%s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    iget-object v7, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 335
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v1       #index:I
    :cond_3
    iget-object v3, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v3, v3, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    aget-object v3, v3, v1

    goto :goto_0
.end method

.method private findAttachmentForCidUri(Landroid/net/Uri;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 11
    .parameter "uri"

    .prologue
    const/4 v5, 0x0

    .line 340
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, cidString:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 342
    sget-object v6, Lcom/google/glass/html/ResourceLoadingWebViewClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "URL is empty: %s/%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v10}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v5

    .line 354
    :cond_0
    :goto_0
    return-object v1

    .line 346
    :cond_1
    iget-object v6, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v6, v6, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v6}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 347
    iget-object v6, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v0, v6, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 348
    .local v1, attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 347
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .end local v1           #attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    move-object v1, v5

    .line 354
    goto :goto_0
.end method

.method private loadAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .parameter "attachment"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, resourceLoadRunnables:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Runnable;>;"
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 259
    iget-object v2, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    invoke-virtual {v2, p1}, Lcom/google/glass/util/CachedBitmapFactory;->cacheContainsAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    iget-object v2, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    invoke-virtual {v2, p1, v4}, Lcom/google/glass/util/CachedBitmapFactory;->getCachedAttachmentPath(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Z)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, path:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 262
    sget-object v2, Lcom/google/glass/html/ResourceLoadingWebViewClient$6;->$SwitchMap$com$google$glass$html$Thumbnailer$ThumbnailerResult:[I

    iget-object v3, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->thumbnailer:Lcom/google/glass/html/Thumbnailer;

    invoke-virtual {v3, p1, v0, v4}, Lcom/google/glass/html/Thumbnailer;->createThumbnail(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Ljava/lang/String;Z)Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 278
    .end local v0           #path:Ljava/lang/String;
    :cond_0
    new-instance v2, Lcom/google/glass/html/ResourceLoadingWebViewClient$2;

    invoke-direct {v2, p0, p1}, Lcom/google/glass/html/ResourceLoadingWebViewClient$2;-><init>(Lcom/google/glass/html/ResourceLoadingWebViewClient;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 285
    :goto_0
    :pswitch_0
    return-object v0

    .line 266
    .restart local v0       #path:Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->thumbnailer:Lcom/google/glass/html/Thumbnailer;

    invoke-virtual {v1, p1}, Lcom/google/glass/html/Thumbnailer;->getThumbnailFile(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    move-object v0, v1

    .line 268
    goto :goto_0

    .line 262
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private loadHttpResource(Lcom/google/glass/html/ResourceLoadingWebViewClient$BlockingDownloadTask;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .parameter "httpResourceTask"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/html/ResourceLoadingWebViewClient$BlockingDownloadTask;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 296
    .local p2, resourceLoadRunnables:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Runnable;>;"
    invoke-virtual {p1}, Lcom/google/glass/html/ResourceLoadingWebViewClient$BlockingDownloadTask;->checkCache()Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, filePath:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 298
    new-instance v1, Lcom/google/glass/html/ResourceLoadingWebViewClient$3;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/html/ResourceLoadingWebViewClient$3;-><init>(Lcom/google/glass/html/ResourceLoadingWebViewClient;Lcom/google/glass/html/ResourceLoadingWebViewClient$BlockingDownloadTask;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_0
    return-object v0
.end method

.method private loadMap(Ljava/lang/String;Ljava/util/List;)[B
    .locals 3
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 363
    .local p2, resourceLoadRunnables:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Runnable;>;"
    new-instance v1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    invoke-direct {v1}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;-><init>()V

    .line 364
    .local v1, request:Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    iput-object p1, v1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri:Ljava/lang/String;

    .line 365
    iget-object v2, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->mapHelper:Lcom/google/glass/maps/MapHelper;

    invoke-virtual {v2, v1}, Lcom/google/glass/maps/MapHelper;->getCachedMapPng(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)[B

    move-result-object v0

    .line 366
    .local v0, mapPngData:[B
    if-eqz v0, :cond_0

    .line 383
    .end local v0           #mapPngData:[B
    :goto_0
    return-object v0

    .line 369
    .restart local v0       #mapPngData:[B
    :cond_0
    new-instance v2, Lcom/google/glass/html/ResourceLoadingWebViewClient$4;

    invoke-direct {v2, p0, v1, p1}, Lcom/google/glass/html/ResourceLoadingWebViewClient$4;-><init>(Lcom/google/glass/html/ResourceLoadingWebViewClient;Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadMosaic(Landroid/net/Uri;Ljava/util/List;)[B
    .locals 6
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .local p2, resourceLoadRunnables:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Runnable;>;"
    const/4 v2, 0x0

    .line 393
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 395
    sget-object v3, Lcom/google/glass/html/ResourceLoadingWebViewClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring non-uniquified URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v2

    .line 422
    :cond_0
    :goto_0
    return-object v1

    .line 399
    :cond_1
    iget-object v3, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->mosaicHelper:Lcom/google/glass/entity/MosaicHelper;

    iget-object v4, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v3, v4, p1}, Lcom/google/glass/entity/MosaicHelper;->getImageLoader(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Landroid/net/Uri;)Lcom/google/glass/widget/ImageLoader;

    move-result-object v0

    .line 400
    .local v0, imageLoader:Lcom/google/glass/widget/ImageLoader;
    if-nez v0, :cond_2

    move-object v1, v2

    .line 401
    goto :goto_0

    .line 404
    :cond_2
    iget-object v3, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->mosaicHelper:Lcom/google/glass/entity/MosaicHelper;

    invoke-virtual {v3, v0}, Lcom/google/glass/entity/MosaicHelper;->getCachedMosaicImage(Lcom/google/glass/widget/ImageLoader;)[B

    move-result-object v1

    .line 405
    .local v1, mosaicImageData:[B
    if-nez v1, :cond_0

    .line 408
    new-instance v3, Lcom/google/glass/html/ResourceLoadingWebViewClient$5;

    invoke-direct {v3, p0, p1, v0}, Lcom/google/glass/html/ResourceLoadingWebViewClient$5;-><init>(Lcom/google/glass/html/ResourceLoadingWebViewClient;Landroid/net/Uri;Lcom/google/glass/widget/ImageLoader;)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    .line 422
    goto :goto_0
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 24
    .parameter "view"
    .parameter "url"

    .prologue
    .line 123
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 124
    new-instance v21, Lcom/google/glass/html/Timer;

    invoke-direct/range {v21 .. v21}, Lcom/google/glass/html/Timer;-><init>()V

    .line 128
    .local v21, timer:Lcom/google/glass/html/Timer;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v18, resourceLoadRunnables:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Runnable;>;"
    const/4 v10, 0x0

    .line 131
    .local v10, byteData:[B
    const/4 v15, 0x0

    .line 132
    .local v15, filePath:Ljava/lang/String;
    const/4 v11, 0x0

    .line 133
    .local v11, contentType:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 134
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    .line 135
    .local v22, uri:Landroid/net/Uri;
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v20

    .line 137
    .local v20, scheme:Ljava/lang/String;
    const-string v4, "data"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 139
    const/4 v4, 0x0

    .line 248
    .end local v20           #scheme:Ljava/lang/String;
    .end local v22           #uri:Landroid/net/Uri;
    :goto_0
    return-object v4

    .line 140
    .restart local v20       #scheme:Ljava/lang/String;
    .restart local v22       #uri:Landroid/net/Uri;
    :cond_0
    const-string v4, "file"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 142
    sget-object v4, Lcom/google/glass/html/ResourceLoadingWebViewClient;->FILE_WHITELIST:Ljava/util/Map;

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 143
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v15

    .line 144
    sget-object v4, Lcom/google/glass/html/ResourceLoadingWebViewClient;->FILE_WHITELIST:Ljava/util/Map;

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #contentType:Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 178
    .end local v20           #scheme:Ljava/lang/String;
    .end local v22           #uri:Landroid/net/Uri;
    .restart local v11       #contentType:Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v12, 0x0

    .line 180
    .local v12, data:Ljava/io/InputStream;
    if-eqz v10, :cond_b

    .line 181
    :try_start_0
    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-direct {v13, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .end local v12           #data:Ljava/io/InputStream;
    .local v13, data:Ljava/io/InputStream;
    move-object v12, v13

    .line 185
    .end local v13           #data:Ljava/io/InputStream;
    .restart local v12       #data:Ljava/io/InputStream;
    :cond_2
    :goto_2
    if-eqz v12, :cond_4

    .line 186
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 187
    invoke-static {v12}, Lcom/google/glass/html/ContentTypes;->sniff(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v11

    .line 189
    :cond_3
    sget-object v4, Lcom/google/glass/html/ResourceLoadingWebViewClient;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loaded: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v6}, Lcom/google/glass/html/Timer;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    new-instance v4, Landroid/webkit/WebResourceResponse;

    const-string v6, ""

    invoke-direct {v4, v11, v6, v12}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    :catch_0
    move-exception v14

    .line 193
    .local v14, e:Ljava/io/IOException;
    sget-object v4, Lcom/google/glass/html/ResourceLoadingWebViewClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Error reading: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v15, v7, v8

    invoke-interface {v4, v14, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    if-eqz v12, :cond_4

    .line 196
    :try_start_1
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 204
    .end local v14           #e:Ljava/io/IOException;
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->loadUncachedResources:Z

    if-eqz v4, :cond_c

    .line 205
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Runnable;

    .line 209
    .local v19, runnable:Ljava/lang/Runnable;
    invoke-static {}, Lcom/google/glass/util/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    new-instance v6, Lcom/google/glass/html/ResourceLoadingWebViewClient$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v6, v0, v1}, Lcom/google/glass/html/ResourceLoadingWebViewClient$1;-><init>(Lcom/google/glass/html/ResourceLoadingWebViewClient;Ljava/lang/Runnable;)V

    invoke-interface {v4, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 146
    .end local v12           #data:Ljava/io/InputStream;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v19           #runnable:Ljava/lang/Runnable;
    .restart local v20       #scheme:Ljava/lang/String;
    .restart local v22       #uri:Landroid/net/Uri;
    :cond_5
    const-string v4, "attachment"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 148
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->findAttachmentForAttachmentUri(Landroid/net/Uri;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    move-result-object v9

    .line 149
    .local v9, attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    if-eqz v9, :cond_1

    .line 150
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v9, v1}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->loadAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Ljava/util/List;)Ljava/lang/String;

    move-result-object v15

    .line 151
    invoke-virtual {v9}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getContentType()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 153
    .end local v9           #attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    :cond_6
    const-string v4, "cid"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 155
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->findAttachmentForCidUri(Landroid/net/Uri;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    move-result-object v9

    .line 156
    .restart local v9       #attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    if-eqz v9, :cond_1

    .line 157
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v9, v1}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->loadAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Ljava/util/List;)Ljava/lang/String;

    move-result-object v15

    .line 158
    invoke-virtual {v9}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getContentType()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 160
    .end local v9           #attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    :cond_7
    const-string v4, "http"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "https"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 162
    :cond_8
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 163
    .local v5, imageUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->imageUrlHelper:Lcom/google/glass/html/ImageUrlHelper;

    invoke-virtual {v4, v5}, Lcom/google/glass/html/ImageUrlHelper;->getImageDownloadParams(Ljava/lang/String;)Lcom/google/glass/html/ImageUrlHelper$ImageDownloadParams;

    move-result-object v17

    .line 164
    .local v17, imageParams:Lcom/google/glass/html/ImageUrlHelper$ImageDownloadParams;
    new-instance v3, Lcom/google/glass/html/ResourceLoadingWebViewClient$BlockingDownloadTask;

    move-object/from16 v0, v17

    iget v6, v0, Lcom/google/glass/html/ImageUrlHelper$ImageDownloadParams;->width:I

    move-object/from16 v0, v17

    iget v7, v0, Lcom/google/glass/html/ImageUrlHelper$ImageDownloadParams;->height:I

    move-object/from16 v0, v17

    iget v8, v0, Lcom/google/glass/html/ImageUrlHelper$ImageDownloadParams;->cropType:I

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/google/glass/html/ResourceLoadingWebViewClient$BlockingDownloadTask;-><init>(Lcom/google/glass/html/ResourceLoadingWebViewClient;Ljava/lang/String;III)V

    .line 166
    .local v3, httpResourceTask:Lcom/google/glass/html/ResourceLoadingWebViewClient$BlockingDownloadTask;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v3, v1}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->loadHttpResource(Lcom/google/glass/html/ResourceLoadingWebViewClient$BlockingDownloadTask;Ljava/util/List;)Ljava/lang/String;

    move-result-object v15

    .line 167
    goto/16 :goto_1

    .end local v3           #httpResourceTask:Lcom/google/glass/html/ResourceLoadingWebViewClient$BlockingDownloadTask;
    .end local v5           #imageUrl:Ljava/lang/String;
    .end local v17           #imageParams:Lcom/google/glass/html/ImageUrlHelper$ImageDownloadParams;
    :cond_9
    const-string v4, "glass"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 168
    invoke-static/range {v22 .. v22}, Lcom/google/glass/maps/MapHelper;->isGlassMapUri(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 169
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->loadMap(Ljava/lang/String;Ljava/util/List;)[B

    move-result-object v10

    .line 170
    const-string v11, "image/png"

    goto/16 :goto_1

    .line 171
    :cond_a
    invoke-static/range {v22 .. v22}, Lcom/google/glass/entity/MosaicHelper;->isGlassMosaicUri(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 172
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->loadMosaic(Landroid/net/Uri;Ljava/util/List;)[B

    move-result-object v10

    .line 173
    const-string v11, "image/jpeg"

    goto/16 :goto_1

    .line 182
    .end local v20           #scheme:Ljava/lang/String;
    .end local v22           #uri:Landroid/net/Uri;
    .restart local v12       #data:Ljava/io/InputStream;
    :cond_b
    if-eqz v15, :cond_2

    .line 183
    :try_start_2
    new-instance v13, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v15}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v13, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v12           #data:Ljava/io/InputStream;
    .restart local v13       #data:Ljava/io/InputStream;
    move-object v12, v13

    .end local v13           #data:Ljava/io/InputStream;
    .restart local v12       #data:Ljava/io/InputStream;
    goto/16 :goto_2

    .line 242
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->loadUncachedResources:Z

    if-eqz v4, :cond_d

    .line 243
    sget-object v4, Lcom/google/glass/html/ResourceLoadingWebViewClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Resource not cached; running %d load task(s) asynchronously for: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    invoke-interface {v4, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    :goto_5
    new-instance v4, Landroid/webkit/WebResourceResponse;

    const-string v6, ""

    const-string v7, ""

    new-instance v8, Ljava/io/ByteArrayInputStream;

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v8, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v6, v7, v8}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto/16 :goto_0

    .line 246
    :cond_d
    sget-object v4, Lcom/google/glass/html/ResourceLoadingWebViewClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Resource not cached; will not load: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    invoke-interface {v4, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 197
    .restart local v14       #e:Ljava/io/IOException;
    :catch_1
    move-exception v4

    goto/16 :goto_3
.end method
