.class final Lcom/google/glass/logging/UserEventService$2;
.super Ljava/lang/Object;
.source "UserEventService.java"

# interfaces
.implements Lcom/google/glass/net/ProtoParser$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/logging/UserEventService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/glass/net/ProtoParser$Provider",
        "<",
        "Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provide()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    invoke-direct {v0}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;-><init>()V

    return-object v0
.end method

.method public bridge synthetic provide()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/glass/logging/UserEventService$2;->provide()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v0

    return-object v0
.end method
