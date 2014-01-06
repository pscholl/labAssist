.class public Lcom/google/glass/timeline/TimelineHelper;
.super Ljava/lang/Object;
.source "TimelineHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;,
        Lcom/google/glass/timeline/TimelineHelper$Update;
    }
.end annotation


# static fields
.field private static final IGNORE_INDEX:Ljava/lang/String; = "+"

.field public static final JPEG_MIME_TYPE:Ljava/lang/String; = "image/jpeg"

.field private static final MAX_DISPLAY_ITEMS:I = 0xc8

.field public static final MUSIC_METADATA_PROTO_MIME_TYPE:Ljava/lang/String; = "proto/glass+music"

.field public static final NON_DATABASE_ITEM_ID_PREFIX:Ljava/lang/String; = "com.google.glass.non-database-item-id-prefix"

.field public static final PHONE_CALL_PROTO_MIME_TYPE:Ljava/lang/String; = "application/vnd.google-glass.phone-call-proto"

.field public static final SEARCH_HTML_MIME_TYPE:Ljava/lang/String; = "application/glass+html"

.field public static final SEARCH_PROTO_MIME_TYPE:Ljava/lang/String; = "proto/search"

.field public static final SOUND_SEARCH_PROTO_MIME_TYPE:Ljava/lang/String; = "proto/sound-search"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final SOURCE_REDACTED:Ljava/lang/String; = "***"

.field private static final SPEAKABLE_TEXT_DISPLAY_TIME_PATTERN:Ljava/util/regex/Pattern; = null

.field static final SPEAKABLE_TEXT_MAX_LENGTH:I = 0xf9f
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final SPEAKABLE_TEXT_TIME_FORMAT:Ljava/text/SimpleDateFormat; = null

.field public static final STREAM_URL_CONTENT_TYPE:Ljava/lang/String; = "video/vnd.google-glass.stream-url"

