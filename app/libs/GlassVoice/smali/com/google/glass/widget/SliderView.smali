.class public Lcom/google/glass/widget/SliderView;
.super Landroid/widget/FrameLayout;
.source "SliderView.java"


# static fields
.field private static final HIDE_SLIDER_TIMEOUT_MILLIS:J = 0x7d0L

.field private static final MIN_SLIDER_WIDTH_PX:I = 0x28

.field private static final SLIDER_BAR_RESIZE_ANIMATION_DURATION_MILLIS:J = 0x12cL


# instance fields
.field private animatedCount:F

.field private count:I

.field private countAnimator:Landroid/animation/ObjectAnimator;

.field private hideSliderRunnable:Ljava/lang/Runnable;

.field private final indeterminateSlider:Landroid/widget/ImageView;

.field private index:F

.field private final positionListener:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$PositionListener;

.field private progressAnimator:Landroid/view/ViewPropertyAnimator;

.field private slideableScale:F

.field private final slider:Landroid/view/View;

.field private sliderShowing:Z

.field private sliderWasShowing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/widget/SliderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/widget/SliderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 114
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    iput v2, p0, Lcom/google/glass/widget/SliderView;->count:I

    .line 45
    iput v0, p0, Lcom/google/glass/widget/SliderView;->animatedCount:F

    .line 46
    iput v0, p0, Lcom/google/glass/widget/SliderView;->index:F

    .line 55
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/glass/widget/SliderView;->slideableScale:F

    .line 58
    new-instance v0, Lcom/google/glass/widget/SliderView$1;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/SliderView$1;-><init>(Lcom/google/glass/widget/SliderView;)V

    iput-object v0, p0, Lcom/google/glass/widget/SliderView;->hideSliderRunnable:Ljava/lang/Runnable;

    .line 69
    iput-boolean v2, p0, Lcom/google/glass/widget/SliderView;->sliderWasShowing:Z

    .line 76
    new-instance v0, Lcom/google/glass/widget/SliderView$2;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/SliderView$2;-><init>(Lcom/google/glass/widget/SliderView;)V

    iput-object v0, p0, Lcom/google/glass/widget/SliderView;->positionListener:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$PositionListener;

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/widget/SliderView;->sliderShowing:Z

    .line 115
    invoke-virtual {p0}, Lcom/google/glass/widget/SliderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$layout;->slider:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 116
    sget v0, Lcom/google/glass/common/R$id;->slider_control:I

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/SliderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    .line 117
    sget v0, Lcom/google/glass/common/R$id;->indeterminate_slider:I

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/SliderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/widget/SliderView;->indeterminateSlider:Landroid/widget/ImageView;

    .line 120
    invoke-direct {p0, v2}, Lcom/google/glass/widget/SliderView;->hideSlider(Z)V

    .line 121
    invoke-direct {p0, v2}, Lcom/google/glass/widget/SliderView;->hideIndeterminateSlider(Z)V

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/widget/SliderView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/glass/widget/SliderView;->hideSlider(Z)V

    return-void
.end method

.method private animateCountTo(F)V
    .locals 4
    .parameter "count"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->countAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->countAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->countAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 216
    :cond_0
    const-string v0, "animatedCount"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/glass/widget/SliderView;->animatedCount:F

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/widget/SliderView;->countAnimator:Landroid/animation/ObjectAnimator;

    .line 217
    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->countAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 218
    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->countAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 219
    return-void
.end method

.method private getBaseSliderWidth()I
    .locals 4

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/google/glass/widget/SliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 261
    .local v1, width:I
    int-to-float v2, v1

    iget v3, p0, Lcom/google/glass/widget/SliderView;->animatedCount:F

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 262
    .local v0, baseSliderWidth:I
    const/16 v2, 0x28

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method

.method private hideIndeterminateSlider(Z)V
    .locals 4
    .parameter "animate"

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/google/glass/widget/SliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/common/R$dimen;->slider_bar_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 178
    .local v0, height:I
    if-eqz p1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/google/glass/widget/SliderView;->indeterminateSlider:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/widget/SliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/common/R$integer;->slider_in_out_animation_duration_ms:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/google/glass/widget/SliderView;->indeterminateSlider:Landroid/widget/ImageView;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    goto :goto_0
