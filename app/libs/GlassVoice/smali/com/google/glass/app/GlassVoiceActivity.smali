.class public abstract Lcom/google/glass/app/GlassVoiceActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "GlassVoiceActivity.java"

# interfaces
.implements Lcom/google/glass/input/VoiceListener;


# instance fields
.field private guardHintAnimator:Lcom/google/glass/voice/GuardHintAnimator;

.field private isRunning:Z

.field private preserveConfigOnPause:Z

.field private voiceConfig:Lcom/google/glass/voice/VoiceConfig;

.field voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private voiceMenuDialog:Lcom/google/glass/app/VoiceMenuDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->isRunning:Z

    .line 49
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    iput-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceConfig:Lcom/google/glass/voice/VoiceConfig;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/app/GlassVoiceActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->isRunning:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/glass/app/GlassVoiceActivity;)Lcom/google/glass/voice/VoiceConfig;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceConfig:Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method

.method private attachVoiceListener()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/VoiceInputHelper;->addVoiceServiceListener()V

    .line 85
    return-void
.end method

.method private removeVoiceListener()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/VoiceInputHelper;->removeVoiceServiceListener()V

    .line 147
    return-void
.end method


# virtual methods
.method public areOrientationSensorsStarted()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 425
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->areOrientationSensorsStarted()Z

    move-result v0

    return v0
.end method

.method public attachVoiceInputCallback(Lcom/google/glass/voice/network/IVoiceInputCallback;)V
    .locals 1
    .parameter "voiceInputCallback"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    invoke-virtual {v0, p1}, Lcom/google/glass/input/VoiceInputHelper;->attachVoiceInputCallback(Lcom/google/glass/voice/network/IVoiceInputCallback;)V

    .line 176
    return-void
.end method

.method public closeVoiceMenu()V
    .locals 2

    .prologue
    .line 352
    iget-object v1, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceMenuDialog:Lcom/google/glass/app/VoiceMenuDialog;

    if-eqz v1, :cond_0

    .line 353
    const/4 v0, 0x0

    .line 354
    .local v0, dismissedByUser:Z
    iget-object v1, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceMenuDialog:Lcom/google/glass/app/VoiceMenuDialog;

    invoke-virtual {v1, v0}, Lcom/google/glass/app/VoiceMenuDialog;->dismiss(Z)V

    .line 355
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceMenuDialog:Lcom/google/glass/app/VoiceMenuDialog;

    .line 357
    .end local v0           #dismissedByUser:Z
    :cond_0
    return-void
.end method

.method createVoiceMenuDialog()Lcom/google/glass/app/VoiceMenuDialog;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 313
    new-instance v0, Lcom/google/glass/app/VoiceMenuDialog;

    invoke-direct {v0, p0}, Lcom/google/glass/app/VoiceMenuDialog;-><init>(Lcom/google/glass/app/GlassVoiceActivity;)V

    return-object v0
.end method

.method public detachVoiceInputCallback()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/VoiceInputHelper;->detachVoiceInputCallback()V

    .line 181
    return-void
.end method

.method public endpointNetworkRecognizer()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/VoiceInputHelper;->endpointNetworkRecognizer()V

    .line 186
    return-void
.end method

.method public getVoiceConfig()Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/VoiceInputHelper;->getVoiceConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    return-object v0
.end method

.method protected getVoiceInputHelper()Lcom/google/glass/input/VoiceInputHelper;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    return-object v0
.end method

.method protected getVoiceServiceExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->isRunning:Z

    return v0
.end method

.method public isVoiceMenuShowing()Z
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceMenuDialog:Lcom/google/glass/app/VoiceMenuDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceMenuDialog:Lcom/google/glass/app/VoiceMenuDialog;

    invoke-virtual {v0}, Lcom/google/glass/app/VoiceMenuDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVoiceServiceBound()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/VoiceInputHelper;->isVoiceServiceBound()Z

    move-result v0

    return v0
.end method