.field public static final SUPPORTED_IMAGE_MIME_TYPES:[Ljava/lang/String;

.field public static final SUPPORTED_MEDIA_MIME_TYPES:[Ljava/lang/String;

.field public static final SUPPORTED_VIDEO_MIME_TYPES:[Ljava/lang/String;

.field private static final UPDATE_LOCK:Ljava/lang/Object;

.field private static locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

.field private static final locationManagerHelperLock:Ljava/lang/Object;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final clock:Lcom/google/glass/util/Clock;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 85
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 112
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/glass/timeline/TimelineHelper;->UPDATE_LOCK:Ljava/lang/Object;

    .line 126
    const-string v0, "$DISPLAY_TIME"

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineHelper;->SPEAKABLE_TEXT_DISPLAY_TIME_PATTERN:Ljava/util/regex/Pattern;

    .line 130
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "h:mm a"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/timeline/TimelineHelper;->SPEAKABLE_TEXT_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    .line 146
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "image/jpeg"

    aput-object v1, v0, v2

    const-string v1, "image/png"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/glass/timeline/TimelineHelper;->SUPPORTED_IMAGE_MIME_TYPES:[Ljava/lang/String;

    .line 149
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "video/mp4"

    aput-object v1, v0, v2

    const-string v1, "video/vnd.google-glass.stream-url"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/glass/timeline/TimelineHelper;->SUPPORTED_VIDEO_MIME_TYPES:[Ljava/lang/String;

    .line 155
    invoke-static {}, Lcom/google/glass/timeline/TimelineHelper;->combineSupportedTypes()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineHelper;->SUPPORTED_MEDIA_MIME_TYPES:[Ljava/lang/String;

    .line 2076
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/glass/timeline/TimelineHelper;->locationManagerHelperLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 165
    invoke-static {}, Lcom/google/glass/util/ClockProvider;->get()Lcom/google/glass/util/Clock;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/timeline/TimelineHelper;-><init>(Lcom/google/glass/util/Clock;)V

    .line 166
    return-void
.end method

.method constructor <init>(Lcom/google/glass/util/Clock;)V
    .locals 0
    .parameter "clock"

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineHelper;->clock:Lcom/google/glass/util/Clock;

    .line 170
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public static addAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)V
    .locals 3
    .parameter "item"
    .parameter "attachment"

    .prologue
    const/4 v2, 0x0

    .line 2414
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    if-nez v1, :cond_0

    .line 2415
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    aput-object p1, v1, v2

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 2421
    :goto_0
    return-void

    .line 2417
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2418
    .local v0, attachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2419
    new-array v1, v2, [Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    goto :goto_0
.end method

.method public static addAttachments(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/util/List;)V
    .locals 3
    .parameter "item"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, attachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;>;"
    const/4 v2, 0x0

    .line 2424
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    if-nez v1, :cond_0

    .line 2425
    new-array v1, v2, [Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 2431
    :goto_0
    return-void

    .line 2427
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2428
    .local v0, allAttachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2429
    new-array v1, v2, [Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    goto :goto_0
.end method

.method private static addEntityContentValues(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;ILandroid/content/ContentValues;Ljava/util/List;)V
    .locals 8
    .parameter "entity"
    .parameter "type"
    .parameter "baseValue"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            "I",
            "Landroid/content/ContentValues;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 922
    .local p3, values:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-static {p0}, Lcom/google/glass/entity/EntityHelper;->getIds(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)[Ljava/lang/String;

    move-result-object v3

    .line 923
    .local v3, ids:[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 924
    invoke-static {p0}, Lcom/google/glass/entity/EntityHelper;->getIds(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v2, v0, v1

    .line 925
    .local v2, id:Ljava/lang/String;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 926
    .local v5, value:Landroid/content/ContentValues;
    const-string v6, "entityType"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 927
    const-string v6, "entityId"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    invoke-interface {p3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 924
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 931
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #id:Ljava/lang/String;
    .end local v4           #len$:I
    .end local v5           #value:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private static addEntityContentValues([Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;ILandroid/content/ContentValues;Ljava/util/List;)V
    .locals 4
    .parameter "entities"
    .parameter "type"
    .parameter "baseValue"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            "I",
            "Landroid/content/ContentValues;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 907
    .local p3, values:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    move-object v0, p0

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 908
    .local v1, entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-static {v1, p1, p2, p3}, Lcom/google/glass/timeline/TimelineHelper;->addEntityContentValues(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;ILandroid/content/ContentValues;Ljava/util/List;)V

    .line 907
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 910
    .end local v1           #entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_0
    return-void
.end method

.method public static addLinkSpec(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;)V
    .locals 3
    .parameter "item"
    .parameter "spec"

    .prologue
    const/4 v2, 0x0

    .line 2460
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    if-nez v1, :cond_0

    .line 2461
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    aput-object p1, v1, v2

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .line 2467
    :goto_0
    return-void

    .line 2463
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2464
    .local v0, linkSpecs:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2465
    new-array v1, v2, [Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    goto :goto_0
.end method

.method public static addMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V
    .locals 1
    .parameter "item"
    .parameter "action"

    .prologue
    .line 2434
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    .line 2435
    .local v0, menuItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->setAction(I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 2436
    invoke-static {p0, v0}, Lcom/google/glass/timeline/TimelineHelper;->addMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    .line 2437
    return-void
.end method

.method public static addMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 3
    .parameter "item"
    .parameter "menuItem"

    .prologue
    const/4 v2, 0x0

    .line 2440
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-nez v1, :cond_0

    .line 2441
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    aput-object p1, v1, v2

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 2447
    :goto_0
    return-void

    .line 2443
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2444
    .local v0, menuItems:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2445
    new-array v1, v2, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    goto :goto_0
.end method

.method public static addMenuItems(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/util/List;)V
    .locals 3
    .parameter "item"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, menuItems:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;>;"
    const/4 v2, 0x0

    .line 2450
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-nez v1, :cond_0

    .line 2451
    new-array v1, v2, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 2457
    :goto_0
    return-void

    .line 2453
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2454
    .local v0, allMenuItems:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2455
    new-array v1, v2, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    goto :goto_0
.end method

.method public static addShareTarget(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
    .locals 3
    .parameter "item"
    .parameter "shareTarget"

    .prologue
    const/4 v2, 0x0

    .line 2404
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v1, :cond_0

    .line 2405
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    aput-object p1, v1, v2

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 2411
    :goto_0
    return-void

    .line 2407
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2408
    .local v0, shareTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2409
    new-array v1, v2, [Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    goto :goto_0
.end method

.method public static addSharingFeature(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V
    .locals 4
    .parameter "item"
    .parameter "sharingFeature"

    .prologue
    .line 2470
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    if-nez v2, :cond_0

    .line 2471
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    .line 2481
    :goto_0
    return-void

    .line 2474
    :cond_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [I

    .line 2475
    .local v1, sharingFeatures:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 2476
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 2475
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2478
    :cond_1
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aput p1, v1, v2

    .line 2479
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    goto :goto_0
.end method

.method public static varargs binarySearch(Ljava/lang/String;JLandroid/database/Cursor;Z[I)I
    .locals 20
    .parameter "targetId"
    .parameter "targetDisplayTime"
    .parameter "cursor"
    .parameter "descDisplayTime"
    .parameter "hintIndices"

    .prologue
    .line 1611
    if-eqz p0, :cond_0

    if-nez p3, :cond_2

    .line 1612
    :cond_0
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Cannot search for target: %s, cursor: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object p0, v3, v18

    const/16 v18, 0x1

    aput-object p3, v3, v18

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1613
    const/4 v12, -0x1

    .line 1696
    :cond_1
    :goto_0
    return v12

    .line 1615
    :cond_2
    const/16 v17, 0x0

    .line 1616
    .local v17, startIndex:I
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/lit8 v9, v1, -0x1

    .line 1618
    .local v9, endIndex:I
    const-string v1, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 1619
    .local v11, idColumnIndex:I
    const-string v1, "display_time"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1620
    .local v8, displayTimeColumnIndex:I
    const-string v1, "is_deleted"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 1622
    .local v14, isDeletedColumnIndex:I
    move-object/from16 v7, p5

    .local v7, arr$:[I
    array-length v15, v7

    .local v15, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_1
    if-ge v10, v15, :cond_a

    aget v12, v7, v10

    .line 1624
    .local v12, index:I
    if-ltz v12, :cond_7

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v12, v1, :cond_7

    .line 1627
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1628
    :cond_3
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Could not move cursor to position %d."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v18, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v3, v18

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1629
    const/4 v12, -0x1

    goto :goto_0

    .line 1633
    :cond_4
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1634
    .local v4, id:Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .local v5, displayTime:J
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    .line 1636
    invoke-static/range {v1 .. v6}, Lcom/google/glass/timeline/TimelineHelper;->compare(Ljava/lang/String;JLjava/lang/String;J)I

    move-result v16

    .line 1639
    .local v16, result:I
    if-nez p4, :cond_5

    .line 1640
    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    .line 1643
    :cond_5
    if-nez v16, :cond_6

    .line 1644
    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1645
    .local v13, isDeleted:I
    if-eqz v13, :cond_1

    .line 1648
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Found item, but it is deleted. Ignoring the item."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1649
    const/4 v12, -0x1

    goto/16 :goto_0

    .line 1652
    .end local v13           #isDeleted:I
    :cond_6
    if-gez v16, :cond_8

    .line 1653
    add-int/lit8 v1, v12, 0x1

    move/from16 v0, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 1622
    .end local v4           #id:Ljava/lang/String;
    .end local v5           #displayTime:J
    .end local v16           #result:I
    :cond_7
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1655
    .restart local v4       #id:Ljava/lang/String;
    .restart local v5       #displayTime:J
    .restart local v16       #result:I
    :cond_8
    add-int/lit8 v1, v12, -0x1

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto :goto_2

    .line 1689
    :cond_9
    if-gez v16, :cond_e

    .line 1690
    add-int/lit8 v17, v12, 0x1

    .line 1660
    .end local v4           #id:Ljava/lang/String;
    .end local v5           #displayTime:J
    .end local v12           #index:I
    .end local v16           #result:I
    :cond_a
    :goto_3
    move/from16 v0, v17

    if-gt v0, v9, :cond_f

    .line 1661
    add-int v1, v17, v9

    shr-int/lit8 v12, v1, 0x1

    .line 1664
    .restart local v12       #index:I
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_b

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1665
    :cond_b
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Could not move cursor to position %d."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v18, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v3, v18

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1666
    const/4 v12, -0x1

    goto/16 :goto_0

    .line 1670
    :cond_c
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1671
    .restart local v4       #id:Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .restart local v5       #displayTime:J
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    .line 1673
    invoke-static/range {v1 .. v6}, Lcom/google/glass/timeline/TimelineHelper;->compare(Ljava/lang/String;JLjava/lang/String;J)I

    move-result v16

    .line 1676
    .restart local v16       #result:I
    if-nez p4, :cond_d

    .line 1677
    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    .line 1680
    :cond_d
    if-nez v16, :cond_9

    .line 1681
    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1682
    .restart local v13       #isDeleted:I
    if-eqz v13, :cond_1

    .line 1685
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Found item, but it is deleted. Ignoring the item."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1686
    const/4 v12, -0x1

    goto/16 :goto_0

    .line 1692
    .end local v13           #isDeleted:I
    :cond_e
    add-int/lit8 v9, v12, -0x1

    goto :goto_3

    .line 1696
    .end local v4           #id:Ljava/lang/String;
    .end local v5           #displayTime:J
    .end local v12           #index:I
    .end local v16           #result:I
    :cond_f
    const/4 v12, -0x1

    goto/16 :goto_0
.end method

.method public static canSyncToCompanion(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 1831
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasCompanionSyncProtocol()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCompanionSyncProtocol()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static clone(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 4
    .parameter "original"

    .prologue
    .line 2389
    if-eqz p0, :cond_0

    .line 2391
    :try_start_0
    invoke-static {p0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2400
    :goto_0
    return-object v1

    .line 2392
    :catch_0
    move-exception v0

    .line 2395
    .local v0, e:Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Couldn\'t clone timeline item"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2396
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t clone timeline item"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2400
    .end local v0           #e:Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static combineSupportedTypes()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 2355
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2356
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->SUPPORTED_IMAGE_MIME_TYPES:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2357
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->SUPPORTED_VIDEO_MIME_TYPES:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2358
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private static compare(Ljava/lang/String;JLjava/lang/String;J)I
    .locals 2
    .parameter "targetId"
    .parameter "targetDisplayTime"
    .parameter "id"
    .parameter "displayTime"

    .prologue
    .line 1580
    invoke-virtual {p0, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 1581
    .local v0, result:I
    if-nez v0, :cond_1

    .line 1582
    const/4 v0, 0x0

    .line 1592
    .end local v0           #result:I
    :cond_0
    :goto_0
    return v0

    .line 1585
    .restart local v0       #result:I
    :cond_1
    cmp-long v1, p1, p4

    if-gez v1, :cond_2

    .line 1586
    const/4 v0, -0x1

    goto :goto_0

    .line 1588
    :cond_2
    cmp-long v1, p1, p4

    if-lez v1, :cond_0

    .line 1589
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static createItemLoaderForBundleTimeline(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZZ)Landroid/content/CursorLoader;
    .locals 9
    .parameter "context"
    .parameter "itemId"
    .parameter "bundleId"
    .parameter "maxItemTimestamp"
    .parameter "descDisplayTime"
    .parameter "pinned"

    .prologue
    .line 1076
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 1081
    .local v7, maxItemTimestampString:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1082
    .local v8, select:Ljava/lang/StringBuilder;
    const-string v0, "+is_deleted=0"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1084
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pin_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p6, :cond_1

    const-string v0, "<>"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    const-string v0, "bundle_cover_status!=1"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1091
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1092
    const-string v0, "_id==?"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const/4 v0, 0x1

    aput-object v7, v5, v0

    .line 1113
    .local v5, selectArgs:[Ljava/lang/String;
    :goto_1
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
    const-string v0, "+delivery_time<=?"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1118
    const-string v6, ""

    .line 1119
    .local v6, orderBy:Ljava/lang/String;
    if-eqz p6, :cond_0

    .line 1120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pin_score DESC, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pin_time, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1123
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "display_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p5, :cond_3

    const-string v0, " DESC "

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1127
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1084
    .end local v5           #selectArgs:[Ljava/lang/String;
    .end local v6           #orderBy:Ljava/lang/String;
    :cond_1
    const-string v0, "=="

    goto/16 :goto_0

    .line 1100
    :cond_2
    const-string v0, "("

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    const-string v0, "_id==?"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    const-string v0, " OR "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    const-string v0, "+bundle_id==?"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const/4 v0, 0x1

    invoke-static {p2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v7, v5, v0

    .restart local v5       #selectArgs:[Ljava/lang/String;
    goto/16 :goto_1

    .line 1123
    .restart local v6       #orderBy:Ljava/lang/String;
    :cond_3
    const-string v0, " "

    goto :goto_2
.end method

.method public static createItemLoaderForSingleItem(Landroid/content/Context;Ljava/lang/String;)Landroid/content/CursorLoader;
    .locals 8
    .parameter "context"
    .parameter "itemId"

    .prologue
    const/4 v3, 0x0

    .line 1133
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1134
    .local v7, select:Ljava/lang/StringBuilder;
    const-string v0, "+is_deleted=0"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    const-string v0, " AND "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    const-string v0, "_id==?"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v5, v1

    move-object v1, p0

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createItemLoaderForTimeline(Landroid/content/Context;JZZLcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Landroid/content/CursorLoader;
    .locals 10
    .parameter "context"
    .parameter "maxItemTimestamp"
    .parameter "pinned"
    .parameter "descDisplayTime"
    .parameter "entityFilter"

    .prologue
    .line 1002
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1003
    .local v9, select:Ljava/lang/StringBuilder;
    const-string v0, "+is_deleted=0"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    const-string v0, " AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+pin_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p3, :cond_1

    const-string v0, "<>"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    const-string v0, " AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    const-string v0, "+delivery_time<=?"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    const-string v0, " AND ("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    const-string v0, "bundle_cover_status!=0"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    const-string v0, " OR "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1013
    const-string v0, "bundle_id=\"\""

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    const-string v0, ")"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    if-eqz p5, :cond_3

    .line 1017
    invoke-static {p5}, Lcom/google/glass/entity/EntityHelper;->getIds(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)[Ljava/lang/String;

    move-result-object v8

    .line 1018
    .local v8, ids:[Ljava/lang/String;
    if-eqz v8, :cond_3

    array-length v0, v8

    if-eqz v0, :cond_3

    .line 1019
    const-string v0, " AND ("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    const-string v0, "_id IN (SELECT timelineId FROM entity WHERE entityId IN ("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    array-length v0, v8

    if-ge v7, v0, :cond_2

    .line 1024
    const/16 v0, 0x3f

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1025
    array-length v0, v8

    add-int/lit8 v0, v0, -0x1

    if-ge v7, v0, :cond_0

    .line 1026
    const/16 v0, 0x2c

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1023
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1005
    .end local v7           #i:I
    .end local v8           #ids:[Ljava/lang/String;
    :cond_1
    const-string v0, "="

    goto :goto_0

    .line 1029
    .restart local v7       #i:I
    .restart local v8       #ids:[Ljava/lang/String;
    :cond_2
    const-string v0, ")))"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    .end local v7           #i:I
    .end local v8           #ids:[Ljava/lang/String;
    :cond_3
    const-string v6, ""

    .line 1035
    .local v6, orderBy:Ljava/lang/String;
    if-eqz p3, :cond_4

    .line 1036
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pin_score, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pin_time, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1039
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "display_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p4, :cond_5

    const-string v0, " DESC "

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1042
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, p2, p5}, Lcom/google/glass/timeline/TimelineHelper;->getItemLoaderSelectArgs(JLcom/google/googlex/glass/common/proto/TimelineNano$Entity;)[Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1039
    :cond_5
    const-string v0, " "

    goto :goto_2
.end method

.method public static createTimelineItem(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;Lcom/google/glass/util/SettingsSecure;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 6
    .parameter "context"
    .parameter "sourceType"
    .parameter "sourcePrefix"
    .parameter "settingsSecure"

    .prologue
    .line 225
    invoke-static {}, Lcom/google/glass/timeline/TimelineHelper;->generateUniqueId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/glass/timeline/TimelineHelper;->createTimelineItem(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;Lcom/google/glass/util/SettingsSecure;Ljava/lang/String;Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method public static createTimelineItem(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;Lcom/google/glass/util/SettingsSecure;Ljava/lang/String;Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 6
    .parameter "context"
    .parameter "sourceType"
    .parameter "sourcePrefix"
    .parameter "settingsSecure"
    .parameter "id"
    .parameter "populateLocation"

    .prologue
    .line 263
    const-string v5, "android_id"

    invoke-virtual {p3, v5}, Lcom/google/glass/util/SettingsSecure;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, deviceId:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 265
    .local v4, source:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 267
    .local v0, currentTime:J
    new-instance v3, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    .line 268
    .local v3, item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    if-eqz p5, :cond_0

    .line 269
    invoke-static {p0, v4, v3}, Lcom/google/glass/timeline/TimelineHelper;->populateLocation(Landroid/content/Context;Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 271
    :cond_0
    invoke-virtual {v3, p4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 272
    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 273
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setSourceType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 274
    invoke-virtual {v3, v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCreationTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 275
    invoke-virtual {v3, v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setModifiedTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 276
    invoke-virtual {v3, v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setDisplayTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 277
    return-object v3
.end method

.method public static deleteAll(Landroid/content/ContentResolver;)I
    .locals 2
    .parameter "resolver"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1529
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 1530
    sget-object v0, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static failedToSyncToCompanion(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 1900
    invoke-static {p0}, Lcom/google/glass/timeline/TimelineHelper;->canSyncToCompanion(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCompanionSyncStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static formatAndSpeakText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 6
    .parameter "context"
    .parameter "text"
    .parameter "lang"
    .parameter "displayTime"

    .prologue
    const/4 v5, 0x0

    .line 2054
    invoke-static {p0, p1, p3, v5}, Lcom/google/glass/timeline/TimelineHelper;->formatSpeakableText(Landroid/content/Context;Ljava/lang/String;Ljava/util/Date;Z)Ljava/lang/String;

    move-result-object v0

    .line 2055
    .local v0, formattedTts:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2074
    :cond_0
    :goto_0
    return-void

    .line 2060
    :cond_1
    if-eqz p2, :cond_2

    const-string v2, "en"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "en-us"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2061
    :cond_2
    invoke-static {p0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/app/GlassApplication;->getTtsHelper()Lcom/google/glass/util/TtsHelper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/glass/util/TtsHelper;->speakText(Ljava/lang/String;)V

    goto :goto_0

    .line 2063
    :cond_3
    sget-object v2, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Using network to read \'%s\' in \'%s\'"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2064
    invoke-static {p1, p2}, Lcom/google/glass/voice/network/translate/NetworkTts;->getNetworkTtsUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2065
    .local v1, networkUri:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2066
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/glass/timeline/TimelineHelper$6;

    invoke-direct {v3, p0, v1}, Lcom/google/glass/timeline/TimelineHelper$6;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static formatAndSpeakText(Landroid/content/Context;Ljava/lang/String;Ljava/util/Date;)V
    .locals 2
    .parameter "context"
    .parameter "text"
    .parameter "displayTime"

    .prologue
    .line 2042
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1}, Lcom/google/glass/timeline/TimelineHelper;->formatSpeakableText(Landroid/content/Context;Ljava/lang/String;Ljava/util/Date;Z)Ljava/lang/String;

    move-result-object v0

    .line 2043
    .local v0, formattedTts:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2044
    invoke-static {p0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/app/GlassApplication;->getTtsHelper()Lcom/google/glass/util/TtsHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/glass/util/TtsHelper;->speakText(Ljava/lang/String;)V

    .line 2046
    :cond_0
    return-void
.end method

.method public static formatSpeakableText(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "item"

    .prologue
    .line 2009
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 2011
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/glass/timeline/TimelineHelper;->formatSpeakableText(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatSpeakableText(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "item"
    .parameter "speakExtraContext"

    .prologue
    .line 2026
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 2028
    if-nez p1, :cond_0

    .line 2029
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Cannot format speakable text for null timeline item"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2030
    const/4 v1, 0x0

    .line 2034
    :goto_0
    return-object v1

    .line 2033
    :cond_0
    new-instance v1, Lcom/google/glass/timeline/SpeakableText;

    invoke-direct {v1, p0}, Lcom/google/glass/timeline/SpeakableText;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1, p2}, Lcom/google/glass/timeline/SpeakableText;->getSpeakableText(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)Ljava/lang/String;

    move-result-object v0

    .line 2034
    .local v0, text:Ljava/lang/String;
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getDisplayTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {p0, v0, v1, p2}, Lcom/google/glass/timeline/TimelineHelper;->formatSpeakableText(Landroid/content/Context;Ljava/lang/String;Ljava/util/Date;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected static formatSpeakableText(Landroid/content/Context;Ljava/lang/String;Ljava/util/Date;Z)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "text"
    .parameter "displayTime"
    .parameter "speakExtraContext"

    .prologue
    const/16 v5, 0xf9f

    const/4 v4, 0x0

    .line 1931
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1934
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/common/R$string;->speakable_text_fallback:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1935
    sget-object v2, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Request to format speakable text had no text to format"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, p1

    .line 1978
    :goto_0
    return-object v2

    .line 1940
    :cond_1
    sget-object v2, Lcom/google/glass/timeline/TimelineHelper;->SPEAKABLE_TEXT_DISPLAY_TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1941
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1942
    sget-object v2, Lcom/google/glass/timeline/TimelineHelper;->SPEAKABLE_TEXT_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1943
    .local v1, time:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1952
    .end local v1           #time:Ljava/lang/String;
    :cond_2
    const-string v2, "[\\[\\]]"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1962
    const-string v2, "\\(Play voice recording\\)"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1963
    const-string v2, "Sent from my Glass"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1966
    sget-object v2, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1967
    :goto_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1968
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/timeline/TimelineHelper;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1973
    :cond_3
    const-string v2, "throughglass"

    const-string v3, "through glass"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1975
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_4

    .line 1976
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    move-object v2, p1

    .line 1978
    goto :goto_0
.end method

.method public static fromContentValues(Landroid/content/ContentValues;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2
    .parameter "values"

    .prologue
    .line 938
    const-string v1, "protobuf_blob"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 940
    .local v0, protoByteArray:[B
    if-nez v0, :cond_0

    .line 941
    const/4 v1, 0x0

    .line 944
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineHelper;->fromProtoByteArray([B)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    goto :goto_0
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 951
    invoke-static {p0}, Lcom/google/glass/timeline/TimelineHelper;->getProtobufBlob(Landroid/database/Cursor;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/timeline/TimelineHelper;->fromProtoByteArray([B)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method private static fromProtoByteArray([B)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 5
    .parameter "data"

    .prologue
    .line 1809
    :try_start_0
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1815
    :goto_0
    return-object v1

    .line 1810
    :catch_0
    move-exception v0

    .line 1811
    .local v0, e:Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    sget-object v2, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Error deserializing protobuf"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1812
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static generateSourceString(Lcom/google/glass/util/SettingsSecure;)Ljava/lang/String;
    .locals 3
    .parameter "settingsSecure"

    .prologue
    .line 245
    const-string v1, "android_id"

    invoke-virtual {p0, v1}, Lcom/google/glass/util/SettingsSecure;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, deviceId:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static generateUniqueId()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 236
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAttachmentOfType(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 4
    .parameter "item"
    .parameter "contentType"

    .prologue
    .line 2207
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v3}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2208
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    array-length v2, v3

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2209
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    aget-object v0, v3, v1

    .line 2210
    .local v0, attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2215
    .end local v0           #attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .end local v1           #i:I
    .end local v2           #n:I
    :goto_1
    return-object v0

    .line 2208
    .restart local v0       #attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .restart local v1       #i:I
    .restart local v2       #n:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2215
    .end local v0           #attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .end local v1           #i:I
    .end local v2           #n:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static varargs getAttachmentsOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .parameter "item"
    .parameter "contentTypes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2284
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2285
    .local v1, attachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;>;"
    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v7}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 2286
    const/4 v3, 0x0

    .local v3, i:I
    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    array-length v5, v7

    .local v5, n:I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 2287
    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    aget-object v0, v7, v3

    .line 2288
    .local v0, attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    const/4 v4, 0x0

    .local v4, ii:I
    array-length v6, p1

    .local v6, nn:I
    :goto_1
    if-ge v4, v6, :cond_1

    .line 2289
    aget-object v2, p1, v4

    .line 2290
    .local v2, contentType:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2291
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2288
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2286
    .end local v2           #contentType:Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2296
    .end local v0           #attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .end local v3           #i:I
    .end local v4           #ii:I
    .end local v5           #n:I
    .end local v6           #nn:I
    :cond_2
    return-object v1
.end method

.method public static getBundleCover(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/util/Pair;
    .locals 11
    .parameter "resolver"
    .parameter "bundleId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 1144
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 1147
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1148
    .local v8, select:Ljava/lang/StringBuilder;
    const-string v0, "is_deleted==0"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    const-string v0, "bundle_id==?"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1151
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    const-string v0, "bundle_cover_status!=0"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1160
    .local v4, selectArgs:[Ljava/lang/String;
    const-string v5, "display_time DESC"

    .line 1163
    .local v5, orderBy:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1165
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1167
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1168
    invoke-static {v7}, Lcom/google/glass/timeline/TimelineHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v6

    .line 1169
    .local v6, cover:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    const-string v0, "bundle_cover_status"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 1170
    .local v9, status:Ljava/lang/Integer;
    if-eqz v6, :cond_0

    if-nez v9, :cond_3

    .line 1176
    :cond_0
    if-eqz v7, :cond_1

    .line 1177
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v10

    .line 1180
    .end local v6           #cover:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v9           #status:Ljava/lang/Integer;
    :cond_2
    :goto_0
    return-object v0

    .line 1173
    .restart local v6       #cover:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .restart local v9       #status:Ljava/lang/Integer;
    :cond_3
    :try_start_1
    invoke-static {v6, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 1176
    if-eqz v7, :cond_2

    .line 1177
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1176
    .end local v6           #cover:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v9           #status:Ljava/lang/Integer;
    :cond_4
    if-eqz v7, :cond_5

    .line 1177
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, v10

    .line 1180
    goto :goto_0

    .line 1176
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_6

    .line 1177
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public static getBundleCoverStatus(Landroid/database/Cursor;)I
    .locals 1
    .parameter "cursor"

    .prologue
    .line 975
    const-string v0, "bundle_cover_status"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public static getDeliveryTime(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J
    .locals 3
    .parameter "item"

    .prologue
    const-wide/16 v0, 0x0

    .line 1538
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasNotification()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1544
    :cond_0
    :goto_0
    return-wide v0

    .line 1541
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getNotification()Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->hasDeliveryTime()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1544
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getNotification()Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->getDeliveryTime()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getDisplayTime(Landroid/database/Cursor;)J
    .locals 2
    .parameter "cursor"

    .prologue
    .line 1552
    if-nez p0, :cond_0

    .line 1553
    const-wide/16 v0, 0x0

    .line 1555
    :goto_0
    return-wide v0

    :cond_0
    const-string v0, "display_time"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getDisplayTime(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J
    .locals 2
    .parameter "item"

    .prologue
    .line 1563
    if-nez p0, :cond_0

    .line 1564
    const-wide/16 v0, 0x0

    .line 1566
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasDisplayTime()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getDisplayTime()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getModifiedTime()J

    move-result-wide v0

    goto :goto_0
.end method

.method private static getDomainName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "url"

    .prologue
    .line 1986
    sget-object v3, Landroid/util/Patterns;->DOMAIN_NAME:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1987
    .local v1, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1988
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 1989
    .local v0, domain:Ljava/lang/String;
    const-string v3, "\\b(?:www\\.)"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1991
    .local v2, wwwMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1992
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1996
    .end local v0           #domain:Ljava/lang/String;
    .end local v2           #wwwMatcher:Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method public static getFirstMenuItemWithActionOfType(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .locals 4
    .parameter "item"
    .parameter "menuItemAction"

    .prologue
    .line 2250
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-static {v3}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2251
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v2, v3

    .local v2, n:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 2252
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    aget-object v1, v3, v0

    .line 2253
    .local v1, menuItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getAction()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 2259
    .end local v0           #i:I
    .end local v1           #menuItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .end local v2           #n:I
    :goto_1
    return-object v1

    .line 2251
    .restart local v0       #i:I
    .restart local v1       #menuItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .restart local v2       #n:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2259
    .end local v0           #i:I
    .end local v1           #menuItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .end local v2           #n:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getFromIntent(Landroid/content/Intent;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 7
    .parameter "intent"
    .parameter "key"

    .prologue
    .line 2485
    invoke-virtual {p0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2487
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 2488
    .local v0, bytes:[B
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 2489
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2496
    .end local v0           #bytes:[B
    :goto_0
    return-object v2

    .line 2491
    :catch_0
    move-exception v1

    .line 2492
    .local v1, e:Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    sget-object v2, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Unable to parse timeline item from intent %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2496
    .end local v1           #e:Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getItemLoaderSelectArgs(JLcom/google/googlex/glass/common/proto/TimelineNano$Entity;)[Ljava/lang/String;
    .locals 3
    .parameter "maxItemTimestamp"
    .parameter "entityFilter"

    .prologue
    .line 1051
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1052
    .local v0, args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1054
    if-eqz p2, :cond_0

    .line 1055
    invoke-static {p2}, Lcom/google/glass/entity/EntityHelper;->getIds(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)[Ljava/lang/String;

    move-result-object v1

    .line 1056
    .local v1, ids:[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-eqz v2, :cond_0

    .line 1057
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1060
    .end local v1           #ids:[Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method public static getLocalTimelineItemSource(Lcom/google/glass/util/SettingsSecure;)Ljava/lang/String;
    .locals 3
    .parameter "settingsSecure"

    .prologue
    .line 282
    const-string v1, "device:"

    .line 283
    .local v1, prefix:Ljava/lang/String;
    const-string v2, "android_id"

    invoke-virtual {p0, v2}, Lcom/google/glass/util/SettingsSecure;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, deviceId:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getLocationManagerHelper(Landroid/content/Context;)Lcom/google/glass/location/LocationManagerHelper;
    .locals 5
    .parameter "context"

    .prologue
    .line 2080
    sget-object v3, Lcom/google/glass/timeline/TimelineHelper;->locationManagerHelperLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2081
    :try_start_0
    sget-object v2, Lcom/google/glass/timeline/TimelineHelper;->locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

    if-eqz v2, :cond_0

    .line 2082
    sget-object v2, Lcom/google/glass/timeline/TimelineHelper;->locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

    monitor-exit v3

    .line 2090
    :goto_0
    return-object v2

    .line 2085
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "location"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 2087
    .local v0, locationManager:Landroid/location/LocationManager;
    new-instance v1, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v1, p0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    .line 2088
    .local v1, userEventHelper:Lcom/google/glass/userevent/UserEventHelper;
    new-instance v2, Lcom/google/glass/location/LocationManagerHelper;

    invoke-static {}, Lcom/google/glass/util/ClockProvider;->get()Lcom/google/glass/util/Clock;

    move-result-object v4

    invoke-direct {v2, v0, v1, v4}, Lcom/google/glass/location/LocationManagerHelper;-><init>(Landroid/location/LocationManager;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/util/Clock;)V

    sput-object v2, Lcom/google/glass/timeline/TimelineHelper;->locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

    .line 2090
    sget-object v2, Lcom/google/glass/timeline/TimelineHelper;->locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

    monitor-exit v3

    goto :goto_0

    .line 2091
    .end local v0           #locationManager:Landroid/location/LocationManager;
    .end local v1           #userEventHelper:Lcom/google/glass/userevent/UserEventHelper;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static getPinTime(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J
    .locals 2
    .parameter "item"

    .prologue
    .line 868
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsPinned()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getPinTime()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static getProtobufBlob(Landroid/database/Cursor;)[B
    .locals 1
    .parameter "cursor"

    .prologue
    .line 958
    const-string v0, "protobuf_blob"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public static getRedactedSource(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "rawSource"

    .prologue
    .line 293
    if-nez p0, :cond_1

    .line 294
    const/4 p0, 0x0

    .line 305
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 297
    .restart local p0
    :cond_1
    const-string v0, "device:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 298
    const-string p0, "device:***"

    goto :goto_0

    .line 301
    :cond_2
    const-string v0, "companion:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    const-string p0, "companion:***"

    goto :goto_0
.end method

.method public static getThumbnailFilename(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Ljava/lang/String;
    .locals 3
    .parameter "attachment"

    .prologue
    .line 1914
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1915
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v0

    .line 1919
    :goto_0
    return-object v0

    .line 1916
    :cond_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->hasClientCachePath()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1917
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1919
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getTimelineItemCount(Landroid/content/ContentResolver;)I
    .locals 7
    .parameter "resolver"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1509
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 1511
    const/4 v6, 0x0

    .line 1513
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1514
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1516
    if-eqz v6, :cond_0

    .line 1517
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return v0

    .line 1516
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 1517
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method public static getTimelineItemsForTest(Landroid/content/ContentResolver;)Ljava/util/List;
    .locals 8
    .parameter "resolver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2363
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 2365
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2366
    .local v7, timelineItems:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    const/4 v6, 0x0

    .line 2368
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2369
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2370
    invoke-static {v6}, Lcom/google/glass/timeline/TimelineHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2373
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 2374
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 2373
    :cond_1
    if-eqz v6, :cond_2

    .line 2374
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2377
    :cond_2
    return-object v7
.end method

.method public static varargs hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Z
    .locals 4
    .parameter "item"
    .parameter "contentTypes"

    .prologue
    .line 2175
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v3}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2176
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    array-length v2, v3

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2177
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    aget-object v0, v3, v1

    .line 2178
    .local v0, attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/google/glass/timeline/TimelineHelper;->isSupportedType(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2179
    const/4 v3, 0x1

    .line 2183
    .end local v0           #attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .end local v1           #i:I
    .end local v2           #n:I
    :goto_1
    return v3

    .line 2176
    .restart local v0       #attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .restart local v1       #i:I
    .restart local v2       #n:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2183
    .end local v0           #attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .end local v1           #i:I
    .end local v2           #n:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static hasBundleId(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 2334
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasBundleId()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs hasMenuItemActionOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[I)Z
    .locals 7
    .parameter "item"
    .parameter "menuItemActions"

    .prologue
    .line 2228
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-static {v6}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2229
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v4, v6

    .local v4, n:I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 2230
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    aget-object v2, v6, v0

    .line 2231
    .local v2, menuItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    const/4 v1, 0x0

    .local v1, ii:I
    array-length v5, p1

    .local v5, nn:I
    :goto_1
    if-ge v1, v5, :cond_1

    .line 2232
    aget v3, p1, v1

    .line 2233
    .local v3, menuItemAction:I
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getAction()I

    move-result v6

    if-ne v3, v6, :cond_0

    .line 2234
    const/4 v6, 0x1

    .line 2239
    .end local v0           #i:I
    .end local v1           #ii:I
    .end local v2           #menuItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .end local v3           #menuItemAction:I
    .end local v4           #n:I
    .end local v5           #nn:I
    :goto_2
    return v6

    .line 2231
    .restart local v0       #i:I
    .restart local v1       #ii:I
    .restart local v2       #menuItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .restart local v3       #menuItemAction:I
    .restart local v4       #n:I
    .restart local v5       #nn:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2229
    .end local v3           #menuItemAction:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2239
    .end local v0           #i:I
    .end local v1           #ii:I
    .end local v2           #menuItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .end local v4           #n:I
    .end local v5           #nn:I
    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public static hasSupportedContextualVoiceCommands(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 2273
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCompanionReceivedSms(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 1873
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasCreator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1874
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/timeline/TimelineHelper;->isCompanionSmsEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v0

    .line 1876
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCompanionSms(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x0

    .line 1856
    invoke-static {p0}, Lcom/google/glass/timeline/TimelineHelper;->isCompanionReceivedSms(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1857
    const/4 v0, 0x1

    .line 1865
    :cond_0
    :goto_0
    return v0

    .line 1861
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v1}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1865
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    aget-object v0, v1, v0

    invoke-static {v0}, Lcom/google/glass/timeline/TimelineHelper;->isCompanionSmsEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v0

    goto :goto_0
.end method

.method private static isCompanionSmsEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z
    .locals 3
    .parameter "entity"

    .prologue
    const/4 v1, 0x0

    .line 1883
    if-eqz p0, :cond_0

    .line 1884
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/companion/CompanionUtils;->getComponentFromSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1885
    .local v0, component:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1893
    .end local v0           #component:Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 1888
    .restart local v0       #component:Ljava/lang/String;
    :cond_1
    const-string v2, "com.google.android.apps.googlevoice"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.android.mms"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.google.glass.companion.sms"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static isRunningOnCompanion(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 2116
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.glass.companion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static varargs isSupportedType(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .parameter "checkedContentType"
    .parameter "supportedContentTypes"

    .prologue
    .line 2191
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 2192
    .local v1, contentType:Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2193
    const/4 v4, 0x1

    .line 2196
    .end local v1           #contentType:Ljava/lang/String;
    :goto_1
    return v4

    .line 2191
    .restart local v1       #contentType:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2196
    .end local v1           #contentType:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isSyncingToCloud(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 1823
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCloudSyncStatus()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCloudSyncProtocol()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSyncingToCompanion(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 1847
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCompanionSyncProtocol()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCompanionSyncStatus()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideo(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z
    .locals 2
    .parameter "attachment"

    .prologue
    .line 1907
    const-string v0, "video/mp4"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static linearSearch(Ljava/lang/String;Landroid/database/Cursor;I)I
    .locals 11
    .parameter "targetId"
    .parameter "cursor"
    .parameter "maxIterations"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v5, -0x1

    .line 1705
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 1706
    :cond_0
    sget-object v6, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Cannot search for target: %s, cursos: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p0, v8, v9

    aput-object p1, v8, v10

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v5

    .line 1737
    :cond_1
    :goto_0
    return v0

    .line 1711
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1712
    sget-object v6, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Cannot search for %s; no items."

    new-array v8, v10, [Ljava/lang/Object;

    aput-object p0, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v5

    .line 1713
    goto :goto_0

    .line 1717
    :cond_3
    const-string v6, "_id"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1718
    .local v2, idColumnIndex:I
    const-string v6, "is_deleted"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1719
    .local v4, isDeletedColumnIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p2, :cond_5

    .line 1720
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1721
    .local v1, id:Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1724
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1725
    .local v3, isDeleted:I
    if-eqz v3, :cond_1

    .line 1728
    sget-object v6, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Found item, but it is deleted. Ignoring the item."

    new-array v8, v9, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v5

    .line 1729
    goto :goto_0

    .line 1733
    .end local v3           #isDeleted:I
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_6

    .end local v1           #id:Ljava/lang/String;
    :cond_5
    move v0, v5

    .line 1737
    goto :goto_0

    .line 1719
    .restart local v1       #id:Ljava/lang/String;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static pickBundleCover(Ljava/util/List;)I
    .locals 2
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1269
    .local p0, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1270
    :cond_0
    const/4 v0, -0x1

    .line 1281
    :cond_1
    :goto_0
    return v0

    .line 1274
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1275
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsBundleCover()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1274
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1281
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static populateLocation(Landroid/content/Context;Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 4
    .parameter "context"
    .parameter "source"
    .parameter "item"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 2105
    invoke-static {p0}, Lcom/google/glass/timeline/TimelineHelper;->isRunningOnCompanion(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2106
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Not populating location on Companion"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2113
    :cond_0
    :goto_0
    return-void

    .line 2108
    :cond_1
    invoke-static {p0}, Lcom/google/glass/timeline/TimelineHelper;->getLocationManagerHelper(Landroid/content/Context;)Lcom/google/glass/location/LocationManagerHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/location/LocationManagerHelper;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v0

    .line 2109
    .local v0, location:Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 2110
    invoke-static {v0, p1}, Lcom/google/glass/location/LocationHelper;->toLocationProto(Landroid/location/Location;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setLocation(Lcom/google/googlex/glass/common/proto/TimelineNano$Location;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    goto :goto_0
.end method

.method public static queryItemsByDeliveryTime(Landroid/content/Context;J)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "deliveryTime"

    .prologue
    .line 1431
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 1432
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "delivery_time>=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "delivery_time ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static removeFileFromMediaStore(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)V
    .locals 10
    .parameter "context"
    .parameter "attachment"

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 522
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->hasClientCachePath()Z

    move-result v0

    if-nez v0, :cond_1

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    const-string v0, "image/jpeg"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 528
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 536
    .local v1, contentUri:Landroid/net/Uri;
    :goto_1
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const-string v0, "_data"

    aput-object v0, v2, v9

    .line 540
    .local v2, fields:[Ljava/lang/String;
    const-string v3, "_data=?"

    .line 541
    .local v3, select:Ljava/lang/String;
    const/4 v6, 0x0

    .line 543
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 545
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 546
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 547
    .local v7, id:I
    int-to-long v4, v7

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 548
    .local v8, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v8, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 545
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 551
    .end local v7           #id:I
    .end local v8           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 552
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 529
    .end local v1           #contentUri:Landroid/net/Uri;
    .end local v2           #fields:[Ljava/lang/String;
    .end local v3           #select:Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_3
    const-string v0, "video/mp4"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .restart local v1       #contentUri:Landroid/net/Uri;
    goto :goto_1

    .line 551
    .restart local v2       #fields:[Ljava/lang/String;
    .restart local v3       #select:Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_4
    if-eqz v6, :cond_0

    .line 552
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method static requiresBundleOrPinUpdate(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IIZJ)Z
    .locals 4
    .parameter "item"
    .parameter "currentBundleCoverStatus"
    .parameter "targetBundleCoverStatus"
    .parameter "isBundlePinned"
    .parameter "bundlePinTime"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1373
    if-eq p1, p2, :cond_1

    move v0, v1

    .line 1381
    :cond_0
    :goto_0
    return v0

    .line 1378
    :cond_1
    if-eqz p3, :cond_3

    .line 1379
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsPinned()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/google/glass/timeline/TimelineHelper;->getPinTime(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J

    move-result-wide v2

    cmp-long v2, v2, p4

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 1381
    :cond_3
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsPinned()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasPinTime()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static shouldReplyViaCompanion(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 1840
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSourceType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static startSuppressNotifyChange(Lcom/google/glass/timeline/TimelineProvider;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 2341
    if-eqz p0, :cond_0

    .line 2342
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineProvider;->startSuppressNotifyChange()V

    .line 2344
    :cond_0
    return-void
.end method

.method private static stopSuppressNotifyChange(Lcom/google/glass/timeline/TimelineProvider;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 2348
    if-eqz p0, :cond_0

    .line 2349
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineProvider;->stopSuppressNotifyChange()V

    .line 2351
    :cond_0
    return-void
.end method

.method public static toContentValues(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Landroid/content/ContentValues;
    .locals 6
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 845
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 846
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "_id"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    const-string v1, "creation_time"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreationTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 848
    const-string v1, "modified_time"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getModifiedTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 849
    const-string v1, "display_time"

    invoke-static {p0}, Lcom/google/glass/timeline/TimelineHelper;->getDisplayTime(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 850
    const-string v1, "delivery_time"

    invoke-static {p0}, Lcom/google/glass/timeline/TimelineHelper;->getDeliveryTime(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 851
    const-string v1, "expiration_time"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getExpirationTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 852
    const-string v1, "pin_time"

    invoke-static {p0}, Lcom/google/glass/timeline/TimelineHelper;->getPinTime(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 853
    const-string v4, "pin_score"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasPinScore()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getPinScore()I

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 855
    const-string v4, "is_deleted"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsDeleted()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 856
    const-string v1, "sync_status"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCloudSyncStatus()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 857
    const-string v1, "sync_protocol"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCloudSyncProtocol()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 858
    const-string v4, "bundle_id"

    invoke-static {p0}, Lcom/google/glass/timeline/TimelineHelper;->hasBundleId(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    const-string v1, "bundle_cover_status"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsBundleCover()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 862
    const-string v2, "source"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasSource()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    const-string v1, "protobuf_blob"

    invoke-static {p0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 864
    return-object v0

    .line 853
    :cond_0
    const v1, 0x7fffffff

    goto :goto_0

    :cond_1
    move v1, v3

    .line 855
    goto :goto_1

    .line 858
    :cond_2
    const-string v1, ""

    goto :goto_2

    :cond_3
    move v2, v3

    .line 860
    goto :goto_3

    .line 862
    :cond_4
    const-string v1, ""

    goto :goto_4
.end method

.method private static toContentValues(Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 3
    .parameter "action"
    .parameter "timelineItemId"

    .prologue
    .line 876
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 877
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "action_type"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 878
    const-string v1, "timeline_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->hasPayload()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 880
    const-string v1, "payload"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->getPayload()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    :cond_0
    return-object v0
.end method

.method static toEntityContentValues(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/util/ArrayList;
    .locals 4
    .parameter "item"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 891
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 892
    .local v1, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 893
    .local v0, baseValue:Landroid/content/ContentValues;
    const-string v2, "timelineId"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasCreator()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 896
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3, v0, v1}, Lcom/google/glass/timeline/TimelineHelper;->addEntityContentValues(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;ILandroid/content/ContentValues;Ljava/util/List;)V

    .line 899
    :cond_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    const/4 v3, 0x2

    invoke-static {v2, v3, v0, v1}, Lcom/google/glass/timeline/TimelineHelper;->addEntityContentValues([Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;ILandroid/content/ContentValues;Ljava/util/List;)V

    .line 901
    return-object v1
.end method

.method static updateBundle(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 19
    .parameter "resolver"
    .parameter "bundleId"
    .parameter "clearPin"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1195
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 1198
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1199
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Cannot bundle items with empty bundle ID."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1260
    :goto_0
    return-void

    .line 1202
    :cond_0
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Updating bundle: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1206
    sget-object v18, Lcom/google/glass/timeline/TimelineHelper;->UPDATE_LOCK:Ljava/lang/Object;

    monitor-enter v18

    .line 1209
    :try_start_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 1210
    .local v17, select:Ljava/lang/StringBuilder;
    const-string v1, "+is_deleted==0"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1211
    const-string v1, " AND "

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1212
    const-string v1, "bundle_id==?"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1215
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p1 .. p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 1220
    .local v5, selectArgs:[Ljava/lang/String;
    const-string v6, "display_time DESC"

    .line 1223
    .local v6, orderBy:Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1224
    .local v8, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1225
    .local v9, currentBundleCoverStatuses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v11, 0x0

    .line 1226
    .local v11, isBundlePinned:Z
    const-wide/16 v12, -0x1

    .line 1227
    .local v12, bundlePinTime:J
    const/4 v15, 0x0

    .line 1229
    .local v15, cursor:Landroid/database/Cursor;
    :try_start_1
    sget-object v2, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1231
    if-eqz v15, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1234
    :cond_1
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Found no items in bundle: %s; cannot update."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1251
    if-eqz v15, :cond_2

    .line 1252
    :try_start_2
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_2
    monitor-exit v18

    goto :goto_0

    .line 1259
    .end local v5           #selectArgs:[Ljava/lang/String;
    .end local v6           #orderBy:Ljava/lang/String;
    .end local v8           #items:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    .end local v9           #currentBundleCoverStatuses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v11           #isBundlePinned:Z
    .end local v12           #bundlePinTime:J
    .end local v15           #cursor:Landroid/database/Cursor;
    .end local v17           #select:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v1

    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1237
    .restart local v5       #selectArgs:[Ljava/lang/String;
    .restart local v6       #orderBy:Ljava/lang/String;
    .restart local v8       #items:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    .restart local v9       #currentBundleCoverStatuses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v11       #isBundlePinned:Z
    .restart local v12       #bundlePinTime:J
    .restart local v15       #cursor:Landroid/database/Cursor;
    .restart local v17       #select:Ljava/lang/StringBuilder;
    :cond_3
    :try_start_3
    const-string v1, "bundle_cover_status"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 1239
    .local v14, bundleCoverStatusColumn:I
    :cond_4
    invoke-static {v15}, Lcom/google/glass/timeline/TimelineHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v16

    .line 1240
    .local v16, item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    move-object/from16 v0, v16

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1241
    invoke-interface {v15, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1245
    if-nez p2, :cond_5

    .line 1246
    invoke-virtual/range {v16 .. v16}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsPinned()Z

    move-result v1

    or-int/2addr v11, v1

    .line 1247
    invoke-static/range {v16 .. v16}, Lcom/google/glass/timeline/TimelineHelper;->getPinTime(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J

    move-result-wide v1

    invoke-static {v12, v13, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 1249
    :cond_5
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v1

    if-nez v1, :cond_4

    .line 1251
    if-eqz v15, :cond_6

    .line 1252
    :try_start_4
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1257
    :cond_6
    invoke-static {v8}, Lcom/google/glass/timeline/TimelineHelper;->pickBundleCover(Ljava/util/List;)I

    move-result v10

    move-object/from16 v7, p0

    invoke-static/range {v7 .. v13}, Lcom/google/glass/timeline/TimelineHelper;->updateBundleCoverStatusAndPin(Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/List;IZJ)V

    .line 1259
    monitor-exit v18

    goto/16 :goto_0

    .line 1251
    .end local v14           #bundleCoverStatusColumn:I
    .end local v16           #item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :catchall_1
    move-exception v1

    if-eqz v15, :cond_7

    .line 1252
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method static updateBundleCoverStatusAndPin(Landroid/content/ContentResolver;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IZJ)V
    .locals 5
    .parameter "resolver"
    .parameter "item"
    .parameter "bundleCoverStatus"
    .parameter "isBundlePinned"
    .parameter "bundlePinTime"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1407
    if-eqz p3, :cond_2

    .line 1408
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsPinned()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/google/glass/timeline/TimelineHelper;->getPinTime(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J

    move-result-wide v2

    cmp-long v2, v2, p4

    if-eqz v2, :cond_1

    .line 1409
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setIsPinned(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 1410
    invoke-virtual {p1, p4, p5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setPinTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 1420
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineHelper;->toContentValues(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1421
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v2, "bundle_cover_status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1422
    sget-object v2, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1423
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0, v1, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1424
    return-void

    .line 1413
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v1           #uri:Landroid/net/Uri;
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsPinned()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasPinTime()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1414
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setIsPinned(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 1415
    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setPinTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    goto :goto_0
.end method

.method static updateBundleCoverStatusAndPin(Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/List;IZJ)V
    .locals 10
    .parameter "resolver"
    .parameter
    .parameter
    .parameter "newCoverCardIndex"
    .parameter "isBundlePinned"
    .parameter "bundlePinTime"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;IZJ)V"
        }
    .end annotation

    .prologue
    .line 1299
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    .local p2, currentBundleCoverStatuses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 1302
    const/4 v9, 0x0

    .line 1303
    .local v9, numNonExplicitCovers:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v8, v2, :cond_2

    .line 1304
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsBundleCover()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1305
    add-int/lit8 v9, v9, 0x1

    .line 1303
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1299
    .end local v8           #i:I
    .end local v9           #numNonExplicitCovers:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1311
    .restart local v8       #i:I
    .restart local v9       #numNonExplicitCovers:I
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    if-nez v9, :cond_5

    .line 1312
    :cond_3
    const/4 v8, 0x0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v8, v2, :cond_a

    .line 1313
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 1314
    .local v0, item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1316
    .local v1, currentBundleCoverStatus:I
    const/4 v2, 0x3

    move v3, p4

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Lcom/google/glass/timeline/TimelineHelper;->requiresBundleOrPinUpdate(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IIZJ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1318
    const/4 v4, 0x3

    move-object v2, p0

    move-object v3, v0

    move v5, p4

    move-wide v6, p5

    invoke-static/range {v2 .. v7}, Lcom/google/glass/timeline/TimelineHelper;->updateBundleCoverStatusAndPin(Landroid/content/ContentResolver;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IZJ)V

    .line 1312
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1323
    .end local v0           #item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v1           #currentBundleCoverStatus:I
    :cond_5
    const/4 v8, 0x0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v8, v2, :cond_a

    .line 1324
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 1325
    .restart local v0       #item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1327
    .restart local v1       #currentBundleCoverStatus:I
    if-ne v8, p3, :cond_8

    .line 1330
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsBundleCover()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1331
    const/4 v2, 0x1

    move v3, p4

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Lcom/google/glass/timeline/TimelineHelper;->requiresBundleOrPinUpdate(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IIZJ)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1333
    const/4 v4, 0x1

    move-object v2, p0

    move-object v3, v0

    move v5, p4

    move-wide v6, p5

    invoke-static/range {v2 .. v7}, Lcom/google/glass/timeline/TimelineHelper;->updateBundleCoverStatusAndPin(Landroid/content/ContentResolver;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IZJ)V

    .line 1323
    :cond_6
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1337
    :cond_7
    const/4 v2, 0x2

    move v3, p4

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Lcom/google/glass/timeline/TimelineHelper;->requiresBundleOrPinUpdate(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IIZJ)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1339
    const/4 v4, 0x2

    move-object v2, p0

    move-object v3, v0

    move v5, p4

    move-wide v6, p5

    invoke-static/range {v2 .. v7}, Lcom/google/glass/timeline/TimelineHelper;->updateBundleCoverStatusAndPin(Landroid/content/ContentResolver;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IZJ)V

    goto :goto_4

    .line 1346
    :cond_8
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsBundleCover()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1350
    const/4 v2, 0x1

    move v3, p4

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Lcom/google/glass/timeline/TimelineHelper;->requiresBundleOrPinUpdate(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IIZJ)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1352
    const/4 v4, 0x1

    move-object v2, p0

    move-object v3, v0

    move v5, p4

    move-wide v6, p5

    invoke-static/range {v2 .. v7}, Lcom/google/glass/timeline/TimelineHelper;->updateBundleCoverStatusAndPin(Landroid/content/ContentResolver;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IZJ)V

    goto :goto_4

    .line 1356
    :cond_9
    const/4 v2, 0x0

    move v3, p4

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Lcom/google/glass/timeline/TimelineHelper;->requiresBundleOrPinUpdate(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IIZJ)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1358
    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, v0

    move v5, p4

    move-wide v6, p5

    invoke-static/range {v2 .. v7}, Lcom/google/glass/timeline/TimelineHelper;->updateBundleCoverStatusAndPin(Landroid/content/ContentResolver;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IZJ)V

    goto :goto_4

    .line 1365
    .end local v0           #item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v1           #currentBundleCoverStatus:I
    :cond_a
    return-void
.end method

.method private updateEntityContentValues(Landroid/content/ContentResolver;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 6
    .parameter "resolver"
    .parameter "item"

    .prologue
    .line 377
    sget-object v1, Lcom/google/glass/timeline/TimelineProvider;->ENTITY_URI:Landroid/net/Uri;

    const-string v2, "timelineId=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 380
    invoke-static {p2}, Lcom/google/glass/timeline/TimelineHelper;->toEntityContentValues(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/util/ArrayList;

    move-result-object v0

    .line 381
    .local v0, entityContentValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    sget-object v2, Lcom/google/glass/timeline/TimelineProvider;->ENTITY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/ContentValues;

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 385
    :cond_0
    return-void
.end method

.method static validateItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 1
    .parameter "item"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 2383
    invoke-static {p0}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2384
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 2385
    return-void
.end method


# virtual methods
.method public addAttachmentToTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;ZZ)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 10
    .parameter "context"
    .parameter "item"
    .parameter "attachment"
    .parameter "action"
    .parameter "markAsSynced"
    .parameter "setModifiedTime"

    .prologue
    .line 2135
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 2138
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v8

    .line 2140
    .local v8, itemId:Ljava/lang/String;
    new-instance v0, Lcom/google/glass/timeline/TimelineHelper$7;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p6

    move-object v5, p1

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/timeline/TimelineHelper$7;-><init>(Lcom/google/glass/timeline/TimelineHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;ZLandroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;Z)V

    .line 2153
    .local v0, update:Lcom/google/glass/timeline/TimelineHelper$Update;
    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/TimelineHelper;->atomicUpdateTimelineItem(Lcom/google/glass/timeline/TimelineHelper$Update;)V

    .line 2154
    invoke-virtual {v0}, Lcom/google/glass/timeline/TimelineHelper$Update;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v9

    .line 2158
    .local v9, updatedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    if-eqz v9, :cond_0

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsDeleted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2159
    :cond_0
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Did not update item "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with attachment, because it no longer exists."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2160
    const/4 v9, 0x0

    .line 2163
    .end local v9           #updatedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_1
    return-object v9
.end method

.method public atomicUpdateTimelineItem(Lcom/google/glass/timeline/TimelineHelper$Update;)V
    .locals 2
    .parameter "update"

    .prologue
    .line 594
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->UPDATE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 595
    :try_start_0
    invoke-virtual {p1}, Lcom/google/glass/timeline/TimelineHelper$Update;->execute()V

    .line 596
    monitor-exit v1

    .line 597
    return-void

    .line 596
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public atomicUpdateTimelineItemAsync(Lcom/google/glass/timeline/TimelineHelper$Update;)V
    .locals 1
    .parameter "update"

    .prologue
    .line 603
    new-instance v0, Lcom/google/glass/timeline/TimelineHelper$5;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/timeline/TimelineHelper$5;-><init>(Lcom/google/glass/timeline/TimelineHelper;Lcom/google/glass/timeline/TimelineHelper$Update;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 609
    return-void
.end method

.method public bulkInsertTimelineItem(Landroid/content/Context;Ljava/util/List;)I
    .locals 16
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 396
    .local p2, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 398
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 399
    const/4 v9, 0x0

    .line 439
    :goto_0
    return v9

    .line 403
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 405
    .local v2, bundleIdsForUpdate:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v11

    new-array v10, v11, [Landroid/content/ContentValues;

    .line 406
    .local v10, values:[Landroid/content/ContentValues;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 407
    .local v3, entityValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_2

    .line 408
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 409
    .local v6, item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    invoke-static {v6}, Lcom/google/glass/timeline/TimelineHelper;->validateItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 410
    sget-object v11, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v12, "Preparing to insert timeline item with ID %s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-interface {v11, v12, v13}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 411
    invoke-static {v6}, Lcom/google/glass/timeline/TimelineHelper;->toContentValues(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Landroid/content/ContentValues;

    move-result-object v11

    aput-object v11, v10, v4

    .line 412
    invoke-static {v6}, Lcom/google/glass/timeline/TimelineHelper;->toEntityContentValues(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 414
    invoke-static {v6}, Lcom/google/glass/timeline/TimelineHelper;->hasBundleId(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 415
    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 407
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 421
    .end local v6           #item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 422
    .local v8, resolver:Landroid/content/ContentResolver;
    const-string v11, "com.google.glass.timeline"

    invoke-virtual {v8, v11}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v7

    check-cast v7, Lcom/google/glass/timeline/TimelineProvider;

    .line 424
    .local v7, provider:Lcom/google/glass/timeline/TimelineProvider;
    invoke-static {v7}, Lcom/google/glass/timeline/TimelineHelper;->startSuppressNotifyChange(Lcom/google/glass/timeline/TimelineProvider;)V

    .line 426
    :try_start_0
    sget-object v11, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    invoke-virtual {v8, v11, v10}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v9

    .line 427
    .local v9, result:I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-eqz v11, :cond_3

    .line 428
    sget-object v12, Lcom/google/glass/timeline/TimelineProvider;->ENTITY_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Landroid/content/ContentValues;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/content/ContentValues;

    invoke-virtual {v8, v12, v11}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 434
    :cond_3
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 435
    .local v1, bundleId:Ljava/lang/String;
    const/4 v11, 0x0

    invoke-static {v8, v1, v11}, Lcom/google/glass/timeline/TimelineHelper;->updateBundle(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 439
    .end local v1           #bundleId:Ljava/lang/String;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v9           #result:I
    :catchall_0
    move-exception v11

    invoke-static {v7}, Lcom/google/glass/timeline/TimelineHelper;->stopSuppressNotifyChange(Lcom/google/glass/timeline/TimelineProvider;)V

    throw v11

    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v9       #result:I
    :cond_4
    invoke-static {v7}, Lcom/google/glass/timeline/TimelineHelper;->stopSuppressNotifyChange(Lcom/google/glass/timeline/TimelineProvider;)V

    goto/16 :goto_0
.end method

.method public createTimelineItem(Landroid/content/Context;Lcom/google/glass/util/SettingsSecure;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2
    .parameter "context"
    .parameter "settingsSecure"

    .prologue
    .line 209
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "device:"

    invoke-static {p1, v0, v1, p2}, Lcom/google/glass/timeline/TimelineHelper;->createTimelineItem(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;Lcom/google/glass/util/SettingsSecure;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method public deleteExpiredAndSyncedItemsOlderThan(Landroid/content/Context;Landroid/content/ContentResolver;J)V
    .locals 17
    .parameter "context"
    .parameter "resolver"
    .parameter "timestamp"

    .prologue
    .line 774
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 775
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/timeline/TimelineHelper;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v1}, Lcom/google/glass/util/Clock;->currentTimeMillis()J

    move-result-wide v10

    .line 778
    .local v10, currentTime:J
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 779
    .local v15, sb:Ljava/lang/StringBuilder;
    const-string v1, "("

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    const-string v1, "sync_status"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 782
    const-string v1, " AND "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    const-string v1, "modified_time"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    const-string v1, ") OR ("

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    const-string v1, "expiration_time"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    const-string v1, " AND "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    const-string v1, "expiration_time"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<CAST(? AS INT)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    const-string v1, ")"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 791
    .local v4, select:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x1

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 793
    .local v5, args:[Ljava/lang/String;
    sget-object v16, Lcom/google/glass/timeline/TimelineHelper;->UPDATE_LOCK:Ljava/lang/Object;

    monitor-enter v16

    .line 796
    :try_start_0
    const-string v1, "com.google.glass.timeline"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v14

    check-cast v14, Lcom/google/glass/timeline/TimelineProvider;

    .line 798
    .local v14, provider:Lcom/google/glass/timeline/TimelineProvider;
    invoke-static {v14}, Lcom/google/glass/timeline/TimelineHelper;->startSuppressNotifyChange(Lcom/google/glass/timeline/TimelineProvider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 799
    const/4 v12, 0x0

    .line 803
    .local v12, cursor:Landroid/database/Cursor;
    :try_start_1
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 806
    .local v9, bundleIdsForUpdate:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v2, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_WITH_EXPIRED_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "bundle_id"

    aput-object v6, v3, v1

    const/4 v6, 0x0

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 808
    if-eqz v12, :cond_3

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 809
    const-string v1, "bundle_id"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 810
    .local v8, bundleIdColumn:I
    :cond_0
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 811
    invoke-interface {v12, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 812
    .local v7, bundleId:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 813
    invoke-interface {v9, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 829
    .end local v7           #bundleId:Ljava/lang/String;
    .end local v8           #bundleIdColumn:I
    .end local v9           #bundleIdsForUpdate:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    .line 830
    if-eqz v12, :cond_1

    .line 831
    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 834
    :cond_1
    :try_start_3
    invoke-static {v14}, Lcom/google/glass/timeline/TimelineHelper;->stopSuppressNotifyChange(Lcom/google/glass/timeline/TimelineProvider;)V

    throw v1

    .line 837
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v14           #provider:Lcom/google/glass/timeline/TimelineProvider;
    :catchall_1
    move-exception v1

    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 818
    .restart local v8       #bundleIdColumn:I
    .restart local v9       #bundleIdsForUpdate:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v12       #cursor:Landroid/database/Cursor;
    .restart local v14       #provider:Lcom/google/glass/timeline/TimelineProvider;
    :cond_2
    :try_start_4
    sget-object v1, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_WITH_EXPIRED_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 821
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 822
    .restart local v7       #bundleId:Ljava/lang/String;
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v7, v1}, Lcom/google/glass/timeline/TimelineHelper;->updateBundle(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 830
    .end local v7           #bundleId:Ljava/lang/String;
    .end local v8           #bundleIdColumn:I
    .end local v13           #i$:Ljava/util/Iterator;
    :cond_3
    if-eqz v12, :cond_4

    .line 831
    :try_start_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 834
    :cond_4
    :try_start_6
    invoke-static {v14}, Lcom/google/glass/timeline/TimelineHelper;->stopSuppressNotifyChange(Lcom/google/glass/timeline/TimelineProvider;)V

    .line 837
    monitor-exit v16

    .line 838
    return-void

    .line 834
    :catchall_2
    move-exception v1

    invoke-static {v14}, Lcom/google/glass/timeline/TimelineHelper;->stopSuppressNotifyChange(Lcom/google/glass/timeline/TimelineProvider;)V

    throw v1

    .end local v9           #bundleIdsForUpdate:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_3
    move-exception v1

    invoke-static {v14}, Lcom/google/glass/timeline/TimelineHelper;->stopSuppressNotifyChange(Lcom/google/glass/timeline/TimelineProvider;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method

.method public deletePendingActions(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 8
    .parameter "context"
    .parameter "timelineItemId"
    .parameter "maxRowId"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 761
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 762
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-lez v2, :cond_0

    .line 763
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 764
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-static {p2}, Lcom/google/glass/timeline/TimelineProvider;->getPendingActionUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "_id<=?"

    new-array v4, v7, [Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 766
    .local v0, count:I
    sget-object v2, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Deleted %s pending actions with maxRowId %s for %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 769
    .end local v0           #count:I
    .end local v1           #resolver:Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method

.method public deleteTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 12
    .parameter "context"
    .parameter "item"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 469
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 472
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsDeleted()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 473
    sget-object v6, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Item %s is already deleted."

    new-array v8, v10, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    :cond_0
    return-void

    .line 477
    :cond_1
    sget-object v6, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Deleting item: %s"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 480
    new-instance v5, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    .line 481
    .local v5, tombstone:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    invoke-virtual {v5, v10}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setIsDeleted(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 482
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 483
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 484
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSourceType()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setSourceType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 485
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreationTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCreationTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 486
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getDisplayTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setDisplayTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 487
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getModifiedTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setModifiedTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 490
    new-instance v6, Lcom/google/glass/timeline/TimelineHelper$2;

    invoke-direct {v6, p0, p1, v5}, Lcom/google/glass/timeline/TimelineHelper$2;-><init>(Lcom/google/glass/timeline/TimelineHelper;Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    invoke-virtual {p0, v6}, Lcom/google/glass/timeline/TimelineHelper;->atomicUpdateTimelineItem(Lcom/google/glass/timeline/TimelineHelper$Update;)V

    .line 500
    iget-object v6, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v6}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 501
    iget-object v0, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 502
    .local v1, attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    invoke-static {p2, v1}, Lcom/google/glass/timeline/AttachmentHelper;->shouldDeleteLocalAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 503
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v2

    .line 504
    .local v2, clientCachePath:Ljava/lang/String;
    sget-object v6, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Deleting attached file: %s"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v2, v8, v11

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 505
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_3

    .line 506
    sget-object v6, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Failed to delete file: %s"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v2, v8, v11

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 501
    .end local v2           #clientCachePath:Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 508
    .restart local v2       #clientCachePath:Ljava/lang/String;
    :cond_3
    invoke-static {p1, v1}, Lcom/google/glass/timeline/TimelineHelper;->removeFileFromMediaStore(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)V

    goto :goto_1
.end method

.method public deleteTimelineItemAsync(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 1
    .parameter "context"
    .parameter "item"

    .prologue
    .line 578
    new-instance v0, Lcom/google/glass/timeline/TimelineHelper$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/glass/timeline/TimelineHelper$4;-><init>(Lcom/google/glass/timeline/TimelineHelper;Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 584
    return-void
.end method

.method public deleteTimelineItemAsync(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "itemId"

    .prologue
    .line 561
    new-instance v0, Lcom/google/glass/timeline/TimelineHelper$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/glass/timeline/TimelineHelper$3;-><init>(Lcom/google/glass/timeline/TimelineHelper;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 572
    return-void
.end method

.method public getPendingActions(Landroid/content/Context;Ljava/lang/String;)Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;
    .locals 14
    .parameter "context"
    .parameter "timelineItemId"

    .prologue
    .line 725
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 726
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 727
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 729
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v7

    .line 730
    .local v7, builder:Lcom/google/common/collect/ImmutableList$Builder;,"Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;>;"
    const-wide/16 v9, 0x0

    .line 731
    .local v9, maxRowId:J
    invoke-static/range {p2 .. p2}, Lcom/google/glass/timeline/TimelineProvider;->getPendingActionUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 733
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 734
    const-string v1, "action_type"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 735
    .local v13, type:I
    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;-><init>()V

    .line 736
    .local v6, action:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    invoke-virtual {v6, v13}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->setType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 737
    const-string v1, "payload"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 738
    .local v11, payload:Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 739
    invoke-virtual {v6, v11}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->setPayload(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 741
    :cond_0
    invoke-virtual {v7, v6}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 742
    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 743
    goto :goto_0

    .line 744
    .end local v6           #action:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    .end local v11           #payload:Ljava/lang/String;
    .end local v13           #type:I
    :cond_1
    new-instance v12, Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;

    invoke-virtual {v7}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v12, v1, v9, v10, v2}, Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;-><init>(Ljava/util/List;JLcom/google/glass/timeline/TimelineHelper$1;)V

    .line 745
    .local v12, response:Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;
    sget-object v1, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Returning %s pending actions for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v12, Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;->actions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 748
    if-eqz v8, :cond_2

    .line 749
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v12

    .line 748
    .end local v7           #builder:Lcom/google/common/collect/ImmutableList$Builder;,"Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;>;"
    .end local v9           #maxRowId:J
    .end local v12           #response:Lcom/google/glass/timeline/TimelineHelper$GetPendingActionsResponse;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_3

    .line 749
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method public getUnsyncedItems(Landroid/content/ContentResolver;Ljava/util/List;Z)Ljava/util/Queue;
    .locals 11
    .parameter "resolver"
    .parameter
    .parameter "sharePriority"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Ljava/util/Queue",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, syncProtocols:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1751
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v9

    .line 1753
    .local v9, items:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1754
    :cond_0
    sget-object v0, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "No sync protocol(s) specified."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1799
    :cond_1
    :goto_0
    return-object v9

    .line 1758
    :cond_2
    sget-object v0, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Getting items with sync protocols: %s"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, ", "

    invoke-static {v3, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1760
    const/4 v6, 0x0

    .line 1764
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1765
    .local v10, selection:Ljava/lang/StringBuilder;
    const-string v0, "sync_status=0"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1766
    const-string v0, " AND "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1767
    const-string v0, "sync_protocol IN ("

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1768
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_4

    .line 1769
    if-lez v7, :cond_3

    .line 1770
    const-string v0, ", "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1772
    :cond_3
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1768
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1774
    :cond_4
    const-string v0, ")"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1777
    sget-object v1, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "creation_time ASC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1784
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1785
    invoke-static {v6}, Lcom/google/glass/timeline/TimelineHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v8

    .line 1786
    .local v8, item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    if-eqz p3, :cond_6

    iget-object v0, v8, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v0}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1787
    sget-object v0, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Prioritizing %s due to shareCount=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v8}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, v8, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1788
    const/4 v0, 0x0

    invoke-virtual {v9, v0, v8}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1794
    .end local v7           #i:I
    .end local v8           #item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v10           #selection:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 1795
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 1790
    .restart local v7       #i:I
    .restart local v8       #item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .restart local v10       #selection:Ljava/lang/StringBuilder;
    :cond_6
    :try_start_1
    invoke-virtual {v9, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1794
    .end local v8           #item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_7
    if-eqz v6, :cond_1

    .line 1795
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public insertTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)Landroid/net/Uri;
    .locals 11
    .parameter "context"
    .parameter "item"
    .parameter "itemType"
    .parameter "action"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 320
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 322
    invoke-static {p2}, Lcom/google/glass/timeline/TimelineHelper;->validateItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 324
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 329
    .local v3, resolver:Landroid/content/ContentResolver;
    const-string v4, "com.google.glass.timeline"

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 331
    .local v0, contentProviderClient:Landroid/content/ContentProviderClient;
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v2

    check-cast v2, Lcom/google/glass/timeline/TimelineProvider;

    .line 332
    .local v2, provider:Lcom/google/glass/timeline/TimelineProvider;
    invoke-static {v2}, Lcom/google/glass/timeline/TimelineHelper;->startSuppressNotifyChange(Lcom/google/glass/timeline/TimelineProvider;)V

    .line 334
    :try_start_0
    sget-object v4, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    invoke-static {p2}, Lcom/google/glass/timeline/TimelineHelper;->toContentValues(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 335
    .local v1, itemUri:Landroid/net/Uri;
    sget-object v5, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Inserted timeline item [id=%s, action=%s, itemType=%s]."

    const/4 v4, 0x3

    new-array v7, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v8, 0x1

    if-nez p4, :cond_3

    const/4 v4, 0x0

    :goto_0
    aput-object v4, v7, v8

    const/4 v4, 0x2

    aput-object p3, v7, v4

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    if-eqz p4, :cond_0

    .line 339
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/glass/timeline/TimelineProvider;->getPendingActionUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {p4, v5}, Lcom/google/glass/timeline/TimelineHelper;->toContentValues(Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 343
    :cond_0
    invoke-direct {p0, v3, p2}, Lcom/google/glass/timeline/TimelineHelper;->updateEntityContentValues(Landroid/content/ContentResolver;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 347
    invoke-static {p2}, Lcom/google/glass/timeline/TimelineHelper;->hasBundleId(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 348
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/google/glass/timeline/TimelineHelper;->updateBundle(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    :cond_1
    invoke-static {v2}, Lcom/google/glass/timeline/TimelineHelper;->stopSuppressNotifyChange(Lcom/google/glass/timeline/TimelineProvider;)V

    .line 352
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 355
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCloudSyncProtocol()I

    move-result v4

    if-eq v4, v10, :cond_2

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCloudSyncStatus()I

    move-result v4

    if-eq v4, v9, :cond_2

    .line 357
    const-string v4, "com.google.glass.timeline"

    sget-object v5, Lcom/google/glass/sync/SyncHelper$SyncSource;->DEVICE_TIMELINE:Lcom/google/glass/sync/SyncHelper$SyncSource;

    invoke-static {p1, v4, v5}, Lcom/google/glass/sync/SyncHelper;->triggerSync(Landroid/content/Context;Ljava/lang/String;Lcom/google/glass/sync/SyncHelper$SyncSource;)V

    .line 367
    :cond_2
    new-instance v4, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v4, p1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_ITEM_INSERTED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {p3}, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->getData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 369
    return-object v1

    .line 335
    :cond_3
    :try_start_1
    invoke-virtual {p4}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    goto :goto_0

    .line 351
    .end local v1           #itemUri:Landroid/net/Uri;
    :catchall_0
    move-exception v4

    invoke-static {v2}, Lcom/google/glass/timeline/TimelineHelper;->stopSuppressNotifyChange(Lcom/google/glass/timeline/TimelineProvider;)V

    .line 352
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    throw v4
.end method

.method public insertTimelineItemAsync(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)V
    .locals 6
    .parameter "context"
    .parameter "item"
    .parameter "itemType"
    .parameter "action"

    .prologue
    .line 454
    new-instance v0, Lcom/google/glass/timeline/TimelineHelper$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/timeline/TimelineHelper$1;-><init>(Lcom/google/glass/timeline/TimelineHelper;Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 460
    return-void
.end method

.method public modifyTimelineItemToSendToContact(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z
    .locals 9
    .parameter "item"
    .parameter "entity"

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2305
    invoke-static {p2}, Lcom/google/glass/entity/EntityHelper;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v1

    .line 2306
    .local v1, shareTarget:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-static {p2}, Lcom/google/glass/entity/EntityHelper;->isFocusEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2310
    invoke-static {p2}, Lcom/google/glass/entity/EntityHelper;->getMessagingPersona(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    move-result-object v0

    .line 2311
    .local v0, persona:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getSource()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getPersonaId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2314
    :cond_0
    sget-object v4, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Unable to send message as no personaId exists in the entity [source=%s, id=%s]."

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getSource()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2329
    .end local v0           #persona:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    :goto_0
    return v2

    .line 2320
    .restart local v0       #persona:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    :cond_1
    sget-object v4, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Sending new message via Glassware [entityId=%s, glasswareId=%s, personaId=%s]."

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getSource()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v3

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getPersonaId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v8

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2322
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 2323
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getPersonaId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 2327
    .end local v0           #persona:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    :cond_2
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 2328
    invoke-static {p1, v1}, Lcom/google/glass/timeline/TimelineHelper;->addShareTarget(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    move v2, v3

    .line 2329
    goto :goto_0
.end method

.method public queryPinnedItems(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 1441
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 1442
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    const-string v3, "pin_time<>-1"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryTimelineItem(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 8
    .parameter "resolver"
    .parameter "itemUri"

    .prologue
    const/4 v7, 0x0

    .line 1481
    if-nez p2, :cond_1

    move-object v0, v7

    .line 1499
    :cond_0
    :goto_0
    return-object v0

    .line 1484
    :cond_1
    const/4 v6, 0x0

    .line 1486
    .local v6, timelineCursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 1488
    if-nez v6, :cond_3

    .line 1498
    if-eqz v6, :cond_2

    .line 1499
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v7

    goto :goto_0

    .line 1492
    :cond_3
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_5

    .line 1498
    if-eqz v6, :cond_4

    .line 1499
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v7

    goto :goto_0

    .line 1496
    :cond_5
    :try_start_2
    invoke-static {v6}, Lcom/google/glass/timeline/TimelineHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 1498
    if-eqz v6, :cond_0

    .line 1499
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1498
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 1499
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public queryTimelineItem(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 8
    .parameter "resolver"
    .parameter "itemId"

    .prologue
    .line 1453
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 1454
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 1456
    const/4 v6, 0x0

    .line 1457
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 1459
    .local v7, item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :try_start_0
    sget-object v1, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1466
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1467
    invoke-static {v6}, Lcom/google/glass/timeline/TimelineHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 1470
    :cond_0
    if-eqz v6, :cond_1

    .line 1471
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1474
    :cond_1
    return-object v7

    .line 1470
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 1471
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public updateTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;ZZ)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 15
    .parameter "context"
    .parameter "item"
    .parameter "action"
    .parameter "markAsSynced"
    .parameter "clearPin"

    .prologue
    .line 626
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v10}, Lcom/google/glass/util/ArrayUtils;->length([Ljava/lang/Object;)I

    move-result v1

    .line 627
    .local v1, attachmentCount:I
    sget-object v10, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v11, "updateTimelineItem %s with markAsSynced = %s, with number of attachments = %s"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-interface {v10, v11, v12}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 629
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 631
    sget-object v10, Lcom/google/glass/timeline/TimelineHelper;->UPDATE_LOCK:Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 632
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Cannot update without holding the UPDATE_LOCK"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 635
    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/google/glass/timeline/TimelineHelper;->validateItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 637
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 640
    .local v8, resolver:Landroid/content/ContentResolver;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lcom/google/glass/timeline/TimelineHelper;->queryTimelineItem(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v5

    .line 641
    .local v5, existing:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsDeleted()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsDeleted()Z

    move-result v10

    if-nez v10, :cond_2

    .line 642
    sget-object v10, Lcom/google/glass/timeline/TimelineHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v11, "Cannot un-delete item: %s; update has been canceled."

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-interface {v10, v11, v12}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 643
    const/16 p2, 0x0

    .line 698
    .end local p2
    :cond_1
    :goto_0
    return-object p2

    .line 647
    .restart local p2
    :cond_2
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 650
    .local v3, bundleIdsForUpdate:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v5}, Lcom/google/glass/timeline/TimelineHelper;->hasBundleId(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 651
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 654
    :cond_3
    if-eqz p4, :cond_7

    const/4 v10, 0x1

    :goto_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncStatus(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 659
    if-nez p4, :cond_4

    .line 660
    iget-object v10, p0, Lcom/google/glass/timeline/TimelineHelper;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v10}, Lcom/google/glass/util/Clock;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setModifiedTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 665
    :cond_4
    const-string v10, "com.google.glass.timeline"

    invoke-virtual {v8, v10}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v7

    check-cast v7, Lcom/google/glass/timeline/TimelineProvider;

    .line 667
    .local v7, provider:Lcom/google/glass/timeline/TimelineProvider;
    invoke-static {v7}, Lcom/google/glass/timeline/TimelineHelper;->startSuppressNotifyChange(Lcom/google/glass/timeline/TimelineProvider;)V

    .line 669
    :try_start_0
    sget-object v10, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 670
    .local v9, uri:Landroid/net/Uri;
    invoke-static/range {p2 .. p2}, Lcom/google/glass/timeline/TimelineHelper;->toContentValues(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Landroid/content/ContentValues;

    move-result-object v4

    .line 671
    .local v4, contentValues:Landroid/content/ContentValues;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v4, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 673
    if-eqz p3, :cond_5

    .line 674
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/glass/timeline/TimelineProvider;->getPendingActionUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-static {v0, v11}, Lcom/google/glass/timeline/TimelineHelper;->toContentValues(Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 678
    :cond_5
    move-object/from16 v0, p2

    invoke-direct {p0, v8, v0}, Lcom/google/glass/timeline/TimelineHelper;->updateEntityContentValues(Landroid/content/ContentResolver;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 681
    invoke-static/range {p2 .. p2}, Lcom/google/glass/timeline/TimelineHelper;->hasBundleId(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 682
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 686
    :cond_6
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 687
    .local v2, bundleId:Ljava/lang/String;
    move/from16 v0, p5

    invoke-static {v8, v2, v0}, Lcom/google/glass/timeline/TimelineHelper;->updateBundle(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 690
    .end local v2           #bundleId:Ljava/lang/String;
    .end local v4           #contentValues:Landroid/content/ContentValues;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v9           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v10

    invoke-static {v7}, Lcom/google/glass/timeline/TimelineHelper;->stopSuppressNotifyChange(Lcom/google/glass/timeline/TimelineProvider;)V

    throw v10

    .line 654
    .end local v7           #provider:Lcom/google/glass/timeline/TimelineProvider;
    :cond_7
    const/4 v10, 0x0

    goto :goto_1

    .line 690
    .restart local v4       #contentValues:Landroid/content/ContentValues;
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v7       #provider:Lcom/google/glass/timeline/TimelineProvider;
    .restart local v9       #uri:Landroid/net/Uri;
    :cond_8
    invoke-static {v7}, Lcom/google/glass/timeline/TimelineHelper;->stopSuppressNotifyChange(Lcom/google/glass/timeline/TimelineProvider;)V

    .line 693
    if-nez p4, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCloudSyncProtocol()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_1

    .line 694
    const-string v10, "com.google.glass.timeline"

    sget-object v11, Lcom/google/glass/sync/SyncHelper$SyncSource;->DEVICE_TIMELINE:Lcom/google/glass/sync/SyncHelper$SyncSource;

    move-object/from16 v0, p1

    invoke-static {v0, v10, v11}, Lcom/google/glass/sync/SyncHelper;->triggerSync(Landroid/content/Context;Ljava/lang/String;Lcom/google/glass/sync/SyncHelper$SyncSource;)V

    goto/16 :goto_0
.end method
