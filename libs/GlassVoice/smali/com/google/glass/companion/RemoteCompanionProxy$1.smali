.class Lcom/google/glass/companion/RemoteCompanionProxy$1;
.super Ljava/lang/Object;
.source "RemoteCompanionProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/RemoteCompanionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/companion/RemoteCompanionProxy;


# direct methods
.method constructor <init>(Lcom/google/glass/companion/RemoteCompanionProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter "name"
    .parameter "binder"

    .prologue
    .line 116
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Connected to %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-static {p2}, Lcom/google/glass/companion/IRemoteCompanionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/glass/companion/IRemoteCompanionService;

    move-result-object v1

    #setter for: Lcom/google/glass/companion/RemoteCompanionProxy;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;
    invoke-static {v0, v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$202(Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/glass/companion/IRemoteCompanionService;)Lcom/google/glass/companion/IRemoteCompanionService;

    .line 118
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    #getter for: Lcom/google/glass/companion/RemoteCompanionProxy;->companionStateListener:Lcom/google/glass/companion/RemoteCompanionProxy$CompanionStateBroadcastReceiver;
    invoke-static {v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$400(Lcom/google/glass/companion/RemoteCompanionProxy;)Lcom/google/glass/companion/RemoteCompanionProxy$CompanionStateBroadcastReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    #getter for: Lcom/google/glass/companion/RemoteCompanionProxy;->application:Landroid/app/Application;
    invoke-static {v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$300(Lcom/google/glass/companion/RemoteCompanionProxy;)Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/companion/RemoteCompanionProxy$CompanionStateBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 119
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    #calls: Lcom/google/glass/companion/RemoteCompanionProxy;->notifyCompanionStateChange()V
    invoke-static {v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$600(Lcom/google/glass/companion/RemoteCompanionProxy;)V

    .line 120
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 105
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Disconnected from %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    const/4 v1, 0x0

    #setter for: Lcom/google/glass/companion/RemoteCompanionProxy;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;
    invoke-static {v0, v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$202(Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/glass/companion/IRemoteCompanionService;)Lcom/google/glass/companion/IRemoteCompanionService;

    .line 107
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    #getter for: Lcom/google/glass/companion/RemoteCompanionProxy;->companionStateListener:Lcom/google/glass/companion/RemoteCompanionProxy$CompanionStateBroadcastReceiver;
    invoke-static {v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$400(Lcom/google/glass/companion/RemoteCompanionProxy;)Lcom/google/glass/companion/RemoteCompanionProxy$CompanionStateBroadcastReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    #getter for: Lcom/google/glass/companion/RemoteCompanionProxy;->application:Landroid/app/Application;
    invoke-static {v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$300(Lcom/google/glass/companion/RemoteCompanionProxy;)Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/companion/RemoteCompanionProxy$CompanionStateBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 110
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    #setter for: Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionConnected:Z
    invoke-static {v0, v4}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$502(Lcom/google/glass/companion/RemoteCompanionProxy;Z)Z

    .line 111
    iget-object v0, p0, Lcom/google/glass/companion/RemoteCompanionProxy$1;->this$0:Lcom/google/glass/companion/RemoteCompanionProxy;

    #calls: Lcom/google/glass/companion/RemoteCompanionProxy;->notifyCompanionStateChange()V
    invoke-static {v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->access$600(Lcom/google/glass/companion/RemoteCompanionProxy;)V

    .line 112
    return-void
.end method
