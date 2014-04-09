.class Lcom/google/glass/entity/MosaicHelper$2;
.super Ljava/lang/Object;
.source "MosaicHelper.java"

# interfaces
.implements Lcom/google/glass/widget/MosaicView$CellsLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/entity/MosaicHelper;->renderMosaicToJpeg(Landroid/net/Uri;Lcom/google/glass/widget/ImageLoader;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/entity/MosaicHelper;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$loadTimer:Lcom/google/glass/util/Stopwatch;

.field final synthetic val$resultFuture:Lcom/google/glass/entity/MosaicHelper$MosaicFuture;

.field final synthetic val$view:Lcom/google/glass/widget/MosaicView;


# direct methods
.method constructor <init>(Lcom/google/glass/entity/MosaicHelper;Lcom/google/glass/widget/MosaicView;Lcom/google/glass/entity/MosaicHelper$MosaicFuture;Lcom/google/glass/util/Stopwatch;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/google/glass/entity/MosaicHelper$2;->this$0:Lcom/google/glass/entity/MosaicHelper;

    iput-object p2, p0, Lcom/google/glass/entity/MosaicHelper$2;->val$view:Lcom/google/glass/widget/MosaicView;

    iput-object p3, p0, Lcom/google/glass/entity/MosaicHelper$2;->val$resultFuture:Lcom/google/glass/entity/MosaicHelper$MosaicFuture;

    iput-object p4, p0, Lcom/google/glass/entity/MosaicHelper$2;->val$loadTimer:Lcom/google/glass/util/Stopwatch;

    iput-object p5, p0, Lcom/google/glass/entity/MosaicHelper$2;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellsLoaded(Z)V
    .locals 5
    .parameter "allCellsLoadedSuccessfully"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/glass/entity/MosaicHelper$2;->this$0:Lcom/google/glass/entity/MosaicHelper;

    iget-object v1, p0, Lcom/google/glass/entity/MosaicHelper$2;->val$view:Lcom/google/glass/widget/MosaicView;

    iget-object v2, p0, Lcom/google/glass/entity/MosaicHelper$2;->val$resultFuture:Lcom/google/glass/entity/MosaicHelper$MosaicFuture;

    iget-object v3, p0, Lcom/google/glass/entity/MosaicHelper$2;->val$loadTimer:Lcom/google/glass/util/Stopwatch;

    iget-object v4, p0, Lcom/google/glass/entity/MosaicHelper$2;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/glass/entity/MosaicHelper;->handleCellsLoaded(Lcom/google/glass/widget/MosaicView;Lcom/google/glass/entity/MosaicHelper$MosaicFuture;Lcom/google/glass/util/Stopwatch;Ljava/lang/String;)V

    .line 214
    return-void
.end method
