.class public Lcom/google/glass/widget/OptionMenuView;
.super Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;
.source "OptionMenuView.java"

# interfaces
.implements Lcom/google/glass/widget/OptionMenu$ItemStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/widget/OptionMenuView$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/google/glass/widget/OptionMenu$Item;",
        ">;",
        "Lcom/google/glass/widget/OptionMenu$ItemStateListener;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private hideMenuAnimation:Landroid/view/animation/Animation;

.field protected listener:Lcom/google/glass/widget/OptionMenuView$Listener;

.field private optionMenu:Lcom/google/glass/widget/OptionMenu;

.field private showMenuAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;-><init>(Landroid/content/Context;Z)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 54
    return-void
.end method


# virtual methods
.method public findIdPosition(Ljava/lang/Integer;)I
    .locals 2
    .parameter "id"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuView;->optionMenu:Lcom/google/glass/widget/OptionMenu;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/OptionMenu;->findItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/OptionMenuView;->findItemPosition(Lcom/google/glass/widget/OptionMenu$Item;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic findIdPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/widget/OptionMenuView;->findIdPosition(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public findItemPosition(Lcom/google/glass/widget/OptionMenu$Item;)I
    .locals 2
    .parameter "item"

    .prologue
    .line 109
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/glass/widget/OptionMenuView;->optionMenu:Lcom/google/glass/widget/OptionMenu;

    invoke-virtual {v1}, Lcom/google/glass/widget/OptionMenu;->getVisibleItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/google/glass/widget/OptionMenuView;->optionMenu:Lcom/google/glass/widget/OptionMenu;

    invoke-virtual {v1, v0}, Lcom/google/glass/widget/OptionMenu;->getVisibleItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    .end local v0           #i:I
    :goto_1
    return v0

    .line 109
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public bridge synthetic findItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    check-cast p1, Lcom/google/glass/widget/OptionMenu$Item;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/widget/OptionMenuView;->findItemPosition(Lcom/google/glass/widget/OptionMenu$Item;)I

    move-result v0

    return v0
.end method

.method public getHomePosition()I
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 124
    iget-object v5, p0, Lcom/google/glass/widget/OptionMenuView;->optionMenu:Lcom/google/glass/widget/OptionMenu;

    if-nez v5, :cond_1

    move v3, v4

    .line 138
    :cond_0
    :goto_0
    return v3

    .line 128
    :cond_1
    const/4 v3, 0x0

    .line 129
    .local v3, position:I
    iget-object v5, p0, Lcom/google/glass/widget/OptionMenuView;->optionMenu:Lcom/google/glass/widget/OptionMenu;

    invoke-virtual {v5}, Lcom/google/glass/widget/OptionMenu;->getItems()Ljava/util/List;

    move-result-object v2

    .line 130
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/widget/OptionMenu$Item;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/OptionMenu$Item;

    .line 131
    .local v1, item:Lcom/google/glass/widget/OptionMenu$Item;
    invoke-virtual {v1}, Lcom/google/glass/widget/OptionMenu$Item;->isDefault()Z

    move-result v5

    if-nez v5, :cond_0

    .line 134
    invoke-virtual {v1}, Lcom/google/glass/widget/OptionMenu$Item;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 135
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v1           #item:Lcom/google/glass/widget/OptionMenu$Item;
    :cond_3
    move v3, v4

    .line 138
    goto :goto_0
.end method

.method public getViewForPosition(ILandroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/google/glass/widget/OptionMenuView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p1, p2, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/google/glass/widget/OptionMenuView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuView;->hideMenuAnimation:Landroid/view/animation/Animation;

    invoke-static {p0, v0}, Lcom/google/glass/util/AnimationUtils;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public init(Lcom/google/glass/widget/OptionMenuView$Listener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/glass/widget/OptionMenuView;->listener:Lcom/google/glass/widget/OptionMenuView$Listener;

    .line 68
    invoke-virtual {p0}, Lcom/google/glass/widget/OptionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$anim;->contextual_enter:I

    invoke-static {v0, v1}, Lcom/google/glass/util/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/widget/OptionMenuView;->showMenuAnimation:Landroid/view/animation/Animation;

    .line 69
    invoke-virtual {p0}, Lcom/google/glass/widget/OptionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$anim;->contextual_exit:I

    invoke-static {v0, v1}, Lcom/google/glass/util/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/widget/OptionMenuView;->hideMenuAnimation:Landroid/view/animation/Animation;

    .line 70
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuView;->hideMenuAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/google/glass/widget/OptionMenuView$1;

    invoke-direct {v1, p0}, Lcom/google/glass/widget/OptionMenuView$1;-><init>(Lcom/google/glass/widget/OptionMenuView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 76
    return-void
.end method

.method public onStateChanged(IZ)V
    .locals 1
    .parameter "newStateId"
    .parameter "shouldAnimate"

    .prologue
    .line 164
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/OptionMenuView;->updateViews(Z)V

    .line 165
    return-void
.end method

.method public setListener(Lcom/google/glass/widget/OptionMenuView$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/glass/widget/OptionMenuView;->listener:Lcom/google/glass/widget/OptionMenuView$Listener;

    .line 80
    return-void
.end method

.method public setOptionMenu(Lcom/google/glass/widget/OptionMenu;)V
    .locals 5
    .parameter "optionMenu"

    .prologue
    .line 85
    iget-object v2, p0, Lcom/google/glass/widget/OptionMenuView;->optionMenu:Lcom/google/glass/widget/OptionMenu;

    if-eqz v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/google/glass/widget/OptionMenuView;->optionMenu:Lcom/google/glass/widget/OptionMenu;

    invoke-virtual {v2}, Lcom/google/glass/widget/OptionMenu;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/OptionMenu$Item;

    .line 87
    .local v1, item:Lcom/google/glass/widget/OptionMenu$Item;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/OptionMenu$Item;->setStateListener(Lcom/google/glass/widget/OptionMenu$ItemStateListener;)V

    goto :goto_0

    .line 91
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/google/glass/widget/OptionMenu$Item;
    :cond_0
    iput-object p1, p0, Lcom/google/glass/widget/OptionMenuView;->optionMenu:Lcom/google/glass/widget/OptionMenu;

    .line 92
    new-instance v2, Lcom/google/glass/widget/OptionMenuAdapter;

    invoke-virtual {p0}, Lcom/google/glass/widget/OptionMenuView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/widget/OptionMenuView;->listener:Lcom/google/glass/widget/OptionMenuView$Listener;

    invoke-direct {v2, v3, p1, v4}, Lcom/google/glass/widget/OptionMenuAdapter;-><init>(Landroid/content/Context;Lcom/google/glass/widget/OptionMenu;Lcom/google/glass/widget/OptionMenuView$Listener;)V

    invoke-virtual {p0, v2}, Lcom/google/glass/widget/OptionMenuView;->setAdapter(Landroid/widget/Adapter;)V

    .line 95
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/OptionMenu$Item;

    .line 96
    .restart local v1       #item:Lcom/google/glass/widget/OptionMenu$Item;
    invoke-virtual {v1, p0}, Lcom/google/glass/widget/OptionMenu$Item;->setStateListener(Lcom/google/glass/widget/OptionMenu$ItemStateListener;)V

    goto :goto_1

    .line 99
    .end local v1           #item:Lcom/google/glass/widget/OptionMenu$Item;
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/glass/widget/OptionMenuView;->updateViews(Z)V

    .line 100
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/google/glass/widget/OptionMenuView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/OptionMenuView;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuView;->showMenuAnimation:Landroid/view/animation/Animation;

    invoke-static {p0, v0}, Lcom/google/glass/util/AnimationUtils;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
