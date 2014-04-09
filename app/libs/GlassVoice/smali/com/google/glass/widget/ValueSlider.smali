.class public Lcom/google/glass/widget/ValueSlider;
.super Landroid/widget/LinearLayout;
.source "ValueSlider.java"

# interfaces
.implements Lcom/google/glass/widget/FillBar$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/widget/ValueSlider$Listener;
    }
.end annotation


# static fields
.field static final ALLOW_SWIPE_TIMEOUT_MILLIS:I = 0xc8
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final FILL_BAR_FLING_MIN_FRACTION:F = 0.33f

.field private static final ICON_BAR_PADDING_PX:I = 0x28

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private clock:Lcom/google/glass/util/Clock;

.field private defaultIconResource:I

.field private fillBar:Lcom/google/glass/widget/FillBar;

.field private firstFingerDownTime:J

.field private iconView:Landroid/widget/ImageView;

.field private lastFillValue:F

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/widget/ValueSlider$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private numValues:I

.field private selectedValue:I

.field private valueToIconResource:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/ValueSlider;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 76
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/widget/ValueSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/widget/ValueSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    const/high16 v1, -0x4080

    iput v1, p0, Lcom/google/glass/widget/ValueSlider;->lastFillValue:F

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/widget/ValueSlider;->listeners:Ljava/util/List;

    .line 85
    invoke-virtual {p0}, Lcom/google/glass/widget/ValueSlider;->createClock()Lcom/google/glass/util/Clock;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/widget/ValueSlider;->clock:Lcom/google/glass/util/Clock;

    .line 87
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/glass/widget/ValueSlider;->setOrientation(I)V

    .line 88
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/google/glass/widget/ValueSlider;->setGravity(I)V

    .line 91
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/widget/ValueSlider;->iconView:Landroid/widget/ImageView;

    .line 92
    iget-object v1, p0, Lcom/google/glass/widget/ValueSlider;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/google/glass/widget/ValueSlider;->addView(Landroid/view/View;)V

    .line 93
    iget-object v1, p0, Lcom/google/glass/widget/ValueSlider;->iconView:Landroid/widget/ImageView;

    const/16 v2, 0x28

    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 96
    new-instance v1, Lcom/google/glass/widget/FillBar;

    invoke-direct {v1, p1}, Lcom/google/glass/widget/FillBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/widget/ValueSlider;->fillBar:Lcom/google/glass/widget/FillBar;

    .line 97
    invoke-virtual {p0}, Lcom/google/glass/widget/ValueSlider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 98
    .local v0, resources:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/google/glass/widget/ValueSlider;->fillBar:Lcom/google/glass/widget/FillBar;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    sget v3, Lcom/google/glass/common/R$dimen;->fill_bar_width:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/google/glass/widget/ValueSlider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/glass/common/R$dimen;->fill_bar_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/widget/ValueSlider;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    iget-object v1, p0, Lcom/google/glass/widget/ValueSlider;->fillBar:Lcom/google/glass/widget/FillBar;

    invoke-virtual {v1, p0}, Lcom/google/glass/widget/FillBar;->addListener(Lcom/google/glass/widget/FillBar$Listener;)V

    .line 102
    return-void
.end method

