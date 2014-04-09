.class Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;
.super Lcom/google/android/glass/widget/CardScrollAdapter;
.source "CursorEntityListFragment.java"

# interfaces
.implements Lcom/google/glass/widget/horizontalscroll/ViewRecycler;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/entity/CursorEntityListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntityAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private cursor:Landroid/database/Cursor;

.field private final recycledViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/glass/entity/CursorEntityListFragment;


# direct methods
.method constructor <init>(Lcom/google/glass/entity/CursorEntityListFragment;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 173
    iput-object p1, p0, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;->this$0:Lcom/google/glass/entity/CursorEntityListFragment;

    invoke-direct {p0}, Lcom/google/android/glass/widget/CardScrollAdapter;-><init>()V

    .line 168
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;->recycledViews:Ljava/util/List;

    .line 174
    iput-object p2, p0, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;->context:Landroid/content/Context;

    .line 175
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;->cursor:Landroid/database/Cursor;

    return-object v0
.end method


# virtual methods
.method public findIdPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "id"

    .prologue
    .line 206
    const/4 v0, -0x1

    return v0
.end method

.method public findItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "item"

    .prologue
    .line 212
    const/4 v0, -0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 217
    iget-object v1, p0, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;->cursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 219
    if-eqz p2, :cond_0

    .line 220
    move-object v0, p2

    .line 228
    .local v0, view:Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;->this$0:Lcom/google/glass/entity/CursorEntityListFragment;

    iget-object v2, p0, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;->cursor:Landroid/database/Cursor;

    invoke-virtual {v1, v0, v2}, Lcom/google/glass/entity/CursorEntityListFragment;->bindView(Landroid/view/View;Landroid/database/Cursor;)V

    .line 229
    return-object v0

    .line 221
    .end local v0           #view:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;->recycledViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 222
    iget-object v1, p0, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;->recycledViews:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .restart local v0       #view:Landroid/view/View;
    goto :goto_0

    .line 224
    .end local v0           #view:Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;->this$0:Lcom/google/glass/entity/CursorEntityListFragment;

    iget-object v2, p0, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;->cursor:Landroid/database/Cursor;

    invoke-virtual {v1, v2, v3, p3}, Lcom/google/glass/entity/CursorEntityListFragment;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 225
    .restart local v0       #view:Landroid/view/View;
    sget v1, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_view_recycler:I

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;->this$0:Lcom/google/glass/entity/CursorEntityListFragment;

    invoke-virtual {v0, p1}, Lcom/google/glass/entity/CursorEntityListFragment;->recycleView(Landroid/view/View;)V

    .line 235
    iget-object v0, p0, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;->recycledViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    return-void
.end method

.method setCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 183
    iput-object p1, p0, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;->cursor:Landroid/database/Cursor;

    .line 184
    invoke-virtual {p0}, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;->notifyDataSetChanged()V

    .line 185
    return-void
.end method
