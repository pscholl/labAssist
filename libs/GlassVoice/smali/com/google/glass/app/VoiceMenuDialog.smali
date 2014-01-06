.class public Lcom/google/glass/app/VoiceMenuDialog;
.super Landroid/app/Dialog;
.source "VoiceMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/app/VoiceMenuDialog$ConnectivityBroadcastReceiver;,
        Lcom/google/glass/app/VoiceMenuDialog$DialogVoiceMenuEnvironment;
    }
.end annotation


# static fields
.field private static final PRIMARY_MENU:I = 0x0

.field private static final SECONDARY_MENU:I = 0x1

.field private static final connectivityReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final activity:Lcom/google/glass/app/GlassVoiceActivity;

.field private final connectivityReceiver:Lcom/google/glass/app/VoiceMenuDialog$ConnectivityBroadcastReceiver;

.field private dismissedByUser:Z

.field private hasFocus:Z

.field private menuShowing:I

.field private persistent:Z

.field private primaryVoiceConfig:Lcom/google/glass/voice/VoiceConfig;

.field private progressSlider:Lcom/google/glass/widget/SliderView;

.field private singleOptionPrimaryMenu:Z

.field private final voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

.field private voiceMenu:Lcom/google/glass/voice/menu/VoiceMenu;

.field private final voiceMenuEnvironment:Lcom/google/glass/app/VoiceMenuDialog$DialogVoiceMenuEnvironment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/app/VoiceMenuDialog;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 37
    sget-object v0, Lcom/google/glass/app/VoiceMenuDialog;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "connectivityReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/app/VoiceMenuDialog;->connectivityReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 149
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 46
    iput v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->menuShowing:I

    .line 64
    iput-boolean v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->persistent:Z

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->dismissedByUser:Z

    .line 143
    new-instance v0, Lcom/google/glass/app/VoiceMenuDialog$ConnectivityBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/app/VoiceMenuDialog$ConnectivityBroadcastReceiver;-><init>(Lcom/google/glass/app/VoiceMenuDialog;Lcom/google/glass/app/VoiceMenuDialog$1;)V

    iput-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->connectivityReceiver:Lcom/google/glass/app/VoiceMenuDialog$ConnectivityBroadcastReceiver;

    .line 151
    check-cast p1, Lcom/google/glass/app/GlassVoiceActivity;

    .end local p1
    iput-object p1, p0, Lcom/google/glass/app/VoiceMenuDialog;->activity:Lcom/google/glass/app/GlassVoiceActivity;

    .line 152
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->activity:Lcom/google/glass/app/GlassVoiceActivity;

    invoke-direct {p0, v0}, Lcom/google/glass/app/VoiceMenuDialog;->createVoiceInputHelper(Lcom/google/glass/app/GlassVoiceActivity;)Lcom/google/glass/input/VoiceInputHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    .line 153
    new-instance v0, Lcom/google/glass/app/VoiceMenuDialog$DialogVoiceMenuEnvironment;

    iget-object v1, p0, Lcom/google/glass/app/VoiceMenuDialog;->activity:Lcom/google/glass/app/GlassVoiceActivity;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/app/VoiceMenuDialog$DialogVoiceMenuEnvironment;-><init>(Lcom/google/glass/app/VoiceMenuDialog;Lcom/google/glass/app/GlassVoiceActivity;)V

    iput-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->voiceMenuEnvironment:Lcom/google/glass/app/VoiceMenuDialog$DialogVoiceMenuEnvironment;

    .line 154
    invoke-virtual {p0}, Lcom/google/glass/app/VoiceMenuDialog;->findVoiceMenu()Lcom/google/glass/voice/menu/VoiceMenu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->voiceMenu:Lcom/google/glass/voice/menu/VoiceMenu;

    .line 155
    return-void
.end method

