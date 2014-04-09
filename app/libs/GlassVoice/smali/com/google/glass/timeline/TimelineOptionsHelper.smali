.class public Lcom/google/glass/timeline/TimelineOptionsHelper;
.super Ljava/lang/Object;
.source "TimelineOptionsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/timeline/TimelineOptionsHelper$OnConfirmedListener;,
        Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineOptionProgressListener;,
        Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineItemDeletedListener;
    }
.end annotation


# static fields
.field private static final DESCRIPTION_MAX_LEN:I = 0x1e

.field public static final REQUEST_CODE_GET_MEDIA_INPUT:I = 0x2

.field public static final REQUEST_CODE_SHARE:I = 0x1

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final activity:Lcom/google/glass/app/GlassActivity;

.field private final annotationHelper:Lcom/google/glass/voice/VoiceAnnotationHelper;

.field private final audioManager:Landroid/media/AudioManager;

.field private final callHelper:Lcom/google/glass/phone/PhoneCallHelper;

.field executor:Ljava/util/concurrent/Executor;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final hangoutHelper:Lcom/google/glass/util/HangoutHelper;

.field private final iconProvider:Lcom/google/glass/util/IconProvider;

.field private final soundManager:Lcom/google/glass/sound/SoundManager;

.field private final timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

.field private final timelineOptionProgressListener:Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineOptionProgressListener;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineOptionsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/util/IconProvider;Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineOptionProgressListener;)V
    .locals 8
    .parameter "activity"
    .parameter "iconProvider"
    .parameter "timelineOptionProgressListener"

    .prologue
    .line 157
    new-instance v4, Lcom/google/glass/timeline/TimelineHelper;

    invoke-direct {v4}, Lcom/google/glass/timeline/TimelineHelper;-><init>()V

    new-instance v5, Lcom/google/glass/util/HangoutHelper;

    invoke-direct {v5, p1}, Lcom/google/glass/util/HangoutHelper;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/google/glass/voice/VoiceAnnotationHelper;

    invoke-direct {v6, p1}, Lcom/google/glass/voice/VoiceAnnotationHelper;-><init>(Landroid/app/Activity;)V

    new-instance v7, Lcom/google/glass/phone/PhoneCallHelper;

    invoke-direct {v7, p1}, Lcom/google/glass/phone/PhoneCallHelper;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/timeline/TimelineOptionsHelper;-><init>(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/util/IconProvider;Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineOptionProgressListener;Lcom/google/glass/timeline/TimelineHelper;Lcom/google/glass/util/HangoutHelper;Lcom/google/glass/voice/VoiceAnnotationHelper;Lcom/google/glass/phone/PhoneCallHelper;)V

    .line 160
    return-void
.end method

