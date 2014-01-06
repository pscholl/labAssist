.class Lcom/google/glass/bluetooth/BluetoothTetheringState$StateChangeBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "BluetoothTetheringState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/BluetoothTetheringState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateChangeBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/BluetoothTetheringState;


# direct methods
.method private constructor <init>(Lcom/google/glass/bluetooth/BluetoothTetheringState;)V
    .locals 3
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState$StateChangeBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    .line 151
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/bluetooth/BluetoothTetheringState;Lcom/google/glass/bluetooth/BluetoothTetheringState$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/BluetoothTetheringState$StateChangeBroadcastReceiver;-><init>(Lcom/google/glass/bluetooth/BluetoothTetheringState;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 177
    invoke-static {}, Lcom/google/glass/bluetooth/BluetoothTetheringState;->access$500()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 156
    const-string v3, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 173
    :cond_0
    return-void

    .line 160
    :cond_1
    const-string v3, "android.bluetooth.profile.extra.STATE"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 163
    .local v2, state:I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 164
    const/4 v2, 0x0

    .line 167
    :cond_2
    iget-object v3, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState$StateChangeBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    #getter for: Lcom/google/glass/bluetooth/BluetoothTetheringState;->listeners:Ljava/util/Set;
    invoke-static {v3}, Lcom/google/glass/bluetooth/BluetoothTetheringState;->access$400(Lcom/google/glass/bluetooth/BluetoothTetheringState;)Ljava/util/Set;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState$StateChangeBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    #getter for: Lcom/google/glass/bluetooth/BluetoothTetheringState;->waitingListeners:Ljava/util/Set;
    invoke-static {v4}, Lcom/google/glass/bluetooth/BluetoothTetheringState;->access$300(Lcom/google/glass/bluetooth/BluetoothTetheringState;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 168
    iget-object v3, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState$StateChangeBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    #getter for: Lcom/google/glass/bluetooth/BluetoothTetheringState;->waitingListeners:Ljava/util/Set;
    invoke-static {v3}, Lcom/google/glass/bluetooth/BluetoothTetheringState;->access$300(Lcom/google/glass/bluetooth/BluetoothTetheringState;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 170
    iget-object v3, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState$StateChangeBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    #getter for: Lcom/google/glass/bluetooth/BluetoothTetheringState;->listeners:Ljava/util/Set;
    invoke-static {v3}, Lcom/google/glass/bluetooth/BluetoothTetheringState;->access$400(Lcom/google/glass/bluetooth/BluetoothTetheringState;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;

    .line 171
    .local v1, l:Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;
    invoke-interface {v1, v2}, Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;->onBluetoothTetheringStateChanged(I)V

    goto :goto_0
.end method
