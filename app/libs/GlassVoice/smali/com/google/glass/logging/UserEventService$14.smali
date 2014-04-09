.class Lcom/google/glass/logging/UserEventService$14;
.super Ljava/lang/Object;
.source "UserEventService.java"

# interfaces
.implements Lcom/google/glass/net/ProtoResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/logging/UserEventService;->sendReportUserEventRequest(Ljava/lang/String;Ljava/lang/String;[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/glass/net/ProtoResponseHandler",
        "<",
        "Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/logging/UserEventService;

.field final synthetic val$events:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;


# direct methods
.method constructor <init>(Lcom/google/glass/logging/UserEventService;[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 815
    iput-object p1, p0, Lcom/google/glass/logging/UserEventService$14;->this$0:Lcom/google/glass/logging/UserEventService;

    iput-object p2, p0, Lcom/google/glass/logging/UserEventService$14;->val$events:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .prologue
    .line 818
    invoke-static {}, Lcom/google/glass/logging/UserEventService;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "User event request cancelled. Will retry."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 819
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService$14;->this$0:Lcom/google/glass/logging/UserEventService;

    iget-object v1, p0, Lcom/google/glass/logging/UserEventService$14;->val$events:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    #calls: Lcom/google/glass/logging/UserEventService;->addToQueue([Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V
    invoke-static {v0, v1}, Lcom/google/glass/logging/UserEventService;->access$1300(Lcom/google/glass/logging/UserEventService;[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V

    .line 820
    return-void
.end method

.method public onError(I)V
    .locals 5
    .parameter "errorCode"

    .prologue
    .line 823
    invoke-static {}, Lcom/google/glass/logging/UserEventService;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "User event request resulted in error %d. Will retry."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 824
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService$14;->this$0:Lcom/google/glass/logging/UserEventService;

    iget-object v1, p0, Lcom/google/glass/logging/UserEventService$14;->val$events:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    #calls: Lcom/google/glass/logging/UserEventService;->addToQueue([Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V
    invoke-static {v0, v1}, Lcom/google/glass/logging/UserEventService;->access$1300(Lcom/google/glass/logging/UserEventService;[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V

    .line 825
    return-void
.end method

.method public onSuccess(Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;)V
    .locals 3
    .parameter "responseProto"

    .prologue
    .line 828
    invoke-static {}, Lcom/google/glass/logging/UserEventService;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "User event request succeeded."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 829
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/google/protobuf/nano/MessageNano;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 815
    check-cast p1, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/logging/UserEventService$14;->onSuccess(Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;)V

    return-void
.end method
