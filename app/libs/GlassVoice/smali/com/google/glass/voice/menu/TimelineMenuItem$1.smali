.class final Lcom/google/glass/voice/menu/TimelineMenuItem$1;
.super Ljava/lang/Object;
.source "TimelineMenuItem.java"

# interfaces
.implements Lcom/google/glass/voice/menu/Requirement;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/menu/TimelineMenuItem;->newShareItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/entity/EntitySet;Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/menu/TimelineMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$entitySet:Lcom/google/glass/entity/EntitySet;

.field final synthetic val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method constructor <init>(Lcom/google/glass/entity/EntitySet;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/glass/voice/menu/TimelineMenuItem$1;->val$entitySet:Lcom/google/glass/entity/EntitySet;

    iput-object p2, p0, Lcom/google/glass/voice/menu/TimelineMenuItem$1;->val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getError(Lcom/google/glass/voice/menu/VoiceMenuEnvironment;)Lcom/google/glass/app/GlassError;
    .locals 2
    .parameter "environment"

    .prologue
    .line 41
    new-instance v0, Lcom/google/glass/app/GlassError;

    invoke-direct {v0}, Lcom/google/glass/app/GlassError;-><init>()V

    sget v1, Lcom/google/glass/voiceclient/R$string;->error_no_share_targets:I

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    sget v1, Lcom/google/glass/voiceclient/R$string;->error_edit_contacts:I

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setSecondaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v0

    return-object v0
.end method

.method public isSatisfied(Lcom/google/glass/voice/menu/VoiceMenuEnvironment;)Z
    .locals 2
    .parameter "environment"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/voice/menu/TimelineMenuItem$1;->val$entitySet:Lcom/google/glass/entity/EntitySet;

    iget-object v1, p0, Lcom/google/glass/voice/menu/TimelineMenuItem$1;->val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v0, v1}, Lcom/google/glass/entity/EntitySet;->getEntities(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