.end method

.method private hideSlider(Z)V
    .locals 4
    .parameter "animate"

    .prologue
    .line 144
    iget-boolean v1, p0, Lcom/google/glass/widget/SliderView;->sliderShowing:Z

    if-nez v1, :cond_0

    .line 158
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/widget/SliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/common/R$dimen;->slider_bar_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 150
    .local v0, height:I
    iget-object v1, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 151
    if-eqz p1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/widget/SliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/common/R$integer;->slider_in_out_animation_duration_ms:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 157
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/glass/widget/SliderView;->sliderShowing:Z

    goto :goto_0

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1
.end method

.method private hideSliderAfterTimeout()V
    .locals 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->hideSliderRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/SliderView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 162
    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->hideSliderRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/glass/widget/SliderView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 163
    return-void
.end method

.method private setProportionalIndex(FIZ)V
    .locals 9
    .parameter "nextIndex"
    .parameter "animationDuration"
    .parameter "showSlider"

    .prologue
    const/4 v8, 0x1

    .line 282
    iget v5, p0, Lcom/google/glass/widget/SliderView;->count:I

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    .line 283
    invoke-direct {p0, v8}, Lcom/google/glass/widget/SliderView;->hideSlider(Z)V

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iput p1, p0, Lcom/google/glass/widget/SliderView;->index:F

    .line 289
    const/high16 v5, 0x3f80

    iget v6, p0, Lcom/google/glass/widget/SliderView;->slideableScale:F

    div-float v3, v5, v6

    .line 290
    .local v3, numItemsOnScreen:F
    iget v5, p0, Lcom/google/glass/widget/SliderView;->index:F

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float v6, v3, v6

    sub-float v1, v5, v6

    .line 291
    .local v1, indexOnLeftEdge:F
    invoke-virtual {p0}, Lcom/google/glass/widget/SliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v4, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 292
    .local v4, width:I
    iget v5, p0, Lcom/google/glass/widget/SliderView;->count:I

    div-int v0, v4, v5

    .line 293
    .local v0, baseSliderWidth:I
    int-to-float v5, v0

    mul-float v2, v1, v5

    .line 294
    .local v2, newX:F
    if-eqz p2, :cond_2

    .line 295
    iget-object v5, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    int-to-long v6, p2

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 301
    :goto_1
    if-eqz p3, :cond_0

    .line 302
    invoke-direct {p0, v8}, Lcom/google/glass/widget/SliderView;->showSlider(Z)V

    .line 303
    invoke-direct {p0}, Lcom/google/glass/widget/SliderView;->hideSliderAfterTimeout()V

    goto :goto_0

    .line 298
    :cond_2
    iget-object v5, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1
.end method

.method private showIndeterminateSlider(Z)V
    .locals 3
    .parameter "animate"

    .prologue
    const/4 v1, 0x0

    .line 167
    if-eqz p1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->indeterminateSlider:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/widget/SliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/common/R$integer;->slider_in_out_animation_duration_ms:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->indeterminateSlider:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    goto :goto_0
.end method

.method private showSlider(Z)V
    .locals 3
    .parameter "animate"

    .prologue
    const/4 v1, 0x0

    .line 126
    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->hideSliderRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/SliderView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 128
    iget-boolean v0, p0, Lcom/google/glass/widget/SliderView;->sliderShowing:Z

    if-eqz v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 133
    if-eqz p1, :cond_1

    .line 134
    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/widget/SliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/common/R$integer;->slider_in_out_animation_duration_ms:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 139
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/widget/SliderView;->sliderShowing:Z

    goto :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1
.end method

