.class Lcom/google/glass/input/HeadScroller$4;
.super Landroid/os/AsyncTask;
.source "HeadScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/input/HeadScroller;->setupLookUpDownAngles(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field stopwatch:Lcom/google/glass/util/Stopwatch;

.field final synthetic this$0:Lcom/google/glass/input/HeadScroller;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/input/HeadScroller;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/google/glass/input/HeadScroller$4;->this$0:Lcom/google/glass/input/HeadScroller;

    iput-object p2, p0, Lcom/google/glass/input/HeadScroller$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 279
    new-instance v0, Lcom/google/glass/util/Stopwatch;

    invoke-direct {v0}, Lcom/google/glass/util/Stopwatch;-><init>()V

    iput-object v0, p0, Lcom/google/glass/input/HeadScroller$4;->stopwatch:Lcom/google/glass/util/Stopwatch;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Float;
    .locals 1
    .parameter "params"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller$4;->stopwatch:Lcom/google/glass/util/Stopwatch;

    invoke-virtual {v0}, Lcom/google/glass/util/Stopwatch;->start()Lcom/google/glass/util/Stopwatch;

    .line 284
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller$4;->val$context:Landroid/content/Context;

    #calls: Lcom/google/glass/input/HeadScroller;->getHeadWakeAngleDegs(Landroid/content/Context;)F
    invoke-static {v0}, Lcom/google/glass/input/HeadScroller;->access$400(Landroid/content/Context;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 278
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/input/HeadScroller$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Float;)V
    .locals 6
    .parameter "result"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller$4;->this$0:Lcom/google/glass/input/HeadScroller;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    #setter for: Lcom/google/glass/input/HeadScroller;->userGluAngle:F
    invoke-static {v0, v1}, Lcom/google/glass/input/HeadScroller;->access$502(Lcom/google/glass/input/HeadScroller;F)F

    .line 290
    iget-object v0, p0, Lcom/google/glass/input/HeadScroller$4;->this$0:Lcom/google/glass/input/HeadScroller;

    iget-object v1, p0, Lcom/google/glass/input/HeadScroller$4;->this$0:Lcom/google/glass/input/HeadScroller;

    #getter for: Lcom/google/glass/input/HeadScroller;->userGluAngle:F
    invoke-static {v1}, Lcom/google/glass/input/HeadScroller;->access$500(Lcom/google/glass/input/HeadScroller;)F

    move-result v1

    const/high16 v2, 0x4120

    sub-float/2addr v1, v2

    #setter for: Lcom/google/glass/input/HeadScroller;->lookDownAngle:F
    invoke-static {v0, v1}, Lcom/google/glass/input/HeadScroller;->access$602(Lcom/google/glass/input/HeadScroller;F)F

    .line 291
    invoke-static {}, Lcom/google/glass/input/HeadScroller;->access$700()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "User\'s GLU Angle: %f, time to query: %d ms"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/input/HeadScroller$4;->this$0:Lcom/google/glass/input/HeadScroller;

    #getter for: Lcom/google/glass/input/HeadScroller;->userGluAngle:F
    invoke-static {v4}, Lcom/google/glass/input/HeadScroller;->access$500(Lcom/google/glass/input/HeadScroller;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/glass/input/HeadScroller$4;->stopwatch:Lcom/google/glass/util/Stopwatch;

    invoke-virtual {v4}, Lcom/google/glass/util/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 278
    check-cast p1, Ljava/lang/Float;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/input/HeadScroller$4;->onPostExecute(Ljava/lang/Float;)V

    return-void
.end method