.method public listenForGuardPhrase(Landroid/widget/ImageView;Lcom/google/glass/widget/TypophileTextView;)V
    .locals 3
    .parameter "gradient"
    .parameter "guardPhrase"

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Listening for guard phrase."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->GUARD:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {p0, v0}, Lcom/google/glass/app/GlassVoiceActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 202
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->guardHintAnimator:Lcom/google/glass/voice/GuardHintAnimator;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Lcom/google/glass/voice/GuardHintAnimator;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/glass/voice/GuardHintAnimator;-><init>(Landroid/widget/ImageView;Lcom/google/glass/widget/TypophileTextView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->guardHintAnimator:Lcom/google/glass/voice/GuardHintAnimator;

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->guardHintAnimator:Lcom/google/glass/voice/GuardHintAnimator;

    invoke-virtual {v0}, Lcom/google/glass/voice/GuardHintAnimator;->animateIn()V

    .line 206
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "onCreate: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->identityHashCode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    new-instance v0, Lcom/google/glass/input/VoiceInputHelper;

    new-instance v1, Lcom/google/glass/app/GlassVoiceActivity$1;

    invoke-direct {v1, p0, p0}, Lcom/google/glass/app/GlassVoiceActivity$1;-><init>(Lcom/google/glass/app/GlassVoiceActivity;Lcom/google/glass/input/VoiceListener;)V

    invoke-static {p0}, Lcom/google/glass/input/VoiceInputHelper;->newUserActivityObserver(Landroid/content/Context;)Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->getVoiceServiceExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/glass/input/VoiceInputHelper;-><init>(Landroid/content/Context;Lcom/google/glass/input/VoiceListener;Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    .line 76
    return-void
.end method

.method protected onDismissVoiceMenu(Z)V
    .locals 2
    .parameter "dismissedByUser"

    .prologue
    .line 325
    if-eqz p1, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 329
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->stopOrientationSensors()V

    .line 330
    iget-boolean v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->isRunning:Z

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    iget-object v1, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceConfig:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v0, v1}, Lcom/google/glass/input/VoiceInputHelper;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 333
    :cond_1
    return-void
.end method

.method public onOptionsMenuClosed(Lcom/google/glass/widget/OptionMenu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    iget-object v1, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceConfig:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v0, v1}, Lcom/google/glass/input/VoiceInputHelper;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 419
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onOptionsMenuClosed(Lcom/google/glass/widget/OptionMenu;)V

    .line 420
    return-void
.end method

.method protected onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 105
    iput-boolean v4, p0, Lcom/google/glass/app/GlassVoiceActivity;->isRunning:Z

    .line 106
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onPause()V

    .line 107
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "onPause: %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->identityHashCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->isVoiceMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceMenuDialog:Lcom/google/glass/app/VoiceMenuDialog;

    invoke-virtual {v0}, Lcom/google/glass/app/VoiceMenuDialog;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    iput-boolean v5, p0, Lcom/google/glass/app/GlassVoiceActivity;->preserveConfigOnPause:Z

    .line 119
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->preserveConfigOnPause:Z

    if-nez v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    sget-object v1, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v0, v1}, Lcom/google/glass/input/VoiceInputHelper;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 123
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->areOrientationSensorsStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Orientation sensors still running in onPause! Stopping them."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->stopOrientationSensors()V

    .line 128
    :cond_2
    invoke-direct {p0}, Lcom/google/glass/app/GlassVoiceActivity;->removeVoiceListener()V

    .line 129
    return-void

    .line 114
    :cond_3
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->closeVoiceMenu()V

    goto :goto_0
.end method

.method public onPrepareVoiceMenu(Lcom/google/glass/app/VoiceMenuDialog;)V
    .locals 0
    .parameter "voiceMenu"

    .prologue
    .line 378
    return-void
.end method

