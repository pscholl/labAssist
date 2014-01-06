.class Lcom/google/glass/voice/PackagesChangedReceiver$BroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "PackagesChangedReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/PackagesChangedReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/PackagesChangedReceiver;


# direct methods
.method private constructor <init>(Lcom/google/glass/voice/PackagesChangedReceiver;Landroid/content/IntentFilter;)V
    .locals 1
    .parameter
    .parameter "intentFilter"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/glass/voice/PackagesChangedReceiver$BroadcastReceiver;->this$0:Lcom/google/glass/voice/PackagesChangedReceiver;

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>(Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/voice/PackagesChangedReceiver;Landroid/content/IntentFilter;Lcom/google/glass/voice/PackagesChangedReceiver$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/PackagesChangedReceiver$BroadcastReceiver;-><init>(Lcom/google/glass/voice/PackagesChangedReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method protected getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/glass/voice/PackagesChangedReceiver$BroadcastReceiver;->this$0:Lcom/google/glass/voice/PackagesChangedReceiver;

    invoke-virtual {v0}, Lcom/google/glass/voice/PackagesChangedReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/glass/voice/PackagesChangedReceiver$BroadcastReceiver;->this$0:Lcom/google/glass/voice/PackagesChangedReceiver;

    invoke-virtual {v0}, Lcom/google/glass/voice/PackagesChangedReceiver;->onPackagesChanged()V

    .line 59
    return-void
.end method
