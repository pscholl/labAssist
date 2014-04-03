.class public Lcom/google/glass/widget/MosaicView;
.super Landroid/widget/GridLayout;
.source "MosaicView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/widget/MosaicView$CellSpec;,
        Lcom/google/glass/widget/MosaicView$MosaicSpec;,
        Lcom/google/glass/widget/MosaicView$GroupCountType;,
        Lcom/google/glass/widget/MosaicView$CellsLoadedListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CELL_LAYOUT_CACHE_CAPACITY:I = 0x50

.field private static final INVALID_LAYOUT:I = -0x1

.field private static final LANDSCAPE_MOSAIC_MAP:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/glass/widget/MosaicView$MosaicSpec;",
            ">;"
        }
    .end annotation
.end field

.field protected static final MAX_IMAGES_LANDSCAPE:I = 0x8
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected static final MAX_IMAGES_PORTRAIT:I = 0x5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final PORTRAIT_ALT_MOSAIC_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/glass/widget/MosaicView$MosaicSpec;",
            ">;"
        }
    .end annotation
.end field

.field private static final PORTRAIT_MOSAIC_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/glass/widget/MosaicView$MosaicSpec;",
            ">;"
        }
    .end annotation
.end field

.field private static final cellLayoutCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final mainThreadHandler:Landroid/os/Handler;


# instance fields
.field private cellsLoadedListener:Lcom/google/glass/widget/MosaicView$CellsLoadedListener;

.field private deferredContentLoader:Lcom/google/glass/util/DeferredContentLoader;

.field private hasLoadingFailure:Z

.field private final imageDownloadTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/util/DeferredContentLoader$LoadingTask",
            "<*>;>;"
        }
    .end annotation
.end field

.field private imageLoader:Lcom/google/glass/widget/ImageLoader;

.field private numberOfLoadingTasks:I

.field private subtaskIndex:I