.method public onPrepareVoiceSubmenu(Lcom/google/glass/voice/menu/VoiceMenuItem;ILjava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter "menuItem"
    .parameter "commandType"
    .parameter "commandLiteral"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 400
    .local p4, subMenu:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
    return-void
.end method

.method public onPrepareVoiceSubmenu(Lcom/google/glass/voice/menu/VoiceMenuItem;Lcom/google/glass/entity/EntitySet;Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;Ljava/util/List;)V
    .locals 0
    .parameter "menuItem"
    .parameter "entitySet"
    .parameter "command"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            "Lcom/google/glass/entity/EntitySet;",
            "Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 389
    .local p4, subMenu:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
    return-void
.end method

.method public onResampledAudioData([BII)Z
    .locals 1
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 89
    iput-boolean v2, p0, Lcom/google/glass/app/GlassVoiceActivity;->isRunning:Z

    .line 90
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResume()V

    .line 91
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "onResume: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->identityHashCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iput-boolean v4, p0, Lcom/google/glass/app/GlassVoiceActivity;->preserveConfigOnPause:Z

    .line 95
    invoke-direct {p0}, Lcom/google/glass/app/GlassVoiceActivity;->attachVoiceListener()V

    .line 96
    return-void
.end method

.method public onVerticalHeadScroll(F)Z
    .locals 1
    .parameter "delta"

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->isVoiceMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceMenuDialog:Lcom/google/glass/app/VoiceMenuDialog;

    invoke-virtual {v0, p1}, Lcom/google/glass/app/VoiceMenuDialog;->onVerticalHeadScroll(F)V

    .line 363
    const/4 v0, 0x1

    .line 365
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onVerticalHeadScroll(F)Z

    move-result v0

    goto :goto_0
.end method

.method public onVoiceAmplitudeChanged(D)Z
    .locals 1
    .parameter "amplitude"

    .prologue
    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
    .locals 1
    .parameter "command"

    .prologue
    .line 254
    const/4 v0, 0x0

    return-object v0
.end method

.method public onVoiceConfigChanged(Lcom/google/glass/voice/VoiceConfig;Z)V
    .locals 0
    .parameter "newConfig"
    .parameter "expected"

    .prologue
    .line 283
    return-void
.end method

.method public onVoiceMenuCommand(Lcom/google/glass/voice/VoiceCommand;)V
    .locals 0
    .parameter "command"

    .prologue
    .line 408
    return-void
.end method

.method public onVoiceServiceConnected()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 225
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Voice Service Connected"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    iget-boolean v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->isRunning:Z

    if-nez v0, :cond_1

    .line 228
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Not applying initial voice config because we are paused."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    invoke-direct {p0}, Lcom/google/glass/app/GlassVoiceActivity;->removeVoiceListener()V

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->shouldProvideAudioData()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/input/VoiceInputHelper;->setWantAudioData(Z)V

    .line 242
    invoke-static {}, Lcom/google/glass/net/NetworkUtil;->checkNetwork()V

    .line 244
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->isVoiceMenuShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    iget-object v1, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceConfig:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v0, v1}, Lcom/google/glass/input/VoiceInputHelper;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    goto :goto_0
.end method

.method public onVoiceServiceDisconnected()V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method public openOptionsMenu()V
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    sget-object v1, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v0, v1}, Lcom/google/glass/input/VoiceInputHelper;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 413
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->openOptionsMenu()V

    .line 414
    return-void
.end method

.method public openVoiceMenu(Lcom/google/glass/voice/VoiceConfig;Ljava/util/List;)V
    .locals 1
    .parameter "voiceConfig"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/voice/VoiceConfig;",
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 295
    .local p2, menuItems:Ljava/util/List;,"Ljava/util/List<+Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    invoke-virtual {v0, p1}, Lcom/google/glass/input/VoiceInputHelper;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 298
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->isVoiceMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->closeVoiceMenu()V

    .line 303
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->createVoiceMenuDialog()Lcom/google/glass/app/VoiceMenuDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceMenuDialog:Lcom/google/glass/app/VoiceMenuDialog;

    .line 304
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceMenuDialog:Lcom/google/glass/app/VoiceMenuDialog;

    invoke-virtual {v0, p2}, Lcom/google/glass/app/VoiceMenuDialog;->setPrimaryItems(Ljava/util/List;)V

    .line 305
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceMenuDialog:Lcom/google/glass/app/VoiceMenuDialog;

    invoke-virtual {v0, p1}, Lcom/google/glass/app/VoiceMenuDialog;->setPrimaryVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 306
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceMenuDialog:Lcom/google/glass/app/VoiceMenuDialog;

    invoke-virtual {p0, v0}, Lcom/google/glass/app/GlassVoiceActivity;->onPrepareVoiceMenu(Lcom/google/glass/app/VoiceMenuDialog;)V

    .line 307
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceMenuDialog:Lcom/google/glass/app/VoiceMenuDialog;

    invoke-virtual {v0}, Lcom/google/glass/app/VoiceMenuDialog;->show()V

    .line 308
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->startOrientationSensors()V

    .line 309
    return-void
