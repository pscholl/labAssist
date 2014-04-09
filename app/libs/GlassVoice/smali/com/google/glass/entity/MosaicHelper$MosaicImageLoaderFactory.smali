.class public Lcom/google/glass/entity/MosaicHelper$MosaicImageLoaderFactory;
.super Ljava/lang/Object;
.source "MosaicHelper.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/entity/MosaicHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MosaicImageLoaderFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/entity/MosaicHelper$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/glass/entity/MosaicHelper$MosaicImageLoaderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createImageLoader(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ZII)Lcom/google/glass/widget/ImageLoader;
    .locals 1
    .parameter "item"
    .parameter "creatorOnly"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 59
    invoke-static {p1, p2, p3, p4}, Lcom/google/glass/widget/ImageLoaders;->forTimelineItemStaticImage(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ZII)Lcom/google/glass/widget/ImageLoader;

    move-result-object v0

    return-object v0
.end method
