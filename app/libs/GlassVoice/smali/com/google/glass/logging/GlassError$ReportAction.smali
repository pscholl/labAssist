.class final enum Lcom/google/glass/logging/GlassError$ReportAction;
.super Ljava/lang/Enum;
.source "GlassError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/logging/GlassError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ReportAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/logging/GlassError$ReportAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/logging/GlassError$ReportAction;

.field public static final enum EVENT_ONLY:Lcom/google/glass/logging/GlassError$ReportAction;

.field public static final enum NONE:Lcom/google/glass/logging/GlassError$ReportAction;

.field public static final enum SEND_BUGREPORT:Lcom/google/glass/logging/GlassError$ReportAction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    new-instance v0, Lcom/google/glass/logging/GlassError$ReportAction;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/logging/GlassError$ReportAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/logging/GlassError$ReportAction;->NONE:Lcom/google/glass/logging/GlassError$ReportAction;

    .line 97
    new-instance v0, Lcom/google/glass/logging/GlassError$ReportAction;

    const-string v1, "EVENT_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/logging/GlassError$ReportAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/logging/GlassError$ReportAction;->EVENT_ONLY:Lcom/google/glass/logging/GlassError$ReportAction;

    .line 99
    new-instance v0, Lcom/google/glass/logging/GlassError$ReportAction;

    const-string v1, "SEND_BUGREPORT"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/logging/GlassError$ReportAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/logging/GlassError$ReportAction;->SEND_BUGREPORT:Lcom/google/glass/logging/GlassError$ReportAction;

    .line 94
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/glass/logging/GlassError$ReportAction;

    sget-object v1, Lcom/google/glass/logging/GlassError$ReportAction;->NONE:Lcom/google/glass/logging/GlassError$ReportAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/logging/GlassError$ReportAction;->EVENT_ONLY:Lcom/google/glass/logging/GlassError$ReportAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/logging/GlassError$ReportAction;->SEND_BUGREPORT:Lcom/google/glass/logging/GlassError$ReportAction;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/glass/logging/GlassError$ReportAction;->$VALUES:[Lcom/google/glass/logging/GlassError$ReportAction;

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
    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/logging/GlassError$ReportAction;
    .locals 1
    .parameter "name"

    .prologue
    .line 94
    const-class v0, Lcom/google/glass/logging/GlassError$ReportAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/logging/GlassError$ReportAction;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/logging/GlassError$ReportAction;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/google/glass/logging/GlassError$ReportAction;->$VALUES:[Lcom/google/glass/logging/GlassError$ReportAction;

    invoke-virtual {v0}, [Lcom/google/glass/logging/GlassError$ReportAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/logging/GlassError$ReportAction;

    return-object v0
.end method