.end method

.method public varargs openVoiceMenu(Lcom/google/glass/voice/VoiceConfig;[Lcom/google/glass/voice/menu/VoiceMenuItem;)V
    .locals 1
    .parameter "voiceConfig"
    .parameter "menuItems"

    .prologue
    .line 344
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/app/GlassVoiceActivity;->openVoiceMenu(Lcom/google/glass/voice/VoiceConfig;Ljava/util/List;)V

    .line 345
    return-void
.end method

.method public overrideVoiceInputHelper(Lcom/google/glass/input/VoiceInputHelper;)Lcom/google/glass/input/VoiceInputHelper;
    .locals 1
    .parameter "override"

    .prologue
    .line 52
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 53
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    .line 54
    .local v0, temp:Lcom/google/glass/input/VoiceInputHelper;
    iput-object p1, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    .line 55
    return-object v0
.end method

.method public setPreserveConfigOnPause(Z)V
    .locals 0
    .parameter "preserveConfigOnPause"

    .prologue
    .line 434
    iput-boolean p1, p0, Lcom/google/glass/app/GlassVoiceActivity;->preserveConfigOnPause:Z

    .line 435
    return-void
.end method

.method public setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceConfig:Lcom/google/glass/voice/VoiceConfig;

    .line 155
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->isVoiceServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    iget-object v1, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceConfig:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v0, v1}, Lcom/google/glass/input/VoiceInputHelper;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 158
    :cond_0
    return-void
.end method

.method public shouldProvideAudioData()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public showError(Lcom/google/glass/widget/MessageDialog;)V
    .locals 2
    .parameter "errorDialog"

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->closeVoiceMenu()V

    .line 270
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    sget-object v1, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v0, v1}, Lcom/google/glass/input/VoiceInputHelper;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 271
    new-instance v0, Lcom/google/glass/app/GlassVoiceActivity$2;

    invoke-direct {v0, p0}, Lcom/google/glass/app/GlassVoiceActivity$2;-><init>(Lcom/google/glass/app/GlassVoiceActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/glass/widget/MessageDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 279
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->showError(Lcom/google/glass/widget/MessageDialog;)V

    .line 280
    return-void
.end method

.method public stopListeningForGuardPhrase(Landroid/widget/ImageView;Lcom/google/glass/widget/TypophileTextView;)V
    .locals 3
    .parameter "gradient"
    .parameter "guardPhrase"

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/google/glass/app/GlassVoiceActivity;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Stopping listening for guard phrase."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {p0, v0}, Lcom/google/glass/app/GlassVoiceActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 217
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->guardHintAnimator:Lcom/google/glass/voice/GuardHintAnimator;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Lcom/google/glass/voice/GuardHintAnimator;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/glass/voice/GuardHintAnimator;-><init>(Landroid/widget/ImageView;Lcom/google/glass/widget/TypophileTextView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->guardHintAnimator:Lcom/google/glass/voice/GuardHintAnimator;

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/google/glass/app/GlassVoiceActivity;->guardHintAnimator:Lcom/google/glass/voice/GuardHintAnimator;

    invoke-virtual {v0}, Lcom/google/glass/voice/GuardHintAnimator;->animateOut()V

    .line 221
    return-void
.end method
