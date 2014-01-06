.class public Lcom/google/glass/util/SettingsHelper;
.super Ljava/lang/Object;
.source "SettingsHelper.java"


# static fields
.field public static final ACTION_GO_TO_SETTINGS:Ljava/lang/String; = "com.google.glass.action.ACTION_GO_TO_SETTINGS"

.field public static final BLUETOOTH_ID:I = 0x1

.field public static final DEFAULT_ID:I = 0x0

.field public static final DEVICE_INFO_ID:I = 0x2

.field public static final EXTRA_SETTINGS_ID:Ljava/lang/String; = "settings_id"

.field public static final GPS_DEBUG_ID:I = 0x6

.field public static final HEAD_WAKE_ID:I = 0x3

.field public static final LOCKSCREEN_ID:I = 0x8

.field public static final ON_HEAD_DETECTION_ID:I = 0x5

.field public static final VOLUME_ID:I = 0x7

.field public static final WIFI_ID:I = 0x0

.field public static final WINK_TO_PHOTO_ID:I = 0x4


# instance fields
.field private context:Landroid/content/Context;

.field private final idGenerator:Lcom/google/glass/util/CustomItemIdGenerator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/google/glass/util/CustomItemIdGenerator;

    const-string v1, "settings"

    invoke-direct {v0, v1}, Lcom/google/glass/util/CustomItemIdGenerator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/util/SettingsHelper;->idGenerator:Lcom/google/glass/util/CustomItemIdGenerator;

    .line 52
    iput-object p1, p0, Lcom/google/glass/util/SettingsHelper;->context:Landroid/content/Context;

    .line 53
    return-void
.end method

.method public static final getGoToSettingsRunnable(Landroid/content/Context;)Ljava/lang/Runnable;
    .locals 1
    .parameter "context"

    .prologue
    .line 43
    new-instance v0, Lcom/google/glass/util/SettingsHelper$1;

    invoke-direct {v0, p0}, Lcom/google/glass/util/SettingsHelper$1;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public createSettingsItemId(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/glass/util/SettingsHelper;->idGenerator:Lcom/google/glass/util/CustomItemIdGenerator;

    invoke-virtual {v0, p1}, Lcom/google/glass/util/CustomItemIdGenerator;->createId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goToSettings()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/util/SettingsHelper;->goToSettings(I)V

    .line 58
    return-void
.end method

.method public goToSettings(I)V
    .locals 2
    .parameter "settingsId"

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.ACTION_GO_TO_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 64
    const-string v1, "settings_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 65
    iget-object v1, p0, Lcom/google/glass/util/SettingsHelper;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 66
    return-void
.end method

.method public goToSettingsCover()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 88
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    .line 89
    .local v0, item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    invoke-virtual {p0, v3}, Lcom/google/glass/util/SettingsHelper;->createSettingsItemId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 90
    new-instance v1, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v1, v0}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 91
    .local v1, settingsCoverId:Lcom/google/glass/timeline/TimelineItemId;
    iget-object v2, p0, Lcom/google/glass/util/SettingsHelper;->context:Landroid/content/Context;

    invoke-static {v2, v1, v3}, Lcom/google/glass/timeline/TimelineActivityHelper;->goToTimeline(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;Z)V

    .line 92
    return-void
.end method

.method public idFromIntent(Landroid/content/Intent;)I
    .locals 2
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 70
    if-nez p1, :cond_0

    .line 73
    :goto_0
    return v0

    :cond_0
    const-string v1, "settings_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public isSettingsItemId(Ljava/lang/String;)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/glass/util/SettingsHelper;->idGenerator:Lcom/google/glass/util/CustomItemIdGenerator;

    invoke-virtual {v0, p1}, Lcom/google/glass/util/CustomItemIdGenerator;->isId(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
