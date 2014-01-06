.class public abstract Lcom/google/glass/voice/PackagesChangedReceiver;
.super Ljava/lang/Object;
.source "PackagesChangedReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/PackagesChangedReceiver$1;,
        Lcom/google/glass/voice/PackagesChangedReceiver$BroadcastReceiver;
    }
.end annotation


# static fields
.field private static final PACKAGE_CHANGES_ACTIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final receiver:Lcom/google/glass/voice/PackagesChangedReceiver$BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/PackagesChangedReceiver;->PACKAGE_CHANGES_ACTIONS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/google/glass/voice/PackagesChangedReceiver$BroadcastReceiver;

    invoke-static {}, Lcom/google/glass/voice/PackagesChangedReceiver;->createBroadcastReceiverIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/glass/voice/PackagesChangedReceiver$BroadcastReceiver;-><init>(Lcom/google/glass/voice/PackagesChangedReceiver;Landroid/content/IntentFilter;Lcom/google/glass/voice/PackagesChangedReceiver$1;)V

    iput-object v0, p0, Lcom/google/glass/voice/PackagesChangedReceiver;->receiver:Lcom/google/glass/voice/PackagesChangedReceiver$BroadcastReceiver;

    .line 51
    return-void
.end method

.method private static createBroadcastReceiverIntentFilter()Landroid/content/IntentFilter;
    .locals 4

    .prologue
    .line 37
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 38
    .local v1, filter:Landroid/content/IntentFilter;
    sget-object v3, Lcom/google/glass/voice/PackagesChangedReceiver;->PACKAGE_CHANGES_ACTIONS:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 39
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    .end local v0           #action:Ljava/lang/String;
    :cond_0
    const-string v3, "package"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 45
    return-object v1
.end method


# virtual methods
.method public abstract getLogger()Lcom/google/glass/logging/FormattingLogger;
.end method

.method public abstract onPackagesChanged()V
.end method

.method public final registerSelf(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/voice/PackagesChangedReceiver;->receiver:Lcom/google/glass/voice/PackagesChangedReceiver$BroadcastReceiver;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/PackagesChangedReceiver$BroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 25
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/glass/voice/PackagesChangedReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " registered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/PackagesChangedReceiver;->receiver:Lcom/google/glass/voice/PackagesChangedReceiver$BroadcastReceiver;

    invoke-virtual {v1}, Lcom/google/glass/voice/PackagesChangedReceiver$BroadcastReceiver;->isRegistered()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
