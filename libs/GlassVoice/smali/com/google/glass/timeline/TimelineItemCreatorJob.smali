.class public abstract Lcom/google/glass/timeline/TimelineItemCreatorJob;
.super Ljava/lang/Object;
.source "TimelineItemCreatorJob.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final USER_ACTION_TYPE_UNSET:I = -0x1

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private volatile cancelled:Z

.field private final context:Landroid/content/Context;

.field private volatile finalItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field private volatile finalItemReady:Z

.field private final itemType:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

.field private runningOnThread:Ljava/lang/Thread;

.field private volatile temporaryItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field private volatile temporaryItemCreated:Z

.field private volatile temporaryItemReady:Z

.field protected final timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

.field private userActionType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;I)V
    .locals 1
    .parameter "context"
    .parameter "itemType"
    .parameter "userActionType"

    .prologue
    .line 55
    new-instance v0, Lcom/google/glass/timeline/TimelineHelper;

    invoke-direct {v0}, Lcom/google/glass/timeline/TimelineHelper;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;ILcom/google/glass/timeline/TimelineHelper;)V

    .line 56
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;ILcom/google/glass/timeline/TimelineHelper;)V
    .locals 2
    .parameter "context"
    .parameter "itemType"
    .parameter "userActionType"
    .parameter "timelineHelper"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->userActionType:I

    .line 33
    iput-boolean v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->temporaryItemReady:Z

    .line 36
    iput-boolean v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->temporaryItemCreated:Z

    .line 39
    iput-boolean v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->cancelled:Z

    .line 42
    iput-boolean v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->finalItemReady:Z

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->context:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->itemType:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    .line 63
    iput p3, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->userActionType:I

    .line 64
    iput-object p4, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/timeline/TimelineItemCreatorJob;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->userActionType:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/glass/timeline/TimelineItemCreatorJob;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/timeline/TimelineItemCreatorJob;)Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->itemType:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/timeline/TimelineItemCreatorJob;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->temporaryItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object v0
.end method

.method static synthetic access$400()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private checkCancel()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->runningOnThread:Ljava/lang/Thread;

    invoke-static {v0, v1}, Lcom/google/glass/predicates/Assert;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    iget-boolean v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->cancelled:Z

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Processing cancel"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    .line 113
    :cond_0
    return-void
.end method

.method private deleteTemporaryItem()V
    .locals 3

    .prologue
    .line 271
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->runningOnThread:Ljava/lang/Thread;

    invoke-static {v0, v1}, Lcom/google/glass/predicates/Assert;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 272
    iget-boolean v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->temporaryItemCreated:Z

    if-nez v0, :cond_0

    .line 278
    :goto_0
    return-void

    .line 276
    :cond_0
    sget-object v0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Deleting temporary item"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->temporaryItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/timeline/TimelineHelper;->deleteTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    goto :goto_0
.end method