.method private updateIcon()V
    .locals 3

    .prologue
    .line 260
    iget-object v1, p0, Lcom/google/glass/widget/ValueSlider;->valueToIconResource:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 261
    iget-object v1, p0, Lcom/google/glass/widget/ValueSlider;->valueToIconResource:Ljava/util/Map;

    iget v2, p0, Lcom/google/glass/widget/ValueSlider;->selectedValue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 262
    .local v0, iconResource:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 263
    iget v1, p0, Lcom/google/glass/widget/ValueSlider;->defaultIconResource:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/google/glass/widget/ValueSlider;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 267
    .end local v0           #iconResource:Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method private updateSelectedValue()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 228
    iget v3, p0, Lcom/google/glass/widget/ValueSlider;->lastFillValue:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    .line 255
    :cond_0
    return-void

    .line 232
    :cond_1
    iget v2, p0, Lcom/google/glass/widget/ValueSlider;->selectedValue:I

    .line 233
    .local v2, prevSelectedValue:I
    iget v3, p0, Lcom/google/glass/widget/ValueSlider;->lastFillValue:F

    iget v4, p0, Lcom/google/glass/widget/ValueSlider;->numValues:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/google/glass/widget/ValueSlider;->selectedValue:I

    .line 236
    iget v3, p0, Lcom/google/glass/widget/ValueSlider;->numValues:I

    const/4 v4, 0x2

    if-le v3, v4, :cond_2

    .line 237
    iget v3, p0, Lcom/google/glass/widget/ValueSlider;->selectedValue:I

    if-nez v3, :cond_3

    .line 238
    iget v3, p0, Lcom/google/glass/widget/ValueSlider;->lastFillValue:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_2

    .line 239
    const/4 v3, 0x1

    iput v3, p0, Lcom/google/glass/widget/ValueSlider;->selectedValue:I

    .line 249
    :cond_2
    :goto_0
    iget v3, p0, Lcom/google/glass/widget/ValueSlider;->selectedValue:I

    if-eq v3, v2, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/google/glass/widget/ValueSlider;->updateIcon()V

    .line 251
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v3, p0, Lcom/google/glass/widget/ValueSlider;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .local v1, n:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 252
    iget-object v3, p0, Lcom/google/glass/widget/ValueSlider;->listeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/widget/ValueSlider$Listener;

    iget v4, p0, Lcom/google/glass/widget/ValueSlider;->selectedValue:I

    invoke-interface {v3, v4}, Lcom/google/glass/widget/ValueSlider$Listener;->onValueChanged(I)V

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 241
    .end local v0           #i:I
    .end local v1           #n:I
    :cond_3
    iget v3, p0, Lcom/google/glass/widget/ValueSlider;->selectedValue:I

    iget v4, p0, Lcom/google/glass/widget/ValueSlider;->numValues:I

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_2

    .line 242
    iget v3, p0, Lcom/google/glass/widget/ValueSlider;->lastFillValue:F

    const/high16 v4, 0x3f80

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 243
    iget v3, p0, Lcom/google/glass/widget/ValueSlider;->numValues:I

    add-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/glass/widget/ValueSlider;->selectedValue:I

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/google/glass/widget/ValueSlider$Listener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 111
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/google/glass/widget/ValueSlider;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method createClock()Lcom/google/glass/util/Clock;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 106
    new-instance v0, Lcom/google/glass/util/Clock$Impl;

    invoke-direct {v0}, Lcom/google/glass/util/Clock$Impl;-><init>()V

    return-object v0
.end method

.method public getFillBarOverScrollPixels()I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/glass/widget/ValueSlider;->fillBar:Lcom/google/glass/widget/FillBar;

    invoke-virtual {v0}, Lcom/google/glass/widget/FillBar;->getOverScrollPixels()I

    move-result v0

    return v0
.end method

