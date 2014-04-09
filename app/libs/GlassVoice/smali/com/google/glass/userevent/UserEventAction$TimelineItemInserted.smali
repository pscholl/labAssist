.class public final enum Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;
.super Ljava/lang/Enum;
.source "UserEventAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/userevent/UserEventAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TimelineItemInserted"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

.field public static final enum BUG_REPORT:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

.field public static final enum CALENDAR:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

.field public static final enum COMPANION_API:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

.field public static final enum COMPANION_ITEM_RECEIVED:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

.field public static final enum EMAIL:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

.field public static final enum GLASSWARE_INSTALL:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

.field public static final enum HANGOUT:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

.field public static final enum LAUNCH:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

.field public static final enum MUSIC_HISTORIC:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

.field public static final enum MUSIC_PINNED:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

.field public static final enum NAVIGATION:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

.field public static final enum NETWORK_STATUS_PINNED:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

.field public static final enum PHONE_CALL:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

.field public static final enum PHOTO:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

.field public static final enum SHARE:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

.field public static final enum SMS_FORWARDED:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

.field public static final enum SMS_RECEIVED:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

.field public static final enum SOUND_SEARCH:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

.field public static final enum TIMELAPSE_PHOTO:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

.field public static final enum VIDEO:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

.field public static final enum VIGNETTE:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

.field public static final enum VOICE_MESSAGE:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

.field public static final enum VOICE_SEARCH:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;


# instance fields
.field private final data:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 406
    new-instance v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    const-string v1, "PHOTO"

    const-string v2, "1"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->PHOTO:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    .line 407
    new-instance v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    const-string v1, "TIMELAPSE_PHOTO"

    const-string v2, "2"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->TIMELAPSE_PHOTO:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    .line 408
    new-instance v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    const-string v1, "VIDEO"

    const-string v2, "3"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->VIDEO:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    .line 409
    new-instance v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    const-string v1, "SMS_RECEIVED"

    const-string v2, "4"

    invoke-direct {v0, v1, v7, v2}, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->SMS_RECEIVED:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    .line 410
    new-instance v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    const-string v1, "CALENDAR"

    const-string v2, "5"

    invoke-direct {v0, v1, v8, v2}, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->CALENDAR:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    .line 411
    new-instance v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    const-string v1, "EMAIL"

    const/4 v2, 0x5

    const-string v3, "6"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->EMAIL:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    .line 412
    new-instance v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    const-string v1, "PHONE_CALL"

    const/4 v2, 0x6

    const-string v3, "7"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->PHONE_CALL:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    .line 413
    new-instance v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    const-string v1, "HANGOUT"

    const/4 v2, 0x7

    const-string v3, "8"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->HANGOUT:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    .line 414
    new-instance v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    const-string v1, "VOICE_SEARCH"

    const/16 v2, 0x8

    const-string v3, "9"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->VOICE_SEARCH:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    .line 415
    new-instance v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    const-string v1, "VOICE_MESSAGE"

    const/16 v2, 0x9

    const-string v3, "10"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->VOICE_MESSAGE:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    .line 416
    new-instance v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    const-string v1, "NAVIGATION"

    const/16 v2, 0xa

    const-string v3, "11"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->NAVIGATION:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    .line 417
    new-instance v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    const-string v1, "BUG_REPORT"

    const/16 v2, 0xb

    const-string v3, "12"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->BUG_REPORT:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    .line 418
    new-instance v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    const-string v1, "SHARE"

    const/16 v2, 0xc

    const-string v3, "13"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->SHARE:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    .line 419
    new-instance v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    const-string v1, "COMPANION_API"

    const/16 v2, 0xd

    const-string v3, "14"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->COMPANION_API:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    .line 420
    new-instance v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    const-string v1, "LAUNCH"

    const/16 v2, 0xe

    const-string v3, "15"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->LAUNCH:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    .line 422
    new-instance v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    const-string v1, "COMPANION_ITEM_RECEIVED"

    const/16 v2, 0xf

    const-string v3, "16"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->COMPANION_ITEM_RECEIVED:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    .line 423
    new-instance v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    const-string v1, "SMS_FORWARDED"

    const/16 v2, 0x10

    const-string v3, "17"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->SMS_FORWARDED:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    .line 424
    new-instance v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    const-string v1, "VIGNETTE"

    const/16 v2, 0x11

    const-string v3, "18"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->VIGNETTE:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    .line 425
    new-instance v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    const-string v1, "SOUND_SEARCH"

    const/16 v2, 0x12

    const-string v3, "19"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->SOUND_SEARCH:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    .line 426
    new-instance v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    const-string v1, "GLASSWARE_INSTALL"

    const/16 v2, 0x13

    const-string v3, "20"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->GLASSWARE_INSTALL:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    .line 427
    new-instance v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    const-string v1, "MUSIC_HISTORIC"

    const/16 v2, 0x14

    const-string v3, "21"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->MUSIC_HISTORIC:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    .line 428
    new-instance v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    const-string v1, "MUSIC_PINNED"

    const/16 v2, 0x15

    const-string v3, "22"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->MUSIC_PINNED:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    .line 429
    new-instance v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    const-string v1, "NETWORK_STATUS_PINNED"

    const/16 v2, 0x16

    const-string v3, "23"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->NETWORK_STATUS_PINNED:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    .line 405
    const/16 v0, 0x17

    new-array v0, v0, [Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->PHOTO:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->TIMELAPSE_PHOTO:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->VIDEO:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->SMS_RECEIVED:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->CALENDAR:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->EMAIL:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->PHONE_CALL:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->HANGOUT:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->VOICE_SEARCH:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->VOICE_MESSAGE:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->NAVIGATION:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->BUG_REPORT:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->SHARE:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->COMPANION_API:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->LAUNCH:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->COMPANION_ITEM_RECEIVED:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->SMS_FORWARDED:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->VIGNETTE:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->SOUND_SEARCH:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->GLASSWARE_INSTALL:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->MUSIC_HISTORIC:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->MUSIC_PINNED:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->NETWORK_STATUS_PINNED:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->$VALUES:[Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 434
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 435
    iput-object p3, p0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->data:Ljava/lang/String;

    .line 436
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;
    .locals 1
    .parameter "name"

    .prologue
    .line 405
    const-class v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;
    .locals 1

    .prologue
    .line 405
    sget-object v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->$VALUES:[Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    invoke-virtual {v0}, [Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    return-object v0
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->data:Ljava/lang/String;

    return-object v0
.end method
