.class Lcom/google/glass/widget/VolumeControlDialog$HeadsetPlugBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "VolumeControlDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/widget/VolumeControlDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadsetPlugBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/VolumeControlDialog;


# direct methods
.method private constructor <init>(Lcom/google/glass/widget/VolumeControlDialog;)V
    .locals 3
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/google/glass/widget/VolumeControlDialog$HeadsetPlugBroadcastReceiver;->this$0:Lcom/google/glass/widget/VolumeControlDialog;

    .line 247
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.HEADSET_PLUG"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/widget/VolumeControlDialog;Lcom/google/glass/widget/VolumeControlDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lcom/google/glass/widget/VolumeControlDialog$HeadsetPlugBroadcastReceiver;-><init>(Lcom/google/glass/widget/VolumeControlDialog;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 260
    invoke-static {}, Lcom/google/glass/widget/VolumeControlDialog;->access$500()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/google/glass/widget/VolumeControlDialog$HeadsetPlugBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Received intent: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/google/glass/widget/VolumeControlDialog$HeadsetPlugBroadcastReceiver;->this$0:Lcom/google/glass/widget/VolumeControlDialog;

    invoke-static {p2}, Lcom/google/glass/sound/VolumeHelper;->getHeadsetState(Landroid/content/Intent;)I

    move-result v1

    #calls: Lcom/google/glass/widget/VolumeControlDialog;->initSlider(I)V
    invoke-static {v0, v1}, Lcom/google/glass/widget/VolumeControlDialog;->access$400(Lcom/google/glass/widget/VolumeControlDialog;I)V

    .line 256
    :cond_0
    return-void
.end method
