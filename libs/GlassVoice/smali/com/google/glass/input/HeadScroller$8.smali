.class Lcom/google/glass/input/HeadScroller$8;
.super Ljava/lang/Object;
.source "HeadScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/input/HeadScroller;->engageHandsfreeMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/input/HeadScroller;


# direct methods
.method constructor <init>(Lcom/google/glass/input/HeadScroller;)V
    .locals 0
    .parameter

    .prologue
    .line 674
    iput-object p1, p0, Lcom/google/glass/input/HeadScroller$8;->this$0:Lcom/google/glass/input/HeadScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller$8;->this$0:Lcom/google/glass/input/HeadScroller;

    #calls: Lcom/google/glass/input/HeadScroller;->startYawCalculations()V
    invoke-static {v0}, Lcom/google/glass/input/HeadScroller;->access$1100(Lcom/google/glass/input/HeadScroller;)V

    .line 678
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller$8;->this$0:Lcom/google/glass/input/HeadScroller;

    #calls: Lcom/google/glass/input/HeadScroller;->zoomToPanScale()V
    invoke-static {v0}, Lcom/google/glass/input/HeadScroller;->access$1200(Lcom/google/glass/input/HeadScroller;)V

    .line 679
    return-void
.end method
