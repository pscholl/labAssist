.class Lcom/google/glass/voice/VoiceEngine$ScreenOffBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "VoiceEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/VoiceEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenOffBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceEngine;


# direct methods
.method private constructor <init>(Lcom/google/glass/voice/VoiceEngine;)V
    .locals 3
    .parameter

    .prologue
    .line 1041
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine$ScreenOffBroadcastReceiver;->this$0:Lcom/google/glass/voice/VoiceEngine;

    .line 1042
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.SCREEN_OFF"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 1043
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/voice/VoiceEngine;Lcom/google/glass/voice/VoiceEngine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1040
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceEngine$ScreenOffBroadcastReceiver;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 1052
    invoke-static {}, Lcom/google/glass/voice/VoiceEngine;->access$2100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine$ScreenOffBroadcastReceiver;->this$0:Lcom/google/glass/voice/VoiceEngine;

    #getter for: Lcom/google/glass/voice/VoiceEngine;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/voice/VoiceEngine;->access$2000(Lcom/google/glass/voice/VoiceEngine;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1048
    return-void
.end method
