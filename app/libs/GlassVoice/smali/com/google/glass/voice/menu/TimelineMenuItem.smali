.class public abstract Lcom/google/glass/voice/menu/TimelineMenuItem;
.super Lcom/google/glass/voice/menu/StaticCommandMenuItem;
.source "TimelineMenuItem.java"


# instance fields
.field private timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method public varargs constructor <init>(Lcom/google/glass/voice/VoiceCommand;ILcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Lcom/google/glass/voice/menu/Requirement;)V
    .locals 0
    .parameter "command"
    .parameter "stringId"
    .parameter "timelineItem"
    .parameter "requirements"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p4}, Lcom/google/glass/voice/menu/StaticCommandMenuItem;-><init>(Lcom/google/glass/voice/VoiceCommand;I[Lcom/google/glass/voice/menu/Requirement;)V

    .line 24
    iput-object p3, p0, Lcom/google/glass/voice/menu/TimelineMenuItem;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 25
    return-void
.end method

.method public static newSendItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/entity/EntitySet;Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/menu/TimelineMenuItem;
    .locals 9
    .parameter "timelineItem"
    .parameter "entitySet"
    .parameter "nextVoiceConfig"

    .prologue
    const/4 v8, 0x1

    .line 70
    new-instance v7, Lcom/google/glass/voice/menu/TimelineMenuItem$3;

    invoke-direct {v7, p1, p0}, Lcom/google/glass/voice/menu/TimelineMenuItem$3;-><init>(Lcom/google/glass/entity/EntitySet;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 85
    .local v7, requirement:Lcom/google/glass/voice/menu/Requirement;
    new-instance v0, Lcom/google/glass/voice/menu/TimelineMenuItem$4;

    sget-object v1, Lcom/google/glass/voice/VoiceCommand;->SEND_IT_TO:Lcom/google/glass/voice/VoiceCommand;

    sget v2, Lcom/google/glass/voiceclient/R$string;->voice_menu_item_send_it_to:I

    new-array v4, v8, [Lcom/google/glass/voice/menu/Requirement;

    const/4 v3, 0x0

    aput-object v7, v4, v3

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/voice/menu/TimelineMenuItem$4;-><init>(Lcom/google/glass/voice/VoiceCommand;ILcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Lcom/google/glass/voice/menu/Requirement;Lcom/google/glass/entity/EntitySet;Lcom/google/glass/voice/VoiceConfig;)V

    .line 100
    .local v0, shareItem:Lcom/google/glass/voice/menu/TimelineMenuItem;
    invoke-virtual {v0, v8}, Lcom/google/glass/voice/menu/TimelineMenuItem;->setVoicePendingAfterTrigger(Z)Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 101
    invoke-virtual {v0, v8}, Lcom/google/glass/voice/menu/TimelineMenuItem;->setHasSubMenu(Z)Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 102
    return-object v0
.end method

.method public static newShareItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/entity/EntitySet;Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/menu/TimelineMenuItem;
    .locals 9
    .parameter "timelineItem"
    .parameter "entitySet"
    .parameter "nextVoiceConfig"

    .prologue
    const/4 v8, 0x1

    .line 33
    new-instance v7, Lcom/google/glass/voice/menu/TimelineMenuItem$1;

    invoke-direct {v7, p1, p0}, Lcom/google/glass/voice/menu/TimelineMenuItem$1;-><init>(Lcom/google/glass/entity/EntitySet;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 48
    .local v7, requirement:Lcom/google/glass/voice/menu/Requirement;
    new-instance v0, Lcom/google/glass/voice/menu/TimelineMenuItem$2;

    sget-object v1, Lcom/google/glass/voice/VoiceCommand;->SHARE:Lcom/google/glass/voice/VoiceCommand;

    sget v2, Lcom/google/glass/voiceclient/R$string;->voice_menu_item_share:I

    new-array v4, v8, [Lcom/google/glass/voice/menu/Requirement;

    const/4 v3, 0x0

    aput-object v7, v4, v3

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/voice/menu/TimelineMenuItem$2;-><init>(Lcom/google/glass/voice/VoiceCommand;ILcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Lcom/google/glass/voice/menu/Requirement;Lcom/google/glass/entity/EntitySet;Lcom/google/glass/voice/VoiceConfig;)V

    .line 63
    .local v0, shareItem:Lcom/google/glass/voice/menu/TimelineMenuItem;
    invoke-virtual {v0, v8}, Lcom/google/glass/voice/menu/TimelineMenuItem;->setVoicePendingAfterTrigger(Z)Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 64
    invoke-virtual {v0, v8}, Lcom/google/glass/voice/menu/TimelineMenuItem;->setHasSubMenu(Z)Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 65
    return-object v0
.end method


# virtual methods
.method public getTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/glass/voice/menu/TimelineMenuItem;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object v0
.end method
