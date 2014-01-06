.class public Lcom/google/glass/util/CompositeAdapter;
.super Lcom/google/android/glass/widget/CardScrollAdapter;
.source "CompositeAdapter.java"


# instance fields
.field private final dataSetObserver:Landroid/database/DataSetObserver;

.field private final first:Lcom/google/android/glass/widget/CardScrollAdapter;

.field private final second:Lcom/google/android/glass/widget/CardScrollAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/glass/widget/CardScrollAdapter;Lcom/google/android/glass/widget/CardScrollAdapter;)V
    .locals 1
    .parameter "first"
    .parameter "second"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/glass/widget/CardScrollAdapter;-><init>()V

    .line 19
    new-instance v0, Lcom/google/glass/util/CompositeAdapter$1;

    invoke-direct {v0, p0}, Lcom/google/glass/util/CompositeAdapter$1;-><init>(Lcom/google/glass/util/CompositeAdapter;)V

    iput-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->dataSetObserver:Landroid/database/DataSetObserver;

    .line 32
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-static {p2}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iput-object p1, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    .line 35
    iput-object p2, p0, Lcom/google/glass/util/CompositeAdapter;->second:Lcom/google/android/glass/widget/CardScrollAdapter;

    .line 38
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->dataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 39
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->dataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p2, v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 40
    return-void
.end method


# virtual methods
.method public findIdPosition(Ljava/lang/Object;)I
    .locals 2
    .parameter "id"

    .prologue
    .line 67
    iget-object v1, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v1, p1}, Lcom/google/android/glass/widget/CardScrollAdapter;->findIdPosition(Ljava/lang/Object;)I

    move-result v0

    .line 68
    .local v0, result:I
    if-ltz v0, :cond_0

    move v1, v0

    .line 75
    :goto_0
    return v1

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/google/glass/util/CompositeAdapter;->second:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v1, p1}, Lcom/google/android/glass/widget/CardScrollAdapter;->findIdPosition(Ljava/lang/Object;)I

    move-result v0

    .line 72
    if-ltz v0, :cond_1

    .line 73
    iget-object v1, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v1}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_0

    :cond_1
    move v1, v0

    .line 75
    goto :goto_0
.end method

.method public findItemPosition(Ljava/lang/Object;)I
    .locals 2
    .parameter "item"

    .prologue
    .line 80
    iget-object v1, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v1, p1}, Lcom/google/android/glass/widget/CardScrollAdapter;->findItemPosition(Ljava/lang/Object;)I

    move-result v0

    .line 81
    .local v0, result:I
    if-ltz v0, :cond_0

    move v1, v0

    .line 88
    :goto_0
    return v1

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/google/glass/util/CompositeAdapter;->second:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v1, p1}, Lcom/google/android/glass/widget/CardScrollAdapter;->findItemPosition(Ljava/lang/Object;)I

    move-result v0

    .line 85
    if-ltz v0, :cond_1

    .line 86
    iget-object v1, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v1}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_0

    :cond_1
    move v1, v0

    .line 88
    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/google/glass/util/CompositeAdapter;->second:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v1}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/glass/widget/CardScrollAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->second:Lcom/google/android/glass/widget/CardScrollAdapter;

    iget-object v1, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v1}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardScrollAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/glass/widget/CardScrollAdapter;->getItemViewType(I)I

    move-result v0

    .line 103
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->second:Lcom/google/android/glass/widget/CardScrollAdapter;

    iget-object v1, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v1}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardScrollAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/glass/widget/CardScrollAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->second:Lcom/google/android/glass/widget/CardScrollAdapter;

    iget-object v1, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v1}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/google/android/glass/widget/CardScrollAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->getViewTypeCount()I

    move-result v0

    iget-object v1, p0, Lcom/google/glass/util/CompositeAdapter;->second:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v1}, Lcom/google/android/glass/widget/CardScrollAdapter;->getViewTypeCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->second:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->first:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter;->second:Lcom/google/android/glass/widget/CardScrollAdapter;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