.method public constructor <init>(Lcom/google/glass/app/GlassVoiceActivity;)V
    .locals 2
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 158
    sget v0, Lcom/google/glass/voiceclient/R$style;->ContextualDialogTheme:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 46
    iput v1, p0, Lcom/google/glass/app/VoiceMenuDialog;->menuShowing:I

    .line 64
    iput-boolean v1, p0, Lcom/google/glass/app/VoiceMenuDialog;->persistent:Z

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->dismissedByUser:Z

    .line 143
    new-instance v0, Lcom/google/glass/app/VoiceMenuDialog$ConnectivityBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/app/VoiceMenuDialog$ConnectivityBroadcastReceiver;-><init>(Lcom/google/glass/app/VoiceMenuDialog;Lcom/google/glass/app/VoiceMenuDialog$1;)V

    iput-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->connectivityReceiver:Lcom/google/glass/app/VoiceMenuDialog$ConnectivityBroadcastReceiver;

    .line 160
    sget v0, Lcom/google/glass/voiceclient/R$layout;->voice_menu_dialog:I

    invoke-virtual {p0, v0}, Lcom/google/glass/app/VoiceMenuDialog;->setContentView(I)V

    .line 162
    iput-object p1, p0, Lcom/google/glass/app/VoiceMenuDialog;->activity:Lcom/google/glass/app/GlassVoiceActivity;

    .line 163
    invoke-direct {p0, p1}, Lcom/google/glass/app/VoiceMenuDialog;->createVoiceInputHelper(Lcom/google/glass/app/GlassVoiceActivity;)Lcom/google/glass/input/VoiceInputHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    .line 164
    new-instance v0, Lcom/google/glass/app/VoiceMenuDialog$DialogVoiceMenuEnvironment;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/app/VoiceMenuDialog$DialogVoiceMenuEnvironment;-><init>(Lcom/google/glass/app/VoiceMenuDialog;Lcom/google/glass/app/GlassVoiceActivity;)V

    iput-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->voiceMenuEnvironment:Lcom/google/glass/app/VoiceMenuDialog$DialogVoiceMenuEnvironment;

    .line 165
    invoke-virtual {p0}, Lcom/google/glass/app/VoiceMenuDialog;->findVoiceMenu()Lcom/google/glass/voice/menu/VoiceMenu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->voiceMenu:Lcom/google/glass/voice/menu/VoiceMenu;

    .line 167
    sget v0, Lcom/google/glass/voiceclient/R$id;->progress_slider:I

    invoke-virtual {p0, v0}, Lcom/google/glass/app/VoiceMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/SliderView;

    iput-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->progressSlider:Lcom/google/glass/widget/SliderView;

    .line 168
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->voiceMenu:Lcom/google/glass/voice/menu/VoiceMenu;

    iget-object v1, p0, Lcom/google/glass/app/VoiceMenuDialog;->voiceMenuEnvironment:Lcom/google/glass/app/VoiceMenuDialog$DialogVoiceMenuEnvironment;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/menu/VoiceMenu;->setListener(Lcom/google/glass/voice/menu/VoiceMenu$VoiceMenuListener;)V

    .line 170
    new-instance v0, Lcom/google/glass/app/VoiceMenuDialog$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/app/VoiceMenuDialog$1;-><init>(Lcom/google/glass/app/VoiceMenuDialog;Lcom/google/glass/app/GlassVoiceActivity;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/app/VoiceMenuDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 176
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/app/VoiceMenuDialog;)Lcom/google/glass/app/GlassVoiceActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->activity:Lcom/google/glass/app/GlassVoiceActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/app/VoiceMenuDialog;)Lcom/google/glass/voice/menu/VoiceMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->voiceMenu:Lcom/google/glass/voice/menu/VoiceMenu;

    return-object v0
.end method

.method static synthetic access$1000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/glass/app/VoiceMenuDialog;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$1100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/glass/app/VoiceMenuDialog;->connectivityReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/glass/app/VoiceMenuDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/google/glass/app/VoiceMenuDialog;->menuShowing:I

    return p1
.end method

.method static synthetic access$300(Lcom/google/glass/app/VoiceMenuDialog;)Lcom/google/glass/widget/SliderView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->progressSlider:Lcom/google/glass/widget/SliderView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/app/VoiceMenuDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->dismissedByUser:Z

    return v0
.end method

.method static synthetic access$600(Lcom/google/glass/app/VoiceMenuDialog;)Lcom/google/glass/voice/VoiceConfig;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->primaryVoiceConfig:Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/app/VoiceMenuDialog;)Lcom/google/glass/input/VoiceInputHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/app/VoiceMenuDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->hasFocus:Z

    return v0
.end method

.method static synthetic access$900(Lcom/google/glass/app/VoiceMenuDialog;)Lcom/google/glass/app/VoiceMenuDialog$DialogVoiceMenuEnvironment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->voiceMenuEnvironment:Lcom/google/glass/app/VoiceMenuDialog$DialogVoiceMenuEnvironment;

    return-object v0
.end method

.method private final createVoiceInputHelper(Lcom/google/glass/app/GlassVoiceActivity;)Lcom/google/glass/input/VoiceInputHelper;
    .locals 3
    .parameter "activity"

    .prologue
    .line 179
    new-instance v0, Lcom/google/glass/input/VoiceInputHelper;

    new-instance v1, Lcom/google/glass/app/VoiceMenuDialog$2;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/app/VoiceMenuDialog$2;-><init>(Lcom/google/glass/app/VoiceMenuDialog;Lcom/google/glass/app/GlassVoiceActivity;)V

    invoke-static {p1}, Lcom/google/glass/input/VoiceInputHelper;->newUserActivityObserver(Landroid/content/Context;)Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/google/glass/input/VoiceInputHelper;-><init>(Landroid/content/Context;Lcom/google/glass/input/VoiceListener;Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;)V

    return-object v0
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 0
    .parameter "dismissedByUser"

    .prologue
    .line 286
    iput-boolean p1, p0, Lcom/google/glass/app/VoiceMenuDialog;->dismissedByUser:Z

    .line 287
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 288
    return-void
