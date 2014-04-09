.class Lcom/google/glass/entity/MosaicHelper$MosaicFuture;
.super Lcom/google/common/util/concurrent/AbstractFuture;
.source "MosaicHelper.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/entity/MosaicHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MosaicFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/util/concurrent/AbstractFuture",
        "<[B>;"
    }
.end annotation


# instance fields
.field private final uri:Landroid/net/Uri;

.field private final viewRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/glass/widget/MosaicView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/glass/widget/MosaicView;Landroid/net/Uri;)V
    .locals 1
    .parameter "view"
    .parameter "uri"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;-><init>()V

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/glass/entity/MosaicHelper$MosaicFuture;->viewRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 72
    iput-object p2, p0, Lcom/google/glass/entity/MosaicHelper$MosaicFuture;->uri:Landroid/net/Uri;

    .line 73
    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/entity/MosaicHelper$MosaicFuture;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/glass/entity/MosaicHelper$MosaicFuture;->uri:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public interruptTask()V
    .locals 6

    .prologue
    .line 77
    iget-object v1, p0, Lcom/google/glass/entity/MosaicHelper$MosaicFuture;->viewRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/MosaicView;

    .line 78
    .local v0, view:Lcom/google/glass/widget/MosaicView;
    if-eqz v0, :cond_0

    .line 79
    invoke-static {}, Lcom/google/glass/entity/MosaicHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Cancelling downloads for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/glass/entity/MosaicHelper$MosaicFuture;->uri:Landroid/net/Uri;

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-virtual {v0}, Lcom/google/glass/widget/MosaicView;->cancelImageDownloads()V

    .line 82
    :cond_0
    return-void
.end method

.method protected bridge synthetic set(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    check-cast p1, [B

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/entity/MosaicHelper$MosaicFuture;->set([B)Z

    move-result v0

    return v0
.end method

.method protected set([B)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/glass/entity/MosaicHelper$MosaicFuture;->viewRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 87
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->set(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