.field private testHandler:Lcom/google/glass/util/HandlerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x4

    const/4 v1, 0x1

    .line 31
    const-class v0, Lcom/google/glass/widget/MosaicView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/google/glass/widget/MosaicView;->$assertionsDisabled:Z

    .line 32
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/MosaicView;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 59
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/glass/widget/MosaicView;->LANDSCAPE_MOSAIC_MAP:Landroid/util/SparseArray;

    .line 60
    sget-object v0, Lcom/google/glass/widget/MosaicView;->LANDSCAPE_MOSAIC_MAP:Landroid/util/SparseArray;

    sget-object v2, Lcom/google/glass/widget/MosaicView$MosaicSpec;->LANDSCAPE_1:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    sget-object v0, Lcom/google/glass/widget/MosaicView;->LANDSCAPE_MOSAIC_MAP:Landroid/util/SparseArray;

    sget-object v2, Lcom/google/glass/widget/MosaicView$MosaicSpec;->LANDSCAPE_2:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    sget-object v0, Lcom/google/glass/widget/MosaicView;->LANDSCAPE_MOSAIC_MAP:Landroid/util/SparseArray;

    sget-object v2, Lcom/google/glass/widget/MosaicView$MosaicSpec;->LANDSCAPE_3:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    invoke-virtual {v0, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    sget-object v0, Lcom/google/glass/widget/MosaicView;->LANDSCAPE_MOSAIC_MAP:Landroid/util/SparseArray;

    sget-object v2, Lcom/google/glass/widget/MosaicView$MosaicSpec;->LANDSCAPE_4:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    sget-object v0, Lcom/google/glass/widget/MosaicView;->LANDSCAPE_MOSAIC_MAP:Landroid/util/SparseArray;

    sget-object v2, Lcom/google/glass/widget/MosaicView$MosaicSpec;->LANDSCAPE_5:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    invoke-virtual {v0, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    sget-object v0, Lcom/google/glass/widget/MosaicView;->LANDSCAPE_MOSAIC_MAP:Landroid/util/SparseArray;

    const/4 v2, 0x6

    sget-object v3, Lcom/google/glass/widget/MosaicView$MosaicSpec;->LANDSCAPE_6:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    sget-object v0, Lcom/google/glass/widget/MosaicView;->LANDSCAPE_MOSAIC_MAP:Landroid/util/SparseArray;

    const/4 v2, 0x7

    sget-object v3, Lcom/google/glass/widget/MosaicView$MosaicSpec;->LANDSCAPE_7:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    sget-object v0, Lcom/google/glass/widget/MosaicView;->LANDSCAPE_MOSAIC_MAP:Landroid/util/SparseArray;

    const/16 v2, 0x8

    sget-object v3, Lcom/google/glass/widget/MosaicView$MosaicSpec;->LANDSCAPE_8:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/glass/widget/MosaicView;->PORTRAIT_MOSAIC_MAP:Landroid/util/SparseArray;

    .line 70
    sget-object v0, Lcom/google/glass/widget/MosaicView;->PORTRAIT_MOSAIC_MAP:Landroid/util/SparseArray;

    sget-object v2, Lcom/google/glass/widget/MosaicView$MosaicSpec;->PORTRAIT_1:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    sget-object v0, Lcom/google/glass/widget/MosaicView;->PORTRAIT_MOSAIC_MAP:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/glass/widget/MosaicView$MosaicSpec;->PORTRAIT_2:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    sget-object v0, Lcom/google/glass/widget/MosaicView;->PORTRAIT_MOSAIC_MAP:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/glass/widget/MosaicView$MosaicSpec;->PORTRAIT_3:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    sget-object v0, Lcom/google/glass/widget/MosaicView;->PORTRAIT_MOSAIC_MAP:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/glass/widget/MosaicView$MosaicSpec;->PORTRAIT_4:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    sget-object v0, Lcom/google/glass/widget/MosaicView;->PORTRAIT_MOSAIC_MAP:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/glass/widget/MosaicView$MosaicSpec;->PORTRAIT_5:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/glass/widget/MosaicView;->PORTRAIT_ALT_MOSAIC_MAP:Landroid/util/SparseArray;

    .line 77
    sget-object v0, Lcom/google/glass/widget/MosaicView;->PORTRAIT_ALT_MOSAIC_MAP:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/glass/widget/MosaicView$MosaicSpec;->PORTRAIT_4_ALT:Lcom/google/glass/widget/MosaicView$MosaicSpec;

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 101
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/google/glass/widget/MosaicView;->cellLayoutCache:Landroid/util/SparseArray;

    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/glass/widget/MosaicView;->mainThreadHandler:Landroid/os/Handler;

    return-void

    .line 31
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;)V

    .line 108
    new-instance v0, Lcom/google/glass/util/DeferredContentLoader;

    invoke-direct {v0}, Lcom/google/glass/util/DeferredContentLoader;-><init>()V

    iput-object v0, p0, Lcom/google/glass/widget/MosaicView;->deferredContentLoader:Lcom/google/glass/util/DeferredContentLoader;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/widget/MosaicView;->imageDownloadTasks:Ljava/util/List;

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/widget/MosaicView;->subtaskIndex:I

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    new-instance v0, Lcom/google/glass/util/DeferredContentLoader;

    invoke-direct {v0}, Lcom/google/glass/util/DeferredContentLoader;-><init>()V

    iput-object v0, p0, Lcom/google/glass/widget/MosaicView;->deferredContentLoader:Lcom/google/glass/util/DeferredContentLoader;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/widget/MosaicView;->imageDownloadTasks:Ljava/util/List;

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/widget/MosaicView;->subtaskIndex:I

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 143
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    new-instance v0, Lcom/google/glass/util/DeferredContentLoader;

    invoke-direct {v0}, Lcom/google/glass/util/DeferredContentLoader;-><init>()V

    iput-object v0, p0, Lcom/google/glass/widget/MosaicView;->deferredContentLoader:Lcom/google/glass/util/DeferredContentLoader;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/widget/MosaicView;->imageDownloadTasks:Ljava/util/List;

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/widget/MosaicView;->subtaskIndex:I

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/widget/MosaicView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/google/glass/widget/MosaicView;->subtaskIndex:I

    return v0
.end method

.method static synthetic access$100()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/glass/widget/MosaicView;->cellLayoutCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/widget/MosaicView;Lcom/google/glass/widget/ImageLoader;Landroid/widget/FrameLayout;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/glass/widget/MosaicView;->bindRemainingCountView(Lcom/google/glass/widget/ImageLoader;Landroid/widget/FrameLayout;II)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/widget/MosaicView;Lcom/google/glass/widget/ImageLoader;Landroid/widget/FrameLayout;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p5}, Lcom/google/glass/widget/MosaicView;->bindImageView(Lcom/google/glass/widget/ImageLoader;Landroid/widget/FrameLayout;III)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/widget/MosaicView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/google/glass/widget/MosaicView;->numberOfLoadingTasks:I

    return v0
