.class Lcom/google/glass/app/VoiceMenuDialog$DialogVoiceMenuEnvironment;
.super Lcom/google/glass/voice/menu/BasicVoiceMenuEnvironment;
.source "VoiceMenuDialog.java"

# interfaces
.implements Lcom/google/glass/voice/menu/VoiceMenu$VoiceMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/app/VoiceMenuDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DialogVoiceMenuEnvironment"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/app/VoiceMenuDialog;


# direct methods
.method public constructor <init>(Lcom/google/glass/app/VoiceMenuDialog;Lcom/google/glass/app/GlassVoiceActivity;)V
    .locals 0
    .parameter
    .parameter "glassVoiceActivity"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/glass/app/VoiceMenuDialog$DialogVoiceMenuEnvironment;->this$0:Lcom/google/glass/app/VoiceMenuDialog;

    .line 84
    invoke-direct {p0, p2}, Lcom/google/glass/voice/menu/BasicVoiceMenuEnvironment;-><init>(Lcom/google/glass/app/GlassVoiceActivity;)V

    .line 85
    return-void
.end method


# virtual methods
.method public onError(Lcom/google/glass/app/GlassError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog$DialogVoiceMenuEnvironment;->this$0:Lcom/google/glass/app/VoiceMenuDialog;

    #getter for: Lcom/google/glass/app/VoiceMenuDialog;->activity:Lcom/google/glass/app/GlassVoiceActivity;
    invoke-static {v0}, Lcom/google/glass/app/VoiceMenuDialog;->access$000(Lcom/google/glass/app/VoiceMenuDialog;)Lcom/google/glass/app/GlassVoiceActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/glass/app/GlassError;->show(Lcom/google/glass/app/GlassActivity;)V

    .line 134
    return-void
.end method

.method public onShowSecondaryMenu()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog$DialogVoiceMenuEnvironment;->this$0:Lcom/google/glass/app/VoiceMenuDialog;

    #getter for: Lcom/google/glass/app/VoiceMenuDialog;->voiceMenu:Lcom/google/glass/voice/menu/VoiceMenu;
    invoke-static {v0}, Lcom/google/glass/app/VoiceMenuDialog;->access$100(Lcom/google/glass/app/VoiceMenuDialog;)Lcom/google/glass/voice/menu/VoiceMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->getVisibleScrollView()Lcom/google/glass/voice/menu/OverscrollView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/menu/OverscrollView;->setShouldHighlightSelectedItem(Z)V

    .line 128
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog$DialogVoiceMenuEnvironment;->this$0:Lcom/google/glass/app/VoiceMenuDialog;

    const/4 v1, 0x1

    #setter for: Lcom/google/glass/app/VoiceMenuDialog;->menuShowing:I
    invoke-static {v0, v1}, Lcom/google/glass/app/VoiceMenuDialog;->access$202(Lcom/google/glass/app/VoiceMenuDialog;I)I

    .line 129
    return-void
.end method

.method public selectMenuItem(Lcom/google/glass/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "menuItem"
    .parameter "postAnimationRunnable"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog$DialogVoiceMenuEnvironment;->this$0:Lcom/google/glass/app/VoiceMenuDialog;

    #getter for: Lcom/google/glass/app/VoiceMenuDialog;->voiceMenu:Lcom/google/glass/voice/menu/VoiceMenu;
    invoke-static {v0}, Lcom/google/glass/app/VoiceMenuDialog;->access$100(Lcom/google/glass/app/VoiceMenuDialog;)Lcom/google/glass/voice/menu/VoiceMenu;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/voice/menu/VoiceMenu;->selectMenuItem(Lcom/google/glass/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V

    .line 102
    return-void
.end method

.method public selectSecondaryMenuItem(Lcom/google/glass/voice/menu/VoiceMenuItem;JLjava/lang/Runnable;)V
    .locals 1
    .parameter "item"
    .parameter "postAnimationDelayMs"
    .parameter "postAnimationRunnable"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog$DialogVoiceMenuEnvironment;->this$0:Lcom/google/glass/app/VoiceMenuDialog;

    #getter for: Lcom/google/glass/app/VoiceMenuDialog;->voiceMenu:Lcom/google/glass/voice/menu/VoiceMenu;
    invoke-static {v0}, Lcom/google/glass/app/VoiceMenuDialog;->access$100(Lcom/google/glass/app/VoiceMenuDialog;)Lcom/google/glass/voice/menu/VoiceMenu;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/glass/voice/menu/VoiceMenu;->selectSecondaryMenuItem(Lcom/google/glass/voice/menu/VoiceMenuItem;JLjava/lang/Runnable;)V

    .line 123
    return-void
.end method

.method public selectSecondaryMenuItem(Lcom/google/glass/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V
    .locals 3
    .parameter "item"
    .parameter "postAnimationRunnable"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog$DialogVoiceMenuEnvironment;->this$0:Lcom/google/glass/app/VoiceMenuDialog;

    #getter for: Lcom/google/glass/app/VoiceMenuDialog;->voiceMenu:Lcom/google/glass/voice/menu/VoiceMenu;
    invoke-static {v0}, Lcom/google/glass/app/VoiceMenuDialog;->access$100(Lcom/google/glass/app/VoiceMenuDialog;)Lcom/google/glass/voice/menu/VoiceMenu;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/google/glass/voice/menu/VoiceMenu;->selectSecondaryMenuItem(Lcom/google/glass/voice/menu/VoiceMenuItem;JLjava/lang/Runnable;)V

    .line 117
    return-void
.end method

.method public showAppsList(Lcom/google/glass/voice/menu/VoiceMenuItem;ILjava/lang/String;)V
    .locals 2
    .parameter "menuItem"
    .parameter "commandType"
    .parameter "commandLiteral"

    .prologue
    .line 106
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 107
    .local v0, subMenu:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
    iget-object v1, p0, Lcom/google/glass/app/VoiceMenuDialog$DialogVoiceMenuEnvironment;->this$0:Lcom/google/glass/app/VoiceMenuDialog;

    #getter for: Lcom/google/glass/app/VoiceMenuDialog;->activity:Lcom/google/glass/app/GlassVoiceActivity;
    invoke-static {v1}, Lcom/google/glass/app/VoiceMenuDialog;->access$000(Lcom/google/glass/app/VoiceMenuDialog;)Lcom/google/glass/app/GlassVoiceActivity;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/google/glass/app/GlassVoiceActivity;->onPrepareVoiceSubmenu(Lcom/google/glass/voice/menu/VoiceMenuItem;ILjava/lang/String;Ljava/util/List;)V

    .line 108
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/google/glass/app/VoiceMenuDialog$DialogVoiceMenuEnvironment;->this$0:Lcom/google/glass/app/VoiceMenuDialog;

    #getter for: Lcom/google/glass/app/VoiceMenuDialog;->voiceMenu:Lcom/google/glass/voice/menu/VoiceMenu;
    invoke-static {v1}, Lcom/google/glass/app/VoiceMenuDialog;->access$100(Lcom/google/glass/app/VoiceMenuDialog;)Lcom/google/glass/voice/menu/VoiceMenu;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/glass/voice/menu/VoiceMenu;->selectMenuItem(Lcom/google/glass/voice/menu/VoiceMenuItem;Ljava/util/List;)V

    goto :goto_0
.end method

.method public showPeopleList(Lcom/google/glass/voice/menu/VoiceMenuItem;Lcom/google/glass/entity/EntitySet;Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;)V
    .locals 2
    .parameter "menuItem"
    .parameter "entitySet"
    .parameter "command"

    .prologue
    .line 89
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 91
    .local v0, subMenu:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
    iget-object v1, p0, Lcom/google/glass/app/VoiceMenuDialog$DialogVoiceMenuEnvironment;->this$0:Lcom/google/glass/app/VoiceMenuDialog;

    #getter for: Lcom/google/glass/app/VoiceMenuDialog;->activity:Lcom/google/glass/app/GlassVoiceActivity;
    invoke-static {v1}, Lcom/google/glass/app/VoiceMenuDialog;->access$000(Lcom/google/glass/app/VoiceMenuDialog;)Lcom/google/glass/app/GlassVoiceActivity;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/google/glass/app/GlassVoiceActivity;->onPrepareVoiceSubmenu(Lcom/google/glass/voice/menu/VoiceMenuItem;Lcom/google/glass/entity/EntitySet;Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;Ljava/util/List;)V

    .line 92
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/google/glass/app/VoiceMenuDialog$DialogVoiceMenuEnvironment;->this$0:Lcom/google/glass/app/VoiceMenuDialog;

    #getter for: Lcom/google/glass/app/VoiceMenuDialog;->voiceMenu:Lcom/google/glass/voice/menu/VoiceMenu;
    invoke-static {v1}, Lcom/google/glass/app/VoiceMenuDialog;->access$100(Lcom/google/glass/app/VoiceMenuDialog;)Lcom/google/glass/voice/menu/VoiceMenu;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/glass/voice/menu/VoiceMenu;->selectMenuItem(Lcom/google/glass/voice/menu/VoiceMenuItem;Ljava/util/List;)V

    goto :goto_0
.end method

.method public showProgressBar()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog$DialogVoiceMenuEnvironment;->this$0:Lcom/google/glass/app/VoiceMenuDialog;

    #getter for: Lcom/google/glass/app/VoiceMenuDialog;->progressSlider:Lcom/google/glass/widget/SliderView;
    invoke-static {v0}, Lcom/google/glass/app/VoiceMenuDialog;->access$300(Lcom/google/glass/app/VoiceMenuDialog;)Lcom/google/glass/widget/SliderView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/SliderView;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog$DialogVoiceMenuEnvironment;->this$0:Lcom/google/glass/app/VoiceMenuDialog;

    #getter for: Lcom/google/glass/app/VoiceMenuDialog;->progressSlider:Lcom/google/glass/widget/SliderView;
    invoke-static {v0}, Lcom/google/glass/app/VoiceMenuDialog;->access$300(Lcom/google/glass/app/VoiceMenuDialog;)Lcom/google/glass/widget/SliderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->startIndeterminate()V

    .line 140
    return-void
.end method
