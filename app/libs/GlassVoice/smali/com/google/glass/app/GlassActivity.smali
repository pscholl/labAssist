.class public abstract Lcom/google/glass/app/GlassActivity;
.super Lcom/google/glass/input/InputDetectingActivity;
.source "GlassActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/app/GlassActivity$ScreenOffBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final EXTRA_SHOULD_FINISH_TURN_SCREEN_OFF:Ljava/lang/String; = "should_finish_turn_screen_off"


# instance fields
.field private androidMenu:Landroid/view/Menu;

.field private contentView:Landroid/view/View;

.field private isOptionsMenuShowing:Z

.field private menu:Lcom/google/glass/widget/OptionMenu;

.field protected menuDialog:Lcom/google/glass/widget/OptionMenuDialog;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private messageDialog:Lcom/google/glass/widget/MessageDialog;

.field private powerHelper:Lcom/google/glass/util/PowerHelper;

.field private rebuildMenu:Z

.field private final screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private shouldTurnScreenOff:Z

.field private tuggableContentView:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/glass/input/InputDetectingActivity;-><init>()V

    .line 89
    new-instance v0, Lcom/google/glass/app/GlassActivity$ScreenOffBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/app/GlassActivity$ScreenOffBroadcastReceiver;-><init>(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/app/GlassActivity$1;)V

    iput-object v0, p0, Lcom/google/glass/app/GlassActivity;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 710
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/app/GlassActivity;)Lcom/google/glass/widget/OptionMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/app/GlassActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldAllowCameraButton()Z

    move-result v0

    return v0
.end method

.method public static from(Landroid/content/Context;)Lcom/google/glass/app/GlassActivity;
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 697
    if-nez p0, :cond_0

    move-object p0, v0

    .line 704
    .end local p0
    :goto_0
    return-object p0

    .line 699
    .restart local p0
    :cond_0
    instance-of v1, p0, Lcom/google/glass/app/GlassActivity;

    if-eqz v1, :cond_1

    .line 700
    check-cast p0, Lcom/google/glass/app/GlassActivity;

    goto :goto_0

    .line 701
    :cond_1
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    .line 702
    check-cast p0, Landroid/content/ContextWrapper;

    .end local p0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/app/GlassActivity;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassActivity;

    move-result-object p0

    goto :goto_0

    .restart local p0
    :cond_2
    move-object p0, v0

    .line 704
    goto :goto_0
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 149
    if-nez p1, :cond_0

    .line 150
    iput-boolean v1, p0, Lcom/google/glass/app/GlassActivity;->shouldTurnScreenOff:Z

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    const-string v0, "should_finish_turn_screen_off"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/app/GlassActivity;->shouldTurnScreenOff:Z

    goto :goto_0
.end method


# virtual methods
.method public closeOptionsMenu()V
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menuDialog:Lcom/google/glass/widget/OptionMenuDialog;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menuDialog:Lcom/google/glass/widget/OptionMenuDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/OptionMenuDialog;->dismiss()V

    .line 587
    :cond_0
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 419
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v0}, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 423
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/glass/input/InputDetectingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final finishAndTurnScreenOff()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 293
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Not turning off screen because we\'re already finishing."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    :goto_0
    return-void

    .line 305
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Animating content view off-screen."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 307
    .local v0, height:I
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/common/R$integer;->activity_animation_duration_ms:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/google/glass/app/GlassActivity$1;

    invoke-direct {v2, p0}, Lcom/google/glass/app/GlassActivity$1;-><init>(Lcom/google/glass/app/GlassActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 321
    iget-object v1, p0, Lcom/google/glass/app/GlassActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v1}, Lcom/google/glass/util/PowerHelper;->goToSleep()V

    goto :goto_0
.end method

.method public final finishAndTurnScreenOffIfRequested()V
    .locals 1

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldFinishTurnScreenOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->finishAndTurnScreenOff()V

    .line 289
    :goto_0
    return-void

    .line 287
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->finish()V

    goto :goto_0
