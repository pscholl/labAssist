.class Lcom/google/glass/bluetooth/BluetoothAdapterState$StateChangeBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "BluetoothAdapterState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/BluetoothAdapterState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateChangeBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/BluetoothAdapterState;


# direct methods
.method private constructor <init>(Lcom/google/glass/bluetooth/BluetoothAdapterState;)V
    .locals 3
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState$StateChangeBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/BluetoothAdapterState;

    .line 82
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/bluetooth/BluetoothAdapterState;Lcom/google/glass/bluetooth/BluetoothAdapterState$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/BluetoothAdapterState$StateChangeBroadcastReceiver;-><init>(Lcom/google/glass/bluetooth/BluetoothAdapterState;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 106
    invoke-static {}, Lcom/google/glass/bluetooth/BluetoothAdapterState;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v5, 0xa

    .line 86
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 102
    :cond_0
    return-void

    .line 90
    :cond_1
    const-string v3, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 93
    .local v0, adapterState:I
    const/16 v3, 0xc

    if-ne v0, v3, :cond_2

    .line 94
    iget-object v3, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState$StateChangeBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/BluetoothAdapterState;

    #getter for: Lcom/google/glass/bluetooth/BluetoothAdapterState;->listeners:Ljava/util/Set;
    invoke-static {v3}, Lcom/google/glass/bluetooth/BluetoothAdapterState;->access$100(Lcom/google/glass/bluetooth/BluetoothAdapterState;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;

    .line 95
    .local v2, l:Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;
    invoke-interface {v2}, Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;->onBluetoothAdapterEnabled()V

    goto :goto_0

    .line 97
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #l:Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;
    :cond_2
    if-ne v0, v5, :cond_0

    .line 98
    iget-object v3, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState$StateChangeBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/BluetoothAdapterState;

    #getter for: Lcom/google/glass/bluetooth/BluetoothAdapterState;->listeners:Ljava/util/Set;
    invoke-static {v3}, Lcom/google/glass/bluetooth/BluetoothAdapterState;->access$100(Lcom/google/glass/bluetooth/BluetoothAdapterState;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;

    .line 99
    .restart local v2       #l:Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;
    invoke-interface {v2}, Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;->onBluetoothAdapterDisabled()V

    goto :goto_1
.end method
