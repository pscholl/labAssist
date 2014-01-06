.class public Lcom/google/glass/html/HtmlRenderer;
.super Ljava/lang/Object;
.source "HtmlRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;,
        Lcom/google/glass/html/HtmlRenderer$Pool;,
        Lcom/google/glass/html/HtmlRenderer$WebViewRenderedOnceListener;,
        Lcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;,
        Lcom/google/glass/html/HtmlRenderer$OnRenderListener;
    }
.end annotation


# static fields
.field static final DEFAULT_BASE_URL:Ljava/lang/String; = "file:///android_asset/"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final FORCE_COMPILED_CSS:Z = false
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final GLASS_CSS_FILE:Ljava/lang/String; = "stylesheets/base_style.css"

.field static final GOOGLE_BASE_URL:Ljava/lang/String; = "https://www.google.com"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final MAX_POOL_SIZE:I = 0xa

.field private static final TAG:Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static staticPool:Lcom/google/glass/html/HtmlRenderer$Pool;


# instance fields
.field private autoSizerFinished:Z

.field private final bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

.field private final context:Landroid/content/Context;

.field private hasCoverPage:Z

.field private hasWebviewRendered:Z

.field private final height:I

.field private isAllocated:Z

.field private isWebViewAcquired:Z

.field private itemId:Ljava/lang/String;

.field private itemModifiedTime:J

.field private numPages:I

.field private onlyLoadFirstPage:Z

.field private final pageCanvases:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Canvas;",
            ">;"
        }
    .end annotation
.end field

.field private pageChangeListener:Lcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;

.field private final pageListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/glass/html/HtmlRenderer$OnRenderListener;",
            ">;"
        }
    .end annotation
.end field

.field private paginationFinished:Z

.field private final renderCache:Lcom/google/glass/html/HtmlRenderCache;

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

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

.field private webView:Landroid/webkit/WebView;

