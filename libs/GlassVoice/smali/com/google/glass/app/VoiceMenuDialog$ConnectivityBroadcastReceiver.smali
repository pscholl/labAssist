.class Lcom/google/glass/app/VoiceMenuDialog$ConnectivityBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "VoiceMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/app/VoiceMenuDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/app/VoiceMenuDialog;


# direct methods
.method private constructor <init>(Lcom/google/glass/app/VoiceMenuDialog;)V
    .locals 3
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/google/glass/app/VoiceMenuDialog$ConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/app/VoiceMenuDialog;

    .line 320
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/app/VoiceMenuDialog;Lcom/google/glass/app/VoiceMenuDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/google/glass/app/VoiceMenuDialog$ConnectivityBroadcastReceiver;-><init>(Lcom/google/glass/app/VoiceMenuDialog;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 331
    invoke-static {}, Lcom/google/glass/app/VoiceMenuDialog;->access$1100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 325
    iget-object v1, p0, Lcom/google/glass/app/VoiceMenuDialog$ConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/app/VoiceMenuDialog;

    #getter for: Lcom/google/glass/app/VoiceMenuDialog;->voiceMenuEnvironment:Lcom/google/glass/app/VoiceMenuDialog$DialogVoiceMenuEnvironment;
    invoke-static {v1}, Lcom/google/glass/app/VoiceMenuDialog;->access$900(Lcom/google/glass/app/VoiceMenuDialog;)Lcom/google/glass/app/VoiceMenuDialog$DialogVoiceMenuEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/app/VoiceMenuDialog$DialogVoiceMenuEnvironment;->isConnected()Z

    move-result v0

    .line 326
    .local v0, enabled:Z
    iget-object v1, p0, Lcom/google/glass/app/VoiceMenuDialog$ConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/app/VoiceMenuDialog;

    #getter for: Lcom/google/glass/app/VoiceMenuDialog;->voiceMenu:Lcom/google/glass/voice/menu/VoiceMenu;
    invoke-static {v1}, Lcom/google/glass/app/VoiceMenuDialog;->access$100(Lcom/google/glass/app/VoiceMenuDialog;)Lcom/google/glass/voice/menu/VoiceMenu;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/glass/voice/menu/VoiceMenu;->onConnectivityChanged(Z)V

    .line 327
    return-void
.end method
