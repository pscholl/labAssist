.class Lcom/google/glass/voice/menu/EntityMenuItem$ShareTargetMenuItem;
.super Lcom/google/glass/voice/menu/EntityMenuItem;
.source "EntityMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/menu/EntityMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShareTargetMenuItem"
.end annotation


# static fields
.field private static final POST_ANIMATION_DELAY_MS:J = 0x3e8L


# instance fields
.field private final qualifyName:Z

.field private final timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method constructor <init>(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)V
    .locals 0
    .parameter "entity"
    .parameter "timelineItem"
    .parameter "qualifyName"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/google/glass/voice/menu/EntityMenuItem;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    .line 133
    iput-object p2, p0, Lcom/google/glass/voice/menu/EntityMenuItem$ShareTargetMenuItem;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 134
    iput-boolean p3, p0, Lcom/google/glass/voice/menu/EntityMenuItem$ShareTargetMenuItem;->qualifyName:Z

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/menu/EntityMenuItem$ShareTargetMenuItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/glass/voice/menu/EntityMenuItem$ShareTargetMenuItem;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object v0
.end method


# virtual methods
.method public getLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/google/glass/voice/menu/EntityMenuItem$ShareTargetMenuItem;->qualifyName:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/voice/menu/EntityMenuItem$ShareTargetMenuItem;->getEntity()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/glass/voice/EntityUtils;->getQualifiedNameImmediately(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/voice/menu/EntityMenuItem$ShareTargetMenuItem;->getEntity()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/entity/EntityHelper;->getDisplayName(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNextVoiceConfig()Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method

.method public onTrigger(Lcom/google/glass/voice/menu/VoiceMenuEnvironment;Z)V
    .locals 3
    .parameter "environment"
    .parameter "spoken"

    .prologue
    .line 146
    const-wide/16 v0, 0x3e8

    new-instance v2, Lcom/google/glass/voice/menu/EntityMenuItem$ShareTargetMenuItem$1;

    invoke-direct {v2, p0, p1}, Lcom/google/glass/voice/menu/EntityMenuItem$ShareTargetMenuItem$1;-><init>(Lcom/google/glass/voice/menu/EntityMenuItem$ShareTargetMenuItem;Lcom/google/glass/voice/menu/VoiceMenuEnvironment;)V

    invoke-interface {p1, p0, v0, v1, v2}, Lcom/google/glass/voice/menu/VoiceMenuEnvironment;->selectSecondaryMenuItem(Lcom/google/glass/voice/menu/VoiceMenuItem;JLjava/lang/Runnable;)V

    .line 169
    return-void
.end method
