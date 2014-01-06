.class public Lcom/google/glass/entity/EntityItemView;
.super Lcom/google/glass/widget/horizontalscroll/FrameLayoutCard;
.source "EntityItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/entity/EntityItemView$OnConfirmListener;
    }
.end annotation


# instance fields
.field private displayName:Ljava/lang/String;

.field private entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

.field private glasswareIconBinder:Lcom/google/glass/widget/GlasswareIconBinder;

.field private image:Lcom/google/glass/widget/MosaicView;

.field private final imageHeight:I

.field private final imageWidth:I

.field private label:Landroid/widget/TextView;

.field private onConfirmListener:Lcom/google/glass/entity/EntityItemView$OnConfirmListener;

.field private parseProtoTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation
.end field

.field private protobuf:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/entity/EntityItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/glass/widget/horizontalscroll/FrameLayoutCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-virtual {p0}, Lcom/google/glass/entity/EntityItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/glass/common/R$layout;->entity_item_view_contents:I

    invoke-static {v1, v2, p0}, Lcom/google/glass/entity/EntityItemView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    sget v1, Lcom/google/glass/common/R$id;->image:I

    invoke-virtual {p0, v1}, Lcom/google/glass/entity/EntityItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/MosaicView;

    iput-object v1, p0, Lcom/google/glass/entity/EntityItemView;->image:Lcom/google/glass/widget/MosaicView;

    .line 44
    sget v1, Lcom/google/glass/common/R$id;->label:I

    invoke-virtual {p0, v1}, Lcom/google/glass/entity/EntityItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/glass/entity/EntityItemView;->label:Landroid/widget/TextView;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 47
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/google/glass/entity/EntityItemView;->imageWidth:I

    .line 48
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/google/glass/entity/EntityItemView;->imageHeight:I

    .line 50
    invoke-virtual {p0}, Lcom/google/glass/entity/EntityItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/common/R$color;->background_dark_gray:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/glass/entity/EntityItemView;->setBackgroundColor(I)V

    .line 51
    return-void
.end method

.method static synthetic access$002(Lcom/google/glass/entity/EntityItemView;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/google/glass/entity/EntityItemView;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/glass/entity/EntityItemView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/google/glass/entity/EntityItemView;->imageWidth:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/glass/entity/EntityItemView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/google/glass/entity/EntityItemView;->imageHeight:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/glass/entity/EntityItemView;)Lcom/google/glass/widget/MosaicView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->image:Lcom/google/glass/widget/MosaicView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/entity/EntityItemView;)Lcom/google/glass/widget/GlasswareIconBinder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->glasswareIconBinder:Lcom/google/glass/widget/GlasswareIconBinder;

    return-object v0
.end method


# virtual methods
.method public bind(Ljava/lang/String;[B)V
    .locals 2
    .parameter "displayName"
    .parameter "protobuf"

    .prologue
    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/entity/EntityItemView;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 69
    iput-object p2, p0, Lcom/google/glass/entity/EntityItemView;->protobuf:[B

    .line 70
    iput-object p1, p0, Lcom/google/glass/entity/EntityItemView;->displayName:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->label:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    new-instance v0, Lcom/google/glass/entity/EntityItemView$1;

    invoke-direct {v0, p0, p2}, Lcom/google/glass/entity/EntityItemView$1;-><init>(Lcom/google/glass/entity/EntityItemView;[B)V

    iput-object v0, p0, Lcom/google/glass/entity/EntityItemView;->parseProtoTask:Landroid/os/AsyncTask;

    .line 92
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->parseProtoTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 93
    return-void
.end method

.method protected getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method protected getEntity()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->protobuf:[B

    invoke-static {v0}, Lcom/google/glass/entity/EntityHelper;->fromProtoByteArray([B)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/entity/EntityItemView;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    return-object v0
.end method

.method public onConfirm()Z
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->onConfirmListener:Lcom/google/glass/entity/EntityItemView$OnConfirmListener;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->onConfirmListener:Lcom/google/glass/entity/EntityItemView$OnConfirmListener;

    invoke-virtual {p0}, Lcom/google/glass/entity/EntityItemView;->getEntity()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/glass/entity/EntityItemView$OnConfirmListener;->onConfirm(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    .line 127
    const/4 v0, 0x1

    .line 130
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/google/glass/widget/horizontalscroll/FrameLayoutCard;->onConfirm()Z

    move-result v0

    goto :goto_0
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->image:Lcom/google/glass/widget/MosaicView;

    invoke-virtual {v0}, Lcom/google/glass/widget/MosaicView;->clearSubtasks()V

    .line 98
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->image:Lcom/google/glass/widget/MosaicView;

    invoke-virtual {v0}, Lcom/google/glass/widget/MosaicView;->cancelImageDownloads()V

    .line 99
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->image:Lcom/google/glass/widget/MosaicView;

    invoke-virtual {v0}, Lcom/google/glass/widget/MosaicView;->clearImages()V

    .line 101
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->glasswareIconBinder:Lcom/google/glass/widget/GlasswareIconBinder;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->glasswareIconBinder:Lcom/google/glass/widget/GlasswareIconBinder;

    invoke-virtual {v0, p0}, Lcom/google/glass/widget/GlasswareIconBinder;->recycle(Landroid/view/View;)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->parseProtoTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->parseProtoTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/entity/EntityItemView;->parseProtoTask:Landroid/os/AsyncTask;

    .line 108
    :cond_1
    return-void
.end method

.method public setGlasswareIconBinder(Lcom/google/glass/widget/GlasswareIconBinder;)V
    .locals 0
    .parameter "glasswareIconBinder"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/glass/entity/EntityItemView;->glasswareIconBinder:Lcom/google/glass/widget/GlasswareIconBinder;

    .line 65
    return-void
.end method

.method public setOnConfirmListener(Lcom/google/glass/entity/EntityItemView$OnConfirmListener;)V
    .locals 0
    .parameter "onConfirmListener"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/google/glass/entity/EntityItemView;->onConfirmListener:Lcom/google/glass/entity/EntityItemView$OnConfirmListener;

    .line 136
    return-void
.end method

.method public shouldSuppressSingleTapSound()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method
