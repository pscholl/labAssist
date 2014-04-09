.class public final Lcom/google/glass/logging/EventLogUtils;
.super Ljava/lang/Object;
.source "EventLogUtils.java"


# static fields
.field public static final DEFAULT_AGGREGATION_INTERVAL_SECONDS:I = 0x708

.field private static FRAMEWORK_PARAMS:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final FRAMEWORK_TAGS:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/EventLogUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 38
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/glass/logging/EventLogUtils;->FRAMEWORK_TAGS:[I

    .line 49
    invoke-static {}, Lcom/google/glass/logging/EventLogUtils;->createFrameworkParams()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/EventLogUtils;->FRAMEWORK_PARAMS:Lcom/google/common/collect/ImmutableMap;

    return-void

    .line 38
    nop

    :array_0
    .array-data 0x4
        0xa5t 0x42t 0xft 0x0t
        0x9t 0x43t 0xft 0x0t
        0x6dt 0x43t 0xft 0x0t
        0x6et 0x43t 0xft 0x0t
        0x6ft 0x43t 0xft 0x0t
        0x70t 0x43t 0xft 0x0t
        0x71t 0x43t 0xft 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createFrameworkParams()Lcom/google/common/collect/ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 52
    .local v0, tagIdToKeysBuilder:Lcom/google/common/collect/ImmutableMap$Builder;,"Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/Integer;[Ljava/lang/String;>;"
    const v1, 0xf4309

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->PACKAGE_INSTALLED_PARAMS:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 54
    const v1, 0xf436e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->LOCKSCREEN_UNLOCKED_PARAMS:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 56
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    return-object v1
.end method

.method static getData(Landroid/util/EventLog$Event;)Ljava/lang/String;
    .locals 8
    .parameter "event"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p0}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object v3

    .line 100
    .local v3, obj:Ljava/lang/Object;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .local v0, builder:Ljava/lang/StringBuilder;
    instance-of v6, v3, [Ljava/lang/Object;

    if-eqz v6, :cond_0

    .line 104
    check-cast v3, [Ljava/lang/Object;

    .end local v3           #obj:Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    .line 110
    .local v4, objArray:[Ljava/lang/Object;
    :goto_0
    sget-object v6, Lcom/google/glass/logging/EventLogUtils;->FRAMEWORK_PARAMS:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p0}, Landroid/util/EventLog$Event;->getTag()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 112
    .local v5, params:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v6, v4

    if-ge v1, v6, :cond_2

    .line 114
    if-eqz v5, :cond_1

    .line 115
    aget-object v2, v5, v1

    .line 123
    .local v2, key:Ljava/lang/String;
    :goto_2
    aget-object v6, v4, v1

    invoke-static {v0, v2, v6}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 106
    .end local v1           #i:I
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #objArray:[Ljava/lang/Object;
    .end local v5           #params:[Ljava/lang/String;
    .restart local v3       #obj:Ljava/lang/Object;
    :cond_0
    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/Object;

    .line 107
    .restart local v4       #objArray:[Ljava/lang/Object;
    const/4 v6, 0x0

    aput-object v3, v4, v6

    goto :goto_0

    .line 117
    .end local v3           #obj:Ljava/lang/Object;
    .restart local v1       #i:I
    .restart local v5       #params:[Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #key:Ljava/lang/String;
    goto :goto_2

    .line 125
    .end local v2           #key:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method static getFrameworkEvents(J)Ljava/util/List;
    .locals 9
    .parameter "fromThisTimeOnMs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v1, events:Ljava/util/List;,"Ljava/util/List<Landroid/util/EventLog$Event;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v3, protos:Ljava/util/List;,"Ljava/util/List<Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;>;"
    sget-object v4, Lcom/google/glass/logging/EventLogUtils;->FRAMEWORK_TAGS:[I

    invoke-static {v4, v1}, Landroid/util/EventLog;->readEvents([ILjava/util/Collection;)V

    .line 70
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/EventLog$Event;

    .line 71
    .local v0, event:Landroid/util/EventLog$Event;
    invoke-static {v0}, Lcom/google/glass/logging/EventLogUtils;->getMillis(Landroid/util/EventLog$Event;)J

    move-result-wide v4

    cmp-long v4, p0, v4

    if-gez v4, :cond_0

    .line 72
    invoke-static {v0}, Lcom/google/glass/logging/EventLogUtils;->getUserEventAction(Landroid/util/EventLog$Event;)Lcom/google/glass/userevent/UserEventAction;

    move-result-object v4

    invoke-static {v0}, Lcom/google/glass/logging/EventLogUtils;->getMillis(Landroid/util/EventLog$Event;)J

    move-result-wide v5

    invoke-static {v0}, Lcom/google/glass/logging/EventLogUtils;->getData(Landroid/util/EventLog$Event;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/google/glass/userevent/UserEventHelper;->createProto(Lcom/google/glass/userevent/UserEventAction;JLjava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v4, Lcom/google/glass/logging/EventLogUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "%s framework event has been inserted into the proto list"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Lcom/google/glass/logging/EventLogUtils;->getUserEventAction(Landroid/util/EventLog$Event;)Lcom/google/glass/userevent/UserEventAction;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 80
    .end local v0           #event:Landroid/util/EventLog$Event;
    :cond_1
    return-object v3
.end method

.method static getMillis(Landroid/util/EventLog$Event;)J
    .locals 3
    .parameter "event"

    .prologue
    .line 134
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Landroid/util/EventLog$Event;->getTimeNanos()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static getUserEventAction(Landroid/util/EventLog$Event;)Lcom/google/glass/userevent/UserEventAction;
    .locals 6
    .parameter "event"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p0}, Landroid/util/EventLog$Event;->getTag()I

    move-result v1

    invoke-static {v1}, Landroid/util/EventLog;->getTagName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, tagName:Ljava/lang/String;
    sget-object v1, Lcom/google/glass/logging/EventLogUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Name of tag id [%s] is: [%s]."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/util/EventLog$Event;->getTag()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    const-class v1, Lcom/google/glass/userevent/UserEventAction;

    invoke-static {v1, v0}, Lcom/google/glass/userevent/UserEventAction;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/google/glass/userevent/UserEventAction;

    return-object v1
.end method
