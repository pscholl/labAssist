.class public Lcom/google/glass/logging/LoggingApplication;
.super Lcom/google/glass/app/GlassApplication;
.source "LoggingApplication.java"

# interfaces
.implements Lcom/google/glass/companion/CompanionStateChangeListener;


# static fields
.field private static final CACHED_FILES_DIRECTORY:Ljava/lang/String; = null

.field private static final MAX_NUM_SDCARD_ATTACHMENTS:I = 0x2710

.field private static final MAX_SIZE_SDCARD_FILES:J = 0x40000000L


# instance fields
.field private pendingBundle:Landroid/os/Bundle;

.field private proxy:Lcom/google/glass/companion/RemoteCompanionProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "glass_bugreports"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/LoggingApplication;->CACHED_FILES_DIRECTORY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/glass/app/GlassApplication;-><init>()V

    return-void
.end method

.method public static from(Landroid/content/Context;)Lcom/google/glass/logging/LoggingApplication;
    .locals 3
    .parameter "context"

    .prologue
    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 75
    .local v0, applicationContext:Landroid/content/Context;
    instance-of v1, v0, Lcom/google/glass/logging/LoggingApplication;

    if-eqz v1, :cond_0

    .line 76
    check-cast v0, Lcom/google/glass/logging/LoggingApplication;

    .end local v0           #applicationContext:Landroid/content/Context;
    return-object v0

    .line 78
    .restart local v0       #applicationContext:Landroid/content/Context;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The context must be a child of the LoggingApplication context."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public onCreate()V
    .locals 10

    .prologue
    .line 52
    invoke-super {p0}, Lcom/google/glass/app/GlassApplication;->onCreate()V

    .line 54
    new-instance v1, Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-direct {v1, p0}, Lcom/google/glass/companion/RemoteCompanionProxy;-><init>(Landroid/app/Application;)V

    iput-object v1, p0, Lcom/google/glass/logging/LoggingApplication;->proxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    .line 55
    iget-object v1, p0, Lcom/google/glass/logging/LoggingApplication;->proxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v1, p0}, Lcom/google/glass/companion/RemoteCompanionProxy;->addListener(Lcom/google/glass/companion/CompanionStateChangeListener;)V

    .line 58
    new-instance v7, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/glass/logging/LoggingApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v4, Lcom/google/glass/logging/UserEventService;

    invoke-direct {v7, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .local v7, intent:Landroid/content/Intent;
    const-string v1, "read_framework_events"

    const/4 v4, 0x1

    invoke-virtual {v7, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 60
    const/4 v1, 0x0

    const/high16 v4, 0x800

    invoke-static {p0, v1, v7, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 62
    .local v6, pending:Landroid/app/PendingIntent;
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/google/glass/logging/LoggingApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 63
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 64
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 65
    .local v2, triggerAtTime:J
    const/4 v1, 0x3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x708

    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 67
    return-void
.end method

.method public onStateChange(ZII)V
    .locals 1
    .parameter "isConnected"
    .parameter "remoteVersion"
    .parameter "localVersion"

    .prologue
    .line 104
    if-eqz p1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/google/glass/logging/LoggingApplication;->pendingBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/google/glass/logging/LoggingApplication;->sendBundleToCompanion(Landroid/os/Bundle;)V

    .line 107
    :cond_0
    return-void
.end method

.method public sendBundleToCompanion(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 90
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 91
    if-nez p1, :cond_0

    .line 100
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/google/glass/logging/LoggingApplication;->proxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/google/glass/logging/LoggingApplication;->proxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v0, p1}, Lcom/google/glass/companion/RemoteCompanionProxy;->sendCompanionMessage(Landroid/os/Bundle;)Z

    goto :goto_0

    .line 98
    :cond_1
    iput-object p1, p0, Lcom/google/glass/logging/LoggingApplication;->pendingBundle:Landroid/os/Bundle;

    goto :goto_0
.end method

.method protected setupCachedFilesManager()V
    .locals 5

    .prologue
    .line 85
    new-instance v0, Lcom/google/glass/util/CachedFilesManager;

    sget-object v1, Lcom/google/glass/logging/LoggingApplication;->CACHED_FILES_DIRECTORY:Ljava/lang/String;

    const-wide/32 v2, 0x40000000

    const/16 v4, 0x2710

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/glass/util/CachedFilesManager;-><init>(Ljava/lang/String;JI)V

    invoke-static {v0}, Lcom/google/glass/util/CachedFilesManager;->setSharedInstance(Lcom/google/glass/util/CachedFilesManager;)V

    .line 87
    return-void
.end method
