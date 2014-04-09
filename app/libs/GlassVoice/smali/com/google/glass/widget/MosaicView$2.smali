.class Lcom/google/glass/widget/MosaicView$2;
.super Ljava/lang/Object;
.source "MosaicView.java"

# interfaces
.implements Lcom/google/glass/util/DeferredContentLoader$LoadingTask$CompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/widget/MosaicView;->bindImageView(Lcom/google/glass/widget/ImageLoader;Landroid/widget/FrameLayout;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/MosaicView;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/MosaicView;)V
    .locals 0
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/google/glass/widget/MosaicView$2;->this$0:Lcom/google/glass/widget/MosaicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Z)V
    .locals 6
    .parameter "success"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 356
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 357
    invoke-static {}, Lcom/google/glass/widget/MosaicView;->access$500()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Completed loading task: %s, number left: %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/google/glass/widget/MosaicView$2;->this$0:Lcom/google/glass/widget/MosaicView;

    #getter for: Lcom/google/glass/widget/MosaicView;->numberOfLoadingTasks:I
    invoke-static {v5}, Lcom/google/glass/widget/MosaicView;->access$400(Lcom/google/glass/widget/MosaicView;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    iget-object v2, p0, Lcom/google/glass/widget/MosaicView$2;->this$0:Lcom/google/glass/widget/MosaicView;

    monitor-enter v2

    .line 360
    if-nez p1, :cond_0

    .line 361
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/widget/MosaicView$2;->this$0:Lcom/google/glass/widget/MosaicView;

    const/4 v4, 0x1

    #setter for: Lcom/google/glass/widget/MosaicView;->hasLoadingFailure:Z
    invoke-static {v3, v4}, Lcom/google/glass/widget/MosaicView;->access$602(Lcom/google/glass/widget/MosaicView;Z)Z

    .line 363
    :cond_0
    iget-object v3, p0, Lcom/google/glass/widget/MosaicView$2;->this$0:Lcom/google/glass/widget/MosaicView;

    invoke-static {v3}, Lcom/google/glass/widget/MosaicView;->access$410(Lcom/google/glass/widget/MosaicView;)I

    .line 364
    iget-object v3, p0, Lcom/google/glass/widget/MosaicView$2;->this$0:Lcom/google/glass/widget/MosaicView;

    #getter for: Lcom/google/glass/widget/MosaicView;->numberOfLoadingTasks:I
    invoke-static {v3}, Lcom/google/glass/widget/MosaicView;->access$400(Lcom/google/glass/widget/MosaicView;)I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/glass/widget/MosaicView$2;->this$0:Lcom/google/glass/widget/MosaicView;

    #getter for: Lcom/google/glass/widget/MosaicView;->cellsLoadedListener:Lcom/google/glass/widget/MosaicView$CellsLoadedListener;
    invoke-static {v3}, Lcom/google/glass/widget/MosaicView;->access$700(Lcom/google/glass/widget/MosaicView;)Lcom/google/glass/widget/MosaicView$CellsLoadedListener;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 365
    iget-object v3, p0, Lcom/google/glass/widget/MosaicView$2;->this$0:Lcom/google/glass/widget/MosaicView;

    #getter for: Lcom/google/glass/widget/MosaicView;->cellsLoadedListener:Lcom/google/glass/widget/MosaicView$CellsLoadedListener;
    invoke-static {v3}, Lcom/google/glass/widget/MosaicView;->access$700(Lcom/google/glass/widget/MosaicView;)Lcom/google/glass/widget/MosaicView$CellsLoadedListener;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/widget/MosaicView$2;->this$0:Lcom/google/glass/widget/MosaicView;

    #getter for: Lcom/google/glass/widget/MosaicView;->hasLoadingFailure:Z
    invoke-static {v4}, Lcom/google/glass/widget/MosaicView;->access$600(Lcom/google/glass/widget/MosaicView;)Z

    move-result v4

    if-nez v4, :cond_2

    :goto_0
    invoke-interface {v3, v0}, Lcom/google/glass/widget/MosaicView$CellsLoadedListener;->onCellsLoaded(Z)V

    .line 367
    :cond_1
    monitor-exit v2

    .line 368
    return-void

    :cond_2
    move v0, v1

    .line 365
    goto :goto_0

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
