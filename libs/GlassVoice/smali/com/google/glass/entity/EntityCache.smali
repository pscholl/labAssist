.class public Lcom/google/glass/entity/EntityCache;
.super Ljava/lang/Object;
.source "EntityCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/entity/EntityCache$EntityData;
    }
.end annotation


# static fields
.field public static final ACTION_ENTITY_CACHE_CHANGED:Ljava/lang/String; = "com.google.glass.action.ENTITY_CACHE_CHANGED"

.field private static final CAN_HANGOUT:Lcom/google/common/base/Predicate; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_ENTITY_COMPARATOR:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENTITYDATA_TO_ENTITY_FUNCTION:Lcom/google/common/base/Function; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation
.end field

.field public static final HANGOUTS_SHARE_TARGETS_BLACKLIST:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_COMMUNICATION_TARGET:Lcom/google/common/base/Predicate; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_HANGOUT_ENTITY:Lcom/google/common/base/Predicate; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_IN_SHARE_TARGET_BLACKLIST:Lcom/google/common/base/Predicate; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_NOT_IN_SHARE_TARGET_BLACKLIST:Lcom/google/common/base/Predicate; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_PLUS_ENTITY:Lcom/google/common/base/Predicate; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_SEND_MENU_TARGET:Lcom/google/common/base/Predicate; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_SHARE_MENU_TARGET:Lcom/google/common/base/Predicate; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_SHARE_TARGET:Lcom/google/common/base/Predicate; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_SPEAKABLE:Lcom/google/common/base/Predicate; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_SPEAKABLE_MIRROR_SHARE_TARGETS_PER_SOURCE:I = 0x3

.field public static final MAX_SPEAKABLE_TARGETS:I = 0xf

.field private static final RECENT_ENTITIES_MAX_NUMBER:I = 0x4

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static packageNameForTest:Ljava/lang/String;

.field private static sharedInstance:Lcom/google/glass/entity/EntityCache;


# instance fields
.field private final clock:Lcom/google/glass/util/Clock;

.field private final context:Landroid/content/Context;

.field private final entityChangeObserver:Landroid/database/ContentObserver;