.method public init(Ljava/util/Map;III)V
    .locals 6
    .parameter
    .parameter "defaultIconResource"
    .parameter "numValues"
    .parameter "initialValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .local p1, valueToIconResource:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 131
    if-le p3, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 134
    add-int/lit8 v0, p3, -0x1

    invoke-static {v0, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 136
    iput-object p1, p0, Lcom/google/glass/widget/ValueSlider;->valueToIconResource:Ljava/util/Map;

    .line 137
    iput p2, p0, Lcom/google/glass/widget/ValueSlider;->defaultIconResource:I

    .line 140
    iput p3, p0, Lcom/google/glass/widget/ValueSlider;->numValues:I

    .line 141
    if-nez p4, :cond_1

    .line 142
    iget-object v0, p0, Lcom/google/glass/widget/ValueSlider;->fillBar:Lcom/google/glass/widget/FillBar;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/glass/widget/FillBar;->setFillValue(F)V

    .line 148
    :goto_1
    iget v0, p0, Lcom/google/glass/widget/ValueSlider;->selectedValue:I

    if-ne v0, p4, :cond_3

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 149
    invoke-direct {p0}, Lcom/google/glass/widget/ValueSlider;->updateIcon()V

    .line 152
    invoke-virtual {p0}, Lcom/google/glass/widget/ValueSlider;->requestLayout()V

    .line 153
    sget-object v0, Lcom/google/glass/widget/ValueSlider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Initialized value slider to initial value: %d / %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-interface {v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    return-void

    :cond_0
    move v0, v2

    .line 131
    goto :goto_0

    .line 143
    :cond_1
    add-int/lit8 v0, p3, -0x1

    if-ne p4, v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/google/glass/widget/ValueSlider;->fillBar:Lcom/google/glass/widget/FillBar;

    const/high16 v3, 0x3f80

    invoke-virtual {v0, v3}, Lcom/google/glass/widget/FillBar;->setFillValue(F)V

    goto :goto_1

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/google/glass/widget/ValueSlider;->fillBar:Lcom/google/glass/widget/FillBar;

    int-to-float v3, p4

    add-int/lit8 v4, p3, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/google/glass/widget/FillBar;->setFillValue(F)V

    goto :goto_1

    :cond_3
    move v0, v2

    .line 148
    goto :goto_2
.end method

.method public onFillValueChanged(F)V
    .locals 1
    .parameter "value"

    .prologue
    .line 158
    iget v0, p0, Lcom/google/glass/widget/ValueSlider;->lastFillValue:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 159
    iput p1, p0, Lcom/google/glass/widget/ValueSlider;->lastFillValue:F

    .line 160
    invoke-direct {p0}, Lcom/google/glass/widget/ValueSlider;->updateSelectedValue()V

    .line 162
    :cond_0
    return-void
.end method

.method public onFingerCountChanged(IZ)V
    .locals 2
    .parameter "count"
    .parameter "wentDown"

    .prologue
    .line 168
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 169
    iget-object v0, p0, Lcom/google/glass/widget/ValueSlider;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v0}, Lcom/google/glass/util/Clock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/widget/ValueSlider;->firstFingerDownTime:J

    .line 173
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 174
    iget-object v0, p0, Lcom/google/glass/widget/ValueSlider;->fillBar:Lcom/google/glass/widget/FillBar;

    invoke-virtual {v0}, Lcom/google/glass/widget/FillBar;->commitFillOffset()V

    .line 176
    :cond_1
    return-void
.end method

.method public onPrepareSwipe(F)V
    .locals 2
    .parameter "accumulatorX"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/glass/widget/ValueSlider;->fillBar:Lcom/google/glass/widget/FillBar;

    iget-object v1, p0, Lcom/google/glass/widget/ValueSlider;->fillBar:Lcom/google/glass/widget/FillBar;

    invoke-virtual {v1}, Lcom/google/glass/widget/FillBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/FillBar;->setFillOffset(F)V

    .line 181
    return-void
.end method

.method public onSwipe(Lcom/google/glass/input/SwipeDirection;)Z
    .locals 8
    .parameter "direction"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 191
    iget-object v4, p0, Lcom/google/glass/widget/ValueSlider;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v4}, Lcom/google/glass/util/Clock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/glass/widget/ValueSlider;->firstFingerDownTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xc8

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    move v1, v2

    .line 195
    .local v1, fastEnough:Z
    :goto_0
    iget-object v4, p0, Lcom/google/glass/widget/ValueSlider;->fillBar:Lcom/google/glass/widget/FillBar;

    invoke-virtual {v4}, Lcom/google/glass/widget/FillBar;->getFillOffset()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3ea8f5c3

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    move v0, v2

    .line 197
    .local v0, farEnough:Z
    :goto_1
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 198
    sget-object v4, Lcom/google/glass/input/SwipeDirection;->LEFT:Lcom/google/glass/input/SwipeDirection;

    if-ne p1, v4, :cond_2

    .line 201
    iget-object v4, p0, Lcom/google/glass/widget/ValueSlider;->fillBar:Lcom/google/glass/widget/FillBar;

    invoke-virtual {v4}, Lcom/google/glass/widget/FillBar;->isAtMin()Z

    move-result v4

    if-nez v4, :cond_3

    .line 202
    iget-object v3, p0, Lcom/google/glass/widget/ValueSlider;->fillBar:Lcom/google/glass/widget/FillBar;

    invoke-virtual {v3}, Lcom/google/glass/widget/FillBar;->setToMin()V

    .line 216
    :goto_2
    return v2

    .end local v0           #farEnough:Z
    .end local v1           #fastEnough:Z
    :cond_0
    move v1, v3

    .line 191
    goto :goto_0

    .restart local v1       #fastEnough:Z
    :cond_1
    move v0, v3

    .line 195
    goto :goto_1

    .line 205
    .restart local v0       #farEnough:Z
    :cond_2
    sget-object v4, Lcom/google/glass/input/SwipeDirection;->RIGHT:Lcom/google/glass/input/SwipeDirection;

    if-ne p1, v4, :cond_3

    .line 208
    iget-object v4, p0, Lcom/google/glass/widget/ValueSlider;->fillBar:Lcom/google/glass/widget/FillBar;

    invoke-virtual {v4}, Lcom/google/glass/widget/FillBar;->isAtMax()Z

    move-result v4

    if-nez v4, :cond_3

    .line 209
    iget-object v3, p0, Lcom/google/glass/widget/ValueSlider;->fillBar:Lcom/google/glass/widget/FillBar;

    invoke-virtual {v3}, Lcom/google/glass/widget/FillBar;->setToMax()V

    goto :goto_2

    :cond_3
    move v2, v3

    .line 216
    goto :goto_2
.end method

.method public removeListener(Lcom/google/glass/widget/ValueSlider$Listener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 117
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/google/glass/widget/ValueSlider;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 119
    return-void
.end method