.method public constructor <init>(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/util/IconProvider;Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineOptionProgressListener;Lcom/google/glass/timeline/TimelineHelper;Lcom/google/glass/util/HangoutHelper;Lcom/google/glass/voice/VoiceAnnotationHelper;Lcom/google/glass/phone/PhoneCallHelper;)V
    .locals 1
    .parameter "activity"
    .parameter "iconProvider"
    .parameter "timelineOptionProgressListener"
    .parameter "timelineHelper"
    .parameter "hangoutHelper"
    .parameter "annotationHelper"
    .parameter "callHelper"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->executor:Ljava/util/concurrent/Executor;

    .line 167
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    .line 168
    iput-object p2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->iconProvider:Lcom/google/glass/util/IconProvider;

    .line 170
    invoke-virtual {p1}, Lcom/google/glass/app/GlassActivity;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->audioManager:Landroid/media/AudioManager;

    .line 171
    invoke-virtual {p1}, Lcom/google/glass/app/GlassActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 172
    invoke-virtual {p1}, Lcom/google/glass/app/GlassActivity;->getUserEventHelper()Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 173
    iput-object p4, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    .line 174
    iput-object p7, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->callHelper:Lcom/google/glass/phone/PhoneCallHelper;

    .line 175
    iput-object p5, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->hangoutHelper:Lcom/google/glass/util/HangoutHelper;

    .line 176
    iput-object p3, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->timelineOptionProgressListener:Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineOptionProgressListener;

    .line 177
    iput-object p6, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->annotationHelper:Lcom/google/glass/voice/VoiceAnnotationHelper;

    .line 178
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/app/GlassActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/google/glass/timeline/TimelineOptionsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/timeline/TimelineHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/timeline/TimelineOptionsHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ILandroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->appendMediaToMenuItemPayload(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineOptionProgressListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->timelineOptionProgressListener:Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineOptionProgressListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/sound/SoundManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->soundManager:Lcom/google/glass/sound/SoundManager;

    return-object v0
.end method

.method private addBroadcast(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 7
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"

    .prologue
    const/4 v0, 0x0

    .line 336
    invoke-virtual {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 337
    return-void
.end method

.method private addCustom(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 0
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"

    .prologue
    .line 327
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addBroadcast(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    .line 328
    return-void
.end method

.method private addDelete(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 7
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"

    .prologue
    .line 402
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_delete:I

    invoke-virtual {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_delete_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 404
    return-void
.end method

.method private addGetMediaInput(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 7
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"

    .prologue
    const/4 v0, 0x0

    .line 684
    invoke-virtual {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 685
    return-void
.end method

.method private addMenuItem(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 2
    .parameter "menu"
    .parameter "timelineItem"
    .parameter "menuItem"

    .prologue
    .line 251
    const/4 v1, 0x0

    invoke-static {p3, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getValueForState(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    move-result-object v0

    .line 253
    .local v0, menuValue:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 319
    :goto_0
    :pswitch_0
    return-void

    .line 255
    :pswitch_1
    invoke-direct {p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addCustom(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    goto :goto_0

    .line 258
    :pswitch_2
    invoke-direct {p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addBroadcast(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    goto :goto_0

    .line 261
    :pswitch_3
    invoke-virtual {p0, p1, v0, p3, p2}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addReply(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    goto :goto_0

    .line 264
    :pswitch_4
    invoke-virtual {p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addReplyAll(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    goto :goto_0

    .line 267
    :pswitch_5
    invoke-virtual {p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addSendMessage(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    goto :goto_0

    .line 270
    :pswitch_6
    invoke-direct {p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addDelete(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    goto :goto_0

    .line 273
    :pswitch_7
    invoke-direct {p0, p1, v0, p3, p2}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addShare(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    goto :goto_0

    .line 276
    :pswitch_8
    invoke-direct {p0, p1, v0, p3, p2}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addSend(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    goto :goto_0

    .line 279
    :pswitch_9
    invoke-direct {p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addReadAloud(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    goto :goto_0

    .line 282
    :pswitch_a
    invoke-direct {p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addVoiceCall(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    goto :goto_0

    .line 285
    :pswitch_b
    invoke-direct {p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addNavigate(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    goto :goto_0

    .line 288
    :pswitch_c
    invoke-direct {p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addSearch(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    goto :goto_0

    .line 291
    :pswitch_d
    invoke-direct {p0, p1, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMuteMic(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Lcom/google/glass/widget/OptionMenu$Item;

    goto :goto_0

    .line 294
    :pswitch_e
    invoke-direct {p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addVideoCall(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    goto :goto_0

    .line 297
    :pswitch_f
    invoke-virtual {p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addOpenUri(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    goto :goto_0

    .line 300
    :pswitch_10
    invoke-direct {p0, p1, v0, p3, p2}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addTogglePinned(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    goto :goto_0

    .line 303
    :pswitch_11
    invoke-direct {p0, p1, v0, p3, p2}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addPlayVideo(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    goto :goto_0

    .line 306
    :pswitch_12
    invoke-direct {p0, p1, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addVolume(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    goto :goto_0

    .line 309
    :pswitch_13
    invoke-virtual {p0, p1, v0, p3, p2}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addShowRecipients(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    goto :goto_0

    .line 312
    :pswitch_14
    invoke-direct {p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addGetMediaInput(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    goto :goto_0

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_4
        :pswitch_2
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_10
        :pswitch_0
        :pswitch_11
        :pswitch_5
        :pswitch_12
        :pswitch_13
        :pswitch_8
        :pswitch_14
    .end packed-switch
.end method

.method private addMuteMic(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Lcom/google/glass/widget/OptionMenu$Item;
    .locals 8
    .parameter "menu"
    .parameter "menuItem"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 509
    iget-object v4, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v4}, Lcom/google/glass/app/GlassActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 510
    .local v2, resources:Landroid/content/res/Resources;
    new-instance v1, Lcom/google/glass/widget/OptionMenu$ItemState;

    sget v4, Lcom/google/glass/common/R$string;->phone_call_mute:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/google/glass/common/R$drawable;->ic_microphone_medium:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v1, v6, v4, v5}, Lcom/google/glass/widget/OptionMenu$ItemState;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 513
    .local v1, muteState:Lcom/google/glass/widget/OptionMenu$ItemState;
    new-instance v3, Lcom/google/glass/widget/OptionMenu$ItemState;

    sget v4, Lcom/google/glass/common/R$string;->phone_call_unmute:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/google/glass/common/R$drawable;->ic_microphone_off_medium:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v3, v7, v4, v5}, Lcom/google/glass/widget/OptionMenu$ItemState;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 516
    .local v3, unmuteState:Lcom/google/glass/widget/OptionMenu$ItemState;
    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/glass/widget/OptionMenu$ItemState;

    aput-object v1, v4, v6

    aput-object v3, v4, v7

    invoke-virtual {p0, p1, p2, v4}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/Object;[Lcom/google/glass/widget/OptionMenu$ItemState;)I

    move-result v0

    .line 517
    .local v0, menuItemId:I
    iget-object v4, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {p1, v0}, Lcom/google/glass/widget/OptionMenu;->getItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/glass/util/MicrophoneHelper;->updateOptionMenuItem(Landroid/content/Context;Lcom/google/glass/widget/OptionMenu$Item;)V

    .line 518
    invoke-virtual {p1, v0}, Lcom/google/glass/widget/OptionMenu;->getItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v4

    return-object v4
.end method

.method private addNavigate(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 7
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"

    .prologue
    .line 474
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_navigate:I

    invoke-virtual {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_navigate_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 477
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-static {v0}, Lcom/google/glass/maps/NavigationLauncher;->wakeUpNavigation(Landroid/content/Context;)V

    .line 478
    return-void
.end method

.method private addPlayVideo(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 7
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"
    .parameter "timelineItem"

    .prologue
    .line 584
    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getPayload()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/timeline/TimelineHelper;->SUPPORTED_VIDEO_MIME_TYPES:[Ljava/lang/String;

    invoke-static {p4, v0}, Lcom/google/glass/timeline/TimelineHelper;->hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    :cond_0
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_play_video:I

    invoke-virtual {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_play_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 590
    :cond_1
    return-void
.end method

.method private addReadAloud(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 7
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"

    .prologue
    .line 444
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_read_aloud:I

    invoke-virtual {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_read_aloud_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 446
    return-void
.end method

.method private addSearch(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 7
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"

    .prologue
    .line 486
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_expand_search:I

    invoke-virtual {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_search_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 488
    return-void
.end method

.method private addSend(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 8
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"
    .parameter "timelineItem"

    .prologue
    .line 431
    sget-object v0, Lcom/google/glass/entity/EntitySet;->SEND_TARGETS:Lcom/google/glass/entity/EntitySet;

    invoke-virtual {v0, p4}, Lcom/google/glass/entity/EntitySet;->getEntities(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/util/List;

    move-result-object v7

    .line 432
    .local v7, shareTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_send:I

    invoke-virtual {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_share_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 436
    :cond_0
    return-void
.end method

.method private addShare(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 8
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"
    .parameter "timelineItem"

    .prologue
    .line 413
    invoke-static {}, Lcom/google/glass/entity/EntityCache;->getSharedInstance()Lcom/google/glass/entity/EntityCache;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/glass/entity/EntityCache;->getShareTargets(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/util/List;

    move-result-object v7

    .line 414
    .local v7, shareTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_share:I

    invoke-virtual {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_share_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    sget v1, Lcom/google/glass/common/R$string;->sharing_no_share_targets:I

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 422
    :goto_0
    return-void

    .line 419
    :cond_0
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_share:I

    invoke-virtual {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_share_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private addTogglePinned(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 7
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"
    .parameter "timelineItem"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 600
    invoke-virtual {p4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsPinned()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_unpin:I

    invoke-virtual {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_unpin_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 607
    :goto_0
    return-void

    .line 604
    :cond_0
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_pin:I

    invoke-virtual {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_pin_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private addVideoCall(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 7
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"

    .prologue
    .line 527
    const/4 v5, 0x0

    .line 528
    .local v5, description:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->callHelper:Lcom/google/glass/phone/PhoneCallHelper;

    invoke-virtual {v0}, Lcom/google/glass/phone/PhoneCallHelper;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 529
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    sget v1, Lcom/google/glass/common/R$string;->timeline_menu_error_in_a_call_no_hangout:I

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 533
    :cond_0
    :goto_0
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_hangout:I

    invoke-virtual {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v0}, Lcom/google/glass/app/GlassActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$drawable;->ic_video_call_medium:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 536
    return-void

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->hangoutHelper:Lcom/google/glass/util/HangoutHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/HangoutHelper;->isInHangout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    sget v1, Lcom/google/glass/common/R$string;->timeline_menu_error_in_a_hangout_no_hangout:I

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private addVoiceCall(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 7
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"

    .prologue
    .line 455
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->BLUETOOTH_HEADSET:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 456
    const/4 v5, 0x0

    .line 457
    .local v5, description:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->callHelper:Lcom/google/glass/phone/PhoneCallHelper;

    invoke-virtual {v0}, Lcom/google/glass/phone/PhoneCallHelper;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 458
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    sget v1, Lcom/google/glass/common/R$string;->timeline_menu_error_in_a_call_no_call:I

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 462
    :cond_0
    :goto_0
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_voice_call:I

    invoke-virtual {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_phone_out_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 466
    .end local v5           #description:Ljava/lang/String;
    :cond_1
    return-void

    .line 459
    .restart local v5       #description:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->hangoutHelper:Lcom/google/glass/util/HangoutHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/HangoutHelper;->isInHangout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    sget v1, Lcom/google/glass/common/R$string;->timeline_menu_error_in_a_hangout_no_call:I

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private addVolume(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 8
    .parameter "menu"
    .parameter "menuItem"

    .prologue
    .line 654
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v0}, Lcom/google/glass/app/GlassActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 655
    .local v7, resources:Landroid/content/res/Resources;
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_volume:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_volume_medium:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 659
    return-void
.end method

.method private appendMediaToMenuItemPayload(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ILandroid/content/Intent;)V
    .locals 4
    .parameter "item"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 1440
    const/16 v2, 0x16

    invoke-static {p1, v2}, Lcom/google/glass/timeline/TimelineHelper;->getFirstMenuItemWithActionOfType(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    move-result-object v0

    .line 1442
    .local v0, mediaInput:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->annotationHelper:Lcom/google/glass/voice/VoiceAnnotationHelper;

    invoke-virtual {v2, p2, p3}, Lcom/google/glass/voice/VoiceAnnotationHelper;->getAnnotationResult(ILandroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->setPayload(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 1443
    new-instance v1, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;-><init>()V

    .line 1444
    .local v1, userAction:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->setType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 1446
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    new-instance v3, Lcom/google/glass/timeline/TimelineOptionsHelper$6;

    invoke-direct {v3, p0, p1, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper$6;-><init>(Lcom/google/glass/timeline/TimelineOptionsHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)V

    invoke-virtual {v2, v3}, Lcom/google/glass/timeline/TimelineHelper;->atomicUpdateTimelineItemAsync(Lcom/google/glass/timeline/TimelineHelper$Update;)V

    .line 1453
    return-void
.end method

.method public static getCallOrVideoCallStatusDescription(Landroid/app/Activity;Lcom/google/glass/phone/PhoneCallHelper;Lcom/google/glass/util/HangoutHelper;)Ljava/lang/String;
    .locals 1
    .parameter "activity"
    .parameter "phoneCallHelper"
    .parameter "hangoutHelper"

    .prologue
    .line 388
    invoke-virtual {p1}, Lcom/google/glass/phone/PhoneCallHelper;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    sget v0, Lcom/google/glass/common/R$string;->phone_call_in_call:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 393
    :goto_0
    return-object v0

    .line 390
    :cond_0
    invoke-virtual {p2}, Lcom/google/glass/util/HangoutHelper;->isInHangout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    sget v0, Lcom/google/glass/common/R$string;->hangout_in_hangout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 393
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "value"
    .parameter "defaultResId"

    .prologue
    .line 734
    const/4 v0, 0x0

    .line 735
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->iconProvider:Lcom/google/glass/util/IconProvider;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 736
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->iconProvider:Lcom/google/glass/util/IconProvider;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/util/IconProvider;->getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 738
    :cond_0
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 739
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v1}, Lcom/google/glass/app/GlassActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 741
    :cond_1
    return-object v0
.end method

.method public static getValueForState(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .locals 5
    .parameter "item"
    .parameter "state"

    .prologue
    .line 723
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    invoke-static {v4}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 724
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 725
    .local v3, value:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->getState()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 730
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #value:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    :goto_1
    return-object v3

    .line 724
    .restart local v0       #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #value:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 730
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #value:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method static isBrokenMedia(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 2
    .parameter "timelineItem"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getViewType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 233
    sget-object v0, Lcom/google/glass/timeline/TimelineHelper;->SUPPORTED_IMAGE_MIME_TYPES:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/glass/timeline/TimelineHelper;->getAttachmentsOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 241
    :goto_0
    return v0

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getViewType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 238
    sget-object v0, Lcom/google/glass/timeline/TimelineHelper;->SUPPORTED_VIDEO_MIME_TYPES:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/glass/timeline/TimelineHelper;->getAttachmentsOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    goto :goto_0

    .line 241
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onBroadcast(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Z
    .locals 6
    .parameter "selectedTimelineItem"
    .parameter "selectedMenuItem"

    .prologue
    .line 1006
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->hasBroadcastAction()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1007
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getBroadcastAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1009
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "itemId"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1011
    const-string v4, "menu_item_id"

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1012
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasCreator()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1013
    const-string v4, "creator"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v5

    invoke-static {v5}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1016
    :cond_0
    iget-object v4, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v4}, Lcom/google/glass/util/ArrayUtils;->length([Ljava/lang/Object;)I

    move-result v3

    .line 1017
    .local v3, shareTargetCount:I
    const-string v4, "share_target_count"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1018
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 1019
    iget-object v4, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    aget-object v2, v4, v0

    .line 1020
    .local v2, shareTarget:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineActivityHelper;->createShareTargetExtraKey(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1018
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1023
    .end local v2           #shareTarget:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_1
    iget-object v4, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v4, v1}, Lcom/google/glass/app/GlassActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1024
    const/4 v4, 0x1

    .line 1026
    .end local v0           #i:I
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #shareTargetCount:I
    :goto_1
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private onCustom(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Z
    .locals 19
    .parameter "timelineItem"
    .parameter "menuItem"

    .prologue
    .line 1218
    invoke-static/range {p1 .. p1}, Lcom/google/glass/timeline/TimelineHelper;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v17

    .line 1219
    .local v17, updatedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getRemoveWhenSelected()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-static {v4}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1220
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v14, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1221
    .local v14, menuItems:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 1222
    .local v15, mu:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1223
    invoke-interface {v14, v15}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1227
    .end local v15           #mu:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    :cond_1
    const/4 v4, 0x0

    new-array v4, v4, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-interface {v14, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    move-object/from16 v0, v17

    iput-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 1230
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v14           #menuItems:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;>;"
    :cond_2
    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getValueForState(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    move-result-object v16

    .line 1231
    .local v16, pendingValue:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    const/4 v4, 0x2

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getValueForState(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    move-result-object v11

    .line 1232
    .local v11, confirmedValue:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    new-instance v18, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct/range {v18 .. v18}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;-><init>()V

    .line 1233
    .local v18, userAction:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    const/4 v4, 0x5

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->setType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 1234
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->setPayload(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 1236
    if-eqz v16, :cond_7

    if-eqz v11, :cond_7

    .line 1237
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getValueForState(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    move-result-object v12

    .line 1240
    .local v12, defaultValue:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v4}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v6

    .line 1241
    .local v6, pendingText:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1242
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v4}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v6

    .line 1244
    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v4}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1245
    .local v7, pendingIcon:Landroid/graphics/drawable/Drawable;
    if-nez v7, :cond_4

    .line 1246
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v4}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1248
    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v4}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v8

    .line 1249
    .local v8, confirmedText:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1250
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v4}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v8

    .line 1252
    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v4}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1253
    .local v9, confirmedIcon:Landroid/graphics/drawable/Drawable;
    if-nez v9, :cond_6

    .line 1254
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v4}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1257
    :cond_6
    new-instance v10, Lcom/google/glass/timeline/TimelineOptionsHelper$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, p2

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/google/glass/timeline/TimelineOptionsHelper$2;-><init>(Lcom/google/glass/timeline/TimelineOptionsHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    invoke-direct/range {v4 .. v10}, Lcom/google/glass/timeline/TimelineOptionsHelper;->showConfirmationDialog(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/google/glass/timeline/TimelineOptionsHelper$OnConfirmedListener;)V

    .line 1271
    .end local v6           #pendingText:Ljava/lang/String;
    .end local v7           #pendingIcon:Landroid/graphics/drawable/Drawable;
    .end local v8           #confirmedText:Ljava/lang/String;
    .end local v9           #confirmedIcon:Landroid/graphics/drawable/Drawable;
    .end local v12           #defaultValue:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 1269
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->notifyOnCustomMenuSelected(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    goto :goto_0
.end method

.method private onDelete(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineItemDeletedListener;)Z
    .locals 12
    .parameter "timelineItem"
    .parameter "menuItem"
    .parameter "deletedListener"

    .prologue
    const/4 v11, 0x1

    .line 1295
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v8

    .line 1296
    .local v8, itemId:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v9

    .line 1299
    .local v9, itemSourceId:Ljava/lang/String;
    invoke-static {p2, v11}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getValueForState(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    move-result-object v10

    .line 1300
    .local v10, pendingValue:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_delete_confirming:I

    invoke-virtual {p0, v10, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    .line 1301
    .local v2, pendingText:Ljava/lang/String;
    sget v0, Lcom/google/glass/common/R$drawable;->ic_delete_medium:I

    invoke-direct {p0, v10, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1302
    .local v3, pendingIcon:Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getValueForState(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    move-result-object v7

    .line 1303
    .local v7, confirmedValue:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_delete_confirmed:I

    invoke-virtual {p0, v7, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v4

    .line 1304
    .local v4, confirmedText:Ljava/lang/String;
    sget v0, Lcom/google/glass/common/R$drawable;->ic_done_medium:I

    invoke-direct {p0, v7, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1306
    .local v5, confirmedIcon:Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->DELETE_INITIATED:Lcom/google/glass/userevent/UserEventAction;

    invoke-static {v9}, Lcom/google/glass/timeline/TimelineHelper;->getRedactedSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 1309
    if-eqz p3, :cond_0

    .line 1310
    invoke-interface {p3}, Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineItemDeletedListener;->onConfirmDelete()V

    .line 1312
    :cond_0
    new-instance v6, Lcom/google/glass/timeline/TimelineOptionsHelper$4;

    invoke-direct {v6, p0, v9, v8, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper$4;-><init>(Lcom/google/glass/timeline/TimelineOptionsHelper;Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineItemDeletedListener;)V

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->showConfirmationDialog(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/google/glass/timeline/TimelineOptionsHelper$OnConfirmedListener;)V

    .line 1331
    return v11
.end method

.method private onMuteMic(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 1
    .parameter "selectedOptionMenuItem"

    .prologue
    .line 921
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-static {v0}, Lcom/google/glass/util/MicrophoneHelper;->toggleMute(Landroid/content/Context;)Z

    .line 922
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-static {v0, p1}, Lcom/google/glass/util/MicrophoneHelper;->updateOptionMenuItem(Landroid/content/Context;Lcom/google/glass/widget/OptionMenu$Item;)V

    .line 923
    const/4 v0, 0x1

    return v0
.end method

.method private onOpenUri(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Z
    .locals 1
    .parameter "selectedMenuItem"

    .prologue
    .line 849
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getPayload()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onOpenUri(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private onTogglePinned(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 5
    .parameter "timelineItem"

    .prologue
    const/4 v4, 0x1

    .line 1534
    new-instance v1, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;-><init>()V

    .line 1535
    .local v1, userAction:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineHelper;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 1536
    .local v0, updatedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setModifiedTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 1537
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsPinned()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1538
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->setType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 1539
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setIsPinned(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 1540
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setPinTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 1547
    :goto_0
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    new-instance v3, Lcom/google/glass/timeline/TimelineOptionsHelper$9;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper$9;-><init>(Lcom/google/glass/timeline/TimelineOptionsHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)V

    invoke-virtual {v2, v3}, Lcom/google/glass/timeline/TimelineHelper;->atomicUpdateTimelineItemAsync(Lcom/google/glass/timeline/TimelineHelper$Update;)V

    .line 1566
    return v4

    .line 1542
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->setType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 1543
    invoke-virtual {v0, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setIsPinned(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 1544
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setPinTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    goto :goto_0
.end method

.method private onVolume()Z
    .locals 4

    .prologue
    .line 840
    new-instance v0, Lcom/google/glass/widget/VolumeControlDialog;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->soundManager:Lcom/google/glass/sound/SoundManager;

    iget-object v3, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->audioManager:Landroid/media/AudioManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/widget/VolumeControlDialog;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;Landroid/media/AudioManager;)V

    invoke-virtual {v0}, Lcom/google/glass/widget/VolumeControlDialog;->show()V

    .line 841
    const/4 v0, 0x1

    return v0
.end method

.method private showConfirmationDialog(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/google/glass/timeline/TimelineOptionsHelper$OnConfirmedListener;)V
    .locals 4
    .parameter "menuItem"
    .parameter "pendingText"
    .parameter "pendingIcon"
    .parameter "confirmedText"
    .parameter "confirmedIcon"
    .parameter "listener"

    .prologue
    .line 1583
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    new-instance v1, Lcom/google/glass/widget/MessageDialog$Builder;

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    iget-object v3, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->soundManager:Lcom/google/glass/sound/SoundManager;

    invoke-direct {v1, v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    invoke-virtual {v1, p2}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryIcon(Landroid/graphics/drawable/Drawable;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setAnimated(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/glass/timeline/TimelineOptionsHelper$10;

    invoke-direct {v2, p0, p1, p6}, Lcom/google/glass/timeline/TimelineOptionsHelper$10;-><init>(Lcom/google/glass/timeline/TimelineOptionsHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/glass/timeline/TimelineOptionsHelper$OnConfirmedListener;)V

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassActivity;->showMessage(Lcom/google/glass/widget/MessageDialog;)V

    .line 1606
    return-void
.end method


# virtual methods
.method public varargs addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/Object;[Lcom/google/glass/widget/OptionMenu$ItemState;)I
    .locals 2
    .parameter "menu"
    .parameter "extra"
    .parameter "itemStates"

    .prologue
    .line 716
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu;->getItemCount()I

    move-result v0

    .line 717
    .local v0, id:I
    invoke-virtual {p1, v0, p3}, Lcom/google/glass/widget/OptionMenu;->addItem(I[Lcom/google/glass/widget/OptionMenu$ItemState;)V

    .line 718
    invoke-virtual {p1, v0}, Lcom/google/glass/widget/OptionMenu;->getItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/glass/widget/OptionMenu$Item;->setExtra(Ljava/lang/Object;)V

    .line 719
    return v0
.end method

.method addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .parameter "menu"
    .parameter "label"
    .parameter "icon"
    .parameter "isEnabled"
    .parameter "description"
    .parameter "extra"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 700
    new-instance v2, Lcom/google/glass/widget/OptionMenu$ItemState;

    invoke-direct {v2, v4, p2, p3}, Lcom/google/glass/widget/OptionMenu$ItemState;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 701
    .local v2, itemState:Lcom/google/glass/widget/OptionMenu$ItemState;
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/glass/widget/OptionMenu$ItemState;

    aput-object v2, v3, v4

    invoke-virtual {p0, p1, p6, v3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/Object;[Lcom/google/glass/widget/OptionMenu$ItemState;)I

    move-result v0

    .line 702
    .local v0, id:I
    invoke-virtual {p1, v0}, Lcom/google/glass/widget/OptionMenu;->getItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v1

    .line 703
    .local v1, item:Lcom/google/glass/widget/OptionMenu$Item;
    invoke-virtual {v1, p4}, Lcom/google/glass/widget/OptionMenu$Item;->setEnabled(Z)V

    .line 704
    invoke-virtual {v1, p5}, Lcom/google/glass/widget/OptionMenu$Item;->setDescription(Ljava/lang/String;)V

    .line 705
    return-void
.end method

.method public addMuteMic(Lcom/google/glass/widget/OptionMenu;)Lcom/google/glass/widget/OptionMenu$Item;
    .locals 2
    .parameter "menu"

    .prologue
    .line 496
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    .line 497
    .local v0, menuItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->setAction(I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 498
    invoke-direct {p0, p1, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMuteMic(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v1

    return-object v1
.end method

.method addOpenUri(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 13
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 546
    invoke-virtual/range {p3 .. p3}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getPayload()Ljava/lang/String;

    move-result-object v12

    .line 547
    .local v12, uri:Ljava/lang/String;
    move-object v5, v12

    .line 548
    .local v5, description:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x1e

    invoke-virtual {v5, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 551
    :cond_0
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 553
    .local v8, lowerUri:Ljava/lang/String;
    const/4 v10, 0x1

    .line 554
    .local v10, shouldAddItem:Z
    const-string v0, "http:"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https:"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 555
    :cond_1
    sget v11, Lcom/google/glass/common/R$string;->timeline_menu_view_website:I

    .line 569
    .local v11, stringResId:I
    :cond_2
    :goto_0
    if-eqz v10, :cond_3

    .line 570
    invoke-virtual {p0, p2, v11}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->browser_website:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 573
    :cond_3
    return-void

    .line 557
    .end local v11           #stringResId:I
    :cond_4
    sget v11, Lcom/google/glass/common/R$string;->timeline_menu_open:I

    .line 558
    .restart local v11       #stringResId:I
    const/4 v5, 0x0

    .line 562
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 563
    .local v7, launcherIntent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v0}, Lcom/google/glass/app/GlassActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 565
    .local v9, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 566
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public addReadMore(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 9
    .parameter "menu"
    .parameter "timelineItem"

    .prologue
    const/16 v8, 0x10

    .line 617
    const/4 v3, 0x0

    .line 618
    .local v3, readMoreItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    const/4 v4, 0x0

    .line 619
    .local v4, readMoreItemIndex:I
    iget-object v5, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-static {v5}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 620
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 621
    iget-object v5, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    aget-object v2, v5, v1

    .line 622
    .local v2, menuItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getAction()I

    move-result v5

    if-ne v5, v8, :cond_2

    .line 623
    move-object v3, v2

    .line 624
    move v4, v1

    .line 630
    .end local v1           #i:I
    .end local v2           #menuItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    :cond_0
    const/4 v0, 0x0

    .line 631
    .local v0, defaultValue:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    if-eqz v3, :cond_1

    .line 632
    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getValueForState(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    move-result-object v0

    .line 635
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu;->getItemCount()I

    move-result v5

    sget v6, Lcom/google/glass/common/R$string;->timeline_menu_read_more:I

    invoke-virtual {p0, v0, v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/google/glass/common/R$drawable;->ic_document_medium:I

    invoke-direct {p0, v0, v7}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {p1, v4, v5, v6, v7}, Lcom/google/glass/widget/OptionMenu;->insertItem(IILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 638
    invoke-virtual {p1, v4}, Lcom/google/glass/widget/OptionMenu;->getItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/glass/widget/OptionMenu$Item;->setExtra(Ljava/lang/Object;)V

    .line 639
    return-void

    .line 620
    .end local v0           #defaultValue:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .restart local v1       #i:I
    .restart local v2       #menuItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method addReply(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 7
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"
    .parameter "timelineItem"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 347
    invoke-static {p4}, Lcom/google/glass/timeline/TimelineHelper;->failedToSyncToCompanion(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_retry:I

    invoke-virtual {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_reply_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 356
    :goto_0
    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->callHelper:Lcom/google/glass/phone/PhoneCallHelper;

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->hangoutHelper:Lcom/google/glass/util/HangoutHelper;

    invoke-static {v0, v1, v2}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getCallOrVideoCallStatusDescription(Landroid/app/Activity;Lcom/google/glass/phone/PhoneCallHelper;Lcom/google/glass/util/HangoutHelper;)Ljava/lang/String;

    move-result-object v5

    .line 352
    .local v5, description:Ljava/lang/String;
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_reply:I

    invoke-virtual {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_reply_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method addReplyAll(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 7
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 365
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->callHelper:Lcom/google/glass/phone/PhoneCallHelper;

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->hangoutHelper:Lcom/google/glass/util/HangoutHelper;

    invoke-static {v0, v1, v2}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getCallOrVideoCallStatusDescription(Landroid/app/Activity;Lcom/google/glass/phone/PhoneCallHelper;Lcom/google/glass/util/HangoutHelper;)Ljava/lang/String;

    move-result-object v5

    .line 366
    .local v5, description:Ljava/lang/String;
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_reply_all:I

    invoke-virtual {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_reply_all_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 369
    return-void
.end method

.method addSendMessage(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 7
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->callHelper:Lcom/google/glass/phone/PhoneCallHelper;

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->hangoutHelper:Lcom/google/glass/util/HangoutHelper;

    invoke-static {v0, v1, v2}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getCallOrVideoCallStatusDescription(Landroid/app/Activity;Lcom/google/glass/phone/PhoneCallHelper;Lcom/google/glass/util/HangoutHelper;)Ljava/lang/String;

    move-result-object v5

    .line 380
    .local v5, description:Ljava/lang/String;
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_send_message:I

    invoke-virtual {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_message_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 383
    return-void
.end method

.method addShowRecipients(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 7
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"
    .parameter "timelineItem"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 671
    iget-object v0, p4, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v0}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 672
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_show_recipients:I

    invoke-virtual {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_people_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 675
    :cond_0
    return-void
.end method

.method public addVolume(Lcom/google/glass/widget/OptionMenu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 643
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    .line 644
    .local v0, menuItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->setAction(I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 645
    invoke-direct {p0, p1, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addVolume(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    .line 646
    return-void
.end method

.method protected getGlassActivity()Lcom/google/glass/app/GlassActivity;
    .locals 1

    .prologue
    .line 1609
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    return-object v0
.end method

.method getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;
    .locals 1
    .parameter "value"
    .parameter "defaultResId"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 746
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 747
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 751
    :goto_0
    return-object v0

    .line 748
    :cond_0
    if-eqz p2, :cond_1

    .line 749
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v0, p2}, Lcom/google/glass/app/GlassActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 751
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method protected getUserEventHelper()Lcom/google/glass/userevent/UserEventHelper;
    .locals 1

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method

.method public handleOptionsItemSelected(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/widget/OptionMenu$Item;Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineItemDeletedListener;Ljava/lang/String;)Z
    .locals 7
    .parameter "selectedTimelineItem"
    .parameter "selectedOptionMenuItem"
    .parameter "deletedListener"
    .parameter "originLogData"

    .prologue
    const/4 v2, 0x0

    .line 768
    if-nez p1, :cond_1

    .line 820
    :cond_0
    :goto_0
    return v2

    .line 772
    :cond_1
    invoke-virtual {p2}, Lcom/google/glass/widget/OptionMenu$Item;->getExtra()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 773
    .local v1, selectedMenuItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    if-eqz v1, :cond_0

    .line 777
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getAction()I

    move-result v0

    .line 778
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 819
    :pswitch_0
    sget-object v3, Lcom/google/glass/timeline/TimelineOptionsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Action not handled: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 780
    :pswitch_1
    invoke-direct {p0, p1, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onCustom(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Z

    move-result v2

    goto :goto_0

    .line 783
    :pswitch_2
    invoke-virtual {p0, v0, p1, p4}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onShare(ILcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 785
    :pswitch_3
    invoke-direct {p0, p1, v1, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onDelete(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineItemDeletedListener;)Z

    move-result v2

    goto :goto_0

    .line 787
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onReply(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v2

    goto :goto_0

    .line 789
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onReplyAll(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v2

    goto :goto_0

    .line 791
    :pswitch_6
    invoke-virtual {p0, p1, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onSendMessage(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Z

    move-result v2

    goto :goto_0

    .line 793
    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onReadAloud(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v2

    goto :goto_0

    .line 795
    :pswitch_8
    invoke-direct {p0, p1, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onBroadcast(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Z

    move-result v2

    goto :goto_0

    .line 797
    :pswitch_9
    invoke-virtual {p0, v1, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onVoiceCall(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v2

    goto :goto_0

    .line 799
    :pswitch_a
    invoke-virtual {p0, v1, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onNavigate(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v2

    goto :goto_0

    .line 801
    :pswitch_b
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onSearch(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v2

    goto :goto_0

    .line 803
    :pswitch_c
    invoke-direct {p0, p2}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onMuteMic(Lcom/google/glass/widget/OptionMenu$Item;)Z

    move-result v2

    goto :goto_0

    .line 805
    :pswitch_d
    invoke-virtual {p0, v1, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onVideoCall(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v2

    goto :goto_0

    .line 807
    :pswitch_e
    invoke-direct {p0, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onOpenUri(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Z

    move-result v2

    goto :goto_0

    .line 809
    :pswitch_f
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onTogglePinned(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v2

    goto :goto_0

    .line 811
    :pswitch_10
    invoke-virtual {p0, v1, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onPlayVideo(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v2

    goto :goto_0

    .line 813
    :pswitch_11
    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onVolume()Z

    move-result v2

    goto :goto_0

    .line 815
    :pswitch_12
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onShowRecipients(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v2

    goto :goto_0

    .line 817
    :pswitch_13
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onGetMediaInput(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v2

    goto :goto_0

    .line 778
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_7
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_6
        :pswitch_11
        :pswitch_12
        :pswitch_2
        :pswitch_13
    .end packed-switch
.end method

.method public handlePrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 12
    .parameter "menu"
    .parameter "timelineItem"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v11, 0x0

    .line 189
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu;->clearItems()V

    .line 191
    if-nez p2, :cond_0

    .line 192
    sget-object v0, Lcom/google/glass/timeline/TimelineOptionsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "No item to populate options."

    new-array v2, v11, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    :goto_0
    return v11

    .line 197
    :cond_0
    invoke-static {p2}, Lcom/google/glass/timeline/TimelineOptionsHelper;->isBrokenMedia(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    sget-object v0, Lcom/google/glass/timeline/TimelineOptionsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Item is broken media; not adding menu options."

    new-array v2, v11, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 203
    :cond_1
    iget-object v0, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-static {v0}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 204
    iget-object v7, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .local v7, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    array-length v9, v7

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_1
    if-ge v8, v9, :cond_2

    aget-object v10, v7, v8

    .line 205
    .local v10, menuItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    invoke-direct {p0, p1, p2, v10}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    .line 204
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 212
    .end local v7           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v10           #menuItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    :cond_2
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getViewType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/google/glass/util/Labs$Feature;->PZ:Lcom/google/glass/util/Labs$Feature;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v1}, Lcom/google/glass/app/GlassActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.glass.prototype.pz"

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 216
    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    .line 217
    .local v6, zoomItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    const/4 v0, 0x7

    invoke-virtual {v6, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->setAction(I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 218
    const-string v0, "com.google.glass.prototype.pz.ACTION"

    invoke-virtual {v6, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->setBroadcastAction(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 221
    const-string v2, "Zoom"

    sget v0, Lcom/google/glass/common/R$drawable;->ic_photo_medium:I

    invoke-direct {p0, v5, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 225
    .end local v6           #zoomItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu;->getItemCount()I

    move-result v0

    if-lez v0, :cond_4

    :goto_2
    move v11, v4

    goto :goto_0

    :cond_4
    move v4, v11

    goto :goto_2
.end method

.method protected notifyOnCustomMenuSelected(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 2
    .parameter "updatedItem"
    .parameter "userAction"
    .parameter "menuItem"

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    new-instance v1, Lcom/google/glass/timeline/TimelineOptionsHelper$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/glass/timeline/TimelineOptionsHelper$3;-><init>(Lcom/google/glass/timeline/TimelineOptionsHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/TimelineHelper;->atomicUpdateTimelineItemAsync(Lcom/google/glass/timeline/TimelineHelper$Update;)V

    .line 1286
    return-void
.end method

.method public onGetMediaInput(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 4
    .parameter "timelineItem"

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->annotationHelper:Lcom/google/glass/voice/VoiceAnnotationHelper;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/voice/VoiceAnnotationHelper;->startAnnotationForResult(IZLjava/lang/String;)V

    .line 1407
    const/4 v0, 0x1

    return v0
.end method

.method public onGetMediaInputResult(ILandroid/content/Intent;)V
    .locals 5
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 1415
    const-string v1, "reply_to_id"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1417
    .local v0, replyToId:Ljava/lang/String;
    new-instance v1, Lcom/google/glass/timeline/TimelineOptionsHelper$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/glass/timeline/TimelineOptionsHelper$5;-><init>(Lcom/google/glass/timeline/TimelineOptionsHelper;ILandroid/content/Intent;)V

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->executor:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/timeline/TimelineOptionsHelper$5;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1436
    return-void
.end method

.method public onNavigate(Lcom/google/googlex/glass/common/proto/TimelineNano$Location;I)Z
    .locals 2
    .parameter "location"
    .parameter "travelMode"

    .prologue
    .line 992
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/glass/maps/NavigationLauncher;->getNavigationIntent(Lcom/google/googlex/glass/common/proto/TimelineNano$Location;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object v0

    .line 993
    .local v0, navigationIntent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 994
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v1, v0}, Lcom/google/glass/app/GlassActivity;->startActivity(Landroid/content/Intent;)V

    .line 995
    const/4 v1, 0x1

    .line 997
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onNavigate(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 5
    .parameter "menuItem"
    .parameter "selectedTimelineItem"

    .prologue
    const/4 v0, 0x0

    .line 977
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasLocation()Z

    move-result v1

    if-nez v1, :cond_0

    .line 978
    sget-object v1, Lcom/google/glass/timeline/TimelineOptionsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "No location set for timeline item %s, skipping navigation."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 984
    :goto_0
    return v0

    .line 982
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->hasTravelMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getTravelMode()I

    move-result v0

    .line 984
    .local v0, travelMode:I
    :cond_1
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getLocation()Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onNavigate(Lcom/google/googlex/glass/common/proto/TimelineNano$Location;I)Z

    move-result v0

    goto :goto_0
.end method

.method public onOpenUri(Ljava/lang/String;)Z
    .locals 6
    .parameter "uri"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 856
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 857
    sget-object v3, Lcom/google/glass/timeline/TimelineOptionsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "No uri available to open."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 871
    :goto_0
    return v2

    .line 861
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 864
    .local v1, launcherIntent:Landroid/content/Intent;
    :try_start_0
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v4, v5, v1}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 871
    goto :goto_0

    .line 865
    :catch_0
    move-exception v0

    .line 868
    .local v0, e:Landroid/content/ActivityNotFoundException;
    sget-object v4, Lcom/google/glass/timeline/TimelineOptionsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "No activity found that could open %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-interface {v4, v5, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onPlayVideo(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 5
    .parameter "selectedMenuItem"
    .parameter "selectedTimelineItem"

    .prologue
    .line 890
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getPayload()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 891
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getPayload()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onPlayVideo(Ljava/lang/String;)Z

    .line 905
    :cond_0
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 893
    :cond_1
    iget-object v2, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 894
    .local v0, attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v1

    .line 896
    .local v1, url:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 897
    invoke-virtual {p0, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onPlayVideo(Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    .line 898
    :cond_2
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->hasId()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 900
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    const-string v3, "timeline_id"

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/glass/timeline/TimelineActivityHelper;->playVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPlayVideo(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 2
    .parameter "selectedTimelineItem"

    .prologue
    .line 878
    const/16 v1, 0x11

    invoke-static {p1, v1}, Lcom/google/glass/timeline/TimelineHelper;->getFirstMenuItemWithActionOfType(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    move-result-object v0

    .line 880
    .local v0, playVideoMenuItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    invoke-virtual {p0, v0, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onPlayVideo(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v1

    return v1
.end method

.method public onPlayVideo(Ljava/lang/String;)Z
    .locals 2
    .parameter "url"

    .prologue
    .line 912
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    const-string v1, "video_url"

    invoke-static {v0, v1, p1}, Lcom/google/glass/timeline/TimelineActivityHelper;->playVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    const/4 v0, 0x1

    return v0
.end method

.method public onReadAloud(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 1
    .parameter "timelineItem"

    .prologue
    .line 1456
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onReadAloud(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)Z

    move-result v0

    return v0
.end method

.method public onReadAloud(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)Z
    .locals 6
    .parameter "timelineItem"
    .parameter "speakExtraContext"

    .prologue
    const/4 v3, 0x1

    .line 1469
    const/4 v0, 0x0

    .line 1470
    .local v0, isTranslationTts:Z
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasSendToPhoneUrl()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1471
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSendToPhoneUrl()Ljava/lang/String;

    move-result-object v2

    .line 1472
    .local v2, uriStr:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1473
    .local v1, uri:Landroid/net/Uri;
    const-string v4, "translate.google.com"

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "/translate_tts"

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v3

    .line 1475
    :goto_0
    if-eqz v0, :cond_0

    .line 1476
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    new-instance v5, Lcom/google/glass/timeline/TimelineOptionsHelper$7;

    invoke-direct {v5, p0, v2}, Lcom/google/glass/timeline/TimelineOptionsHelper$7;-><init>(Lcom/google/glass/timeline/TimelineOptionsHelper;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1491
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #uriStr:Ljava/lang/String;
    :cond_0
    if-nez v0, :cond_1

    .line 1492
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    new-instance v5, Lcom/google/glass/timeline/TimelineOptionsHelper$8;

    invoke-direct {v5, p0, p1, p2}, Lcom/google/glass/timeline/TimelineOptionsHelper$8;-><init>(Lcom/google/glass/timeline/TimelineOptionsHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1525
    :cond_1
    return v3

    .line 1473
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v2       #uriStr:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReply(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 5
    .parameter "timelineItem"

    .prologue
    const/4 v4, 0x1

    .line 1336
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->REPLY_INITIATED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/timeline/TimelineHelper;->getRedactedSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 1338
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.ACTION_SEND_VOICE_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1339
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "trigger_method"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1341
    const-string v1, "REPLY_TO_ID"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1342
    const-string v1, "should_finish_turn_screen_off"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1343
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v1, v0}, Lcom/google/glass/app/GlassActivity;->startActivity(Landroid/content/Intent;)V

    .line 1344
    return v4
.end method

.method public onReplyAll(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 5
    .parameter "timelineItem"

    .prologue
    const/4 v4, 0x1

    .line 1349
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->REPLY_ALL_INITIATED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/timeline/TimelineHelper;->getRedactedSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 1351
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.ACTION_SEND_VOICE_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1352
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "trigger_method"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1354
    const-string v1, "REPLY_TO_ID"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1355
    const-string v1, "REPLY_ALL"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1356
    const-string v1, "should_finish_turn_screen_off"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1357
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v1, v0}, Lcom/google/glass/app/GlassActivity;->startActivity(Landroid/content/Intent;)V

    .line 1358
    return v4
.end method

.method public onSearch(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 4
    .parameter "selectedTimelineItem"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 931
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "application/glass+html"

    aput-object v3, v2, v0

    invoke-static {p1, v2}, Lcom/google/glass/timeline/TimelineHelper;->hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 933
    sget-object v1, Lcom/google/glass/timeline/TimelineOptionsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Timeline item does not have a answer card HTML attachment"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 969
    :goto_0
    return v0

    .line 937
    :cond_0
    new-instance v0, Lcom/google/glass/timeline/TimelineOptionsHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper$1;-><init>(Lcom/google/glass/timeline/TimelineOptionsHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    move v0, v1

    .line 969
    goto :goto_0
.end method

.method public onSendMessage(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Z
    .locals 12
    .parameter "timelineItem"
    .parameter "menuItem"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1363
    sget-object v8, Lcom/google/glass/timeline/TimelineOptionsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Entering send message flow from timeline item."

    new-array v10, v7, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1365
    iget-object v8, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v9, Lcom/google/glass/userevent/UserEventAction;->SEND_MESSAGE_INITIATED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/glass/timeline/TimelineHelper;->getRedactedSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 1369
    iget-object v8, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v8}, Lcom/google/glass/app/GlassActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "com.google.glass.action.COMPANION_APP_CONNECTIVITY_CHANGE"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 1371
    .local v0, companionIntent:Landroid/content/Intent;
    const/4 v3, 0x0

    .line 1372
    .local v3, isCompanionConnected:Z
    if-eqz v0, :cond_0

    .line 1373
    const-string v8, "com.google.glass.extra.STATE"

    invoke-virtual {v0, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 1380
    :cond_0
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getRecipient()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 1381
    .local v1, displayName:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getRecipient()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    .line 1382
    .local v5, toId:Ljava/lang/String;
    const/4 v4, -0x1

    .line 1384
    .local v4, messageType:I
    if-eqz v3, :cond_2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1385
    const/4 v4, 0x2

    .line 1390
    :goto_0
    if-eqz v5, :cond_1

    if-nez v1, :cond_3

    .line 1391
    :cond_1
    sget-object v6, Lcom/google/glass/timeline/TimelineOptionsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Send message initiated but no contact given, bailing."

    new-array v9, v7, [Ljava/lang/Object;

    invoke-interface {v6, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v6, v7

    .line 1399
    :goto_1
    return v6

    .line 1387
    :cond_2
    const/4 v4, 0x1

    .line 1388
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getRecipient()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getEmail()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1394
    :cond_3
    sget-object v8, Lcom/google/glass/timeline/TimelineOptionsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Sending message to %s, %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v5, v10, v7

    aput-object v1, v10, v6

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1395
    const/16 v7, 0x8

    invoke-static {v7, v4, v5, v1}, Lcom/google/glass/voice/VoiceMessageHelper;->createSendMessageIntent(IILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1397
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "should_finish_turn_screen_off"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1398
    iget-object v7, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v7, v2}, Lcom/google/glass/app/GlassActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onShare(ILcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;)Z
    .locals 10
    .parameter "action"
    .parameter "selectedTimelineItem"
    .parameter "originLogData"

    .prologue
    const/16 v8, 0x15

    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 1034
    sget-object v6, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 1037
    .local v5, uri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-static {v6, v5}, Lcom/google/glass/share/ShareActivityHelper;->getBaseShareActivityIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    .line 1038
    .local v3, shareMenuIntent:Landroid/content/Intent;
    const-string v6, "item_id"

    new-instance v7, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v7, p2}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1040
    const-string v6, "update_timeline_share"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1041
    const-string v6, "animateToTimelineItem"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1047
    iget-object v4, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    .line 1048
    .local v4, sharingFeatures:[I
    if-nez v4, :cond_0

    .line 1050
    .local v0, allowVoiceAnnotation:Z
    :goto_0
    const-string v6, "voice_annotation"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1054
    const-string v6, "origin_log_data"

    invoke-virtual {v3, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1055
    const-string v6, "menuAction"

    invoke-virtual {v3, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1059
    if-ne v8, p1, :cond_1

    .line 1060
    sget-object v6, Lcom/google/glass/entity/EntitySet;->SEND_TARGETS:Lcom/google/glass/entity/EntitySet;

    invoke-virtual {v6, p2}, Lcom/google/glass/entity/EntitySet;->getEntities(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/util/List;

    move-result-object v1

    .line 1065
    .local v1, entities:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1066
    const-string v6, "valid_share_target_count"

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1067
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 1068
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "valid_share_target"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v6}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v6

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1067
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1048
    .end local v0           #allowVoiceAnnotation:Z
    .end local v1           #entities:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    .end local v2           #i:I
    :cond_0
    invoke-static {v4, v0}, Lcom/google/common/primitives/Ints;->contains([II)Z

    move-result v0

    goto :goto_0

    .line 1062
    .restart local v0       #allowVoiceAnnotation:Z
    :cond_1
    invoke-static {}, Lcom/google/glass/entity/EntityCache;->getSharedInstance()Lcom/google/glass/entity/EntityCache;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/google/glass/entity/EntityCache;->getShareTargets(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/util/List;

    move-result-object v1

    .restart local v1       #entities:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    goto :goto_1

    .line 1073
    .restart local v2       #i:I
    :cond_2
    if-ne v8, p1, :cond_3

    .line 1074
    const-string v6, "progress_string"

    iget-object v7, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    sget v8, Lcom/google/glass/common/R$string;->sharing_menu_send_confirming:I

    invoke-virtual {v7, v8}, Lcom/google/glass/app/GlassActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1076
    const-string v6, "confirmed_string"

    iget-object v7, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    sget v8, Lcom/google/glass/common/R$string;->sharing_menu_send_confirmed:I

    invoke-virtual {v7, v8}, Lcom/google/glass/app/GlassActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1081
    .end local v2           #i:I
    :cond_3
    iget-object v6, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v6, v3, v9}, Lcom/google/glass/app/GlassActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1082
    return v9
.end method

.method public onShowRecipients(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 5
    .parameter "selectedTimelineItem"

    .prologue
    const/4 v4, 0x1

    .line 1090
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/glass/share/ShareActivityHelper;->getBaseShareActivityIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 1092
    .local v1, shareMenuIntent:Landroid/content/Intent;
    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v2}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1093
    const-string v2, "valid_share_target_count"

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1095
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1096
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "valid_share_target"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1095
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1101
    .end local v0           #i:I
    :cond_0
    const-string v2, "disable_selection"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1102
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v2, v1}, Lcom/google/glass/app/GlassActivity;->startActivity(Landroid/content/Intent;)V

    .line 1103
    return v4
.end method

.method public onVideoCall(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 7
    .parameter "menuItem"
    .parameter "timelineItem"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1168
    iget-object v4, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->callHelper:Lcom/google/glass/phone/PhoneCallHelper;

    invoke-virtual {v4}, Lcom/google/glass/phone/PhoneCallHelper;->isInCall()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->hangoutHelper:Lcom/google/glass/util/HangoutHelper;

    invoke-virtual {v4}, Lcom/google/glass/util/HangoutHelper;->isInHangout()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1169
    :cond_0
    sget-object v2, Lcom/google/glass/timeline/TimelineOptionsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "In a call or hangout, not initiating a new one."

    new-array v5, v3, [Ljava/lang/Object;

    invoke-interface {v2, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1170
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v4, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v2, v4}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    move v2, v3

    .line 1207
    :goto_0
    return v2

    .line 1174
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getId()Ljava/lang/String;

    move-result-object v0

    .line 1175
    .local v0, roomOrConversationId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1176
    sget-object v4, Lcom/google/glass/timeline/TimelineOptionsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Re-joining Hangout roomOrConversationId=%s"

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1181
    :goto_1
    const/4 v1, 0x0

    .line 1182
    .local v1, target:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    sget-object v4, Lcom/google/glass/util/Labs$Feature;->MSG_GW:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v4}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1183
    sget-object v4, Lcom/google/glass/timeline/TimelineOptionsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Using conversation as share target, if it exists."

    new-array v6, v3, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1184
    invoke-static {}, Lcom/google/glass/entity/EntityCache;->getSharedInstance()Lcom/google/glass/entity/EntityCache;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/glass/entity/EntityHelper;->getEntityGuid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/glass/entity/EntityCache;->getEntityByGuid(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v1

    .line 1191
    :cond_2
    :goto_2
    if-nez v1, :cond_3

    .line 1192
    sget-object v4, Lcom/google/glass/timeline/TimelineOptionsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "No conversation entity or item creator found, using share target instead."

    new-array v6, v3, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1193
    iget-object v4, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v4}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1194
    iget-object v4, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    aget-object v1, v4, v3

    .line 1198
    :cond_3
    if-nez v1, :cond_4

    .line 1199
    sget-object v4, Lcom/google/glass/timeline/TimelineOptionsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "No share target either.  Possibly a dev using adb to directly join a room?"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1202
    :cond_4
    sget-object v4, Lcom/google/glass/util/Labs$Feature;->MSG_GW:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v4}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1203
    iget-object v4, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->hangoutHelper:Lcom/google/glass/util/HangoutHelper;

    invoke-virtual {v4, v0, v1, v3}, Lcom/google/glass/util/HangoutHelper;->joinConversation(Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Z)V

    goto :goto_0

    .line 1178
    .end local v1           #target:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_5
    sget-object v4, Lcom/google/glass/timeline/TimelineOptionsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "No room ID given, will create a new Video Call."

    new-array v6, v3, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1186
    .restart local v1       #target:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_6
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasCreator()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1187
    sget-object v4, Lcom/google/glass/timeline/TimelineOptionsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Using creator as invite target."

    new-array v6, v3, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1188
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v1

    goto :goto_2

    .line 1205
    :cond_7
    iget-object v4, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->hangoutHelper:Lcom/google/glass/util/HangoutHelper;

    invoke-virtual {v4, v0, v1, v3}, Lcom/google/glass/util/HangoutHelper;->joinHangout(Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Z)V

    goto/16 :goto_0
.end method

.method onVoiceCall(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 5
    .parameter "item"
    .parameter "timelineItem"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1113
    const/4 v1, 0x0

    .line 1116
    .local v1, phoneNumber:Ljava/lang/String;
    invoke-static {p2}, Lcom/google/glass/timeline/TimelineHelper;->isCompanionSms(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1117
    invoke-static {p2}, Lcom/google/glass/timeline/TimelineHelper;->isCompanionReceivedSms(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1119
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 1144
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onVoiceCall(Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 1120
    :cond_1
    iget-object v3, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v3, :cond_0

    iget-object v3, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1123
    iget-object v3, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1128
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getId()Ljava/lang/String;

    move-result-object v1

    .line 1129
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1130
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getRecipient()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v2

    .line 1131
    .local v2, recipient:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    if-eqz v2, :cond_3

    .line 1132
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 1136
    .end local v2           #recipient:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1138
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    .line 1139
    .local v0, creator:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    if-eqz v0, :cond_0

    .line 1140
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onVoiceCall(Ljava/lang/String;)Z
    .locals 4
    .parameter "phoneNumber"

    .prologue
    const/4 v0, 0x0

    .line 1151
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->callHelper:Lcom/google/glass/phone/PhoneCallHelper;

    invoke-virtual {v1}, Lcom/google/glass/phone/PhoneCallHelper;->isInCall()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->hangoutHelper:Lcom/google/glass/util/HangoutHelper;

    invoke-virtual {v1}, Lcom/google/glass/util/HangoutHelper;->isInHangout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1153
    :cond_0
    sget-object v1, Lcom/google/glass/timeline/TimelineOptionsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "In a call or hangout, not initiating a new one."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1154
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 1158
    :goto_0
    return v0

    .line 1157
    :cond_1
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->callHelper:Lcom/google/glass/phone/PhoneCallHelper;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v0, v1, p1}, Lcom/google/glass/phone/PhoneCallHelper;->attemptDial(Lcom/google/glass/app/GlassActivity;Ljava/lang/String;)Z

    .line 1158
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onVolume(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 3
    .parameter "selectedItem"

    .prologue
    .line 828
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu$Item;->getExtra()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 829
    .local v0, selectedMenuItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    const/16 v1, 0x13

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getAction()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 830
    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onVolume()Z

    move-result v1

    .line 832
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