.end method

.method findVoiceMenu()Lcom/google/glass/voice/menu/VoiceMenu;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 221
    sget v0, Lcom/google/glass/voiceclient/R$id;->voice_menu:I

    invoke-virtual {p0, v0}, Lcom/google/glass/app/VoiceMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/menu/VoiceMenu;

    return-object v0
.end method

.method public getVoiceMenu()Lcom/google/glass/voice/menu/VoiceMenu;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->voiceMenu:Lcom/google/glass/voice/menu/VoiceMenu;

    return-object v0
.end method

.method public isPersistent()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->persistent:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 298
    iget v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->menuShowing:I

    packed-switch v0, :pswitch_data_0

    .line 313
    :goto_0
    return-void

    .line 300
    :pswitch_0
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    goto :goto_0

    .line 303
    :pswitch_1
    iget-boolean v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->singleOptionPrimaryMenu:Z

    if-eqz v0, :cond_0

    .line 304
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    goto :goto_0

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    iget-object v1, p0, Lcom/google/glass/app/VoiceMenuDialog;->primaryVoiceConfig:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v0, v1}, Lcom/google/glass/input/VoiceInputHelper;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 308
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->voiceMenu:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-virtual {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->animateBackToPrimaryMenu()V

    .line 309
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->menuShowing:I

    .line 310
    invoke-virtual {p0}, Lcom/google/glass/app/VoiceMenuDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    goto :goto_0

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 244
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 245
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->connectivityReceiver:Lcom/google/glass/app/VoiceMenuDialog$ConnectivityBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/app/VoiceMenuDialog;->activity:Lcom/google/glass/app/GlassVoiceActivity;

    invoke-virtual {v0, v1}, Lcom/google/glass/app/VoiceMenuDialog$ConnectivityBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 246
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/VoiceInputHelper;->addVoiceServiceListener()V

    .line 247
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->voiceMenu:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-virtual {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->onDismissed()V

    .line 252
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->voiceInputHelper:Lcom/google/glass/input/VoiceInputHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/VoiceInputHelper;->removeVoiceServiceListener()V

    .line 253
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->connectivityReceiver:Lcom/google/glass/app/VoiceMenuDialog$ConnectivityBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/app/VoiceMenuDialog;->activity:Lcom/google/glass/app/GlassVoiceActivity;

    invoke-virtual {v0, v1}, Lcom/google/glass/app/VoiceMenuDialog$ConnectivityBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 254
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 255
    return-void
.end method

.method public onVerticalHeadScroll(F)V
    .locals 2
    .parameter "delta"

    .prologue
    .line 259
    const/high16 v1, 0x4234

    div-float v0, p1, v1

    .line 260
    .local v0, deltaItem:F
    iget-object v1, p0, Lcom/google/glass/app/VoiceMenuDialog;->voiceMenu:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-virtual {v1}, Lcom/google/glass/voice/menu/VoiceMenu;->getVisibleScrollView()Lcom/google/glass/voice/menu/OverscrollView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/glass/voice/menu/OverscrollView;->scrollByItem(F)V

    .line 261
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 292
    iput-boolean p1, p0, Lcom/google/glass/app/VoiceMenuDialog;->hasFocus:Z

    .line 293
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    .line 294
    return-void
.end method

.method public setPersistent(Z)V
    .locals 0
    .parameter "persistent"

    .prologue
    .line 276
    iput-boolean p1, p0, Lcom/google/glass/app/VoiceMenuDialog;->persistent:Z

    .line 277
    return-void
.end method

.method public setPrimaryItems(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, menuItems:Ljava/util/List;,"Ljava/util/List<+Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
    const/4 v0, 0x1

    .line 226
    iget-object v1, p0, Lcom/google/glass/app/VoiceMenuDialog;->voiceMenu:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-virtual {v1, p1}, Lcom/google/glass/voice/menu/VoiceMenu;->setPrimaryMenuItems(Ljava/util/List;)V

    .line 227
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->singleOptionPrimaryMenu:Z

    .line 228
    return-void

    .line 227
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPrimaryVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 0
    .parameter "voiceConfig"

    .prologue
    .line 232
    iput-object p1, p0, Lcom/google/glass/app/VoiceMenuDialog;->primaryVoiceConfig:Lcom/google/glass/voice/VoiceConfig;

    .line 233
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->voiceMenu:Lcom/google/glass/voice/menu/VoiceMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/menu/VoiceMenu;->setShouldHighlightSelectedItem(Z)V

    .line 238
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog;->voiceMenu:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-virtual {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->showPrimaryMenu()V

    .line 239
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 240
    return-void
.end method