.method private updateSliderWidth(Z)V
    .locals 7
    .parameter "showSlider"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 443
    iget v3, p0, Lcom/google/glass/widget/SliderView;->count:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 444
    invoke-direct {p0, v6}, Lcom/google/glass/widget/SliderView;->hideSlider(Z)V

    .line 460
    :goto_0
    return-void

    .line 449
    :cond_0
    iget-object v3, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 450
    .local v1, sliderParams:Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v3, 0x3f80

    iget v4, p0, Lcom/google/glass/widget/SliderView;->slideableScale:F

    div-float v0, v3, v4

    .line 451
    .local v0, numItemsOnScreen:F
    invoke-direct {p0}, Lcom/google/glass/widget/SliderView;->getBaseSliderWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v2, v3

    .line 452
    .local v2, sliderWidth:I
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 453
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 454
    iget-object v3, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 456
    if-eqz p1, :cond_1

    .line 457
    invoke-direct {p0, v6}, Lcom/google/glass/widget/SliderView;->showSlider(Z)V

    .line 459
    :cond_1
    iget v3, p0, Lcom/google/glass/widget/SliderView;->index:F

    invoke-direct {p0, v3, v5, p1}, Lcom/google/glass/widget/SliderView;->setProportionalIndex(FIZ)V

    goto :goto_0
.end method


# virtual methods
.method public dismissManualProgress()V
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/glass/widget/SliderView;->hideSlider(Z)V

    .line 404
    return-void
.end method

.method getAnimatedCount()F
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/google/glass/widget/SliderView;->animatedCount:F

    return v0
.end method

.method setAnimatedCount(F)V
    .locals 1
    .parameter "count"

    .prologue
    .line 199
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/widget/SliderView;->setAnimatedCount(FZ)V

    .line 200
    return-void
.end method

.method setAnimatedCount(FZ)V
    .locals 0
    .parameter "count"
    .parameter "showSlider"

    .prologue
    .line 204
    iput p1, p0, Lcom/google/glass/widget/SliderView;->animatedCount:F

    .line 205
    invoke-direct {p0, p2}, Lcom/google/glass/widget/SliderView;->updateSliderWidth(Z)V

    .line 206
    return-void
.end method

