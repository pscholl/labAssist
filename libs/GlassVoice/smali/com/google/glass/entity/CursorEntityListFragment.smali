.class public abstract Lcom/google/glass/entity/CursorEntityListFragment;
.super Lcom/google/glass/entity/EntityListFragment;
.source "CursorEntityListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/entity/EntityListFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String; = null

.field private static final CURSOR_LOADER_ID:I = 0x0

.field private static final NO_IDX:I = -0x1

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private adapter:Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;

.field private displayNameIdx:I

.field private prependCursor:Landroid/database/Cursor;

.field private protobuffIdx:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/CursorEntityListFragment;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "protobuf_blob"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/entity/CursorEntityListFragment;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 48
    invoke-direct {p0}, Lcom/google/glass/entity/EntityListFragment;-><init>()V

    .line 45
    iput v0, p0, Lcom/google/glass/entity/CursorEntityListFragment;->displayNameIdx:I

    .line 46
    iput v0, p0, Lcom/google/glass/entity/CursorEntityListFragment;->protobuffIdx:I

    .line 48
    return-void
.end method

.method private setCursor(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    const/4 v2, -0x1

    .line 119
    if-eqz p1, :cond_1

    .line 120
    const-string v1, "display_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/glass/entity/CursorEntityListFragment;->displayNameIdx:I

    .line 121
    const-string v1, "protobuf_blob"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/glass/entity/CursorEntityListFragment;->protobuffIdx:I

    .line 122
    iget v1, p0, Lcom/google/glass/entity/CursorEntityListFragment;->displayNameIdx:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/google/glass/entity/CursorEntityListFragment;->protobuffIdx:I

    if-ne v1, v2, :cond_1

    .line 123
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cursor columns were not retrieved yet"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/google/glass/entity/CursorEntityListFragment;->adapter:Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;

    invoke-virtual {v1, p1}, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;->setCursor(Landroid/database/Cursor;)V

    .line 128
    if-eqz p1, :cond_2

    .line 129
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 130
    .local v0, count:I
    iget-object v1, p0, Lcom/google/glass/entity/CursorEntityListFragment;->sliderView:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v1, v0}, Lcom/google/glass/widget/SliderView;->setCount(I)V

    .line 131
    if-nez v0, :cond_2

    .line 132
    sget-object v1, Lcom/google/glass/entity/CursorEntityListFragment;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Cursor had no data"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    .end local v0           #count:I
    :cond_2
    return-void
.end method


# virtual methods
.method protected abstract bindView(Landroid/view/View;Landroid/database/Cursor;)V
.end method

.method protected abstract createCursorLoader([Ljava/lang/String;)Landroid/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract createPrependEntitySet()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation
.end method

.method public final getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/glass/entity/CursorEntityListFragment;->adapter:Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;

    return-object v0
.end method

.method protected getDisplayName(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 138
    iget v0, p0, Lcom/google/glass/entity/CursorEntityListFragment;->displayNameIdx:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPrependCursorSize()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/glass/entity/CursorEntityListFragment;->prependCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 114
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/entity/CursorEntityListFragment;->prependCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method protected getProtoBuff(Landroid/database/Cursor;)[B
    .locals 1
    .parameter "cursor"

    .prologue
    .line 142
    iget v0, p0, Lcom/google/glass/entity/CursorEntityListFragment;->protobuffIdx:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method protected abstract newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/google/glass/entity/EntityListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    new-instance v0, Lcom/google/glass/entity/EntityListCursor;

    sget-object v1, Lcom/google/glass/entity/CursorEntityListFragment;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/glass/entity/CursorEntityListFragment;->createPrependEntitySet()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/glass/entity/EntityListCursor;-><init>([Ljava/lang/String;Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/glass/entity/CursorEntityListFragment;->prependCursor:Landroid/database/Cursor;

    .line 54
    new-instance v0, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;

    invoke-virtual {p0}, Lcom/google/glass/entity/CursorEntityListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;-><init>(Lcom/google/glass/entity/CursorEntityListFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/entity/CursorEntityListFragment;->adapter:Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;

    .line 55
    invoke-virtual {p0}, Lcom/google/glass/entity/CursorEntityListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 56
    return-void
.end method

.method public final onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    sget-object v0, Lcom/google/glass/entity/CursorEntityListFragment;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/glass/entity/CursorEntityListFragment;->createCursorLoader([Ljava/lang/String;)Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 63
    invoke-super {p0}, Lcom/google/glass/entity/EntityListFragment;->onDestroy()V

    .line 64
    invoke-virtual {p0}, Lcom/google/glass/entity/CursorEntityListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 65
    iget-object v1, p0, Lcom/google/glass/entity/CursorEntityListFragment;->adapter:Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;

    #calls: Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;->getCursor()Landroid/database/Cursor;
    invoke-static {v1}, Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;->access$000(Lcom/google/glass/entity/CursorEntityListFragment$EntityAdapter;)Landroid/database/Cursor;

    move-result-object v0

    .line 66
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 69
    :cond_0
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 4
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v1, p0, Lcom/google/glass/entity/CursorEntityListFragment;->prependCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 95
    new-instance v0, Landroid/database/MergeCursor;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/glass/entity/CursorEntityListFragment;->prependCursor:Landroid/database/Cursor;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-direct {v0, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .end local p2
    .local v0, data:Landroid/database/Cursor;
    move-object p2, v0

    .line 97
    .end local v0           #data:Landroid/database/Cursor;
    .restart local p2
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/glass/entity/CursorEntityListFragment;->setCursor(Landroid/database/Cursor;)V

    .line 98
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/entity/CursorEntityListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/entity/CursorEntityListFragment;->setCursor(Landroid/database/Cursor;)V

    .line 103
    return-void
.end method

.method protected recycleView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 164
    return-void
.end method

.method protected showFastScrollLabel(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/glass/entity/CursorEntityListFragment;->prependCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/entity/CursorEntityListFragment;->prependCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/glass/entity/EntityListFragment;->showFastScrollLabel(I)Z

    move-result v0

    goto :goto_0
.end method
