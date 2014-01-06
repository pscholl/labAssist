.class Lcom/google/glass/app/GlassVoiceActivity$2;
.super Ljava/lang/Object;
.source "GlassVoiceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/app/GlassVoiceActivity;->showError(Lcom/google/glass/widget/MessageDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/app/GlassVoiceActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/app/GlassVoiceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/google/glass/app/GlassVoiceActivity$2;->this$0:Lcom/google/glass/app/GlassVoiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity$2;->this$0:Lcom/google/glass/app/GlassVoiceActivity;

    #getter for: Lcom/google/glass/app/GlassVoiceActivity;->isRunning:Z
    invoke-static {v0}, Lcom/google/glass/app/GlassVoiceActivity;->access$000(Lcom/google/glass/app/GlassVoiceActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity$2;->this$0:Lcom/google/glass/app/GlassVoiceActivity;

    iget-object v0, v0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    iget-object v1, p0, Lcom/google/glass/app/GlassVoiceActivity$2;->this$0:Lcom/google/glass/app/GlassVoiceActivity;

    #getter for: Lcom/google/glass/app/GlassVoiceActivity;->voiceConfig:Lcom/google/glass/voice/VoiceConfig;
    invoke-static {v1}, Lcom/google/glass/app/GlassVoiceActivity;->access$100(Lcom/google/glass/app/GlassVoiceActivity;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/input/VoiceInputHelper;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 277
    :cond_0
    return-void
.end method
