.class Lcom/google/glass/util/WifiHelper$3;
.super Ljava/lang/Object;
.source "WifiHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/WifiHelper;->startTimeout(Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/WifiHelper;

.field final synthetic val$callback:Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;


# direct methods
.method constructor <init>(Lcom/google/glass/util/WifiHelper;Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 474
    iput-object p1, p0, Lcom/google/glass/util/WifiHelper$3;->this$0:Lcom/google/glass/util/WifiHelper;

    iput-object p2, p0, Lcom/google/glass/util/WifiHelper$3;->val$callback:Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 477
    invoke-static {}, Lcom/google/glass/util/WifiHelper;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Connection timed out."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 478
    iget-object v0, p0, Lcom/google/glass/util/WifiHelper$3;->this$0:Lcom/google/glass/util/WifiHelper;

    #calls: Lcom/google/glass/util/WifiHelper;->cancelConnectivityReceiver()V
    invoke-static {v0}, Lcom/google/glass/util/WifiHelper;->access$300(Lcom/google/glass/util/WifiHelper;)V

    .line 479
    iget-object v0, p0, Lcom/google/glass/util/WifiHelper$3;->val$callback:Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;

    invoke-interface {v0}, Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;->onConnectionFailed()V

    .line 480
    return-void
.end method
