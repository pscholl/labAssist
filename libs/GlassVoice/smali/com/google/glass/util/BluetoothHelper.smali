.class public Lcom/google/glass/util/BluetoothHelper;
.super Ljava/lang/Object;
.source "BluetoothHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/BluetoothHelper$1;,
        Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/BluetoothHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/glass/util/BluetoothHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public static cancelDiscoverable()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 60
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 62
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/google/glass/util/BluetoothHelper;->isBluetoothEnabled(Landroid/bluetooth/BluetoothAdapter;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v1

    const/16 v2, 0x17

    if-eq v1, v2, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    sget-object v1, Lcom/google/glass/util/BluetoothHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Canceling discoverability."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    const/16 v1, 0x15

    invoke-static {v1, v4}, Lcom/google/android/glass/hidden/HiddenBluetoothAdapter;->setScanMode(II)V

    goto :goto_0
.end method

.method public static isBluetoothEnabled(Landroid/bluetooth/BluetoothAdapter;)Z
    .locals 1
    .parameter "bluetoothAdapter"

    .prologue
    .line 29
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeBluetoothDiscoverable()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/glass/util/BluetoothHelper;->makeBluetoothDiscoverable(I)V

    .line 35
    return-void
.end method

.method public static makeBluetoothDiscoverable(I)V
    .locals 7
    .parameter "discoverableTimeout"

    .prologue
    const/16 v6, 0x17

    .line 43
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 45
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/google/glass/util/BluetoothHelper;->isBluetoothEnabled(Landroid/bluetooth/BluetoothAdapter;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    sget-object v1, Lcom/google/glass/util/BluetoothHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Enabling discoverability for %ss"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    invoke-static {v6, p0}, Lcom/google/android/glass/hidden/HiddenBluetoothAdapter;->setScanMode(II)V

    goto :goto_0
.end method