.end method

.method public getAudioManager()Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getGlassApplication()Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    return-object v0
.end method

.method protected getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->contentView:Landroid/view/View;

    return-object v0
.end method

.method protected getGlassApplication()Lcom/google/glass/app/GlassApplication;
    .locals 1

    .prologue
    .line 386
    invoke-static {p0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    return-object v0
.end method

.method public getMessageText()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 664
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->isMessageShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->messageDialog:Lcom/google/glass/widget/MessageDialog;

    sget v1, Lcom/google/glass/common/R$id;->label:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 667
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOptionMenu()Lcom/google/glass/widget/OptionMenu;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 624
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    return-object v0
.end method

.method public getOptionMenuDialog()Lcom/google/glass/widget/OptionMenuDialog;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 629
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menuDialog:Lcom/google/glass/widget/OptionMenuDialog;

    return-object v0
.end method

.method public getSoundManager()Lcom/google/glass/sound/SoundManager;
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getGlassApplication()Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    return-object v0
.end method

.method public getUserEventHelper()Lcom/google/glass/userevent/UserEventHelper;
    .locals 1

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getGlassApplication()Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    return-object v0
.end method

.method public hideMessageDialog()V
    .locals 1

    .prologue
    .line 680
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->isMessageShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->messageDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->dismiss()V

    .line 683
    :cond_0
    return-void
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 577
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->closeOptionsMenu()V

    .line 578
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/app/GlassActivity;->menuDialog:Lcom/google/glass/widget/OptionMenuDialog;

    .line 579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/app/GlassActivity;->rebuildMenu:Z

    .line 580
    return-void
.end method

.method public isMessageShowing()Z
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->messageDialog:Lcom/google/glass/widget/MessageDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->messageDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOptionsMenuShowing()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 619
    iget-boolean v0, p0, Lcom/google/glass/app/GlassActivity;->isOptionsMenuShowing:Z

    return v0
.end method

.method protected logUserEvent(Lcom/google/glass/userevent/UserEventAction;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 397
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getUserEventHelper()Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 398
    return-void
.end method

.method public logUserEvent(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V
    .locals 1
    .parameter "action"
    .parameter "data"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getUserEventHelper()Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method public onConfirm()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 203
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldUseAndroidMenus()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 205
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/glass/app/GlassActivity;->androidMenu:Landroid/view/Menu;

    .line 206
    invoke-super {p0}, Lcom/google/glass/input/InputDetectingActivity;->openOptionsMenu()V

    .line 207
    iget-object v3, p0, Lcom/google/glass/app/GlassActivity;->androidMenu:Landroid/view/Menu;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/glass/app/GlassActivity;->androidMenu:Landroid/view/Menu;

    invoke-interface {v3}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v0, v2

    .line 214
    .local v0, menuFailed:Z
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldAllowHorizontalTugging()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v3}, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->onConfirm()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 227
    :goto_1
    return v2

    .end local v0           #menuFailed:Z
    :cond_1
    move v0, v1

    .line 207
    goto :goto_0

    .line 210
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->openOptionsMenu()V

    .line 211
    iget-object v3, p0, Lcom/google/glass/app/GlassActivity;->menuDialog:Lcom/google/glass/widget/OptionMenuDialog;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/app/GlassActivity;->menuDialog:Lcom/google/glass/widget/OptionMenuDialog;

    invoke-virtual {v3}, Lcom/google/glass/widget/OptionMenuDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    move v0, v2

    .restart local v0       #menuFailed:Z
    :goto_2
    goto :goto_0

    .end local v0           #menuFailed:Z
    :cond_4
    move v0, v1

    goto :goto_2

    .line 222
    .restart local v0       #menuFailed:Z
    :cond_5
    if-eqz v0, :cond_6

    .line 223
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->onDisallowedInput()V

    move v2, v1

    .line 224
    goto :goto_1

    .line 226
    :cond_6
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    sget-object v3, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v3}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 99
    invoke-super {p0, p1}, Lcom/google/glass/input/InputDetectingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    new-instance v2, Lcom/google/glass/util/PowerHelper;

    invoke-direct {v2, p0}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/glass/app/GlassActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    .line 109
    new-instance v2, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 113
    new-instance v2, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v2

    invoke-static {v2}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 121
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->provideContentView()I

    move-result v0

    .line 122
    .local v0, contentViewId:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "No content view provided."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldScreenOffFinish()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    iget-object v2, p0, Lcom/google/glass/app/GlassActivity;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v2, p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/glass/app/GlassActivity;->handleIntent(Landroid/content/Intent;)V

    .line 145
    return-void

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldAllowHorizontalTugging()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 125
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Inflating content view into tuggable container."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    sget v2, Lcom/google/glass/common/R$layout;->glass_activity_tuggable:I

    invoke-super {p0, v2}, Lcom/google/glass/input/InputDetectingActivity;->setContentView(I)V

    .line 127
    sget v2, Lcom/google/glass/common/R$id;->content_view_container:I

    invoke-virtual {p0, v2}, Lcom/google/glass/app/GlassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    iput-object v2, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    .line 128
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/app/GlassActivity;->contentView:Landroid/view/View;

    .line 129
    iget-object v2, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    iget-object v3, p0, Lcom/google/glass/app/GlassActivity;->contentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->setView(Landroid/view/View;)V

    goto :goto_0

    .line 131
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Inflating content view to stub."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    sget v2, Lcom/google/glass/common/R$layout;->glass_activity:I

    invoke-super {p0, v2}, Lcom/google/glass/input/InputDetectingActivity;->setContentView(I)V

    .line 133
    sget v2, Lcom/google/glass/common/R$id;->content_view_stub:I

    invoke-virtual {p0, v2}, Lcom/google/glass/app/GlassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 134
    .local v1, stub:Landroid/view/ViewStub;
    invoke-virtual {v1, v0}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 135
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/app/GlassActivity;->contentView:Landroid/view/View;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 1
    .parameter "menu"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 489
    const/4 v0, 0x0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldScreenOffFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->screenOffReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 187
    :cond_0
    invoke-super {p0}, Lcom/google/glass/input/InputDetectingActivity;->onDestroy()V

    .line 188
    return-void
.end method

.method protected onDisallowedInput()V
    .locals 2

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 364
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 2
    .parameter "dismissAction"

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldAllowDismiss()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/google/glass/input/SwipeDirection;->DOWN:Lcom/google/glass/input/SwipeDirection;

    invoke-static {v0, v1}, Lcom/google/glass/util/HopHelper;->performHopAnimation(Landroid/view/View;Lcom/google/glass/input/SwipeDirection;)V

    .line 270
    const/4 v0, 0x0

    .line 276
    :goto_0
    return v0

    .line 273
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 275
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->finishAndTurnScreenOffIfRequested()V

    .line 276
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onFingerCountChanged(IZ)Z
    .locals 1
    .parameter "count"
    .parameter "wentDown"

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldAllowHorizontalTugging()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->onFingerCountChanged(IZ)Z

    move-result v0

    .line 263
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/glass/input/InputDetectingActivity;->onFingerCountChanged(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public onMenuOpened(ILcom/google/glass/widget/OptionMenu;)V
    .locals 1
    .parameter "feature"
    .parameter "menu"

    .prologue
    .line 614
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/app/GlassActivity;->isOptionsMenuShowing:Z

    .line 615
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/google/glass/input/InputDetectingActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 94
    invoke-direct {p0, p1}, Lcom/google/glass/app/GlassActivity;->handleIntent(Landroid/content/Intent;)V

    .line 95
    return-void
.end method

.method public onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 593
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuCanceled(Lcom/google/glass/widget/OptionMenu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 599
    return-void
.end method

.method public onOptionsMenuClosed(Lcom/google/glass/widget/OptionMenu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 606
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/app/GlassActivity;->isOptionsMenuShowing:Z

    .line 607
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->closeOptionsMenu()V

    .line 170
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldHideMessageDialogOnPause()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->hideMessageDialog()V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v0}, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->deactivate()V

    .line 178
    :cond_1
    invoke-super {p0}, Lcom/google/glass/input/InputDetectingActivity;->onPause()V

    .line 179
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 457
    iput-object p1, p0, Lcom/google/glass/app/GlassActivity;->androidMenu:Landroid/view/Menu;

    .line 458
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 1
    .parameter "menu"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 497
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareSwipe(IFFFFII)Z
    .locals 8
    .parameter "fingerCount"
    .parameter "accumulatorX"
    .parameter "accumulatorY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "numSwipesX"
    .parameter "numSwipesY"

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldAllowHorizontalTugging()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->onPrepareSwipe(IFFFFII)Z

    move-result v0

    .line 240
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Lcom/google/glass/input/InputDetectingActivity;->onResume()V

    .line 160
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v0}, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->activate()V

    .line 163
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 326
    invoke-super {p0}, Lcom/google/glass/input/InputDetectingActivity;->onStart()V

    .line 329
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Resetting content view to Y=0."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 331
    .local v0, view:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 332
    invoke-virtual {v0, v4}, Landroid/view/View;->setY(F)V

    .line 333
    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 334
    return-void
.end method

.method public onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 2
    .parameter "fingerCount"
    .parameter "direction"

    .prologue
    .line 246
    sget-object v0, Lcom/google/glass/input/SwipeDirection;->UP:Lcom/google/glass/input/SwipeDirection;

    if-ne p2, v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/google/glass/input/SwipeDirection;->UP:Lcom/google/glass/input/SwipeDirection;

    invoke-static {v0, v1}, Lcom/google/glass/util/HopHelper;->performHopAnimation(Landroid/view/View;Lcom/google/glass/input/SwipeDirection;)V

    .line 248
    const/4 v0, 0x1

    .line 255
    :goto_0
    return v0

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldAllowHorizontalTugging()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->tuggableContentView:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->onSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    .line 255
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openOptionsMenu()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 502
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->shouldUseAndroidMenus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 504
    invoke-super {p0}, Lcom/google/glass/input/InputDetectingActivity;->openOptionsMenu()V

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/glass/app/GlassActivity;->rebuildMenu:Z

    if-eqz v0, :cond_6

    .line 509
    :cond_2
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    if-nez v0, :cond_4

    .line 510
    new-instance v0, Lcom/google/glass/widget/OptionMenu;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/OptionMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    .line 514
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    invoke-virtual {p0, v0}, Lcom/google/glass/app/GlassActivity;->onCreateOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 515
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    goto :goto_0

    .line 511
    :cond_4
    iget-boolean v0, p0, Lcom/google/glass/app/GlassActivity;->rebuildMenu:Z

    if-eqz v0, :cond_3

    .line 512
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    invoke-virtual {v0}, Lcom/google/glass/widget/OptionMenu;->clearItems()V

    goto :goto_1

    .line 518
    :cond_5
    iput-boolean v3, p0, Lcom/google/glass/app/GlassActivity;->rebuildMenu:Z

    .line 520
    :cond_6
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    invoke-virtual {p0, v0}, Lcom/google/glass/app/GlassActivity;->onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    invoke-virtual {v0}, Lcom/google/glass/widget/OptionMenu;->getVisibleItemCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menuDialog:Lcom/google/glass/widget/OptionMenuDialog;

    if-nez v0, :cond_7

    .line 529
    new-instance v0, Lcom/google/glass/widget/OptionMenuDialog;

    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    new-instance v2, Lcom/google/glass/app/GlassActivity$2;

    invoke-direct {v2, p0}, Lcom/google/glass/app/GlassActivity$2;-><init>(Lcom/google/glass/app/GlassActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/glass/widget/OptionMenuDialog;-><init>(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/sound/SoundManager;Lcom/google/glass/widget/OptionMenuDialog$Listener;)V

    iput-object v0, p0, Lcom/google/glass/app/GlassActivity;->menuDialog:Lcom/google/glass/widget/OptionMenuDialog;

    .line 570
    :cond_7
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menuDialog:Lcom/google/glass/widget/OptionMenuDialog;

    iget-object v1, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/OptionMenuDialog;->setMenu(Lcom/google/glass/widget/OptionMenu;)Lcom/google/glass/widget/OptionMenuDialog;

    .line 571
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menuDialog:Lcom/google/glass/widget/OptionMenuDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/OptionMenuDialog;->show()V

    .line 572
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;

    invoke-virtual {p0, v3, v0}, Lcom/google/glass/app/GlassActivity;->onMenuOpened(ILcom/google/glass/widget/OptionMenu;)V

    goto :goto_0
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 192
    const/4 v0, -0x1

    return v0
.end method

.method public setContentView(I)V
    .locals 0
    .parameter "layoutResID"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 430
    invoke-super {p0, p1}, Lcom/google/glass/input/InputDetectingActivity;->setContentView(I)V

    .line 431
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .parameter "view"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 437
    invoke-super {p0, p1}, Lcom/google/glass/input/InputDetectingActivity;->setContentView(Landroid/view/View;)V

    .line 438
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter "view"
    .parameter "params"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 444
    invoke-super {p0, p1, p2}, Lcom/google/glass/input/InputDetectingActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 445
    return-void
.end method

.method public setPowerHelperForTest(Lcom/google/glass/util/PowerHelper;)V
    .locals 0
    .parameter "powerHelper"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 673
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 674
    iput-object p1, p0, Lcom/google/glass/app/GlassActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    .line 675
    return-void
.end method

.method protected shouldAllowDismiss()Z
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldAllowHorizontalTugging()Z
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldFinishTurnScreenOff()Z
    .locals 1

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/google/glass/app/GlassActivity;->shouldTurnScreenOff:Z

    return v0
.end method

.method protected shouldHideMessageDialogOnPause()Z
    .locals 1

    .prologue
    .line 689
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldScreenOffFinish()Z
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldUseAndroidMenus()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 481
    const/4 v0, 0x0

    return v0
.end method

.method public showError(Lcom/google/glass/widget/MessageDialog;)V
    .locals 0
    .parameter "errorDialog"

    .prologue
    .line 654
    invoke-virtual {p0, p1}, Lcom/google/glass/app/GlassActivity;->showMessage(Lcom/google/glass/widget/MessageDialog;)V

    .line 655
    return-void
.end method

.method public showMessage(I)V
    .locals 1
    .parameter "message"

    .prologue
    .line 634
    invoke-virtual {p0, p1}, Lcom/google/glass/app/GlassActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/app/GlassActivity;->showMessage(Ljava/lang/String;)V

    .line 635
    return-void
.end method

.method public showMessage(Lcom/google/glass/widget/MessageDialog;)V
    .locals 0
    .parameter "messageDialog"

    .prologue
    .line 647
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->hideMessageDialog()V

    .line 648
    iput-object p1, p0, Lcom/google/glass/app/GlassActivity;->messageDialog:Lcom/google/glass/widget/MessageDialog;

    .line 649
    invoke-virtual {p1}, Lcom/google/glass/widget/MessageDialog;->show()V

    .line 650
    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 639
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    invoke-virtual {v0, p1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$drawable;->ic_exclamation_big:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/app/GlassActivity;->showMessage(Lcom/google/glass/widget/MessageDialog;)V

    .line 643
    return-void
.end method
