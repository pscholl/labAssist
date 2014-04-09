.class public final Lcom/google/glass/util/BroadcastUnderWakeLock;
.super Ljava/lang/Object;
.source "BroadcastUnderWakeLock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/BroadcastUnderWakeLock$WakeLockHoldingReceiver;
    }
.end annotation


# static fields
.field private static final WAKE_LOCK_TIMEOUT_MILLIS:J = 0x2710L

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/BroadcastUnderWakeLock;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Landroid/os/PowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-static {p0}, Lcom/google/glass/util/BroadcastUnderWakeLock;->getPowerManager(Landroid/content/Context;)Landroid/os/PowerManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/glass/util/BroadcastUnderWakeLock;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private static getPowerManager(Landroid/content/Context;)Landroid/os/PowerManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 149
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    return-object v0
.end method

.method public static sendBroadcastUnderWakeLock(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "broadcastIntent"
    .parameter "broadcastName"

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/google/glass/util/BroadcastUnderWakeLock;->sendBroadcastUnderWakeLock(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public static sendBroadcastUnderWakeLock(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "broadcastIntent"
    .parameter "receiverPermission"
    .parameter "broadcastName"

    .prologue
    const/4 v5, 0x0

    .line 96
    sget-object v0, Lcom/google/glass/util/BroadcastUnderWakeLock;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "sendBroadcastUnderWakeLock called with intent=%s, receiverPermission=%s  name=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v0

    new-instance v4, Lcom/google/glass/util/BroadcastUnderWakeLock$WakeLockHoldingReceiver;

    invoke-direct {v4, p0, p3}, Lcom/google/glass/util/BroadcastUnderWakeLock$WakeLockHoldingReceiver;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v6, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Lcom/google/glass/util/IntentSender;->sendOrderedBroadcast(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 106
    return-void
.end method

.method public static sendBroadcastUnderWakeLockAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "broadcastIntent"
    .parameter "user"
    .parameter "broadcastName"

    .prologue
    .line 112
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isJellyBean()Z

    move-result v0

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 113
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/google/glass/util/BroadcastUnderWakeLock;->sendBroadcastUnderWakeLockAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public static sendBroadcastUnderWakeLockAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "broadcastIntent"
    .parameter "user"
    .parameter "receiverPermission"
    .parameter "broadcastName"

    .prologue
    const/4 v6, 0x0

    .line 134
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isJellyBean()Z

    move-result v0

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 135
    sget-object v0, Lcom/google/glass/util/BroadcastUnderWakeLock;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "sendBroadcastUnderWakeLock called with intent=%s, receiverPermission=%s, name=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v0

    new-instance v5, Lcom/google/glass/util/BroadcastUnderWakeLock$WakeLockHoldingReceiver;

    invoke-direct {v5, p0, p4}, Lcom/google/glass/util/BroadcastUnderWakeLock$WakeLockHoldingReceiver;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v7, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v8, v6

    move-object v9, v6

    invoke-virtual/range {v0 .. v9}, Lcom/google/glass/util/IntentSender;->sendOrderedBroadcastAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 146
    return-void
.end method
