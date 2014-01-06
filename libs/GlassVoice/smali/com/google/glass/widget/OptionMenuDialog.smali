.class public final Lcom/google/glass/widget/OptionMenuDialog;
.super Landroid/app/Dialog;
.source "OptionMenuDialog.java"

# interfaces
.implements Lcom/google/glass/input/InputListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/widget/OptionMenuDialog$Listener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private canceled:Z

.field private final keyDetector:Lcom/google/glass/input/KeyDetector;

.field private final listener:Lcom/google/glass/widget/OptionMenuDialog$Listener;

.field private final optionsView:Lcom/google/glass/widget/OptionMenuView;

.field private final owner:Lcom/google/glass/app/GlassActivity;

.field private final sliderView:Lcom/google/glass/widget/SliderView;

.field private final soundManager:Lcom/google/glass/sound/SoundManager;

.field private final touchDetector:Lcom/google/glass/input/TouchDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/OptionMenuDialog;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/sound/SoundManager;Lcom/google/glass/widget/OptionMenuDialog$Listener;)V
    .locals 2
    .parameter "owner"
    .parameter "soundManager"
    .parameter "listener"

    .prologue
    .line 105
    sget v0, Lcom/google/glass/common/R$style;->ContextualDialogTheme:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->canceled:Z

    .line 107
    iput-object p1, p0, Lcom/google/glass/widget/OptionMenuDialog;->owner:Lcom/google/glass/app/GlassActivity;

    .line 108
    iput-object p2, p0, Lcom/google/glass/widget/OptionMenuDialog;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 109
    iput-object p3, p0, Lcom/google/glass/widget/OptionMenuDialog;->listener:Lcom/google/glass/widget/OptionMenuDialog$Listener;

    .line 110
    new-instance v0, Lcom/google/glass/input/TouchDetector;

    invoke-virtual {p0}, Lcom/google/glass/widget/OptionMenuDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/glass/input/TouchDetector;-><init>(Landroid/content/Context;Lcom/google/glass/input/InputListener;)V

    iput-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->touchDetector:Lcom/google/glass/input/TouchDetector;

    .line 111
    new-instance v0, Lcom/google/glass/input/KeyDetector;

    invoke-virtual {p0}, Lcom/google/glass/widget/OptionMenuDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/glass/input/KeyDetector;-><init>(Landroid/content/Context;Lcom/google/glass/input/InputListener;)V

    iput-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->keyDetector:Lcom/google/glass/input/KeyDetector;

    .line 113
    sget v0, Lcom/google/glass/common/R$layout;->option_menu_dialog:I

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/OptionMenuDialog;->setContentView(I)V

    .line 114
    sget v0, Lcom/google/glass/common/R$id;->slider:I

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/OptionMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/SliderView;

    iput-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->sliderView:Lcom/google/glass/widget/SliderView;

    .line 115
    sget v0, Lcom/google/glass/common/R$id;->options:I

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/OptionMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/OptionMenuView;

    iput-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->optionsView:Lcom/google/glass/widget/OptionMenuView;

    .line 117
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->optionsView:Lcom/google/glass/widget/OptionMenuView;

    new-instance v1, Lcom/google/glass/widget/OptionMenuDialog$1;

    invoke-direct {v1, p0}, Lcom/google/glass/widget/OptionMenuDialog$1;-><init>(Lcom/google/glass/widget/OptionMenuDialog;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/OptionMenuView;->setListener(Lcom/google/glass/widget/OptionMenuView$Listener;)V

    .line 124
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->sliderView:Lcom/google/glass/widget/SliderView;

    iget-object v1, p0, Lcom/google/glass/widget/OptionMenuDialog;->optionsView:Lcom/google/glass/widget/OptionMenuView;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/SliderView;->setScrollView(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V

    .line 126
    new-instance v0, Lcom/google/glass/widget/OptionMenuDialog$2;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/OptionMenuDialog$2;-><init>(Lcom/google/glass/widget/OptionMenuDialog;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/OptionMenuDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/widget/OptionMenuDialog;)Lcom/google/glass/widget/OptionMenuDialog$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->listener:Lcom/google/glass/widget/OptionMenuDialog$Listener;

    return-object v0
.end method

.method private resetToHomePosition()V
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->optionsView:Lcom/google/glass/widget/OptionMenuView;

    iget-object v1, p0, Lcom/google/glass/widget/OptionMenuDialog;->optionsView:Lcom/google/glass/widget/OptionMenuView;

    invoke-virtual {v1}, Lcom/google/glass/widget/OptionMenuView;->getHomePosition()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/widget/OptionMenuView;->setSelection(IZ)V

    .line 222
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->canceled:Z

    .line 200
    invoke-super {p0}, Landroid/app/Dialog;->cancel()V

    .line 201
    return-void
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/google/glass/widget/OptionMenuDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 194
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method public getOptionMenuView()Lcom/google/glass/widget/OptionMenuView;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->optionsView:Lcom/google/glass/widget/OptionMenuView;

    return-object v0
.end method

.method public hide()V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method public onCameraButtonPressed()Z
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->listener:Lcom/google/glass/widget/OptionMenuDialog$Listener;

    invoke-interface {v0}, Lcom/google/glass/widget/OptionMenuDialog$Listener;->onCameraButtonPressed()Z

    move-result v0

    return v0
.end method

.method public onConfirm()Z
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->optionsView:Lcom/google/glass/widget/OptionMenuView;

    invoke-virtual {v0}, Lcom/google/glass/widget/OptionMenuView;->onConfirm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/google/glass/widget/OptionMenuDialog;->dismiss()V

    .line 271
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->listener:Lcom/google/glass/widget/OptionMenuDialog$Listener;

    invoke-interface {v0}, Lcom/google/glass/widget/OptionMenuDialog$Listener;->onDisallowedInput()V

    goto :goto_0
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 1
    .parameter "dismissAction"

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/google/glass/widget/OptionMenuDialog;->dismiss()V

    .line 277
    const/4 v0, 0x1

    return v0
.end method

.method public onFingerCountChanged(IZ)Z
    .locals 1
    .parameter "count"
    .parameter "wentDown"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->optionsView:Lcom/google/glass/widget/OptionMenuView;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/widget/OptionMenuView;->onFingerCountChanged(IZ)Z

    move-result v0

    return v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->touchDetector:Lcom/google/glass/input/TouchDetector;

    invoke-virtual {v0, p1}, Lcom/google/glass/input/TouchDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 228
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 237
    const/16 v1, 0x1b

    if-ne p1, v1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 238
    iget-object v1, p0, Lcom/google/glass/widget/OptionMenuDialog;->listener:Lcom/google/glass/widget/OptionMenuDialog$Listener;

    invoke-interface {v1}, Lcom/google/glass/widget/OptionMenuDialog$Listener;->shouldAllowCameraButton()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    invoke-virtual {p0}, Lcom/google/glass/widget/OptionMenuDialog;->onCameraButtonPressed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 254
    :cond_0
    :goto_0
    return v0

    .line 247
    :cond_1
    iget-object v1, p0, Lcom/google/glass/widget/OptionMenuDialog;->listener:Lcom/google/glass/widget/OptionMenuDialog$Listener;

    invoke-interface {v1}, Lcom/google/glass/widget/OptionMenuDialog$Listener;->onDisallowedInput()V

    goto :goto_0

    .line 254
    :cond_2
    iget-object v1, p0, Lcom/google/glass/widget/OptionMenuDialog;->keyDetector:Lcom/google/glass/input/KeyDetector;

    invoke-virtual {v1, p1, p2}, Lcom/google/glass/input/KeyDetector;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->keyDetector:Lcom/google/glass/input/KeyDetector;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/input/KeyDetector;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
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
    .line 302
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->optionsView:Lcom/google/glass/widget/OptionMenuView;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/glass/widget/OptionMenuView;->onPrepareSwipe(IFFFFII)Z

    .line 304
    const/4 v0, 0x1

    return v0
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 156
    sget-object v0, Lcom/google/glass/widget/OptionMenuDialog;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onStart"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 158
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->optionsView:Lcom/google/glass/widget/OptionMenuView;

    invoke-virtual {v0}, Lcom/google/glass/widget/OptionMenuView;->activate()V

    .line 159
    invoke-direct {p0}, Lcom/google/glass/widget/OptionMenuDialog;->resetToHomePosition()V

    .line 160
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 164
    sget-object v0, Lcom/google/glass/widget/OptionMenuDialog;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onStop"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 169
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->optionsView:Lcom/google/glass/widget/OptionMenuView;

    new-instance v1, Lcom/google/glass/widget/OptionMenu;

    invoke-virtual {p0}, Lcom/google/glass/widget/OptionMenuDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/glass/widget/OptionMenu;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/OptionMenuView;->setOptionMenu(Lcom/google/glass/widget/OptionMenu;)V

    .line 170
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->sliderView:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0, v3}, Lcom/google/glass/widget/SliderView;->setCount(I)V

    .line 171
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->optionsView:Lcom/google/glass/widget/OptionMenuView;

    invoke-virtual {v0}, Lcom/google/glass/widget/OptionMenuView;->deactivate()V

    .line 172
    return-void
.end method

.method public onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 2
    .parameter "fingerCount"
    .parameter "direction"

    .prologue
    .line 284
    sget-object v0, Lcom/google/glass/input/SwipeDirection;->UP:Lcom/google/glass/input/SwipeDirection;

    if-ne p2, v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->optionsView:Lcom/google/glass/widget/OptionMenuView;

    sget-object v1, Lcom/google/glass/input/SwipeDirection;->UP:Lcom/google/glass/input/SwipeDirection;

    invoke-static {v0, v1}, Lcom/google/glass/util/HopHelper;->performHopAnimation(Landroid/view/View;Lcom/google/glass/input/SwipeDirection;)V

    .line 286
    const/4 v0, 0x1

    .line 291
    :goto_0
    return v0

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->optionsView:Lcom/google/glass/widget/OptionMenuView;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/widget/OptionMenuView;->onSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    .line 291
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onVerticalHeadScroll(F)Z
    .locals 1
    .parameter "delta"

    .prologue
    .line 323
    const/4 v0, 0x0

    return v0
.end method

.method public setMenu(Lcom/google/glass/widget/OptionMenu;)Lcom/google/glass/widget/OptionMenuDialog;
    .locals 2
    .parameter "menu"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->optionsView:Lcom/google/glass/widget/OptionMenuView;

    invoke-virtual {v0, p1}, Lcom/google/glass/widget/OptionMenuView;->setOptionMenu(Lcom/google/glass/widget/OptionMenu;)V

    .line 149
    invoke-direct {p0}, Lcom/google/glass/widget/OptionMenuDialog;->resetToHomePosition()V

    .line 150
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->sliderView:Lcom/google/glass/widget/SliderView;

    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu;->getVisibleItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/SliderView;->setCount(I)V

    .line 151
    return-object p0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/google/glass/widget/OptionMenuDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->canceled:Z

    .line 185
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public wasCanceled()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/google/glass/widget/OptionMenuDialog;->canceled:Z

    return v0
.end method
