.class public final enum Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;
.super Ljava/lang/Enum;
.source "RemoteCallbackBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "BroadcastTo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;

.field public static final enum ALL:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;

.field public static final enum TOP_OF_STACK:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 117
    new-instance v0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;->ALL:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;

    new-instance v0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;

    const-string v1, "TOP_OF_STACK"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;->TOP_OF_STACK:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;

    .line 116
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;

    sget-object v1, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;->ALL:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;->TOP_OF_STACK:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;->$VALUES:[Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;
    .locals 1
    .parameter "name"

    .prologue
    .line 116
    const-class v0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;->$VALUES:[Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;

    invoke-virtual {v0}, [Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;

    return-object v0
.end method