.field private final entityDataCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/EntityCache;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 86
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "PUBLIC"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DASHER_DOMAIN"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "YOUR_CIRCLES"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/EntityCache;->HANGOUTS_SHARE_TARGETS_BLACKLIST:Ljava/util/Set;

    .line 96
    new-instance v0, Lcom/google/glass/entity/EntityCache$1;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityCache$1;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->ENTITYDATA_TO_ENTITY_FUNCTION:Lcom/google/common/base/Function;

    .line 105
    new-instance v0, Lcom/google/glass/entity/EntityCache$2;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityCache$2;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->IS_SPEAKABLE:Lcom/google/common/base/Predicate;

    .line 119
    new-instance v0, Lcom/google/glass/entity/EntityCache$3;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityCache$3;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->IS_COMMUNICATION_TARGET:Lcom/google/common/base/Predicate;

    .line 130
    new-instance v0, Lcom/google/glass/entity/EntityCache$4;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityCache$4;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->IS_PLUS_ENTITY:Lcom/google/common/base/Predicate;

    .line 141
    new-instance v0, Lcom/google/glass/entity/EntityCache$5;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityCache$5;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->IS_IN_SHARE_TARGET_BLACKLIST:Lcom/google/common/base/Predicate;

    .line 153
    sget-object v0, Lcom/google/glass/entity/EntityCache;->IS_IN_SHARE_TARGET_BLACKLIST:Lcom/google/common/base/Predicate;

    invoke-static {v0}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/EntityCache;->IS_NOT_IN_SHARE_TARGET_BLACKLIST:Lcom/google/common/base/Predicate;

    .line 160
    new-instance v0, Lcom/google/glass/entity/EntityCache$6;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityCache$6;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->IS_SHARE_TARGET:Lcom/google/common/base/Predicate;

    .line 168
    new-instance v0, Lcom/google/glass/entity/EntityCache$7;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityCache$7;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->IS_SEND_MENU_TARGET:Lcom/google/common/base/Predicate;

    .line 176
    new-instance v0, Lcom/google/glass/entity/EntityCache$8;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityCache$8;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->IS_SHARE_MENU_TARGET:Lcom/google/common/base/Predicate;

    .line 186
    new-instance v0, Lcom/google/glass/entity/EntityCache$9;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityCache$9;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->IS_HANGOUT_ENTITY:Lcom/google/common/base/Predicate;

    .line 194
    new-instance v0, Lcom/google/glass/entity/EntityCache$10;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityCache$10;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->CAN_HANGOUT:Lcom/google/common/base/Predicate;

    .line 202
    new-instance v0, Lcom/google/glass/entity/EntityCache$11;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityCache$11;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityCache;->DEFAULT_ENTITY_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 247
    new-instance v0, Lcom/google/glass/util/Clock$Impl;

    invoke-direct {v0}, Lcom/google/glass/util/Clock$Impl;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/glass/entity/EntityCache;-><init>(Landroid/content/Context;Lcom/google/glass/util/Clock;)V

    .line 248
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/glass/util/Clock;)V
    .locals 3
    .parameter "context"
    .parameter "clock"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    if-nez p1, :cond_0

    .line 253
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 255
    :cond_0
    iput-object p1, p0, Lcom/google/glass/entity/EntityCache;->context:Landroid/content/Context;

    .line 256
    iput-object p2, p0, Lcom/google/glass/entity/EntityCache;->clock:Lcom/google/glass/util/Clock;

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/entity/EntityCache;->entityDataCache:Ljava/util/List;

    .line 259
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 260
    new-instance v0, Lcom/google/glass/entity/EntityCache$12;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/google/glass/entity/EntityCache$12;-><init>(Lcom/google/glass/entity/EntityCache;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/glass/entity/EntityCache;->entityChangeObserver:Landroid/database/ContentObserver;

    .line 282
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/google/glass/entity/EntityCache;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/google/glass/entity/EntityCache;->DEFAULT_ENTITY_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/util/MimeTypeMatcher;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-static {p0, p1}, Lcom/google/glass/entity/EntityCache;->matchesItem(Lcom/google/glass/util/MimeTypeMatcher;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    return v0
.end method

.method private addUniqueHangoutEntities(Ljava/util/List;I)V
    .locals 7
    .parameter
    .parameter "maxListSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 381
    .local p1, communicationTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-lt v6, p2, :cond_1

    .line 407
    :cond_0
    return-void

    .line 385
    :cond_1
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    .line 386
    .local v1, communicationIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/entity/EntityCache$EntityData;

    .line 387
    .local v0, communicationEntity:Lcom/google/glass/entity/EntityCache$EntityData;
    iget-object v6, v0, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v6}, Lcom/google/glass/entity/EntityHelper;->getMessagingPersona(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    move-result-object v5

    .line 388
    .local v5, persona:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    if-eqz v5, :cond_2

    invoke-static {v5}, Lcom/google/glass/entity/EntityHelper;->isHangoutPersona(Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getPersonaId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 390
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getPersonaId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 394
    .end local v0           #communicationEntity:Lcom/google/glass/entity/EntityCache$EntityData;
    .end local v5           #persona:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    :cond_3
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 395
    .local v3, hangoutsEntitiesToAdd:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    invoke-direct {p0}, Lcom/google/glass/entity/EntityCache;->getHangoutEntities()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/entity/EntityCache$EntityData;

    .line 396
    .local v2, hangoutEntity:Lcom/google/glass/entity/EntityCache$EntityData;
    iget-object v6, v2, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getObfuscatedGaiaId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v6, v2, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getObfuscatedGaiaId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 398
    :cond_5
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 402
    .end local v2           #hangoutEntity:Lcom/google/glass/entity/EntityCache$EntityData;
    :cond_6
    invoke-virtual {p0, v3}, Lcom/google/glass/entity/EntityCache;->sortShareTargets(Ljava/util/List;)V

    .line 404
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, p2, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 405
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private extractRecentShareTargets(Ljava/util/List;Z)Ljava/util/List;
    .locals 13
    .parameter
    .parameter "includeCreationTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, shareTargetsData:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    const/4 v12, 0x4

    .line 721
    iget-object v8, p0, Lcom/google/glass/entity/EntityCache;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v8}, Lcom/google/glass/util/Clock;->currentTimeMillis()J

    move-result-wide v8

    sget-wide v10, Lcom/google/glass/entity/EntityProvider;->RECENT_ENTITIES_INTERVAL_MILLIS_CUTOFF:J

    sub-long v2, v8, v10

    .line 725
    .local v2, recentBoostCutoffMillis:J
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 726
    .local v5, recentShares:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/glass/entity/EntityCache$EntityData;

    .line 727
    .local v7, shareTargetData:Lcom/google/glass/entity/EntityCache$EntityData;
    iget-wide v8, v7, Lcom/google/glass/entity/EntityCache$EntityData;->lastShareMillis:J

    cmp-long v8, v8, v2

    if-gtz v8, :cond_1

    if-eqz p2, :cond_0

    iget-object v8, v7, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v8}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getCreationTime()J

    move-result-wide v8

    cmp-long v8, v8, v2

    if-lez v8, :cond_0

    .line 730
    :cond_1
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 736
    .end local v7           #shareTargetData:Lcom/google/glass/entity/EntityCache$EntityData;
    :cond_2
    new-instance v8, Lcom/google/glass/entity/EntityCache$13;

    invoke-direct {v8, p0, p2}, Lcom/google/glass/entity/EntityCache$13;-><init>(Lcom/google/glass/entity/EntityCache;Z)V

    invoke-static {v5, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 768
    invoke-static {v12}, Lcom/google/common/collect/Lists;->newArrayListWithExpectedSize(I)Ljava/util/ArrayList;

    move-result-object v6

    .line 769
    .local v6, retVal:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8, v12}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-ge v0, v8, :cond_3

    .line 770
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/glass/entity/EntityCache$EntityData;

    .line 771
    .local v4, recentEntityData:Lcom/google/glass/entity/EntityCache$EntityData;
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 775
    invoke-interface {p1, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 769
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 778
    .end local v4           #recentEntityData:Lcom/google/glass/entity/EntityCache$EntityData;
    :cond_3
    return-object v6
.end method

.method static fromCursorToEntityData(Landroid/database/Cursor;)Lcom/google/glass/entity/EntityCache$EntityData;
    .locals 14
    .parameter "cursor"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 906
    invoke-static {p0}, Lcom/google/glass/entity/EntityHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v1

    .line 909
    .local v1, entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 910
    .local v2, phoneNumbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "phone_number"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 911
    .local v11, primaryPhone:Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 912
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 914
    :cond_0
    const-string v0, "secondary_phone_numbers"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 916
    .local v13, secondaryPhoneListStr:Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 917
    const-string v0, ","

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .local v8, arr$:[Ljava/lang/String;
    array-length v10, v8

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_0
    if-ge v9, v10, :cond_1

    aget-object v12, v8, v9

    .line 919
    .local v12, secondaryPhone:Ljava/lang/String;
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 917
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 924
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v12           #secondaryPhone:Ljava/lang/String;
    :cond_1
    const-string v0, "email"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 926
    .local v3, sanitizedEmail:Ljava/lang/String;
    const-string v0, "share_time"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 927
    .local v4, lastShareMillis:J
    const-string v0, "share_count"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 928
    .local v6, shareCount:I
    const-string v0, "share_priority"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 929
    .local v7, priority:I
    new-instance v0, Lcom/google/glass/entity/EntityCache$EntityData;

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/entity/EntityCache$EntityData;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Ljava/util/List;Ljava/lang/String;JII)V

    return-object v0
.end method

.method private static getEntities(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 715
    .local p0, input:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    invoke-static {p0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/google/glass/entity/EntityCache;->ENTITYDATA_TO_ENTITY_FUNCTION:Lcom/google/common/base/Function;

    invoke-static {v0, v1}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getEntities(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 710
    .local p0, input:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    sget-object v0, Lcom/google/glass/entity/EntityCache;->ENTITYDATA_TO_ENTITY_FUNCTION:Lcom/google/common/base/Function;

    invoke-static {p0, v0}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private varargs getFilteredCachedEntitiesAsList([Lcom/google/common/base/Predicate;)Ljava/util/List;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 455
    .local p1, predicates:[Lcom/google/common/base/Predicate;,"[Lcom/google/common/base/Predicate<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache;->entityDataCache:Ljava/util/List;

    invoke-static {p1}, Lcom/google/common/base/Predicates;->and([Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getHangoutEntities()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 440
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/base/Predicate;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/glass/entity/EntityCache;->IS_HANGOUT_ENTITY:Lcom/google/common/base/Predicate;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/entity/EntityCache;->getFilteredCachedEntitiesAsList([Lcom/google/common/base/Predicate;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getMatchingItemPredicate(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/common/base/Predicate;
    .locals 1
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ")",
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 782
    new-instance v0, Lcom/google/glass/entity/EntityCache$14;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/entity/EntityCache$14;-><init>(Lcom/google/glass/entity/EntityCache;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    return-object v0
.end method

.method private declared-synchronized getMatchingShareEntities(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/util/List;
    .locals 4
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 522
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Lcom/google/common/base/Predicate;

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/google/glass/entity/EntityCache;->getMatchingItemPredicate(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/common/base/Predicate;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v1}, Lcom/google/glass/entity/EntityCache;->getFilteredCachedEntitiesAsList([Lcom/google/common/base/Predicate;)Ljava/util/List;

    move-result-object v0

    .line 524
    .local v0, matchingShareTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityCache;->sortShareTargets(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    monitor-exit p0

    return-object v0

    .line 522
    .end local v0           #matchingShareTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getPlusShareTargets(I)Ljava/util/List;
    .locals 4
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 634
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/google/common/base/Predicate;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/glass/entity/EntityCache;->IS_SHARE_TARGET:Lcom/google/common/base/Predicate;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/google/glass/entity/EntityCache;->IS_PLUS_ENTITY:Lcom/google/common/base/Predicate;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/google/glass/entity/EntityCache;->IS_NOT_IN_SHARE_TARGET_BLACKLIST:Lcom/google/common/base/Predicate;

    aput-object v3, v1, v2

    invoke-direct {p0, v1}, Lcom/google/glass/entity/EntityCache;->getFilteredCachedEntitiesAsList([Lcom/google/common/base/Predicate;)Ljava/util/List;

    move-result-object v0

    .line 637
    .local v0, shareTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityCache;->sortShareTargets(Ljava/util/List;)V

    .line 638
    invoke-static {v0, p1}, Lcom/google/glass/entity/EntityCache;->subList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/entity/EntityCache;->getEntities(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getSharedInstance()Lcom/google/glass/entity/EntityCache;
    .locals 1

    .prologue
    .line 292
    sget-object v0, Lcom/google/glass/entity/EntityCache;->sharedInstance:Lcom/google/glass/entity/EntityCache;

    return-object v0
.end method

.method private static matchesItem(Lcom/google/glass/util/MimeTypeMatcher;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 6
    .parameter "matcher"
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 828
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "text/plain"

    invoke-virtual {p0, v5}, Lcom/google/glass/util/MimeTypeMatcher;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 845
    :cond_0
    :goto_0
    return v4

    .line 831
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getHtml()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "text/html"

    invoke-virtual {p0, v5}, Lcom/google/glass/util/MimeTypeMatcher;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 834
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCanonicalUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "application/url"

    invoke-virtual {p0, v5}, Lcom/google/glass/util/MimeTypeMatcher;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 838
    :cond_3
    iget-object v5, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v5}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 839
    iget-object v0, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    .line 840
    .local v1, attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/glass/util/MimeTypeMatcher;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 839
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 845
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .end local v1           #attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_4
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static setPackageNameForTest(Ljava/lang/String;)V
    .locals 0
    .parameter "packageNameForTest"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 297
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 298
    sput-object p0, Lcom/google/glass/entity/EntityCache;->packageNameForTest:Ljava/lang/String;

    .line 299
    return-void
.end method

.method public static declared-synchronized setSharedInstance(Lcom/google/glass/entity/EntityCache;)V
    .locals 3
    .parameter "instance"

    .prologue
    .line 285
    const-class v1, Lcom/google/glass/entity/EntityCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/glass/entity/EntityCache;->sharedInstance:Lcom/google/glass/entity/EntityCache;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/glass/predicates/Assert;->isTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Shared instance should only be set once"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 288
    :cond_0
    :try_start_1
    sput-object p0, Lcom/google/glass/entity/EntityCache;->sharedInstance:Lcom/google/glass/entity/EntityCache;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    monitor-exit v1

    return-void
.end method

.method private sortByShareInfo(Ljava/util/List;Z)V
    .locals 2
    .parameter
    .parameter "includeCreationTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 700
    .local p1, entities:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/glass/entity/EntityCache;->extractRecentShareTargets(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 703
    .local v0, recentEntities:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    sget-object v1, Lcom/google/glass/entity/EntityCache;->DEFAULT_ENTITY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 704
    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 705
    return-void
.end method

.method private static subList(Ljava/util/List;I)Ljava/util/List;
    .locals 2
    .parameter
    .parameter "maxSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1033
    .local p0, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-interface {p0, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static trimShareTargets(Ljava/util/List;II)Ljava/util/List;
    .locals 10
    .parameter
    .parameter "totalMax"
    .parameter "maxPerSource"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;II)",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    const v9, 0x7fffffff

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 581
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    if-lez p1, :cond_0

    move v6, v7

    :goto_0
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 583
    if-lez p2, :cond_1

    :goto_1
    invoke-static {v7}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 585
    if-ne p1, v9, :cond_2

    if-ne p2, v9, :cond_2

    .line 615
    .end local p0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    :goto_2
    return-object p0

    .restart local p0       #list:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    :cond_0
    move v6, v8

    .line 582
    goto :goto_0

    :cond_1
    move v7, v8

    .line 583
    goto :goto_1

    .line 589
    :cond_2
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 590
    .local v0, countsBySource:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 591
    .local v5, trimmed:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 592
    .local v1, entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, p1, :cond_5

    .end local v1           #entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_4
    move-object p0, v5

    .line 615
    goto :goto_2

    .line 596
    .restart local v1       #entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_5
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getSource()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 597
    .local v4, source:Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 598
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    :cond_6
    invoke-static {v1}, Lcom/google/glass/entity/EntityHelper;->isPlusIndividualEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 604
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v3, v6, 0x1

    .line 605
    .local v3, newCountForSource:I
    if-gt v3, p2, :cond_3

    .line 609
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    .end local v3           #newCountForSource:I
    :cond_7
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method


# virtual methods
.method public declared-synchronized getAllShareTargets()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 648
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Lcom/google/common/base/Predicate;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/glass/entity/EntityCache;->IS_SHARE_TARGET:Lcom/google/common/base/Predicate;

    aput-object v3, v1, v2

    invoke-direct {p0, v1}, Lcom/google/glass/entity/EntityCache;->getFilteredCachedEntitiesAsList([Lcom/google/common/base/Predicate;)Ljava/util/List;

    move-result-object v0

    .line 649
    .local v0, shareTargetsData:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityCache;->sortShareTargets(Ljava/util/List;)V

    .line 650
    invoke-static {v0}, Lcom/google/glass/entity/EntityCache;->getEntities(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 648
    .end local v0           #shareTargetsData:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getEntityByGuid(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 13
    .parameter "entityGuid"

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1001
    const/4 v5, 0x0

    .line 1002
    .local v5, source:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1003
    .local v1, entityId:Ljava/lang/String;
    const-string v7, "entity_guid:"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1004
    const-string v7, "entity_guid:"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    .line 1005
    .local v6, sourceIdx:I
    const-string v7, "/"

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 1007
    .local v4, separatorIdx:I
    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1008
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1011
    .end local v4           #separatorIdx:I
    .end local v6           #sourceIdx:I
    :cond_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1012
    :cond_1
    sget-object v7, Lcom/google/glass/entity/EntityCache;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Unrecognized entity GUID format [entityGuid=%s]."

    new-array v10, v12, [Ljava/lang/Object;

    aput-object p1, v10, v11

    invoke-interface {v7, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v8

    .line 1025
    :cond_2
    :goto_0
    return-object v0

    .line 1016
    :cond_3
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v7, p0, Lcom/google/glass/entity/EntityCache;->entityDataCache:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    .local v3, n:I
    :goto_1
    if-ge v2, v3, :cond_5

    .line 1017
    iget-object v7, p0, Lcom/google/glass/entity/EntityCache;->entityDataCache:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/glass/entity/EntityCache$EntityData;

    iget-object v0, v7, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 1018
    .local v0, entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getSource()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1016
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1023
    .end local v0           #entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_5
    sget-object v7, Lcom/google/glass/entity/EntityCache;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "No entity found for GUID [entityGuid=%s, source=%s, entityId=%s"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    aput-object p1, v10, v11

    aput-object v5, v10, v12

    const/4 v11, 0x2

    aput-object v1, v10, v11

    invoke-interface {v7, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v8

    .line 1025
    goto :goto_0
.end method

.method public declared-synchronized getFirstEntityForEmail(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 2
    .parameter "email"

    .prologue
    .line 852
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/glass/entity/EntityCache;->getFirstEntityForEmail(Ljava/lang/String;ZZ)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getFirstEntityForEmail(Ljava/lang/String;ZZ)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 6
    .parameter "email"
    .parameter "shareTargetsOnly"
    .parameter "plusShareTargetsOnly"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 868
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 869
    const/4 v0, 0x0

    .line 901
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 872
    :cond_1
    const/4 v0, 0x0

    .line 873
    .local v0, entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    const/4 v5, 0x1

    :try_start_1
    invoke-static {p1, v5}, Lcom/google/glass/entity/EntityHelper;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 874
    .local v2, formattedEmail:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    iget-object v5, p0, Lcom/google/glass/entity/EntityCache;->entityDataCache:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .local v4, n:I
    :goto_1
    if-ge v3, v4, :cond_0

    .line 875
    iget-object v5, p0, Lcom/google/glass/entity/EntityCache;->entityDataCache:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/entity/EntityCache$EntityData;

    .line 876
    .local v1, entityData:Lcom/google/glass/entity/EntityCache$EntityData;
    iget-object v5, v1, Lcom/google/glass/entity/EntityCache$EntityData;->sanitizedEmail:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 878
    if-eqz p3, :cond_2

    .line 879
    iget-object v5, v1, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v5}, Lcom/google/glass/entity/EntityHelper;->isPlusEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 880
    iget-object v0, v1, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    goto :goto_0

    .line 887
    :cond_2
    if-eqz p2, :cond_4

    iget-object v5, v1, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v5}, Lcom/google/glass/entity/EntityHelper;->isShareTarget(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 874
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 893
    :cond_4
    iget-object v5, v1, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v5}, Lcom/google/glass/entity/EntityHelper;->isPlusEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 894
    iget-object v0, v1, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    goto :goto_0

    .line 895
    :cond_5
    iget-object v5, v1, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v5}, Lcom/google/glass/entity/EntityHelper;->isFocusEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v5

    if-nez v5, :cond_6

    if-nez v0, :cond_3

    .line 896
    :cond_6
    iget-object v0, v1, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 868
    .end local v0           #entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .end local v1           #entityData:Lcom/google/glass/entity/EntityCache$EntityData;
    .end local v2           #formattedEmail:Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #n:I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized getFirstEntityForPhoneNumber(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 9
    .parameter "phoneNumber"

    .prologue
    const/4 v7, 0x0

    .line 979
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_1

    .line 993
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v7

    .line 983
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/google/glass/util/PhoneNumberUtils;->formatPhoneNumberForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 984
    .local v1, formattedPhoneNumber:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    iget-object v8, p0, Lcom/google/glass/entity/EntityCache;->entityDataCache:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    .local v5, n:I
    :goto_1
    if-ge v3, v5, :cond_0

    .line 985
    iget-object v8, p0, Lcom/google/glass/entity/EntityCache;->entityDataCache:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/entity/EntityCache$EntityData;

    .line 986
    .local v0, entityData:Lcom/google/glass/entity/EntityCache$EntityData;
    iget-object v2, v0, Lcom/google/glass/entity/EntityCache$EntityData;->formattedPhoneNumbers:Ljava/util/List;

    .line 987
    .local v2, formattedPhoneNumbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, ii:I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    .local v6, nn:I
    :goto_2
    if-ge v4, v6, :cond_3

    .line 988
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 989
    iget-object v7, v0, Lcom/google/glass/entity/EntityCache$EntityData;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 987
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 984
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 979
    .end local v0           #entityData:Lcom/google/glass/entity/EntityCache$EntityData;
    .end local v1           #formattedPhoneNumber:Ljava/lang/String;
    .end local v2           #formattedPhoneNumbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #i:I
    .end local v4           #ii:I
    .end local v5           #n:I
    .end local v6           #nn:I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method getLimitedMirrorCommandEntities(II)Lcom/google/common/collect/ListMultimap;
    .locals 12
    .parameter "maxTotal"
    .parameter "maxPerSource"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/ListMultimap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 546
    invoke-static {}, Lcom/google/common/collect/ArrayListMultimap;->create()Lcom/google/common/collect/ArrayListMultimap;

    move-result-object v7

    .line 548
    .local v7, mm:Lcom/google/common/collect/ListMultimap;,"Lcom/google/common/collect/ListMultimap<Ljava/lang/Integer;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-virtual {p0}, Lcom/google/glass/entity/EntityCache;->getAllShareTargets()Ljava/util/List;

    move-result-object v1

    .line 549
    .local v1, allShareTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    if-eqz v1, :cond_1

    .line 550
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 551
    .local v8, shareTarget:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    iget-object v11, v8, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    invoke-static {v11}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 552
    iget-object v2, v8, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    .local v2, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    array-length v6, v2

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v0, v2, v5

    .line 553
    .local v0, acceptedCommand:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->getType()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v11, v8}, Lcom/google/common/collect/ListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 552
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 559
    .end local v0           #acceptedCommand:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .end local v2           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v8           #shareTarget:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_1
    invoke-interface {v7}, Lcom/google/common/collect/ListMultimap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 564
    .local v3, availableCommand:I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v11}, Lcom/google/common/collect/ListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-static {v11}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v10

    .line 565
    .local v10, untrimmed:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-static {v10, p1, p2}, Lcom/google/glass/entity/EntityCache;->trimShareTargets(Ljava/util/List;II)Ljava/util/List;

    move-result-object v9

    .line 567
    .local v9, trimmed:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v11, v9}, Lcom/google/common/collect/ListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;

    goto :goto_1

    .line 570
    .end local v3           #availableCommand:I
    .end local v9           #trimmed:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    .end local v10           #untrimmed:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    :cond_2
    return-object v7
.end method

.method public getMirrorCommandEntities()Lcom/google/common/collect/ListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ListMultimap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    const v0, 0x7fffffff

    .line 534
    invoke-virtual {p0, v0, v0}, Lcom/google/glass/entity/EntityCache;->getLimitedMirrorCommandEntities(II)Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getPictureUrlViaEmail(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;
    .locals 2
    .parameter "entity"

    .prologue
    .line 957
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hasId()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hasEmail()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 958
    const/4 v1, 0x0

    .line 972
    :goto_0
    monitor-exit p0

    return-object v1

    .line 962
    :cond_0
    const/4 v0, 0x0

    .line 964
    .local v0, entityByEmail:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :try_start_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hasId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 965
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/glass/entity/EntityCache;->getFirstEntityForEmail(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    .line 968
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hasEmail()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 969
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/glass/entity/EntityCache;->getFirstEntityForEmail(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    .line 972
    :cond_2
    invoke-static {v0}, Lcom/google/glass/entity/EntityHelper;->getFirstImageUrl(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 957
    .end local v0           #entityByEmail:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getPictureUrlViaPhoneNumber(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;
    .locals 2
    .parameter "entity"

    .prologue
    .line 941
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hasPhoneNumber()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 942
    const/4 v1, 0x0

    .line 947
    :goto_0
    monitor-exit p0

    return-object v1

    .line 946
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/glass/entity/EntityCache;->getFirstEntityForPhoneNumber(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    .line 947
    .local v0, entityByPhoneNumber:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-static {v0}, Lcom/google/glass/entity/EntityHelper;->getFirstImageUrl(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 941
    .end local v0           #entityByPhoneNumber:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getShareTargetEntityData(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/Iterable;
    .locals 2
    .parameter "item"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 500
    if-nez p1, :cond_0

    .line 501
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 508
    :goto_0
    return-object v0

    .line 504
    :cond_0
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->MSG_GW:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    invoke-direct {p0, p1}, Lcom/google/glass/entity/EntityCache;->getMatchingShareEntities(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/google/glass/entity/EntityCache;->IS_SHARE_MENU_TARGET:Lcom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object v0

    goto :goto_0

    .line 508
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/glass/entity/EntityCache;->getMatchingShareEntities(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized getShareTargets(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/util/List;
    .locals 1
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 495
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/glass/entity/EntityCache;->getShareTargetEntityData(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/entity/EntityCache;->getEntities(Ljava/lang/Iterable;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getSpeakableMessagingTargets()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 370
    monitor-enter p0

    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Lcom/google/common/base/Predicate;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/glass/entity/EntityCache;->IS_COMMUNICATION_TARGET:Lcom/google/common/base/Predicate;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/google/glass/entity/EntityCache;->IS_SPEAKABLE:Lcom/google/common/base/Predicate;

    aput-object v3, v1, v2

    invoke-direct {p0, v1}, Lcom/google/glass/entity/EntityCache;->getFilteredCachedEntitiesAsList([Lcom/google/common/base/Predicate;)Ljava/util/List;

    move-result-object v0

    .line 372
    .local v0, communicationTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->MSG_GW:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    const/16 v1, 0xf

    invoke-direct {p0, v0, v1}, Lcom/google/glass/entity/EntityCache;->addUniqueHangoutEntities(Ljava/util/List;I)V

    .line 376
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityCache;->sortEntities(Ljava/util/List;)V

    .line 377
    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/google/glass/entity/EntityCache;->subList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/entity/EntityCache;->getEntities(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 370
    .end local v0           #communicationTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getSpeakableMirrorCommandEntities()Lcom/google/common/collect/ListMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ListMultimap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 529
    const/16 v0, 0xf

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/entity/EntityCache;->getLimitedMirrorCommandEntities(II)Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized getSpeakablePhoneCallTargets()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 415
    monitor-enter p0

    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Lcom/google/common/base/Predicate;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/glass/entity/EntityCache;->IS_COMMUNICATION_TARGET:Lcom/google/common/base/Predicate;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/google/glass/entity/EntityCache;->IS_SPEAKABLE:Lcom/google/common/base/Predicate;

    aput-object v3, v1, v2

    invoke-direct {p0, v1}, Lcom/google/glass/entity/EntityCache;->getFilteredCachedEntitiesAsList([Lcom/google/common/base/Predicate;)Ljava/util/List;

    move-result-object v0

    .line 418
    .local v0, communicationTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityCache;->sortEntities(Ljava/util/List;)V

    .line 419
    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/google/glass/entity/EntityCache;->subList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/entity/EntityCache;->getEntities(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 415
    .end local v0           #communicationTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized getSpeakablePlusShareTargets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 448
    monitor-enter p0

    const/16 v0, 0xf

    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/glass/entity/EntityCache;->getPlusShareTargets(I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getSpeakableSendTargets(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/util/List;
    .locals 4
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 465
    monitor-enter p0

    if-nez p1, :cond_0

    .line 466
    :try_start_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 477
    :goto_0
    monitor-exit p0

    return-object v1

    .line 469
    :cond_0
    const/4 v1, 0x3

    :try_start_1
    new-array v1, v1, [Lcom/google/common/base/Predicate;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/glass/entity/EntityCache;->IS_SEND_MENU_TARGET:Lcom/google/common/base/Predicate;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/google/glass/entity/EntityCache;->IS_SPEAKABLE:Lcom/google/common/base/Predicate;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-direct {p0, p1}, Lcom/google/glass/entity/EntityCache;->getMatchingItemPredicate(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/common/base/Predicate;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v1}, Lcom/google/glass/entity/EntityCache;->getFilteredCachedEntitiesAsList([Lcom/google/common/base/Predicate;)Ljava/util/List;

    move-result-object v0

    .line 471
    .local v0, matchingSendTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->MSG_GW:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 472
    const/16 v1, 0xf

    invoke-direct {p0, v0, v1}, Lcom/google/glass/entity/EntityCache;->addUniqueHangoutEntities(Ljava/util/List;I)V

    .line 475
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityCache;->sortEntities(Ljava/util/List;)V

    .line 477
    invoke-static {v0}, Lcom/google/glass/entity/EntityCache;->getEntities(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v1, v2}, Lcom/google/glass/entity/EntityCache;->subList(Ljava/util/List;I)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 465
    .end local v0           #matchingSendTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized getSpeakableShareTargets(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/util/List;
    .locals 3
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 485
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/glass/entity/EntityCache;->getShareTargetEntityData(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/Iterable;

    move-result-object v0

    sget-object v1, Lcom/google/glass/entity/EntityCache;->IS_SPEAKABLE:Lcom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/entity/EntityCache;->getEntities(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xf

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/google/glass/entity/EntityCache;->trimShareTargets(Ljava/util/List;II)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getSpeakableVideoCallTargets()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 428
    monitor-enter p0

    const/4 v1, 0x3

    :try_start_0
    new-array v1, v1, [Lcom/google/common/base/Predicate;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/glass/entity/EntityCache;->IS_COMMUNICATION_TARGET:Lcom/google/common/base/Predicate;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/google/glass/entity/EntityCache;->IS_SPEAKABLE:Lcom/google/common/base/Predicate;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/google/glass/entity/EntityCache;->CAN_HANGOUT:Lcom/google/common/base/Predicate;

    aput-object v3, v1, v2

    invoke-direct {p0, v1}, Lcom/google/glass/entity/EntityCache;->getFilteredCachedEntitiesAsList([Lcom/google/common/base/Predicate;)Ljava/util/List;

    move-result-object v0

    .line 430
    .local v0, communicationTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->MSG_GW:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    const/16 v1, 0xf

    invoke-direct {p0, v0, v1}, Lcom/google/glass/entity/EntityCache;->addUniqueHangoutEntities(Ljava/util/List;I)V

    .line 434
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityCache;->sortEntities(Ljava/util/List;)V

    .line 435
    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/google/glass/entity/EntityCache;->subList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/entity/EntityCache;->getEntities(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 428
    .end local v0           #communicationTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getVideoCallTargets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 623
    monitor-enter p0

    const v0, 0x7fffffff

    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/glass/entity/EntityCache;->getPlusShareTargets(I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadEntityDataCache()V
    .locals 1

    .prologue
    .line 302
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityCache;->loadEntityDataCache(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    monitor-exit p0

    return-void

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized loadEntityDataCache(Z)V
    .locals 12
    .parameter "skipWhenTest"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 307
    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {}, Lcom/google/glass/predicates/Assert;->isTest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    sget-object v0, Lcom/google/glass/entity/EntityCache;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Not loading entity cache for test"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 311
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 313
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache;->entityDataCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 315
    sget-object v0, Lcom/google/glass/entity/EntityCache;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "loadEntityDataCache started"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    .line 318
    .local v8, startTime:J
    const/4 v7, 0x0

    .line 320
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_2
    const-string v5, "share_time DESC,_id ASC"

    .line 321
    .local v5, orderBy:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/glass/entity/EntityProvider;->URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 322
    if-nez v7, :cond_2

    .line 324
    sget-object v0, Lcom/google/glass/entity/EntityCache;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "null cursor returned for share target query"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 332
    if-eqz v7, :cond_0

    .line 333
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 307
    .end local v5           #orderBy:Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #startTime:J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 328
    .restart local v5       #orderBy:Ljava/lang/String;
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v8       #startTime:J
    :cond_2
    :goto_1
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 329
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache;->entityDataCache:Ljava/util/List;

    invoke-static {v7}, Lcom/google/glass/entity/EntityCache;->fromCursorToEntityData(Landroid/database/Cursor;)Lcom/google/glass/entity/EntityCache$EntityData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 332
    .end local v5           #orderBy:Ljava/lang/String;
    :catchall_1
    move-exception v0

    if-eqz v7, :cond_3

    .line 333
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 332
    .restart local v5       #orderBy:Ljava/lang/String;
    :cond_4
    if-eqz v7, :cond_5

    .line 333
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 337
    :cond_5
    sget-object v0, Lcom/google/glass/entity/EntityCache;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "loadEntityDataCache finished: %sms"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    new-instance v6, Landroid/content/Intent;

    const-string v0, "com.google.glass.action.ENTITY_CACHE_CHANGED"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 347
    .local v6, broadcast:Landroid/content/Intent;
    sget-object v0, Lcom/google/glass/entity/EntityCache;->packageNameForTest:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/glass/entity/EntityCache;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache;->context:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 347
    :cond_6
    sget-object v0, Lcom/google/glass/entity/EntityCache;->packageNameForTest:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public registerSyncChanged()V
    .locals 4

    .prologue
    .line 360
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/glass/entity/EntityProvider;->URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/glass/entity/EntityCache;->entityChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 362
    return-void
.end method

.method public declared-synchronized setEntityDataCacheForTest(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 353
    .local p1, testData:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/glass/predicates/Assert;->isTest()Z

    .line 354
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache;->entityDataCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 355
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache;->entityDataCache:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    monitor-exit p0

    return-void

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method sortEntities(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 684
    .local p1, entities:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/entity/EntityCache;->sortByShareInfo(Ljava/util/List;Z)V

    .line 685
    return-void
.end method

.method sortShareTargets(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/entity/EntityCache$EntityData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 691
    .local p1, entities:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityCache$EntityData;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/glass/entity/EntityCache;->sortByShareInfo(Ljava/util/List;Z)V

    .line 692
    return-void
.end method
