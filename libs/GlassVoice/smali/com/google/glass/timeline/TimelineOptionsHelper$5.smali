.class Lcom/google/glass/timeline/TimelineOptionsHelper$5;
.super Landroid/os/AsyncTask;
.source "TimelineOptionsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineOptionsHelper;->onGetMediaInputResult(ILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineOptionsHelper;ILandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1417
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$5;->this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

    iput p2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$5;->val$resultCode:I

    iput-object p3, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$5;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 6
    .parameter "replyToId"

    .prologue
    const/4 v5, 0x0

    .line 1422
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$5;->this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

    #getter for: Lcom/google/glass/timeline/TimelineOptionsHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;
    invoke-static {v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->access$200(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/timeline/TimelineHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$5;->this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

    #getter for: Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;
    invoke-static {v2}, Lcom/google/glass/timeline/TimelineOptionsHelper;->access$000(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/app/GlassActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/app/GlassActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    aget-object v3, p1, v5

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/timeline/TimelineHelper;->queryTimelineItem(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 1424
    .local v0, item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    if-nez v0, :cond_0

    .line 1425
    invoke-static {}, Lcom/google/glass/timeline/TimelineOptionsHelper;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "No item found for timeline item %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aget-object v4, p1, v5

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1427
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1417
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper$5;->doInBackground([Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 1433
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$5;->this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

    iget v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$5;->val$resultCode:I

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$5;->val$intent:Landroid/content/Intent;

    #calls: Lcom/google/glass/timeline/TimelineOptionsHelper;->appendMediaToMenuItemPayload(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ILandroid/content/Intent;)V
    invoke-static {v0, p1, v1, v2}, Lcom/google/glass/timeline/TimelineOptionsHelper;->access$400(Lcom/google/glass/timeline/TimelineOptionsHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ILandroid/content/Intent;)V

    .line 1434
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1417
    check-cast p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper$5;->onPostExecute(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    return-void
.end method