.method public setCount(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 230
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/widget/SliderView;->setCount(IZ)V

    .line 231
    return-void
.end method

.method public setCount(IZ)V
    .locals 2
    .parameter "count"
    .parameter "showSlider"

    .prologue
    const/4 v0, 0x1

    .line 238
    invoke-direct {p0, v0}, Lcom/google/glass/widget/SliderView;->hideIndeterminateSlider(Z)V

    .line 239
    invoke-direct {p0, v0}, Lcom/google/glass/widget/SliderView;->hideSlider(Z)V

    .line 241
    iput p1, p0, Lcom/google/glass/widget/SliderView;->count:I

    .line 242
    iget v0, p0, Lcom/google/glass/widget/SliderView;->index:F

    add-int/lit8 v1, p1, -0x1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/glass/widget/SliderView;->index:F

    .line 246
    if-eqz p2, :cond_0

    .line 247
    int-to-float v0, p1

    invoke-direct {p0, v0}, Lcom/google/glass/widget/SliderView;->animateCountTo(F)V

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    int-to-float v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/widget/SliderView;->setAnimatedCount(FZ)V

    goto :goto_0
.end method

.method public setManualProgress(F)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 371
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/widget/SliderView;->setManualProgress(FZ)V

    .line 372
    return-void
.end method

.method public setManualProgress(FZ)V
    .locals 4
    .parameter "progress"
    .parameter "animate"

    .prologue
    const/4 v3, 0x0

    .line 382
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/google/glass/widget/SliderView;->hideIndeterminateSlider(Z)V

    .line 383
    invoke-direct {p0, v3}, Lcom/google/glass/widget/SliderView;->showSlider(Z)V

    .line 385
    invoke-virtual {p0}, Lcom/google/glass/widget/SliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 386
    .local v1, width:I
    iget-object v2, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 387
    .local v0, sliderParams:Landroid/widget/FrameLayout$LayoutParams;
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 388
    neg-int v2, v1

    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 389
    iget-object v2, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    if-eqz p2, :cond_0

    .line 391
    iget-object v2, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-float v3, v1

    mul-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 395
    :goto_0
    return-void

    .line 393
    :cond_0
    iget-object v2, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    int-to-float v3, v1

    mul-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0
.end method

.method public setProportionalIndex(F)V
    .locals 2
    .parameter "nextIndex"

    .prologue
    .line 255
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/widget/SliderView;->setProportionalIndex(FIZ)V

    .line 256
    return-void
.end method

.method public setProportionalIndex(FI)V
    .locals 1
    .parameter "nextIndex"
    .parameter "animationDuration"

    .prologue
    .line 273
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/widget/SliderView;->setProportionalIndex(FIZ)V

    .line 274
    return-void
.end method

.method public setScale(F)V
    .locals 1
    .parameter "scale"

    .prologue
    .line 436
    iput p1, p0, Lcom/google/glass/widget/SliderView;->slideableScale:F

    .line 437
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/glass/widget/SliderView;->updateSliderWidth(Z)V

    .line 438
    return-void
.end method

.method public setScrollView(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 467
    .local p1, scrollView:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;,"Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView<**>;"
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->positionListener:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$PositionListener;

    invoke-virtual {p1, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->addPositionListener(Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView$PositionListener;)V

    .line 469
    return-void
.end method

.method public startIndeterminate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 408
    invoke-virtual {p0}, Lcom/google/glass/widget/SliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 409
    .local v1, width:I
    iget-object v2, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 410
    .local v0, sliderParams:Landroid/widget/FrameLayout$LayoutParams;
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 411
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 412
    iget-object v2, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 414
    iget-boolean v2, p0, Lcom/google/glass/widget/SliderView;->sliderShowing:Z

    if-eqz v2, :cond_0

    .line 415
    iput-boolean v4, p0, Lcom/google/glass/widget/SliderView;->sliderWasShowing:Z

    .line 416
    invoke-direct {p0, v4}, Lcom/google/glass/widget/SliderView;->hideSlider(Z)V

    .line 419
    :cond_0
    invoke-direct {p0, v4}, Lcom/google/glass/widget/SliderView;->showIndeterminateSlider(Z)V

    .line 420
    iget-object v2, p0, Lcom/google/glass/widget/SliderView;->indeterminateSlider:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 421
    return-void
.end method

.method public startProgress(J)V
    .locals 1
    .parameter "animationDuration"

    .prologue
    .line 315
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/glass/widget/SliderView;->startProgress(JLandroid/animation/TimeInterpolator;)V

    .line 316
    return-void
.end method

.method public startProgress(JLandroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .parameter "animationDuration"
    .parameter "listener"

    .prologue
    .line 320
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/glass/widget/SliderView;->startProgress(JLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)V

    .line 321
    return-void
.end method

.method public startProgress(JLandroid/animation/TimeInterpolator;)V
    .locals 1
    .parameter "animationDuration"
    .parameter "interpolator"

    .prologue
    .line 330
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/glass/widget/SliderView;->startProgress(JLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)V

    .line 331
    return-void
.end method

.method public startProgress(JLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 5
    .parameter "animationDuration"
    .parameter "interpolator"
    .parameter "animatorListener"

    .prologue
    const/4 v4, 0x0

    .line 336
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/google/glass/widget/SliderView;->hideIndeterminateSlider(Z)V

    .line 337
    iget-object v2, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 338
    invoke-direct {p0, v4}, Lcom/google/glass/widget/SliderView;->showSlider(Z)V

    .line 340
    invoke-virtual {p0}, Lcom/google/glass/widget/SliderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 341
    .local v1, width:I
    iget-object v2, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 342
    .local v0, sliderParams:Landroid/widget/FrameLayout$LayoutParams;
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 343
    neg-int v2, v1

    invoke-virtual {v0, v2, v4, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 344
    iget-object v2, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    iget-object v2, p0, Lcom/google/glass/widget/SliderView;->slider:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/widget/SliderView;->progressAnimator:Landroid/view/ViewPropertyAnimator;

    .line 350
    return-void
.end method

.method public stopIndeterminate()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 425
    iget-boolean v0, p0, Lcom/google/glass/widget/SliderView;->sliderWasShowing:Z

    if-eqz v0, :cond_0

    .line 428
    invoke-direct {p0, v1}, Lcom/google/glass/widget/SliderView;->showSlider(Z)V

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->indeterminateSlider:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 432
    invoke-direct {p0, v1}, Lcom/google/glass/widget/SliderView;->hideIndeterminateSlider(Z)V

    .line 433
    return-void
.end method

.method public stopProgress()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->progressAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/google/glass/widget/SliderView;->progressAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 360
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/glass/widget/SliderView;->hideSlider(Z)V

    .line 361
    return-void
.end method
