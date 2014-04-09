.class public abstract Lcom/google/glass/util/SafeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SafeBroadcastReceiver.java"


# instance fields
.field private final intentFilter:Landroid/content/IntentFilter;

.field private final isRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isUnregisterPending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final permission:Ljava/lang/String;

.field private registerThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/IntentFilter;)V
    .locals 1
    .parameter "permission"
    .parameter "intentFilter"

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isUnregisterPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    const-string v0, "null IntentFilter"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iput-object p2, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->intentFilter:Landroid/content/IntentFilter;

    .line 67
    iput-object p1, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->permission:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 2
    .parameter "actions"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/google/glass/util/SafeBroadcastReceiver;->createIntentFilter([Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>(Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 57
    return-void
.end method

.method private declared-synchronized checkThread()V
    .locals 3

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->registerThread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 213
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->registerThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :cond_0
    monitor-exit p0

    return-void

    .line 215
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->registerThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 216
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Register/unregister not invoked from consistent thread. First thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->registerThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static varargs createIntentFilter([Ljava/lang/String;)Landroid/content/IntentFilter;
    .locals 5
    .parameter "actions"

    .prologue
    .line 238
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 239
    .local v3, intentFilter:Landroid/content/IntentFilter;
    move-object v1, p0

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v1, v2

    .line 240
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 242
    .end local v0           #action:Ljava/lang/String;
    :cond_0
    return-object v3
.end method


# virtual methods
.method protected abstract getLogger()Lcom/google/glass/logging/FormattingLogger;
.end method

.method protected getUserEventHelper(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1
    .parameter "context"

    .prologue
    .line 182
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public isRegistered()Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected logUserEvent(Landroid/content/Context;Lcom/google/glass/userevent/UserEventAction;)V
    .locals 1
    .parameter "context"
    .parameter "action"

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lcom/google/glass/util/SafeBroadcastReceiver;->getUserEventHelper(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 195
    return-void
.end method

.method protected logUserEvent(Landroid/content/Context;Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "action"
    .parameter "data"

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lcom/google/glass/util/SafeBroadcastReceiver;->getUserEventHelper(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 158
    iget-object v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Received %s even though we are not registered."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isUnregisterPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Ignoring %s because unregister is pending."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    :goto_0
    return-void

    .line 165
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/util/SafeBroadcastReceiver;->onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public abstract onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public register(Landroid/content/Context;)Landroid/content/Intent;
    .locals 9
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 75
    iget-object v2, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Not registering receiver, because it is already registered."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    :goto_0
    return-object v0

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->checkThread()V

    .line 84
    new-instance v2, Lcom/google/glass/util/Stopwatch;

    invoke-direct {v2}, Lcom/google/glass/util/Stopwatch;-><init>()V

    invoke-virtual {v2}, Lcom/google/glass/util/Stopwatch;->start()Lcom/google/glass/util/Stopwatch;

    move-result-object v1

    .line 86
    .local v1, stopwatch:Lcom/google/glass/util/Stopwatch;
    iget-object v2, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->permission:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    iget-object v2, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, p0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 91
    .local v0, stickyIntent:Landroid/content/Intent;
    :goto_1
    invoke-virtual {v1}, Lcom/google/glass/util/Stopwatch;->stop()Lcom/google/glass/util/Stopwatch;

    .line 92
    invoke-virtual {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Registered receiver, time: %sms, UI thread: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/glass/util/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {}, Lcom/google/glass/predicates/Assert;->isUiThread()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 89
    .end local v0           #stickyIntent:Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->intentFilter:Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->permission:Ljava/lang/String;

    invoke-virtual {p1, p0, v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    .restart local v0       #stickyIntent:Landroid/content/Intent;
    goto :goto_1
.end method

.method public registerAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V
    .locals 1
    .parameter "executor"
    .parameter "context"

    .prologue
    .line 102
    new-instance v0, Lcom/google/glass/util/SafeBroadcastReceiver$1;

    invoke-direct {v0, p0, p2}, Lcom/google/glass/util/SafeBroadcastReceiver$1;-><init>(Lcom/google/glass/util/SafeBroadcastReceiver;Landroid/content/Context;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 108
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 116
    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->checkThread()V

    .line 117
    iget-object v2, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Not unregistering receiver, because it is not registered."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    :goto_0
    return-void

    .line 122
    :cond_0
    new-instance v2, Lcom/google/glass/util/Stopwatch;

    invoke-direct {v2}, Lcom/google/glass/util/Stopwatch;-><init>()V

    invoke-virtual {v2}, Lcom/google/glass/util/Stopwatch;->start()Lcom/google/glass/util/Stopwatch;

    move-result-object v1

    .line 127
    .local v1, stopwatch:Lcom/google/glass/util/Stopwatch;
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    iget-object v2, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isUnregisterPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 135
    invoke-virtual {v1}, Lcom/google/glass/util/Stopwatch;->stop()Lcom/google/glass/util/Stopwatch;

    .line 136
    invoke-virtual {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Unregistered receiver, time: %sms, UI thread: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/glass/util/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-static {}, Lcom/google/glass/predicates/Assert;->isUiThread()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_1
    invoke-virtual {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Receiver could not be unregistered.  It was probably forcibly unregistered by android.  See above logs."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    iget-object v2, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isUnregisterPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isUnregisterPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v2
.end method

.method public unregisterAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V
    .locals 2
    .parameter "executor"
    .parameter "context"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isUnregisterPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 143
    new-instance v0, Lcom/google/glass/util/SafeBroadcastReceiver$2;

    invoke-direct {v0, p0, p2}, Lcom/google/glass/util/SafeBroadcastReceiver$2;-><init>(Lcom/google/glass/util/SafeBroadcastReceiver;Landroid/content/Context;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 149
    return-void
.end method