.method private dispatchCreateFinalItem()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 224
    iget v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->userActionType:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 226
    new-instance v0, Lcom/google/glass/timeline/TimelineItemCreatorJob$2;

    invoke-direct {v0, p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob$2;-><init>(Lcom/google/glass/timeline/TimelineItemCreatorJob;)V

    .line 261
    .local v0, update:Lcom/google/glass/timeline/TimelineHelper$Update;
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    invoke-virtual {v1, v0}, Lcom/google/glass/timeline/TimelineHelper;->atomicUpdateTimelineItem(Lcom/google/glass/timeline/TimelineHelper$Update;)V

    .line 262
    invoke-virtual {v0}, Lcom/google/glass/timeline/TimelineHelper$Update;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->finalItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 263
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->finalItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v1, :cond_0

    .line 264
    sget-object v1, Lcom/google/glass/timeline/TimelineItemCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Final item could not be updated.  Cancelling job"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->cancel()V

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->finalItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {p0, v1}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->onFinalItemCreated(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 268
    return-void

    .end local v0           #update:Lcom/google/glass/timeline/TimelineHelper$Update;
    :cond_1
    move v1, v2

    .line 224
    goto :goto_0
.end method

.method private dispatchCreateTemporaryItem()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 189
    iget v2, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->userActionType:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->createTemporaryItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 192
    .local v0, itemToInsert:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    if-nez v0, :cond_0

    .line 193
    sget-object v2, Lcom/google/glass/timeline/TimelineItemCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Temporary item was null.  Cancelling job"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-interface {v2, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->cancel()V

    .line 197
    :cond_0
    new-instance v1, Lcom/google/glass/timeline/TimelineItemCreatorJob$1;

    invoke-direct {v1, p0, v0}, Lcom/google/glass/timeline/TimelineItemCreatorJob$1;-><init>(Lcom/google/glass/timeline/TimelineItemCreatorJob;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 211
    .local v1, update:Lcom/google/glass/timeline/TimelineHelper$Update;
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    invoke-virtual {v2, v1}, Lcom/google/glass/timeline/TimelineHelper;->atomicUpdateTimelineItem(Lcom/google/glass/timeline/TimelineHelper$Update;)V

    .line 212
    if-eqz v0, :cond_2

    .line 213
    invoke-virtual {v1}, Lcom/google/glass/timeline/TimelineHelper$Update;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->temporaryItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 214
    iput-boolean v3, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->temporaryItemCreated:Z

    .line 215
    sget-object v2, Lcom/google/glass/timeline/TimelineItemCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Temporary item created"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->temporaryItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {p0, v2}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->onTemporaryItemCreated(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 221
    :goto_1
    return-void

    .end local v0           #itemToInsert:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v1           #update:Lcom/google/glass/timeline/TimelineHelper$Update;
    :cond_1
    move v2, v4

    .line 189
    goto :goto_0

    .line 218
    .restart local v0       #itemToInsert:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .restart local v1       #update:Lcom/google/glass/timeline/TimelineHelper$Update;
    :cond_2
    sget-object v2, Lcom/google/glass/timeline/TimelineItemCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Could not create temporary item"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->cancel()V

    goto :goto_1
.end method

.method private declared-synchronized waitForFinalItem()V
    .locals 1

    .prologue
    .line 142
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->finalItemReady:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->cancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 144
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    goto :goto_0

    .line 149
    :cond_0
    monitor-exit p0

    return-void

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized waitForTemporaryItem()V
    .locals 1

    .prologue
    .line 124
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->temporaryItemReady:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->cancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 126
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    goto :goto_0

    .line 131
    :cond_0
    monitor-exit p0

    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 3

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->cancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 165
    :goto_0
    monitor-exit p0

    return-void

    .line 159
    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Cancelling timeline item creation"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->cancelled:Z

    .line 161
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->runningOnThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_1

    .line 162
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 164
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized cancelIfNotFinished()V
    .locals 1

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->finalItemReady:Z

    if-nez v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :cond_0
    monitor-exit p0

    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract createFinalTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
.end method

.method protected abstract createTemporaryItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
.end method

.method public getFinalItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->finalItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object v0
.end method

.method public getTemporaryItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->temporaryItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->cancelled:Z

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->finalItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized notifyReadyToCreateTemporaryItem()V
    .locals 1

    .prologue
    .line 119
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->temporaryItemReady:Z

    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyReadyToUpdateToFinalItem()V
    .locals 1

    .prologue
    .line 137
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->finalItemReady:Z

    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    monitor-exit p0

    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onFinalItemCreated(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 0
    .parameter "completeItem"

    .prologue
    .line 317
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 302
    return-void
.end method

.method public onTemporaryItemCreated(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 0
    .parameter "temporaryItem"

    .prologue
    .line 310
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 84
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 85
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->runningOnThread:Ljava/lang/Thread;

    .line 88
    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->onPreExecute()V

    .line 89
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->shouldCreateTemporaryItem()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->waitForTemporaryItem()V

    .line 91
    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->checkCancel()V

    .line 92
    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->dispatchCreateTemporaryItem()V

    .line 94
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->checkCancel()V

    .line 96
    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->waitForFinalItem()V

    .line 97
    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->checkCancel()V

    .line 99
    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->dispatchCreateFinalItem()V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Ljava/util/concurrent/CancellationException;
    sget-object v1, Lcom/google/glass/timeline/TimelineItemCreatorJob;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Processing cancellation request"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->deleteTemporaryItem()V

    goto :goto_0
.end method

.method public setUserActionType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 72
    iput p1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob;->userActionType:I

    .line 73
    return-void
.end method

.method protected shouldCreateTemporaryItem()Z
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x1

    return v0
.end method

.method public final start()V
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 80
    return-void
.end method
