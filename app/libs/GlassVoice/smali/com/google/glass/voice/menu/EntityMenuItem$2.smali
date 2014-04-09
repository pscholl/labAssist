.class final Lcom/google/glass/voice/menu/EntityMenuItem$2;
.super Ljava/lang/Object;
.source "EntityMenuItem.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/menu/EntityMenuItem;->toSendMenuItems(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
        "Lcom/google/glass/voice/menu/EntityMenuItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$sendTarget:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method constructor <init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/glass/voice/menu/EntityMenuItem$2;->val$sendTarget:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/glass/voice/menu/EntityMenuItem;
    .locals 3
    .parameter "entity"

    .prologue
    .line 112
    new-instance v0, Lcom/google/glass/voice/menu/EntityMenuItem$ShareTargetMenuItem;

    iget-object v1, p0, Lcom/google/glass/voice/menu/EntityMenuItem$2;->val$sendTarget:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/google/glass/voice/menu/EntityMenuItem$ShareTargetMenuItem;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    check-cast p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/menu/EntityMenuItem$2;->apply(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/glass/voice/menu/EntityMenuItem;

    move-result-object v0

    return-object v0
.end method