.field private webViewHasRenderedListener:Lcom/google/glass/html/HtmlRenderer$WebViewRenderedOnceListener;

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/google/glass/html/HtmlRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/html/HtmlRenderer;->TAG:Ljava/lang/String;

    .line 50
    sget-object v0, Lcom/google/glass/html/HtmlRenderer;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/html/HtmlRenderer;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/html/HtmlRenderCache;)V
    .locals 5
    .parameter "context"
    .parameter "bitmapFactory"
    .parameter "renderCache"

    .prologue
    const/4 v3, 0x1

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->resourceLoadTasks:Ljava/util/List;

    .line 253
    iput v3, p0, Lcom/google/glass/html/HtmlRenderer;->numPages:I

    .line 258
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->pageListeners:Landroid/util/SparseArray;

    .line 272
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->pageCanvases:Landroid/util/SparseArray;

    .line 278
    iput-boolean v3, p0, Lcom/google/glass/html/HtmlRenderer;->onlyLoadFirstPage:Z

    .line 304
    new-instance v1, Lcom/google/glass/html/Timer;

    invoke-direct {v1}, Lcom/google/glass/html/Timer;-><init>()V

    .line 305
    .local v1, timer:Lcom/google/glass/html/Timer;
    iput-object p1, p0, Lcom/google/glass/html/HtmlRenderer;->context:Landroid/content/Context;

    .line 306
    iput-object p2, p0, Lcom/google/glass/html/HtmlRenderer;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    .line 307
    iput-object p3, p0, Lcom/google/glass/html/HtmlRenderer;->renderCache:Lcom/google/glass/html/HtmlRenderCache;

    .line 309
    sget-object v2, Lcom/google/glass/util/Labs$Feature;->WK_CH:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v2}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 310
    invoke-static {}, Lcom/google/glass/predicates/Assert;->isTest()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p3, :cond_0

    .line 311
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "renderCache can not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 315
    :cond_0
    new-instance v2, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v2, p1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 317
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 318
    .local v0, display:Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/google/glass/html/HtmlRenderer;->width:I

    .line 319
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/google/glass/html/HtmlRenderer;->height:I

    .line 321
    invoke-static {p1}, Lcom/google/glass/html/HtmlRenderer;->createWebView(Landroid/content/Context;)Landroid/webkit/WebView;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    .line 322
    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;

    invoke-direct {v3, p0}, Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;-><init>(Lcom/google/glass/html/HtmlRenderer;)V

    const-string v4, "GLASS"

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    invoke-static {}, Lcom/google/glass/util/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/glass/html/HtmlRenderer$1;

    invoke-direct {v3, p0}, Lcom/google/glass/html/HtmlRenderer$1;-><init>(Lcom/google/glass/html/HtmlRenderer;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 337
    sget-object v2, Lcom/google/glass/html/HtmlRenderer;->TAG:Ljava/lang/String;

    const-string v3, "Created HtmlRenderer"

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/html/Timer;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/html/HtmlRenderCache;Lcom/google/glass/html/HtmlRenderer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/html/HtmlRenderer;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/html/HtmlRenderCache;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/html/HtmlRenderer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/glass/html/HtmlRenderer;->setIsAllocated(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/glass/html/HtmlRenderer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/google/glass/html/HtmlRenderer;->paginationFinished:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/google/glass/html/HtmlRenderer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/google/glass/html/HtmlRenderer;->paginationFinished:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/google/glass/html/HtmlRenderer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/google/glass/html/HtmlRenderer;->autoSizerFinished:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/google/glass/html/HtmlRenderer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/google/glass/html/HtmlRenderer;->autoSizerFinished:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/google/glass/html/HtmlRenderer;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/glass/html/HtmlRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/google/glass/html/HtmlRenderer;->height:I

    return v0
.end method

.method static synthetic access$1400(Lcom/google/glass/html/HtmlRenderer;Landroid/webkit/WebView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/html/HtmlRenderer;->doLayout(Landroid/webkit/WebView;II)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/glass/html/HtmlRenderer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/google/glass/html/HtmlRenderer;->isAllocated:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/google/glass/html/HtmlRenderer;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IZZLcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 48
    invoke-direct/range {p0 .. p5}, Lcom/google/glass/html/HtmlRenderer;->render(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IZZLcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/glass/html/HtmlRenderer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/google/glass/html/HtmlRenderer;->hasWebviewRendered:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/google/glass/html/HtmlRenderer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/google/glass/html/HtmlRenderer;->hasWebviewRendered:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/google/glass/html/HtmlRenderer;Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/glass/html/HtmlRenderer;->renderToImage(Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/glass/html/HtmlRenderer;)Lcom/google/glass/html/HtmlRenderer$WebViewRenderedOnceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->webViewHasRenderedListener:Lcom/google/glass/html/HtmlRenderer$WebViewRenderedOnceListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/html/HtmlRenderer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/glass/html/HtmlRenderer;->destroy()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/html/HtmlRenderer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/google/glass/html/HtmlRenderer;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/html/HtmlRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/google/glass/html/HtmlRenderer;->width:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/glass/html/HtmlRenderer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/google/glass/html/HtmlRenderer;->hasCoverPage:Z

    return v0
.end method

.method static synthetic access$602(Lcom/google/glass/html/HtmlRenderer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/google/glass/html/HtmlRenderer;->hasCoverPage:Z

    return p1
.end method

.method static synthetic access$700(Lcom/google/glass/html/HtmlRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/google/glass/html/HtmlRenderer;->numPages:I

    return v0
.end method

.method static synthetic access$702(Lcom/google/glass/html/HtmlRenderer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/google/glass/html/HtmlRenderer;->numPages:I

    return p1
.end method

.method static synthetic access$720(Lcom/google/glass/html/HtmlRenderer;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iget v0, p0, Lcom/google/glass/html/HtmlRenderer;->numPages:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/glass/html/HtmlRenderer;->numPages:I

    return v0
.end method

.method static synthetic access$800(Lcom/google/glass/html/HtmlRenderer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/google/glass/html/HtmlRenderer;->onlyLoadFirstPage:Z

    return v0
.end method

.method static synthetic access$900(Lcom/google/glass/html/HtmlRenderer;)Lcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->pageChangeListener:Lcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;

    return-object v0
.end method

.method static createForTesting(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/html/HtmlRenderCache;)Lcom/google/glass/html/HtmlRenderer;
    .locals 1
    .parameter "context"
    .parameter "bitmapFactory"
    .parameter "renderCache"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 168
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 169
    new-instance v0, Lcom/google/glass/html/HtmlRenderer;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/glass/html/HtmlRenderer;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/html/HtmlRenderCache;)V

    return-object v0
.end method

.method private static createWebView(Landroid/content/Context;)Landroid/webkit/WebView;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 620
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 621
    .local v1, webView:Landroid/webkit/WebView;
    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 622
    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 623
    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 628
    invoke-virtual {v1, v5, v6}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 630
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 631
    .local v0, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 632
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 633
    sget-object v3, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 634
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 635
    sget-object v3, Landroid/webkit/WebSettings$RenderPriority;->LOW:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 638
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 642
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 646
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 647
    .local v2, wrapper:Landroid/widget/FrameLayout;
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 653
    invoke-virtual {v2, v5, v6}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 656
    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setDrawingCacheEnabled(Z)V

    .line 657
    const/high16 v3, 0x10

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setDrawingCacheQuality(I)V

    .line 659
    return-object v1
.end method

.method private destroy()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 378
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    .line 379
    return-void
.end method

.method private doLayout(Landroid/webkit/WebView;II)V
    .locals 4
    .parameter "webView"
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v3, 0x4000

    const/4 v2, 0x0

    .line 663
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 664
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 665
    .local v1, widthMeasureSpec:I
    invoke-static {p3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 666
    .local v0, heightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/webkit/WebView;->measure(II)V

    .line 667
    invoke-virtual {p1, v2, v2, p2, p3}, Landroid/webkit/WebView;->layout(IIII)V

    .line 668
    return-void
.end method

.method private getCssUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 611
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "stylesheets/base_style.css"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 612
    .local v0, downloadedCssFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 616
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "file:///android_asset/base_style.css"

    goto :goto_0
.end method

.method public static getKeyForPageNumber(Ljava/lang/String;JIZ)Ljava/lang/String;
    .locals 4
    .parameter "itemId"
    .parameter "itemModifiedTime"
    .parameter "pageNumber"
    .parameter "onlyShowingFirstPage"

    .prologue
    .line 742
    const-string v0, "%s_%d_%d_%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/html/HtmlRenderCache;)V
    .locals 1
    .parameter "context"
    .parameter "bitmapFactory"
    .parameter "renderCache"

    .prologue
    .line 148
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 149
    new-instance v0, Lcom/google/glass/html/HtmlRenderer$Pool;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/glass/html/HtmlRenderer$Pool;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/html/HtmlRenderCache;)V

    sput-object v0, Lcom/google/glass/html/HtmlRenderer;->staticPool:Lcom/google/glass/html/HtmlRenderer$Pool;

    .line 150
    return-void
.end method

.method public static obtain()Lcom/google/glass/html/HtmlRenderer;
    .locals 3

    .prologue
    .line 157
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 158
    sget-object v0, Lcom/google/glass/html/HtmlRenderer;->staticPool:Lcom/google/glass/html/HtmlRenderer$Pool;

    if-nez v0, :cond_0

    .line 159
    sget-object v0, Lcom/google/glass/html/HtmlRenderer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Cannot obtain HTML renderer; pool has not been initialized."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    const/4 v0, 0x0

    .line 162
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/glass/html/HtmlRenderer;->staticPool:Lcom/google/glass/html/HtmlRenderer$Pool;

    invoke-virtual {v0}, Lcom/google/glass/html/HtmlRenderer$Pool;->obtainRenderer()Lcom/google/glass/html/HtmlRenderer;

    move-result-object v0

    goto :goto_0
.end method

.method private render(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IZZLcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;)V
    .locals 13
    .parameter "item"
    .parameter "footerMarginRight"
    .parameter "loadUncachedResources"
    .parameter "onlyLoadFirstPage"
    .parameter "listener"

    .prologue
    .line 437
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 438
    iget-boolean v1, p0, Lcom/google/glass/html/HtmlRenderer;->isAllocated:Z

    if-nez v1, :cond_0

    .line 439
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Called render() on an unallocated renderer!"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 442
    :cond_0
    new-instance v11, Lcom/google/glass/html/Timer;

    invoke-direct {v11}, Lcom/google/glass/html/Timer;-><init>()V

    .line 443
    .local v11, timer:Lcom/google/glass/html/Timer;
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/html/HtmlRenderer;->itemId:Ljava/lang/String;

    .line 444
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->pageChangeListener:Lcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;

    .line 445
    move/from16 v0, p4

    iput-boolean v0, p0, Lcom/google/glass/html/HtmlRenderer;->onlyLoadFirstPage:Z

    .line 446
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/glass/html/HtmlRenderer;->hasCoverPage:Z

    .line 447
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/glass/html/HtmlRenderer;->autoSizerFinished:Z

    .line 448
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/glass/html/HtmlRenderer;->hasWebviewRendered:Z

    .line 449
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/glass/html/HtmlRenderer;->paginationFinished:Z

    .line 450
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getModifiedTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/glass/html/HtmlRenderer;->itemModifiedTime:J

    .line 453
    iget-object v12, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/google/glass/html/ResourceLoadingWebViewClient;

    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/glass/html/HtmlRenderer;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    iget-object v3, p0, Lcom/google/glass/html/HtmlRenderer;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/glass/maps/MapHelper;->getInstance(Landroid/content/Context;)Lcom/google/glass/maps/MapHelper;

    move-result-object v5

    invoke-static {}, Lcom/google/glass/entity/MosaicHelper;->getInstance()Lcom/google/glass/entity/MosaicHelper;

    move-result-object v6

    new-instance v7, Lcom/google/glass/html/Thumbnailer;

    invoke-direct {v7}, Lcom/google/glass/html/Thumbnailer;-><init>()V

    iget-object v9, p0, Lcom/google/glass/html/HtmlRenderer;->resourceLoadTasks:Ljava/util/List;

    new-instance v10, Lcom/google/glass/html/HtmlRenderer$2;

    move/from16 v0, p4

    invoke-direct {v10, p0, p1, p2, v0}, Lcom/google/glass/html/HtmlRenderer$2;-><init>(Lcom/google/glass/html/HtmlRenderer;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IZ)V

    move-object v3, p1

    move/from16 v8, p3

    invoke-direct/range {v1 .. v10}, Lcom/google/glass/html/ResourceLoadingWebViewClient;-><init>(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/maps/MapHelper;Lcom/google/glass/entity/MosaicHelper;Lcom/google/glass/html/Thumbnailer;ZLjava/util/List;Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;)V

    invoke-virtual {v12, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 467
    sget-object v1, Lcom/google/glass/html/HtmlRenderer;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/google/glass/logging/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 470
    iget-object v1, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/google/glass/html/HtmlRenderer$3;

    invoke-direct {v3, p0}, Lcom/google/glass/html/HtmlRenderer$3;-><init>(Lcom/google/glass/html/HtmlRenderer;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 481
    :cond_1
    iget-object v1, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/google/glass/html/HtmlRenderer$4;

    move/from16 v0, p4

    invoke-direct {v3, p0, v0}, Lcom/google/glass/html/HtmlRenderer$4;-><init>(Lcom/google/glass/html/HtmlRenderer;Z)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    .line 508
    const-string v2, "file:///android_asset/"

    .line 509
    .local v2, baseUrl:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "application/glass+html"

    aput-object v4, v1, v3

    invoke-static {p1, v1}, Lcom/google/glass/timeline/TimelineHelper;->hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSourceType()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 513
    const-string v2, "https://www.google.com"

    .line 515
    :cond_2
    iget-object v1, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, p1, p2}, Lcom/google/glass/html/HtmlRenderer;->generateHtml(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    sget-object v1, Lcom/google/glass/html/HtmlRenderer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Prepare: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/html/HtmlRenderer;->itemId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v1, v3}, Lcom/google/glass/html/Timer;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    return-void
.end method

.method private renderToImage(Landroid/webkit/WebView;)V
    .locals 3
    .parameter "webView"

    .prologue
    .line 672
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 673
    iget-boolean v2, p0, Lcom/google/glass/html/HtmlRenderer;->isAllocated:Z

    if-eqz v2, :cond_0

    .line 674
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->pageListeners:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 675
    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->pageListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 676
    .local v1, pageNumber:I
    invoke-direct {p0, p1, v1}, Lcom/google/glass/html/HtmlRenderer;->renderToImage(Landroid/webkit/WebView;I)V

    .line 674
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 679
    .end local v0           #i:I
    .end local v1           #pageNumber:I
    :cond_0
    return-void
.end method

.method private renderToImage(Landroid/webkit/WebView;I)V
    .locals 13
    .parameter "webView"
    .parameter "pageNumber"

    .prologue
    .line 687
    new-instance v7, Lcom/google/glass/html/Timer;

    invoke-direct {v7}, Lcom/google/glass/html/Timer;-><init>()V

    .line 691
    .local v7, timer:Lcom/google/glass/html/Timer;
    iget-boolean v8, p0, Lcom/google/glass/html/HtmlRenderer;->onlyLoadFirstPage:Z

    if-nez v8, :cond_4

    iget-boolean v8, p0, Lcom/google/glass/html/HtmlRenderer;->hasCoverPage:Z

    if-eqz v8, :cond_4

    const/4 v5, 0x1

    .line 694
    .local v5, pageOffset:I
    :goto_0
    iget v8, p0, Lcom/google/glass/html/HtmlRenderer;->width:I

    add-int v9, p2, v5

    mul-int/2addr v8, v9

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 697
    iget-object v8, p0, Lcom/google/glass/html/HtmlRenderer;->pageCanvases:Landroid/util/SparseArray;

    invoke-virtual {v8, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Canvas;

    .line 698
    .local v6, renderCanvas:Landroid/graphics/Canvas;
    if-eqz v6, :cond_0

    .line 701
    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    invoke-virtual {v8, v6}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 708
    :cond_0
    sget-object v8, Lcom/google/glass/util/Labs$Feature;->WK_CH:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v8}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v8

    if-eqz v8, :cond_3

    if-nez p2, :cond_3

    .line 709
    iget-object v8, p0, Lcom/google/glass/html/HtmlRenderer;->itemId:Ljava/lang/String;

    iget-wide v9, p0, Lcom/google/glass/html/HtmlRenderer;->itemModifiedTime:J

    iget-boolean v11, p0, Lcom/google/glass/html/HtmlRenderer;->onlyLoadFirstPage:Z

    invoke-static {v8, v9, v10, p2, v11}, Lcom/google/glass/html/HtmlRenderer;->getKeyForPageNumber(Ljava/lang/String;JIZ)Ljava/lang/String;

    move-result-object v3

    .line 710
    .local v3, key:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/glass/html/HtmlRenderer;->renderCache:Lcom/google/glass/html/HtmlRenderCache;

    invoke-virtual {v8, v3}, Lcom/google/glass/html/HtmlRenderCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 711
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_5

    const/4 v1, 0x1

    .line 712
    .local v1, cacheMiss:Z
    :goto_1
    if-eqz v1, :cond_1

    .line 713
    iget v8, p0, Lcom/google/glass/html/HtmlRenderer;->width:I

    iget v9, p0, Lcom/google/glass/html/HtmlRenderer;->height:I

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 715
    :cond_1
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 716
    .local v2, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    invoke-virtual {v8, v2}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 720
    if-eqz v1, :cond_2

    .line 721
    iget-object v8, p0, Lcom/google/glass/html/HtmlRenderer;->renderCache:Lcom/google/glass/html/HtmlRenderCache;

    invoke-virtual {v8, v3, v0}, Lcom/google/glass/html/HtmlRenderCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    :cond_2
    iget-object v9, p0, Lcom/google/glass/html/HtmlRenderer;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v10, Lcom/google/glass/userevent/UserEventAction;->HTML_CACHE_INSERTION:Lcom/google/glass/userevent/UserEventAction;

    const-string v11, "inv"

    if-nez v1, :cond_6

    const/4 v8, 0x1

    :goto_2
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v8, v12}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v10, v8}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 730
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #cacheMiss:Z
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v3           #key:Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/google/glass/html/HtmlRenderer;->pageListeners:Landroid/util/SparseArray;

    invoke-virtual {v8, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/glass/html/HtmlRenderer$OnRenderListener;

    .line 731
    .local v4, listener:Lcom/google/glass/html/HtmlRenderer$OnRenderListener;
    invoke-static {v4}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    invoke-interface {v4, p0}, Lcom/google/glass/html/HtmlRenderer$OnRenderListener;->onRender(Lcom/google/glass/html/HtmlRenderer;)V

    .line 733
    sget-object v8, Lcom/google/glass/html/HtmlRenderer;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RenderToImage: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/google/glass/html/HtmlRenderer;->itemId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", page number: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/google/glass/html/Timer;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    return-void

    .line 691
    .end local v4           #listener:Lcom/google/glass/html/HtmlRenderer$OnRenderListener;
    .end local v5           #pageOffset:I
    .end local v6           #renderCanvas:Landroid/graphics/Canvas;
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 711
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v3       #key:Ljava/lang/String;
    .restart local v5       #pageOffset:I
    .restart local v6       #renderCanvas:Landroid/graphics/Canvas;
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 725
    .restart local v1       #cacheMiss:Z
    .restart local v2       #canvas:Landroid/graphics/Canvas;
    :cond_6
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private setIsAllocated(Z)V
    .locals 0
    .parameter "isAllocated"

    .prologue
    .line 382
    iput-boolean p1, p0, Lcom/google/glass/html/HtmlRenderer;->isAllocated:Z

    .line 383
    return-void
.end method


# virtual methods
.method public acquireWebview(Lcom/google/glass/html/HtmlRenderer$WebViewRenderedOnceListener;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "listener"

    .prologue
    .line 558
    iget-boolean v0, p0, Lcom/google/glass/html/HtmlRenderer;->isWebViewAcquired:Z

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 559
    iput-object p1, p0, Lcom/google/glass/html/HtmlRenderer;->webViewHasRenderedListener:Lcom/google/glass/html/HtmlRenderer$WebViewRenderedOnceListener;

    .line 560
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/html/HtmlRenderer;->isWebViewAcquired:Z

    .line 561
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method generateHtml(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)Ljava/lang/String;
    .locals 7
    .parameter "item"
    .parameter "footerRightMargin"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 581
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getModifiedTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 583
    .local v3, itemTag:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 584
    .local v2, htmlStartBuilder:Ljava/lang/StringBuilder;
    const-string v4, "<html><head>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isJellyBean()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 586
    const-string v4, "<meta name=\"viewport\" content=\"width=device-width, target-densityDpi=device-dpi\">"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    :cond_0
    const-string v4, "<link rel=\"stylesheet\" type=\"text/css\" href=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/html/HtmlRenderer;->context:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/google/glass/html/HtmlRenderer;->getCssUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" />"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    const-string v4, "<script src=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "file:///android_asset/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "cards_compiled.js\"></script>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    const-string v4, "<script>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    const-string v4, "AutoSizer.init();"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UrlUniquifier.init(\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\');"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    const-string v4, "</script>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    const-string v4, "<style>footer {margin-right:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "px;}</style>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    const-string v4, "</head><body>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    const-string v1, "</body></html>"

    .line 602
    .local v1, htmlEnd:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 603
    .local v0, cardHtml:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 604
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getHtml()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getNumPages()I
    .locals 1

    .prologue
    .line 397
    iget v0, p0, Lcom/google/glass/html/HtmlRenderer;->numPages:I

    return v0
.end method

.method public hasWebViewRendered()Z
    .locals 1

    .prologue
    .line 553
    iget-boolean v0, p0, Lcom/google/glass/html/HtmlRenderer;->hasWebviewRendered:Z

    return v0
.end method

.method public isDoneLoadingResources()Z
    .locals 4

    .prologue
    .line 387
    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->resourceLoadTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/AsyncTask;

    .line 388
    .local v1, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v2, v3, :cond_0

    .line 389
    const/4 v2, 0x0

    .line 392
    .end local v1           #task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public registerListenerForPage(ILandroid/graphics/Canvas;Lcom/google/glass/html/HtmlRenderer$OnRenderListener;)V
    .locals 1
    .parameter "pageNumber"
    .parameter "canvas"
    .parameter "listener"

    .prologue
    .line 524
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->pageListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertNull(Ljava/lang/Object;)V

    .line 525
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->pageListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 529
    if-eqz p2, :cond_0

    .line 532
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->pageCanvases:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertNull(Ljava/lang/Object;)V

    .line 533
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->pageCanvases:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 537
    :cond_0
    iget-boolean v0, p0, Lcom/google/glass/html/HtmlRenderer;->hasWebviewRendered:Z

    if-eqz v0, :cond_1

    .line 538
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    invoke-direct {p0, v0, p1}, Lcom/google/glass/html/HtmlRenderer;->renderToImage(Landroid/webkit/WebView;I)V

    .line 540
    :cond_1
    return-void
.end method

.method public release()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 345
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 346
    iget-boolean v2, p0, Lcom/google/glass/html/HtmlRenderer;->isAllocated:Z

    if-nez v2, :cond_0

    .line 347
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Called release() on an unallocated renderer!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 349
    :cond_0
    iput-object v4, p0, Lcom/google/glass/html/HtmlRenderer;->itemId:Ljava/lang/String;

    .line 352
    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 353
    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    .line 357
    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    const-string v3, "about:blank"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 360
    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->resourceLoadTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/AsyncTask;

    .line 361
    .local v1, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    invoke-virtual {v1, v5}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0

    .line 363
    .end local v1           #task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    :cond_1
    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->resourceLoadTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 365
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/glass/html/HtmlRenderer;->hasWebviewRendered:Z

    .line 366
    iput v5, p0, Lcom/google/glass/html/HtmlRenderer;->numPages:I

    .line 367
    iput-object v4, p0, Lcom/google/glass/html/HtmlRenderer;->pageChangeListener:Lcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;

    .line 370
    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->pageListeners:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 371
    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->pageCanvases:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 373
    sget-object v2, Lcom/google/glass/html/HtmlRenderer;->staticPool:Lcom/google/glass/html/HtmlRenderer$Pool;

    invoke-virtual {v2, p0}, Lcom/google/glass/html/HtmlRenderer$Pool;->releaseRenderer(Lcom/google/glass/html/HtmlRenderer;)V

    .line 374
    return-void
.end method

.method public releaseWebview()V
    .locals 1

    .prologue
    .line 568
    iget-boolean v0, p0, Lcom/google/glass/html/HtmlRenderer;->isWebViewAcquired:Z

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 569
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->webViewHasRenderedListener:Lcom/google/glass/html/HtmlRenderer$WebViewRenderedOnceListener;

    .line 570
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/html/HtmlRenderer;->isWebViewAcquired:Z

    .line 574
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Lcom/google/glass/html/HtmlRenderer;->renderToImage(Landroid/webkit/WebView;)V

    .line 575
    return-void
.end method

.method public render(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IZLcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;)V
    .locals 6
    .parameter "item"
    .parameter "footerMarginRight"
    .parameter "onlyLoadFirstPage"
    .parameter "listener"

    .prologue
    .line 414
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/html/HtmlRenderer;->render(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IZZLcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;)V

    .line 415
    return-void
.end method

.method public unregisterListenerForPage(I)V
    .locals 1
    .parameter "pageNumber"

    .prologue
    .line 544
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->pageListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 548
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->pageCanvases:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 549
    return-void
.end method
