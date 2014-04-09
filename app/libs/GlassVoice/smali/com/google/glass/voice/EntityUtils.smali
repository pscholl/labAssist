.class public Lcom/google/glass/voice/EntityUtils;
.super Ljava/lang/Object;
.source "EntityUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/EntityUtils$QualificationHelper;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final qualificationHelper:Lcom/google/glass/voice/EntityUtils$QualificationHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/EntityUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 96
    new-instance v0, Lcom/google/glass/voice/EntityUtils$QualificationHelper;

    invoke-direct {v0}, Lcom/google/glass/voice/EntityUtils$QualificationHelper;-><init>()V

    sput-object v0, Lcom/google/glass/voice/EntityUtils;->qualificationHelper:Lcom/google/glass/voice/EntityUtils$QualificationHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/glass/voice/EntityUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public static getMirrorCommandEntities()Lcom/google/common/collect/ListMultimap;
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
    .line 25
    invoke-static {}, Lcom/google/glass/entity/EntityCache;->getSharedInstance()Lcom/google/glass/entity/EntityCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/entity/EntityCache;->getSpeakableMirrorCommandEntities()Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static getQualifiedName(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;J)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "entity"
    .parameter "timeoutMs"

    .prologue
    .line 118
    sget-object v0, Lcom/google/glass/voice/EntityUtils;->qualificationHelper:Lcom/google/glass/voice/EntityUtils$QualificationHelper;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/glass/voice/EntityUtils$QualificationHelper;->getQualifiedName(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getQualifiedNameImmediately(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "entity"

    .prologue
    .line 125
    sget-object v0, Lcom/google/glass/voice/EntityUtils;->qualificationHelper:Lcom/google/glass/voice/EntityUtils$QualificationHelper;

    invoke-virtual {v0, p0, p1}, Lcom/google/glass/voice/EntityUtils$QualificationHelper;->getQualifiedNameImmediately(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasOnlyFocusEntities(Ljava/util/Collection;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, entities:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    const/4 v2, 0x0

    .line 30
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v2

    .line 33
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 34
    .local v0, entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-static {v0}, Lcom/google/glass/entity/EntityHelper;->isFocusEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 38
    .end local v0           #entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static preloadQualifiedNames(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, entities:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 133
    .local v0, entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    sget-object v2, Lcom/google/glass/voice/EntityUtils;->qualificationHelper:Lcom/google/glass/voice/EntityUtils$QualificationHelper;

    invoke-virtual {v2, p0, v0}, Lcom/google/glass/voice/EntityUtils$QualificationHelper;->getQualifiedNameImmediately(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    goto :goto_0

    .line 135
    .end local v0           #entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_0
    return-void
.end method
