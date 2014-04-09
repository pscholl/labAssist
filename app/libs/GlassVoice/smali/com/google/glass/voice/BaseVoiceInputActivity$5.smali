.class Lcom/google/glass/voice/BaseVoiceInputActivity$5;
.super Ljava/lang/Object;
.source "BaseVoiceInputActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/BaseVoiceInputActivity;->dispatchShowListening()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/BaseVoiceInputActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 620
    iput-object p1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$5;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity$5;->this$0:Lcom/google/glass/voice/BaseVoiceInputActivity;

    #getter for: Lcom/google/glass/voice/BaseVoiceInputActivity;->audioView:Lcom/google/glass/voice/AudioInputRelativeLayout;
    invoke-static {v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->access$2000(Lcom/google/glass/voice/BaseVoiceInputActivity;)Lcom/google/glass/voice/AudioInputRelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/AudioInputRelativeLayout;->showListening()V

    .line 626
    return-void
.end method
