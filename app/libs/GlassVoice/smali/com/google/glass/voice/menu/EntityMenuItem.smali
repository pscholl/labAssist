.class public abstract Lcom/google/glass/voice/menu/EntityMenuItem;
.super Lcom/google/glass/voice/menu/VoiceMenuItem;
.source "EntityMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/menu/EntityMenuItem$ShareTargetMenuItem;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;

.field static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field public final entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/google/glass/voice/menu/EntityMenuItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/menu/EntityMenuItem;->TAG:Ljava/lang/String;

    .line 34
    sget-object v0, Lcom/google/glass/voice/menu/EntityMenuItem;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/menu/EntityMenuItem;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
    .locals 0
    .parameter "entity"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/glass/voice/menu/VoiceMenuItem;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/glass/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 41
    return-void
.end method

.method public varargs constructor <init>(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;[Lcom/google/glass/voice/menu/Requirement;)V
    .locals 1
    .parameter "entity"
    .parameter "requirements"

    .prologue
    .line 44
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;-><init>(Ljava/util/List;)V

    .line 45
    iput-object p1, p0, Lcom/google/glass/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 46
    return-void
.end method

.method public static toSendMenuItems(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "sendTarget"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/menu/EntityMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, entities:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    new-instance v0, Lcom/google/glass/voice/menu/EntityMenuItem$2;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/menu/EntityMenuItem$2;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    invoke-static {p1, v0}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static toShareMenuItems(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "shareTarget"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/menu/EntityMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, entities:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    new-instance v0, Lcom/google/glass/voice/menu/EntityMenuItem$1;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/menu/EntityMenuItem$1;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    invoke-static {p1, v0}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 77
    if-ne p0, p1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v1

    .line 80
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 81
    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 84
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 86
    check-cast v0, Lcom/google/glass/voice/menu/EntityMenuItem;

    .line 87
    .local v0, other:Lcom/google/glass/voice/menu/EntityMenuItem;
    iget-object v3, p0, Lcom/google/glass/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v3, :cond_4

    .line 88
    iget-object v3, v0, Lcom/google/glass/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v3, :cond_0

    move v1, v2

    .line 89
    goto :goto_0

    .line 91
    :cond_4
    iget-object v3, p0, Lcom/google/glass/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v4, v0, Lcom/google/glass/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 92
    goto :goto_0
.end method

.method public getEntity()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/glass/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    return-object v0
.end method

.method public getHotwordLiteral(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/glass/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v0}, Lcom/google/glass/entity/EntityHelper;->getDisplayName(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/glass/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v0}, Lcom/google/glass/entity/EntityHelper;->getDisplayName(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 69
    const/16 v0, 0x1f

    .line 70
    .local v0, prime:I
    const/4 v1, 0x1

    .line 71
    .local v1, result:I
    iget-object v2, p0, Lcom/google/glass/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 72
    return v1

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/google/glass/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EntityMenuItem [entity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
