.class Lcom/google/glass/input/HeadScroller$7;
.super Ljava/lang/Object;
.source "HeadScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/input/HeadScroller;->updateLookingUpState(F)V
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
    .line 397
    iput-object p1, p0, Lcom/google/glass/input/HeadScroller$7;->this$0:Lcom/google/glass/input/HeadScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller$7;->this$0:Lcom/google/glass/input/HeadScroller;

    const/4 v1, 0x1

    #calls: Lcom/google/glass/input/HeadScroller;->snapToNearest(Z)V
    invoke-static {v0, v1}, Lcom/google/glass/input/HeadScroller;->access$1000(Lcom/google/glass/input/HeadScroller;Z)V

    .line 401
    return-void
.end method