.end method

.method static synthetic access$410(Lcom/google/glass/widget/MosaicView;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/google/glass/widget/MosaicView;->numberOfLoadingTasks:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/glass/widget/MosaicView;->numberOfLoadingTasks:I

    return v0
.end method

.method static synthetic access$500()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/glass/widget/MosaicView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/widget/MosaicView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/google/glass/widget/MosaicView;->hasLoadingFailure:Z

    return v0
.end method

.method static synthetic access$602(Lcom/google/glass/widget/MosaicView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/google/glass/widget/MosaicView;->hasLoadingFailure:Z

    return p1
.end method

.method static synthetic access$700(Lcom/google/glass/widget/MosaicView;)Lcom/google/glass/widget/MosaicView$CellsLoadedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/glass/widget/MosaicView;->cellsLoadedListener:Lcom/google/glass/widget/MosaicView$CellsLoadedListener;

    return-object v0
.end method

.method private addCell(IIIIIILandroid/widget/GridLayout$LayoutParams;)V
    .locals 10
    .parameter "subtaskIndex"
    .parameter "elementIdx"
    .parameter "remainingCount"
    .parameter "width"
    .parameter "height"
    .parameter "layoutId"
    .parameter "layoutParams"

    .prologue
    .line 305
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 306
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an image source and/or a remainingCount"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_0
    iget-object v6, p0, Lcom/google/glass/widget/MosaicView;->imageLoader:Lcom/google/glass/widget/ImageLoader;

    .line 316
    .local v6, thisImageLoader:Lcom/google/glass/widget/ImageLoader;
    new-instance v0, Lcom/google/glass/widget/MosaicView$1;

    move-object v1, p0

    move v2, p1

    move/from16 v3, p6

    move-object/from16 v4, p7

    move v5, p3

    move v7, p2

    move v8, p4

    move v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/google/glass/widget/MosaicView$1;-><init>(Lcom/google/glass/widget/MosaicView;IILandroid/widget/GridLayout$LayoutParams;ILcom/google/glass/widget/ImageLoader;III)V

    invoke-direct {p0, v0}, Lcom/google/glass/widget/MosaicView;->postSubtask(Ljava/lang/Runnable;)V

    .line 346
    return-void
.end method

.method private bindImageView(Lcom/google/glass/widget/ImageLoader;Landroid/widget/FrameLayout;III)V
    .locals 7
    .parameter "loader"
    .parameter "cellView"
    .parameter "elementIdx"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 350
    sget-object v0, Lcom/google/glass/widget/MosaicView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Creating loading task"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    invoke-virtual {p0}, Lcom/google/glass/widget/MosaicView;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/glass/widget/ImageLoader;->createLoadingTask(Landroid/content/Context;Landroid/widget/FrameLayout;III)Lcom/google/glass/util/DeferredContentLoader$LoadingTask;

    move-result-object v6

    .line 353
    .local v6, imageDownloadTask:Lcom/google/glass/util/DeferredContentLoader$LoadingTask;,"Lcom/google/glass/util/DeferredContentLoader$LoadingTask<*>;"
    new-instance v0, Lcom/google/glass/widget/MosaicView$2;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/MosaicView$2;-><init>(Lcom/google/glass/widget/MosaicView;)V

    invoke-virtual {v6, v0}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;->setOnCompletedListener(Lcom/google/glass/util/DeferredContentLoader$LoadingTask$CompletionListener;)V

    .line 370
    iget-object v0, p0, Lcom/google/glass/widget/MosaicView;->imageDownloadTasks:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    iget-object v0, p0, Lcom/google/glass/widget/MosaicView;->deferredContentLoader:Lcom/google/glass/util/DeferredContentLoader;

    invoke-virtual {v0, p0, v6}, Lcom/google/glass/util/DeferredContentLoader;->startLoadForScrollItemSubview(Landroid/view/View;Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V

    .line 374
    return-void
.end method

.method private bindRemainingCountView(Lcom/google/glass/widget/ImageLoader;Landroid/widget/FrameLayout;II)V
    .locals 7
    .parameter "loader"
    .parameter "cellView"
    .parameter "elementIdx"
    .parameter "remainingCount"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 378
    sget v2, Lcom/google/glass/common/R$id;->text:I

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 379
    .local v1, textView:Landroid/widget/TextView;
    invoke-interface {p1, p3}, Lcom/google/glass/widget/ImageLoader;->getBackoffText(I)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, backoffText:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 381
    const-string v2, "%s +%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    :goto_0
    return-void

    .line 383
    :cond_0
    const-string v2, "+%d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private buildMosaic(Z)V
    .locals 30
    .parameter "useAlternate"

    .prologue
    .line 189
    sget-boolean v4, Lcom/google/glass/widget/MosaicView;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/widget/MosaicView;->imageLoader:Lcom/google/glass/widget/ImageLoader;

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 192
    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/glass/widget/MosaicView;->subtaskIndex:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/glass/widget/MosaicView;->subtaskIndex:I

    .line 194
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/widget/MosaicView;->imageLoader:Lcom/google/glass/widget/ImageLoader;

    invoke-interface {v4}, Lcom/google/glass/widget/ImageLoader;->getGroupCountType()Lcom/google/glass/widget/MosaicView$GroupCountType;

    move-result-object v25

    .line 195
    .local v25, groupCountType:Lcom/google/glass/widget/MosaicView$GroupCountType;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/widget/MosaicView;->imageLoader:Lcom/google/glass/widget/ImageLoader;

    invoke-interface {v4}, Lcom/google/glass/widget/ImageLoader;->drawListSize()I

    move-result v24

    .line 196
    .local v24, drawParticipantsSize:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/widget/MosaicView;->imageLoader:Lcom/google/glass/widget/ImageLoader;

    invoke-interface {v4}, Lcom/google/glass/widget/ImageLoader;->sourceListSize()I

    move-result v20

    .line 199
    .local v20, allParticipantsSize:I
    monitor-enter p0

    .line 200
    :try_start_0
    sget-object v4, Lcom/google/glass/widget/MosaicView$GroupCountType;->IN_LAST_CELL:Lcom/google/glass/widget/MosaicView$GroupCountType;

    move-object/from16 v0, v25

    if-ne v0, v4, :cond_1

    .line 201
    add-int/lit8 v4, v24, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/glass/widget/MosaicView;->numberOfLoadingTasks:I

    .line 205
    :goto_0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/glass/widget/MosaicView;->hasLoadingFailure:Z

    .line 206
    sget-object v4, Lcom/google/glass/widget/MosaicView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Loading %d images."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/glass/widget/MosaicView;->numberOfLoadingTasks:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v9

    invoke-interface {v4, v5, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    sget-boolean v4, Lcom/google/glass/widget/MosaicView;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    move/from16 v0, v24

    move/from16 v1, v20

    if-le v0, v1, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 203
    :cond_1
    :try_start_1
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/glass/widget/MosaicView;->numberOfLoadingTasks:I

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 211
    :cond_2
    move/from16 v28, v24

    .line 212
    .local v28, numOfCells:I
    sget-object v4, Lcom/google/glass/widget/MosaicView$GroupCountType;->ADD_CELL:Lcom/google/glass/widget/MosaicView$GroupCountType;

    move-object/from16 v0, v25

    if-ne v0, v4, :cond_3

    .line 213
    add-int/lit8 v28, v28, 0x1

    .line 216
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/widget/MosaicView;->imageLoader:Lcom/google/glass/widget/ImageLoader;

    invoke-interface {v4}, Lcom/google/glass/widget/ImageLoader;->getWidth()I

    move-result v29

    .line 217
    .local v29, width:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/widget/MosaicView;->imageLoader:Lcom/google/glass/widget/ImageLoader;

    invoke-interface {v4}, Lcom/google/glass/widget/ImageLoader;->getHeight()I

    move-result v26

    .line 220
    .local v26, height:I
    const/16 v27, 0x0

    .line 221
    .local v27, mosaicSpec:Lcom/google/glass/widget/MosaicView$MosaicSpec;
    move/from16 v0, v29

    move/from16 v1, v26

    if-le v0, v1, :cond_6

    .line 222
    sget-object v4, Lcom/google/glass/widget/MosaicView;->LANDSCAPE_MOSAIC_MAP:Landroid/util/SparseArray;

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v27

    .end local v27           #mosaicSpec:Lcom/google/glass/widget/MosaicView$MosaicSpec;
    check-cast v27, Lcom/google/glass/widget/MosaicView$MosaicSpec;

    .line 233
    .restart local v27       #mosaicSpec:Lcom/google/glass/widget/MosaicView$MosaicSpec;
    :cond_4
    :goto_1
    if-nez v27, :cond_8

    .line 234
    sget-object v4, Lcom/google/glass/widget/MosaicView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "BUG: missing mosaic specification for %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v9

    invoke-interface {v4, v5, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    :cond_5
    :goto_2
    return-void

    .line 224
    :cond_6
    if-eqz p1, :cond_7

    .line 225
    sget-object v4, Lcom/google/glass/widget/MosaicView;->PORTRAIT_ALT_MOSAIC_MAP:Landroid/util/SparseArray;

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v27

    .end local v27           #mosaicSpec:Lcom/google/glass/widget/MosaicView$MosaicSpec;
    check-cast v27, Lcom/google/glass/widget/MosaicView$MosaicSpec;

    .line 227
    .restart local v27       #mosaicSpec:Lcom/google/glass/widget/MosaicView$MosaicSpec;
    :cond_7
    if-nez v27, :cond_4

    .line 228
    sget-object v4, Lcom/google/glass/widget/MosaicView;->PORTRAIT_MOSAIC_MAP:Landroid/util/SparseArray;

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v27

    .end local v27           #mosaicSpec:Lcom/google/glass/widget/MosaicView$MosaicSpec;
    check-cast v27, Lcom/google/glass/widget/MosaicView$MosaicSpec;

    .restart local v27       #mosaicSpec:Lcom/google/glass/widget/MosaicView$MosaicSpec;
    goto :goto_1

    .line 238
    :cond_8
    move-object/from16 v0, v27

    iget v4, v0, Lcom/google/glass/widget/MosaicView$MosaicSpec;->columns:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/glass/widget/MosaicView;->setColumnCount(I)V

    .line 239
    move-object/from16 v0, v27

    iget v4, v0, Lcom/google/glass/widget/MosaicView$MosaicSpec;->rows:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/glass/widget/MosaicView;->setRowCount(I)V

    .line 241
    move-object/from16 v0, v27

    iget v4, v0, Lcom/google/glass/widget/MosaicView$MosaicSpec;->columns:I

    div-int v23, v29, v4

    .line 242
    .local v23, cellWidth:I
    move-object/from16 v0, v27

    iget v4, v0, Lcom/google/glass/widget/MosaicView$MosaicSpec;->rows:I

    div-int v21, v26, v4

    .line 245
    .local v21, cellHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/widget/MosaicView;->clearImages()V

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/widget/MosaicView;->cancelImageDownloads()V

    .line 250
    const/4 v6, 0x0

    .local v6, i:I
    :goto_3
    move/from16 v0, v24

    if-ge v6, v0, :cond_a

    .line 251
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/google/glass/widget/MosaicView$MosaicSpec;->cellSpecs:[Lcom/google/glass/widget/MosaicView$CellSpec;

    aget-object v22, v4, v6

    .line 252
    .local v22, cellSpec:Lcom/google/glass/widget/MosaicView$CellSpec;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/widget/MosaicView;->createLayoutParams(Lcom/google/glass/widget/MosaicView$CellSpec;II)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v11

    .line 255
    .local v11, params:Landroid/widget/GridLayout$LayoutParams;
    sget-object v4, Lcom/google/glass/widget/MosaicView$GroupCountType;->IN_LAST_CELL:Lcom/google/glass/widget/MosaicView$GroupCountType;

    move-object/from16 v0, v25

    if-ne v0, v4, :cond_9

    add-int/lit8 v4, v24, -0x1

    if-ne v6, v4, :cond_9

    move-object/from16 v0, v27

    iget v4, v0, Lcom/google/glass/widget/MosaicView$MosaicSpec;->embededRemainingCountLayoutId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_9

    .line 257
    sub-int v7, v20, v24

    .line 258
    .local v7, remainingCount:I
    move-object/from16 v0, v27

    iget v10, v0, Lcom/google/glass/widget/MosaicView$MosaicSpec;->embededRemainingCountLayoutId:I

    .line 263
    .local v10, layoutId:I
    :goto_4
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/glass/widget/MosaicView;->subtaskIndex:I

    iget v8, v11, Landroid/widget/GridLayout$LayoutParams;->width:I

    iget v9, v11, Landroid/widget/GridLayout$LayoutParams;->height:I

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/google/glass/widget/MosaicView;->addCell(IIIIIILandroid/widget/GridLayout$LayoutParams;)V

    .line 250
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 260
    .end local v7           #remainingCount:I
    .end local v10           #layoutId:I
    :cond_9
    const/4 v7, -0x1

    .line 261
    .restart local v7       #remainingCount:I
    move-object/from16 v0, v22

    iget v10, v0, Lcom/google/glass/widget/MosaicView$CellSpec;->layoutId:I

    .restart local v10       #layoutId:I
    goto :goto_4

    .line 265
    .end local v7           #remainingCount:I
    .end local v10           #layoutId:I
    .end local v11           #params:Landroid/widget/GridLayout$LayoutParams;
    .end local v22           #cellSpec:Lcom/google/glass/widget/MosaicView$CellSpec;
    :cond_a
    sget-object v4, Lcom/google/glass/widget/MosaicView$GroupCountType;->ADD_CELL:Lcom/google/glass/widget/MosaicView$GroupCountType;

    move-object/from16 v0, v25

    if-ne v0, v4, :cond_5

    .line 266
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/google/glass/widget/MosaicView$MosaicSpec;->cellSpecs:[Lcom/google/glass/widget/MosaicView$CellSpec;

    add-int/lit8 v5, v28, -0x1

    aget-object v22, v4, v5

    .line 267
    .restart local v22       #cellSpec:Lcom/google/glass/widget/MosaicView$CellSpec;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/widget/MosaicView;->createLayoutParams(Lcom/google/glass/widget/MosaicView$CellSpec;II)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v11

    .line 270
    .restart local v11       #params:Landroid/widget/GridLayout$LayoutParams;
    move-object/from16 v0, v27

    iget v4, v0, Lcom/google/glass/widget/MosaicView$MosaicSpec;->remainingLayoutId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_b

    .line 271
    sub-int v7, v20, v24

    .line 272
    .restart local v7       #remainingCount:I
    move-object/from16 v0, v27

    iget v10, v0, Lcom/google/glass/widget/MosaicView$MosaicSpec;->remainingLayoutId:I

    .line 277
    .restart local v10       #layoutId:I
    :goto_5
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/glass/widget/MosaicView;->subtaskIndex:I

    const/4 v14, -0x1

    iget v0, v11, Landroid/widget/GridLayout$LayoutParams;->width:I

    move/from16 v16, v0

    iget v0, v11, Landroid/widget/GridLayout$LayoutParams;->height:I

    move/from16 v17, v0

    move-object/from16 v12, p0

    move v15, v7

    move/from16 v18, v10

    move-object/from16 v19, v11

    invoke-direct/range {v12 .. v19}, Lcom/google/glass/widget/MosaicView;->addCell(IIIIIILandroid/widget/GridLayout$LayoutParams;)V

    goto/16 :goto_2

    .line 274
    .end local v7           #remainingCount:I
    .end local v10           #layoutId:I
    :cond_b
    const/4 v7, -0x1

    .line 275
    .restart local v7       #remainingCount:I
    move-object/from16 v0, v22

    iget v10, v0, Lcom/google/glass/widget/MosaicView$CellSpec;->layoutId:I

    .restart local v10       #layoutId:I
    goto :goto_5
.end method

.method private createLayoutParams(Lcom/google/glass/widget/MosaicView$CellSpec;II)Landroid/widget/GridLayout$LayoutParams;
    .locals 5
    .parameter "cellSpec"
    .parameter "cellWidth"
    .parameter "cellHeight"

    .prologue
    .line 283
    iget v3, p1, Lcom/google/glass/widget/MosaicView$CellSpec;->row:I

    iget v4, p1, Lcom/google/glass/widget/MosaicView$CellSpec;->rowSpan:I

    invoke-static {v3, v4}, Landroid/widget/GridLayout;->spec(II)Landroid/widget/GridLayout$Spec;

    move-result-object v2

    .line 284
    .local v2, rowSpec:Landroid/widget/GridLayout$Spec;
    iget v3, p1, Lcom/google/glass/widget/MosaicView$CellSpec;->column:I

    iget v4, p1, Lcom/google/glass/widget/MosaicView$CellSpec;->colSpan:I

    invoke-static {v3, v4}, Landroid/widget/GridLayout;->spec(II)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    .line 285
    .local v0, colSpec:Landroid/widget/GridLayout$Spec;
    new-instance v1, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    .line 286
    .local v1, params:Landroid/widget/GridLayout$LayoutParams;
    iget v3, p1, Lcom/google/glass/widget/MosaicView$CellSpec;->colSpan:I

    mul-int/2addr v3, p2

    iput v3, v1, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 287
    iget v3, p1, Lcom/google/glass/widget/MosaicView$CellSpec;->rowSpan:I

    mul-int/2addr v3, p3

    iput v3, v1, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 288
    return-object v1
.end method

.method public static getMaxNumSupportedEntities(II)I
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 148
    if-le p0, p1, :cond_0

    .line 149
    const/16 v0, 0x8

    .line 151
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private postSubtask(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 388
    invoke-static {}, Lcom/google/glass/predicates/Assert;->isTest()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/widget/MosaicView;->testHandler:Lcom/google/glass/util/HandlerWrapper;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/google/glass/widget/MosaicView;->testHandler:Lcom/google/glass/util/HandlerWrapper;

    invoke-virtual {v0, p1}, Lcom/google/glass/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 393
    :goto_0
    return-void

    .line 391
    :cond_0
    sget-object v0, Lcom/google/glass/widget/MosaicView;->mainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public cancelImageDownloads()V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/google/glass/widget/MosaicView;->imageDownloadTasks:Ljava/util/List;

    invoke-static {v0}, Lcom/google/glass/util/DeferredContentLoader;->cancel(Ljava/util/List;)V

    .line 439
    iget-object v0, p0, Lcom/google/glass/widget/MosaicView;->imageDownloadTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 440
    return-void
.end method

.method public clearImages()V
    .locals 7

    .prologue
    .line 407
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/widget/MosaicView;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 408
    invoke-virtual {p0, v2}, Lcom/google/glass/widget/MosaicView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 411
    .local v1, cellView:Landroid/widget/FrameLayout;
    sget v6, Lcom/google/glass/common/R$id;->tag_cell_layout_type:I

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 414
    .local v4, layoutId:I
    sget v6, Lcom/google/glass/common/R$id;->image:I

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 415
    .local v3, imageView:Landroid/widget/ImageView;
    if-eqz v3, :cond_0

    .line 416
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 418
    :cond_0
    sget v6, Lcom/google/glass/common/R$id;->text:I

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 419
    .local v5, textView:Landroid/widget/TextView;
    if-eqz v5, :cond_1

    .line 420
    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    :cond_1
    sget-object v6, Lcom/google/glass/widget/MosaicView;->cellLayoutCache:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 425
    .local v0, cache:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Landroid/widget/FrameLayout;>;"
    if-nez v0, :cond_2

    .line 426
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .end local v0           #cache:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Landroid/widget/FrameLayout;>;"
    const/16 v6, 0x50

    invoke-direct {v0, v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 427
    .restart local v0       #cache:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Landroid/widget/FrameLayout;>;"
    sget-object v6, Lcom/google/glass/widget/MosaicView;->cellLayoutCache:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 429
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 407
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 433
    .end local v0           #cache:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Landroid/widget/FrameLayout;>;"
    .end local v1           #cellView:Landroid/widget/FrameLayout;
    .end local v3           #imageView:Landroid/widget/ImageView;
    .end local v4           #layoutId:I
    .end local v5           #textView:Landroid/widget/TextView;
    :cond_3
    invoke-virtual {p0}, Lcom/google/glass/widget/MosaicView;->removeAllViews()V

    .line 434
    return-void
.end method

.method public clearSubtasks()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 396
    invoke-static {}, Lcom/google/glass/predicates/Assert;->isTest()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/widget/MosaicView;->testHandler:Lcom/google/glass/util/HandlerWrapper;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/google/glass/widget/MosaicView;->testHandler:Lcom/google/glass/util/HandlerWrapper;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/HandlerWrapper;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 401
    :goto_0
    return-void

    .line 399
    :cond_0
    sget-object v0, Lcom/google/glass/widget/MosaicView;->mainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public loadImages(Lcom/google/glass/widget/ImageLoader;)V
    .locals 1
    .parameter "imageLoader"

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/widget/MosaicView;->loadImages(Lcom/google/glass/widget/ImageLoader;Z)V

    .line 167
    return-void
.end method

.method public loadImages(Lcom/google/glass/widget/ImageLoader;Z)V
    .locals 1
    .parameter "imageLoader"
    .parameter "useAlternate"

    .prologue
    .line 178
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/glass/widget/ImageLoader;->sourceListSize()I

    move-result v0

    if-lez v0, :cond_0

    .line 179
    iput-object p1, p0, Lcom/google/glass/widget/MosaicView;->imageLoader:Lcom/google/glass/widget/ImageLoader;

    .line 180
    invoke-direct {p0, p2}, Lcom/google/glass/widget/MosaicView;->buildMosaic(Z)V

    .line 182
    :cond_0
    return-void
.end method

.method public setCellsLoadedListener(Lcom/google/glass/widget/MosaicView$CellsLoadedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/google/glass/widget/MosaicView;->cellsLoadedListener:Lcom/google/glass/widget/MosaicView$CellsLoadedListener;

    .line 158
    return-void
.end method

.method setDeferredContentLoaderForTest(Lcom/google/glass/util/DeferredContentLoader;)V
    .locals 0
    .parameter "deferredContentLoader"

    .prologue
    .line 444
    iput-object p1, p0, Lcom/google/glass/widget/MosaicView;->deferredContentLoader:Lcom/google/glass/util/DeferredContentLoader;

    .line 445
    return-void
.end method

.method setHandlerWrapperForTest(Lcom/google/glass/util/HandlerWrapper;)V
    .locals 0
    .parameter "testHandler"

    .prologue
    .line 448
    iput-object p1, p0, Lcom/google/glass/widget/MosaicView;->testHandler:Lcom/google/glass/util/HandlerWrapper;

    .line 449
    return-void
.end method
