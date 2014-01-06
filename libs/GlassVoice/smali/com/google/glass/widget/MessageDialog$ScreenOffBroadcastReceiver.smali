.class Lcom/google/glass/widget/MessageDialog$ScreenOffBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "MessageDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/widget/MessageDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenOffBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/MessageDialog;


# direct methods
.method private constructor <init>(Lcom/google/glass/widget/MessageDialog;)V
    .locals 3
    .parameter

    .prologue
    .line 764
    iput-object p1, p0, Lcom/google/glass/widget/MessageDialog$ScreenOffBroadcastReceiver;->this$0:Lcom/google/glass/widget/MessageDialog;

    .line 765
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.SCREEN_OFF"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 766
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/widget/MessageDialog;Lcom/google/glass/widget/MessageDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 763
    invoke-direct {p0, p1}, Lcom/google/glass/widget/MessageDialog$ScreenOffBroadcastReceiver;-><init>(Lcom/google/glass/widget/MessageDialog;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 777
    invoke-static {}, Lcom/google/glass/widget/MessageDialog;->access$2500()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 770
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$ScreenOffBroadcastReceiver;->this$0:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->onScreenOff()V

    .line 773
    :cond_0
    return-void
.end method
