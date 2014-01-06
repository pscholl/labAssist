.class Lcom/google/glass/html/ResourceLoadingWebViewClient$5;
.super Ljava/lang/Object;
.source "ResourceLoadingWebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/html/ResourceLoadingWebViewClient;->loadMosaic(Landroid/net/Uri;Ljava/util/List;)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

.field final synthetic val$imageLoader:Lcom/google/glass/widget/ImageLoader;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/google/glass/html/ResourceLoadingWebViewClient;Landroid/net/Uri;Lcom/google/glass/widget/ImageLoader;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 408
    iput-object p1, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$5;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    iput-object p2, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$5;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$5;->val$imageLoader:Lcom/google/glass/widget/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 411
    iget-object v2, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$5;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    #getter for: Lcom/google/glass/html/ResourceLoadingWebViewClient;->mosaicHelper:Lcom/google/glass/entity/MosaicHelper;
    invoke-static {v2}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$700(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Lcom/google/glass/entity/MosaicHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$5;->val$uri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$5;->val$imageLoader:Lcom/google/glass/widget/ImageLoader;

    invoke-virtual {v2, v3, v4}, Lcom/google/glass/entity/MosaicHelper;->renderMosaicToJpeg(Landroid/net/Uri;Lcom/google/glass/widget/ImageLoader;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 413
    .local v1, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<[B>;"
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 420
    :goto_0
    return-void

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 416
    invoke-interface {v1, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    .line 417
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 418
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    invoke-static {}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$600()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Mosaic rendering error, uri: %s"

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$5;->val$uri:Landroid/net/Uri;

    aput-object v6, v4, v5

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
