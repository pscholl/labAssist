.class Lcom/google/glass/timeline/TimelineItemCreatorJob$2;
.super Lcom/google/glass/timeline/TimelineHelper$Update;
.source "TimelineItemCreatorJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineItemCreatorJob;->dispatchCreateFinalItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineItemCreatorJob;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$2;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineHelper$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 230
    const/4 v7, 0x0

    .line 232
    .local v7, latestTemporaryItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$2;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    invoke-virtual {v0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->shouldCreateTemporaryItem()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$2;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    iget-object v0, v0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$2;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    #getter for: Lcom/google/glass/timeline/TimelineItemCreatorJob;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->access$100(Lcom/google/glass/timeline/TimelineItemCreatorJob;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$2;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    #getter for: Lcom/google/glass/timeline/TimelineItemCreatorJob;->temporaryItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    invoke-static {v3}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->access$300(Lcom/google/glass/timeline/TimelineItemCreatorJob;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/google/glass/timeline/TimelineHelper;->queryTimelineItem(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v7

    .line 236
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsDeleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    :cond_0
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Not updating item that no longer exists."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$2;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    invoke-virtual {v0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->cancel()V

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$2;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    invoke-virtual {v0, v7}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->createFinalTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    .line 243
    .local v2, finalItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    if-nez v2, :cond_2

    .line 244
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Final item was null.  Cancelling."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$2;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    invoke-virtual {v0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->cancel()V

    .line 248
    :cond_2
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCloudSyncProtocol()I

    move-result v0

    if-ne v0, v5, :cond_3

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCompanionSyncProtocol()I

    move-result v0

    if-eq v0, v5, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 251
    if-nez v7, :cond_5

    .line 252
    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;-><init>()V

    .line 253
    .local v6, action:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$2;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    #getter for: Lcom/google/glass/timeline/TimelineItemCreatorJob;->userActionType:I
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->access$000(Lcom/google/glass/timeline/TimelineItemCreatorJob;)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->setType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 254
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$2;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    iget-object v0, v0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$2;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    #getter for: Lcom/google/glass/timeline/TimelineItemCreatorJob;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->access$100(Lcom/google/glass/timeline/TimelineItemCreatorJob;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$2;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    #getter for: Lcom/google/glass/timeline/TimelineItemCreatorJob;->itemType:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;
    invoke-static {v3}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->access$200(Lcom/google/glass/timeline/TimelineItemCreatorJob;)Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/google/glass/timeline/TimelineHelper;->insertTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)Landroid/net/Uri;

    .line 257
    .end local v2           #finalItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v6           #action:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    :goto_1
    return-object v2

    .restart local v2       #finalItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_4
    move v0, v4

    .line 248
    goto :goto_0

    .line 257
    :cond_5
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$2;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    iget-object v0, v0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$2;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    #getter for: Lcom/google/glass/timeline/TimelineItemCreatorJob;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->access$100(Lcom/google/glass/timeline/TimelineItemCreatorJob;)Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/timeline/TimelineHelper;->updateTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;ZZ)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    goto :goto_1
.end method
