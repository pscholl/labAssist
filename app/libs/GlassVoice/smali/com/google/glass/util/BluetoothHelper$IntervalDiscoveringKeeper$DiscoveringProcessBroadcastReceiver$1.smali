.class Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$DiscoveringProcessBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "BluetoothHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$DiscoveringProcessBroadcastReceiver;->onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$DiscoveringProcessBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$DiscoveringProcessBroadcastReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$DiscoveringProcessBroadcastReceiver$1;->this$1:Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$DiscoveringProcessBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$DiscoveringProcessBroadcastReceiver$1;->this$1:Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$DiscoveringProcessBroadcastReceiver;

    iget-object v0, v0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$DiscoveringProcessBroadcastReceiver;->this$0:Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;

    #getter for: Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->btAdapterWrapper:Lcom/google/glass/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->access$200(Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;)Lcom/google/glass/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothAdapter;->isBluetoothEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$DiscoveringProcessBroadcastReceiver$1;->this$1:Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$DiscoveringProcessBroadcastReceiver;

    iget-object v0, v0, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper$DiscoveringProcessBroadcastReceiver;->this$0:Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;

    #getter for: Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->btAdapterWrapper:Lcom/google/glass/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;->access$200(Lcom/google/glass/util/BluetoothHelper$IntervalDiscoveringKeeper;)Lcom/google/glass/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothAdapter;->startDiscovery()Z

    .line 199
    :cond_0
    return-void
.end method
