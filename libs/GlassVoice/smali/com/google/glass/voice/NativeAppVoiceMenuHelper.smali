.class public Lcom/google/glass/voice/NativeAppVoiceMenuHelper;
.super Ljava/lang/Object;
.source "NativeAppVoiceMenuHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;,
        Lcom/google/glass/voice/NativeAppVoiceMenuHelper$TriggerCacheUpdateListener;
    }
.end annotation


# static fields
.field private static instance:Lcom/google/glass/voice/NativeAppVoiceMenuHelper;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final packagesChangedReceiverLogger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final triggerProvider:Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 22
    sget-object v0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "packagesChangedReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->packagesChangedReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method private constructor <init>(Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;)V
    .locals 0
    .parameter "triggerProvider"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->triggerProvider:Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;

    .line 37
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$300()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->packagesChangedReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/google/glass/voice/NativeAppVoiceMenuHelper;
    .locals 5
    .parameter "context"

    .prologue
    .line 85
    const-class v4, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->instance:Lcom/google/glass/voice/NativeAppVoiceMenuHelper;

    if-nez v3, :cond_0

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 87
    .local v0, applicationContext:Landroid/content/Context;
    new-instance v2, Lcom/google/android/glass/app/VoiceTriggerManager;

    invoke-direct {v2, v0}, Lcom/google/android/glass/app/VoiceTriggerManager;-><init>(Landroid/content/Context;)V

    .line 88
    .local v2, voiceTriggerManager:Lcom/google/android/glass/app/VoiceTriggerManager;
    new-instance v1, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;

    invoke-direct {v1, v2}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;-><init>(Lcom/google/android/glass/app/VoiceTriggerManager;)V

    .line 90
    .local v1, triggerProvider:Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;
    invoke-virtual {v1, v0}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;->subscribeToPackageChanges(Landroid/content/Context;)V

    .line 91
    new-instance v3, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;

    invoke-direct {v3, v1}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;-><init>(Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;)V

    sput-object v3, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->instance:Lcom/google/glass/voice/NativeAppVoiceMenuHelper;

    .line 94
    .end local v0           #applicationContext:Landroid/content/Context;
    .end local v1           #triggerProvider:Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;
    .end local v2           #voiceTriggerManager:Lcom/google/android/glass/app/VoiceTriggerManager;
    :cond_0
    sget-object v3, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->instance:Lcom/google/glass/voice/NativeAppVoiceMenuHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-object v3

    .line 85
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method


# virtual methods
.method public addTriggerCacheUpdateListener(Lcom/google/glass/voice/NativeAppVoiceMenuHelper$TriggerCacheUpdateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->triggerProvider:Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;

    #getter for: Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;->updateListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;->access$200(Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    return-void
.end method

.method public getNativeAppCommands(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getTriggers()Ljava/util/List;

    move-result-object v3

    .line 99
    .local v3, triggers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/glass/app/VoiceTrigger;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 100
    .local v0, commands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/glass/app/VoiceTrigger;

    .line 101
    .local v2, trigger:Lcom/google/android/glass/app/VoiceTrigger;
    invoke-virtual {v2}, Lcom/google/android/glass/app/VoiceTrigger;->getKeyword()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    .end local v2           #trigger:Lcom/google/android/glass/app/VoiceTrigger;
    :cond_0
    return-object v0
.end method

.method public getTriggers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/glass/app/VoiceTrigger;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->triggerProvider:Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;

    invoke-virtual {v0}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;->getVoiceTriggers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTriggers(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter "keyword"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/glass/app/VoiceTrigger;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 116
    .local v1, matchingTriggers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/glass/app/VoiceTrigger;>;"
    invoke-virtual {p0}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getTriggers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/glass/app/VoiceTrigger;

    .line 117
    .local v2, trigger:Lcom/google/android/glass/app/VoiceTrigger;
    invoke-virtual {v2}, Lcom/google/android/glass/app/VoiceTrigger;->getKeyword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    .end local v2           #trigger:Lcom/google/android/glass/app/VoiceTrigger;
    :cond_1
    return-object v1
.end method

.method public newVoiceCommand(Lcom/google/android/glass/app/VoiceTrigger;)Lcom/google/glass/voice/VoiceCommand;
    .locals 2
    .parameter "trigger"

    .prologue
    .line 126
    new-instance v0, Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {p1}, Lcom/google/android/glass/app/VoiceTrigger;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/voice/VoiceCommand;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public removeTriggerCacheUpdateListener(Lcom/google/glass/voice/NativeAppVoiceMenuHelper$TriggerCacheUpdateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->triggerProvider:Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;

    #getter for: Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;->updateListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;->access$200(Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 140
    return-void
.end method
