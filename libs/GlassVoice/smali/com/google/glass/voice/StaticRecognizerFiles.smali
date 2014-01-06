.class final enum Lcom/google/glass/voice/StaticRecognizerFiles;
.super Ljava/lang/Enum;
.source "StaticRecognizerFiles.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/voice/StaticRecognizerFiles;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum ADD_A_CALENDAR_EVENT:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum CALL_ME_A_CAR:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum CAPTURE_A_PANORAMA:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum CHECK_ME_IN:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum CREATE_A_THREE_D_MODEL:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum DIRECTIONS:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum EXPLORE_NEARBY:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum FIND_A_PLACE:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum FIND_A_RECIPE:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum GUARD:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum INCOMING_CALL:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final IS_PRECOMBINED:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/voice/StaticRecognizerFiles;",
            ">;"
        }
    .end annotation
.end field

.field public static final IS_RTA_COMPATIBLE:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/voice/StaticRecognizerFiles;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum LEARN_A_SONG:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum LISTEN_TO:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum MAIN_MENU_LEGACY:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum MAIN_MENU_RTA:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum NOTIFICATION:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum NOTIFICATION_GUARD:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum PHOTOS_REVIEW_V2:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum PHOTO_REVIEW:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum PHOTO_SHARE:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum PLAY_A_GAME:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum PLAY_MUSIC:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum POST_AN_UPDATE:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum RECOGNIZE_THIS_SONG:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum RECORD_A_RECIPE:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum REMIND_ME_TO:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum SHOW_A_COMPASS:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum START_A_BIKE_RIDE:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum START_A_ROUND_OF_GOLF:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum START_A_RUN:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum START_A_STOP_WATCH:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum START_A_TIMER:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum START_A_WORKOUT:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum TAKE_A_NOTE:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum TRANSLATE_THIS:Lcom/google/glass/voice/StaticRecognizerFiles;

.field public static final enum TUNE_AN_INSTRUMENT:Lcom/google/glass/voice/StaticRecognizerFiles;

.field private static final filesetsByLiteral:Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multimap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/glass/voice/StaticRecognizerFiles;",
            ">;"
        }
    .end annotation
.end field

.field public static final filesetsInCardinalityOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/StaticRecognizerFiles;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field final combined:Z

.field final recogFile:Ljava/lang/String;

.field final recogFileResId:I

.field final recognizedLiterals:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final rtaCompatible:Z

.field final searchFile:Ljava/lang/String;

.field final searchFileResId:I

.field final sensitivity:Lcom/google/glass/voice/VoiceConfig$Sensitivity;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .prologue
    .line 23
    new-instance v1, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v2, "MAIN_MENU_LEGACY"

    const/4 v3, 0x0

    const-string v4, "google_glass_mainset_en_us_sfs_delivery22_am.raw"

    sget v5, Lcom/google/glass/voice/R$raw;->google_glass_mainset_en_us_sfs_delivery22_am:I

    const-string v6, "google_glass_mainset_en_us_sfs_delivery22_search_19.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_mainset_en_us_sfs_delivery22_search_19:I

    sget-object v8, Lcom/google/glass/voice/CommandLiterals;->SYSTEM_COMMANDS:[Ljava/lang/String;

    invoke-direct/range {v1 .. v8}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I[Ljava/lang/String;)V

    sput-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->MAIN_MENU_LEGACY:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 27
    new-instance v1, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v2, "GUARD"

    const/4 v3, 0x1

    const-string v4, "google_glass_okglass_en_us_alpha_sfs_delivery09_am.raw"

    sget v5, Lcom/google/glass/voice/R$raw;->google_glass_okglass_en_us_alpha_sfs_delivery09_am:I

    const-string v6, "google_glass_okglass_en_us_alpha_sfs_delivery09_search_10.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_okglass_en_us_alpha_sfs_delivery09_search_10:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "ok glass"

    aput-object v10, v8, v9

    invoke-direct/range {v1 .. v8}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I[Ljava/lang/String;)V

    sput-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->GUARD:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 31
    new-instance v1, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v2, "NOTIFICATION_GUARD"

    const/4 v3, 0x2

    const-string v4, "google_glass_okglass_en_us_alpha_sfs_delivery09_am.raw"

    sget v5, Lcom/google/glass/voice/R$raw;->google_glass_okglass_en_us_alpha_sfs_delivery09_am:I

    const-string v6, "google_glass_okglass_en_us_alpha_sfs_delivery09_search_1.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_okglass_en_us_alpha_sfs_delivery09_search_1:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Lcom/google/glass/voice/VoiceConfig$Sensitivity;->CONSERVATIVE:Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "ok glass"

    aput-object v19, v11, v18

    invoke-direct/range {v1 .. v11}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZZLcom/google/glass/voice/VoiceConfig$Sensitivity;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->NOTIFICATION_GUARD:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 38
    new-instance v1, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v2, "NOTIFICATION"

    const/4 v3, 0x3

    const-string v4, "google_glass_notificationset_en_us_sfs_delivery05_am.raw"

    sget v5, Lcom/google/glass/voice/R$raw;->google_glass_notificationset_en_us_sfs_delivery05_am:I

    const-string v6, "google_glass_notificationset_en_us_sfs_delivery05_search_13.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_notificationset_en_us_sfs_delivery05_search_13:I

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "read aloud"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "reply"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "video"

    aput-object v10, v8, v9

    invoke-direct/range {v1 .. v8}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I[Ljava/lang/String;)V

    sput-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->NOTIFICATION:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 43
    new-instance v1, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v2, "PHOTO_REVIEW"

    const/4 v3, 0x4

    const-string v4, "google_glass_reviewpictureset_en_us_sfs_delivery02_tighter_am.raw"

    sget v5, Lcom/google/glass/voice/R$raw;->google_glass_reviewpictureset_en_us_sfs_delivery02_tighter_am:I

    const-string v6, "google_glass_reviewpictureset_en_us_sfs_delivery02_tighter_search_12.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_reviewpictureset_en_us_sfs_delivery02_tighter_search_12:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "share with"

    aput-object v10, v8, v9

    invoke-direct/range {v1 .. v8}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I[Ljava/lang/String;)V

    sput-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->PHOTO_REVIEW:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 48
    new-instance v1, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v2, "PHOTOS_REVIEW_V2"

    const/4 v3, 0x5

    const-string v4, "google_glass_sharepictureset_en_us_sfs_delivery03_am.raw"

    sget v5, Lcom/google/glass/voice/R$raw;->google_glass_sharepictureset_en_us_sfs_delivery03_am:I

    const-string v6, "google_glass_sharepictureset_en_us_sfs_delivery03_search_10.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_sharepictureset_en_us_sfs_delivery03_search_10:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "send it to"

    aput-object v10, v8, v9

    invoke-direct/range {v1 .. v8}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I[Ljava/lang/String;)V

    sput-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->PHOTOS_REVIEW_V2:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 53
    new-instance v1, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v2, "INCOMING_CALL"

    const/4 v3, 0x6

    const-string v4, "google_glass_callset_en_us_sfs_delivery03_am.raw"

    sget v5, Lcom/google/glass/voice/R$raw;->google_glass_callset_en_us_sfs_delivery03_am:I

    const-string v6, "google_glass_callset_en_us_sfs_delivery03_search_13.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_callset_en_us_sfs_delivery03_search_13:I

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "answer call"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "decline call"

    aput-object v10, v8, v9

    invoke-direct/range {v1 .. v8}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I[Ljava/lang/String;)V

    sput-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->INCOMING_CALL:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 58
    new-instance v1, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v2, "PHOTO_SHARE"

    const/4 v3, 0x7

    const-string v4, "google_glass_photoshare_en_us_alpha_sfs_delivery01_am.raw"

    sget v5, Lcom/google/glass/voice/R$raw;->google_glass_photoshare_en_us_alpha_sfs_delivery01_am:I

    const-string v6, "google_glass_photoshare_en_us_alpha_sfs_delivery01_search_11.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_photoshare_en_us_alpha_sfs_delivery01_search_11:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "add a caption"

    aput-object v10, v8, v9

    invoke-direct/range {v1 .. v8}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I[Ljava/lang/String;)V

    sput-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->PHOTO_SHARE:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 63
    new-instance v1, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v2, "DIRECTIONS"

    const/16 v3, 0x8

    const-string v4, "google_glass_directions_en_us_alpha_sfs_delivery01_am.raw"

    sget v5, Lcom/google/glass/voice/R$raw;->google_glass_directions_en_us_alpha_sfs_delivery01_am:I

    const-string v6, "google_glass_directions_en_us_alpha_sfs_delivery01_search_11.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_directions_en_us_alpha_sfs_delivery01_search_11:I

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "show route overview"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "stop directions"

    aput-object v10, v8, v9

    invoke-direct/range {v1 .. v8}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I[Ljava/lang/String;)V

    sput-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->DIRECTIONS:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 68
    new-instance v1, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v2, "POST_AN_UPDATE"

    const/16 v3, 0x9

    const-string v4, "google_glass_postanupdate_en_us_alpha_sfs_delivery02_am.raw"

    sget v5, Lcom/google/glass/voice/R$raw;->google_glass_postanupdate_en_us_alpha_sfs_delivery02_am:I

    const-string v6, "google_glass_postanupdate_en_us_alpha_sfs_delivery02_search_9.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_postanupdate_en_us_alpha_sfs_delivery02_search_9:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "post an update"

    aput-object v10, v8, v9

    invoke-direct/range {v1 .. v8}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I[Ljava/lang/String;)V

    sput-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->POST_AN_UPDATE:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 75
    new-instance v1, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v2, "FIND_A_RECIPE"

    const/16 v3, 0xa

    const-string v4, "google_glass_find_a_recipe_en_us_sfs_delivery02_am.raw"

    sget v5, Lcom/google/glass/voice/R$raw;->google_glass_find_a_recipe_en_us_sfs_delivery02_am:I

    const-string v6, "google_glass_find_a_recipe_en_us_sfs_delivery02_search_9.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_find_a_recipe_en_us_sfs_delivery02_search_9:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "find a recipe"

    aput-object v11, v9, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ[Ljava/lang/String;)V

    sput-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->FIND_A_RECIPE:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 80
    new-instance v1, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v2, "RECORD_A_RECIPE"

    const/16 v3, 0xb

    const-string v4, "google_glass_record_a_recipe_en_us_sfs_delivery02_am.raw"

    sget v5, Lcom/google/glass/voice/R$raw;->google_glass_record_a_recipe_en_us_sfs_delivery02_am:I

    const-string v6, "google_glass_record_a_recipe_en_us_sfs_delivery02_search_13.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_record_a_recipe_en_us_sfs_delivery02_search_13:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "record a recipe"

    aput-object v11, v9, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ[Ljava/lang/String;)V

    sput-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->RECORD_A_RECIPE:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 85
    new-instance v1, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v2, "START_A_BIKE_RIDE"

    const/16 v3, 0xc

    const-string v4, "google_glass_start_a_bike_ride_en_us_sfs_delivery02_am.raw"

    sget v5, Lcom/google/glass/voice/R$raw;->google_glass_start_a_bike_ride_en_us_sfs_delivery02_am:I

    const-string v6, "google_glass_start_a_bike_ride_en_us_sfs_delivery02_search_11.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_start_a_bike_ride_en_us_sfs_delivery02_search_11:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "start a bike ride"

    aput-object v11, v9, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ[Ljava/lang/String;)V

    sput-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->START_A_BIKE_RIDE:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 90
    new-instance v1, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v2, "START_A_RUN"

    const/16 v3, 0xd

    const-string v4, "google_glass_start_a_run_en_us_sfs_delivery02_am.raw"

    sget v5, Lcom/google/glass/voice/R$raw;->google_glass_start_a_run_en_us_sfs_delivery02_am:I

    const-string v6, "google_glass_start_a_run_en_us_sfs_delivery02_search_10.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_start_a_run_en_us_sfs_delivery02_search_10:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "start a run"

    aput-object v11, v9, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ[Ljava/lang/String;)V

    sput-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->START_A_RUN:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 95
    new-instance v1, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v2, "START_A_STOP_WATCH"

    const/16 v3, 0xe

    const-string v4, "google_glass_start_a_stopwatch_en_us_alpha_sfs_delivery01_am.raw"

    sget v5, Lcom/google/glass/voice/R$raw;->google_glass_start_a_stopwatch_en_us_alpha_sfs_delivery01_am:I

    const-string v6, "google_glass_start_a_stopwatch_en_us_alpha_sfs_delivery01_search_11.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_start_a_stopwatch_en_us_alpha_sfs_delivery01_search_11:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "start a stopwatch"

    aput-object v11, v9, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ[Ljava/lang/String;)V

    sput-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->START_A_STOP_WATCH:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 100
    new-instance v1, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v2, "EXPLORE_NEARBY"

    const/16 v3, 0xf

    const-string v4, "google_glass_explore_nearby_en_us_sfs_delivery01_am.raw"

    sget v5, Lcom/google/glass/voice/R$raw;->google_glass_explore_nearby_en_us_sfs_delivery01_am:I

    const-string v6, "google_glass_explore_nearby_en_us_sfs_delivery01_search_10.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_explore_nearby_en_us_sfs_delivery01_search_10:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "explore nearby"

    aput-object v11, v9, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ[Ljava/lang/String;)V

    sput-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->EXPLORE_NEARBY:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 105
    new-instance v1, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v2, "FIND_A_PLACE"

    const/16 v3, 0x10

    const-string v4, "google_glass_find_a_place_en_us_sfs_delivery01_am.raw"

    sget v5, Lcom/google/glass/voice/R$raw;->google_glass_find_a_place_en_us_sfs_delivery01_am:I

    const-string v6, "google_glass_find_a_place_en_us_sfs_delivery01_search_12.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_find_a_place_en_us_sfs_delivery01_search_12:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "find a place"

    aput-object v11, v9, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ[Ljava/lang/String;)V

    sput-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->FIND_A_PLACE:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 110
    new-instance v1, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v2, "START_A_WORKOUT"

    const/16 v3, 0x11

    const-string v4, "google_glass_start_a_workout_en_us_sfs_delivery01_am.raw"

    sget v5, Lcom/google/glass/voice/R$raw;->google_glass_start_a_workout_en_us_sfs_delivery01_am:I

    const-string v6, "google_glass_start_a_workout_en_us_sfs_delivery01_search_12.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_start_a_workout_en_us_sfs_delivery01_search_12:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "start a workout"

    aput-object v11, v9, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ[Ljava/lang/String;)V

    sput-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->START_A_WORKOUT:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 115
    new-instance v1, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v2, "TAKE_A_NOTE"

    const/16 v3, 0x12

    const-string v4, "google_glass_take_a_note_en_us_sfs_delivery02_am.raw"

    sget v5, Lcom/google/glass/voice/R$raw;->google_glass_take_a_note_en_us_sfs_delivery02_am:I

    const-string v6, "google_glass_take_a_note_en_us_sfs_delivery02_search_5.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_take_a_note_en_us_sfs_delivery02_search_5:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "take a note"

    aput-object v11, v9, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ[Ljava/lang/String;)V

    sput-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->TAKE_A_NOTE:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 120
    new-instance v1, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v2, "LISTEN_TO"

    const/16 v3, 0x13

    const-string v4, "google_glass_listento_en_us_sfs_delivery03_am.raw"

    sget v5, Lcom/google/glass/voice/R$raw;->google_glass_listento_en_us_sfs_delivery03_am:I

    const-string v6, "google_glass_listento_en_us_sfs_delivery03_search_10.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_listento_en_us_sfs_delivery03_search_10:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "listen to"

    aput-object v11, v9, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ[Ljava/lang/String;)V

    sput-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->LISTEN_TO:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 124
    new-instance v1, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v2, "PLAY_MUSIC"

    const/16 v3, 0x14

    const-string v4, "google_glass_playmusic_en_us_sfs_delivery02_am.raw"

    sget v5, Lcom/google/glass/voice/R$raw;->google_glass_playmusic_en_us_sfs_delivery02_am:I

    const-string v6, "google_glass_playmusic_en_us_sfs_delivery02_search_9.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_playmusic_en_us_sfs_delivery02_search_9:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "play music"

    aput-object v11, v9, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ[Ljava/lang/String;)V

    sput-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->PLAY_MUSIC:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 128
    new-instance v1, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v2, "CALL_ME_A_CAR"

    const/16 v3, 0x15

    const-string v4, "google_glass_call_me_a_car_en_us_sfs_delivery02_am.raw"

    sget v5, Lcom/google/glass/voice/R$raw;->google_glass_call_me_a_car_en_us_sfs_delivery02_am:I

    const-string v6, "google_glass_call_me_a_car_en_us_sfs_delivery02_search_8.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_call_me_a_car_en_us_sfs_delivery02_search_8:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "call me a car"

    aput-object v11, v9, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ[Ljava/lang/String;)V

    sput-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->CALL_ME_A_CAR:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 133
    new-instance v1, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v2, "CAPTURE_A_PANORAMA"

    const/16 v3, 0x16

    const-string v4, "google_glass_capture_a_panorama_en_us_alpha_sfs_delivery01_am.raw"

    sget v5, Lcom/google/glass/voice/R$raw;->google_glass_capture_a_panorama_en_us_alpha_sfs_delivery01_am:I

    const-string v6, "google_glass_capture_a_panorama_en_us_alpha_sfs_delivery01_search_12.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_capture_a_panorama_en_us_alpha_sfs_delivery01_search_12:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "capture a panorama"

    aput-object v11, v9, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ[Ljava/lang/String;)V

    sput-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->CAPTURE_A_PANORAMA:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 138
    new-instance v1, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v2, "CHECK_ME_IN"

    const/16 v3, 0x17

    const-string v4, "google_glass_check_me_in_en_us_sfs_delivery02_am.raw"

    sget v5, Lcom/google/glass/voice/R$raw;->google_glass_check_me_in_en_us_sfs_delivery02_am:I

    const-string v6, "google_glass_check_me_in_en_us_sfs_delivery02_search_8.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_check_me_in_en_us_sfs_delivery02_search_8:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "check me in"

    aput-object v11, v9, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ[Ljava/lang/String;)V

    sput-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->CHECK_ME_IN:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 143
    new-instance v1, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v2, "ADD_A_CALENDAR_EVENT"

    const/16 v3, 0x18

    const-string v4, "google_glass_add_a_calendar_event_en_us_alpha_sfs_delivery01_am.raw"

    sget v5, Lcom/google/glass/voice/R$raw;->google_glass_add_a_calendar_event_en_us_alpha_sfs_delivery01_am:I

    const-string v6, "google_glass_add_a_calendar_event_en_us_alpha_sfs_delivery01_search_9.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_add_a_calendar_event_en_us_alpha_sfs_delivery01_search_9:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "add a calendar event"

    aput-object v11, v9, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ[Ljava/lang/String;)V

    sput-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->ADD_A_CALENDAR_EVENT:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 148
    new-instance v1, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v2, "CREATE_A_THREE_D_MODEL"

    const/16 v3, 0x19

    const-string v4, "google_glass_create_a_3d_model_en_us_alpha_sfs_delivery01_am.raw"

    sget v5, Lcom/google/glass/voice/R$raw;->google_glass_create_a_3d_model_en_us_alpha_sfs_delivery01_am:I

    const-string v6, "google_glass_create_a_3d_model_en_us_alpha_sfs_delivery01_search_11.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_create_a_3d_model_en_us_alpha_sfs_delivery01_search_11:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "create a 3d model"

    aput-object v11, v9, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ[Ljava/lang/String;)V

    sput-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->CREATE_A_THREE_D_MODEL:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 153
    new-instance v1, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v2, "LEARN_A_SONG"

    const/16 v3, 0x1a

    const-string v4, "google_glass_learn_a_song_en_us_sfs_delivery01_am.raw"

    sget v5, Lcom/google/glass/voice/R$raw;->google_glass_learn_a_song_en_us_sfs_delivery01_am:I

    const-string v6, "google_glass_learn_a_song_en_us_sfs_delivery01_search_13.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_learn_a_song_en_us_sfs_delivery01_search_13:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "learn a song"

    aput-object v11, v9, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ[Ljava/lang/String;)V

    sput-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->LEARN_A_SONG:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 158
    new-instance v1, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v2, "PLAY_A_GAME"

    const/16 v3, 0x1b

    const-string v4, "google_glass_play_a_game_en_us_sfs_delivery01_am.raw"

    sget v5, Lcom/google/glass/voice/R$raw;->google_glass_play_a_game_en_us_sfs_delivery01_am:I

    const-string v6, "google_glass_play_a_game_en_us_sfs_delivery01_search_8.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_play_a_game_en_us_sfs_delivery01_search_8:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "play a game"

    aput-object v11, v9, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ[Ljava/lang/String;)V

    sput-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->PLAY_A_GAME:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 163
    new-instance v1, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v2, "RECOGNIZE_THIS_SONG"

    const/16 v3, 0x1c

    const-string v4, "google_glass_recognize_this_song_en_us_sfs_delivery01_am.raw"

    sget v5, Lcom/google/glass/voice/R$raw;->google_glass_recognize_this_song_en_us_sfs_delivery01_am:I

    const-string v6, "google_glass_recognize_this_song_en_us_sfs_delivery01_search_10.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_recognize_this_song_en_us_sfs_delivery01_search_10:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "recognize this song"

    aput-object v11, v9, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ[Ljava/lang/String;)V

    sput-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->RECOGNIZE_THIS_SONG:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 168
    new-instance v1, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v2, "REMIND_ME_TO"

    const/16 v3, 0x1d

    const-string v4, "google_glass_remind_me_to_en_us_sfs_delivery02_am.raw"

    sget v5, Lcom/google/glass/voice/R$raw;->google_glass_remind_me_to_en_us_sfs_delivery02_am:I

    const-string v6, "google_glass_remind_me_to_en_us_sfs_delivery02_search_13.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_remind_me_to_en_us_sfs_delivery02_search_13:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "remind me to"

    aput-object v11, v9, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ[Ljava/lang/String;)V

    sput-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->REMIND_ME_TO:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 173
    new-instance v1, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v2, "SHOW_A_COMPASS"

    const/16 v3, 0x1e

    const-string v4, "google_glass_show_a_compass_en_us_alpha_sfs_delivery01_am.raw"

    sget v5, Lcom/google/glass/voice/R$raw;->google_glass_show_a_compass_en_us_alpha_sfs_delivery01_am:I

    const-string v6, "google_glass_show_a_compass_en_us_alpha_sfs_delivery01_search_12.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_show_a_compass_en_us_alpha_sfs_delivery01_search_12:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "show a compass"

    aput-object v11, v9, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ[Ljava/lang/String;)V

    sput-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->SHOW_A_COMPASS:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 178
    new-instance v1, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v2, "START_A_ROUND_OF_GOLF"

    const/16 v3, 0x1f

    const-string v4, "google_glass_start_a_round_of_golf_en_us_alpha_sfs_delivery01_am.raw"

    sget v5, Lcom/google/glass/voice/R$raw;->google_glass_start_a_round_of_golf_en_us_alpha_sfs_delivery01_am:I

    const-string v6, "google_glass_start_a_round_of_golf_en_us_alpha_sfs_delivery01_search_7.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_start_a_round_of_golf_en_us_alpha_sfs_delivery01_search_7:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "start a round of golf"

    aput-object v11, v9, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ[Ljava/lang/String;)V

    sput-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->START_A_ROUND_OF_GOLF:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 183
    new-instance v1, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v2, "START_A_TIMER"

    const/16 v3, 0x20

    const-string v4, "google_glass_start_a_timer_en_us_alpha_sfs_delivery01_am.raw"

    sget v5, Lcom/google/glass/voice/R$raw;->google_glass_start_a_timer_en_us_alpha_sfs_delivery01_am:I

    const-string v6, "google_glass_start_a_timer_en_us_alpha_sfs_delivery01_search_12.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_start_a_timer_en_us_alpha_sfs_delivery01_search_12:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "start a timer"

    aput-object v11, v9, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ[Ljava/lang/String;)V

    sput-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->START_A_TIMER:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 188
    new-instance v1, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v2, "TRANSLATE_THIS"

    const/16 v3, 0x21

    const-string v4, "google_glass_translate_this_en_us_alpha_sfs_delivery01_am.raw"

    sget v5, Lcom/google/glass/voice/R$raw;->google_glass_translate_this_en_us_alpha_sfs_delivery01_am:I

    const-string v6, "google_glass_translate_this_en_us_alpha_sfs_delivery01_search_10.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_translate_this_en_us_alpha_sfs_delivery01_search_10:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "translate this"

    aput-object v11, v9, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ[Ljava/lang/String;)V

    sput-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->TRANSLATE_THIS:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 193
    new-instance v1, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v2, "TUNE_AN_INSTRUMENT"

    const/16 v3, 0x22

    const-string v4, "google_glass_tune_an_instrument_en_us_sfs_delivery01_am.raw"

    sget v5, Lcom/google/glass/voice/R$raw;->google_glass_tune_an_instrument_en_us_sfs_delivery01_am:I

    const-string v6, "google_glass_tune_an_instrument_en_us_sfs_delivery01_search_8.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->google_glass_tune_an_instrument_en_us_sfs_delivery01_search_8:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "tune an instrument"

    aput-object v11, v9, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ[Ljava/lang/String;)V

    sput-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->TUNE_AN_INSTRUMENT:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 202
    new-instance v1, Lcom/google/glass/voice/StaticRecognizerFiles;

    const-string v2, "MAIN_MENU_RTA"

    const/16 v3, 0x23

    const-string v4, "rta_combined_am.raw"

    sget v5, Lcom/google/glass/voice/R$raw;->rta_combined_am:I

    const-string v6, "rta_combined_sc.raw"

    sget v7, Lcom/google/glass/voice/R$raw;->rta_combined_sc:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    sget-object v10, Lcom/google/glass/voice/CommandLiterals;->SYSTEM_COMMANDS:[Ljava/lang/String;

    invoke-direct/range {v1 .. v10}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZZ[Ljava/lang/String;)V

    sput-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->MAIN_MENU_RTA:Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 22
    const/16 v1, 0x24

    new-array v1, v1, [Lcom/google/glass/voice/StaticRecognizerFiles;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->MAIN_MENU_LEGACY:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->GUARD:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->NOTIFICATION_GUARD:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->NOTIFICATION:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->PHOTO_REVIEW:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->PHOTOS_REVIEW_V2:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->INCOMING_CALL:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->PHOTO_SHARE:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->DIRECTIONS:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->POST_AN_UPDATE:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->FIND_A_RECIPE:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->RECORD_A_RECIPE:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->START_A_BIKE_RIDE:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->START_A_RUN:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->START_A_STOP_WATCH:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->EXPLORE_NEARBY:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    sget-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->FIND_A_PLACE:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    sget-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->START_A_WORKOUT:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    sget-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->TAKE_A_NOTE:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v3, v1, v2

    const/16 v2, 0x13

    sget-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->LISTEN_TO:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v3, v1, v2

    const/16 v2, 0x14

    sget-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->PLAY_MUSIC:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v3, v1, v2

    const/16 v2, 0x15

    sget-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->CALL_ME_A_CAR:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v3, v1, v2

    const/16 v2, 0x16

    sget-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->CAPTURE_A_PANORAMA:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v3, v1, v2

    const/16 v2, 0x17

    sget-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->CHECK_ME_IN:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v3, v1, v2

    const/16 v2, 0x18

    sget-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->ADD_A_CALENDAR_EVENT:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v3, v1, v2

    const/16 v2, 0x19

    sget-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->CREATE_A_THREE_D_MODEL:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    sget-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->LEARN_A_SONG:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    sget-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->PLAY_A_GAME:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    sget-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->RECOGNIZE_THIS_SONG:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    sget-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->REMIND_ME_TO:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    sget-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->SHOW_A_COMPASS:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    sget-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->START_A_ROUND_OF_GOLF:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v3, v1, v2

    const/16 v2, 0x20

    sget-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->START_A_TIMER:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v3, v1, v2

    const/16 v2, 0x21

    sget-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->TRANSLATE_THIS:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v3, v1, v2

    const/16 v2, 0x22

    sget-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->TUNE_AN_INSTRUMENT:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v3, v1, v2

    const/16 v2, 0x23

    sget-object v3, Lcom/google/glass/voice/StaticRecognizerFiles;->MAIN_MENU_RTA:Lcom/google/glass/voice/StaticRecognizerFiles;

    aput-object v3, v1, v2

    sput-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->$VALUES:[Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 275
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    sput-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 282
    invoke-static {}, Lcom/google/common/collect/HashMultimap;->create()Lcom/google/common/collect/HashMultimap;

    move-result-object v1

    sput-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->filesetsByLiteral:Lcom/google/common/collect/Multimap;

    .line 287
    new-instance v1, Lcom/google/glass/voice/StaticRecognizerFiles$1;

    invoke-direct {v1}, Lcom/google/glass/voice/StaticRecognizerFiles$1;-><init>()V

    sput-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->IS_PRECOMBINED:Lcom/google/common/base/Predicate;

    .line 295
    new-instance v1, Lcom/google/glass/voice/StaticRecognizerFiles$2;

    invoke-direct {v1}, Lcom/google/glass/voice/StaticRecognizerFiles$2;-><init>()V

    sput-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->IS_RTA_COMPATIBLE:Lcom/google/common/base/Predicate;

    .line 304
    invoke-static {}, Lcom/google/glass/voice/StaticRecognizerFiles;->values()[Lcom/google/glass/voice/StaticRecognizerFiles;

    move-result-object v12

    .local v12, arr$:[Lcom/google/glass/voice/StaticRecognizerFiles;
    array-length v0, v12

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    move v15, v14

    .end local v14           #i$:I
    .local v15, i$:I
    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_1

    aget-object v13, v12, v15

    .line 305
    .local v13, fileset:Lcom/google/glass/voice/StaticRecognizerFiles;
    iget-object v1, v13, Lcom/google/glass/voice/StaticRecognizerFiles;->recognizedLiterals:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .end local v15           #i$:I
    .local v14, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 306
    .local v17, literal:Ljava/lang/String;
    sget-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->filesetsByLiteral:Lcom/google/common/collect/Multimap;

    move-object/from16 v0, v17

    invoke-interface {v1, v0, v13}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    .line 304
    .end local v17           #literal:Ljava/lang/String;
    :cond_0
    add-int/lit8 v14, v15, 0x1

    .local v14, i$:I
    move v15, v14

    .end local v14           #i$:I
    .restart local v15       #i$:I
    goto :goto_0

    .line 310
    .end local v13           #fileset:Lcom/google/glass/voice/StaticRecognizerFiles;
    :cond_1
    new-instance v1, Lcom/google/glass/voice/StaticRecognizerFiles$3;

    invoke-direct {v1}, Lcom/google/glass/voice/StaticRecognizerFiles$3;-><init>()V

    invoke-static {v1}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-static {}, Lcom/google/glass/voice/StaticRecognizerFiles;->values()[Lcom/google/glass/voice/StaticRecognizerFiles;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/Ordering;->sortedCopy(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->filesetsInCardinalityOrder:Ljava/util/List;

    .line 316
    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZZLcom/google/glass/voice/VoiceConfig$Sensitivity;[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter "recogFileName"
    .parameter "recogFileResId"
    .parameter "searchFileName"
    .parameter "searchFileResId"
    .parameter "rtaCompatible"
    .parameter "combined"
    .parameter "sensitivity"
    .parameter "recognizedLiterals"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "IZZ",
            "Lcom/google/glass/voice/VoiceConfig$Sensitivity;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 221
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 222
    iput-object p3, p0, Lcom/google/glass/voice/StaticRecognizerFiles;->recogFile:Ljava/lang/String;

    .line 223
    iput p4, p0, Lcom/google/glass/voice/StaticRecognizerFiles;->recogFileResId:I

    .line 224
    iput-object p5, p0, Lcom/google/glass/voice/StaticRecognizerFiles;->searchFile:Ljava/lang/String;

    .line 225
    iput p6, p0, Lcom/google/glass/voice/StaticRecognizerFiles;->searchFileResId:I

    .line 226
    iput-boolean p7, p0, Lcom/google/glass/voice/StaticRecognizerFiles;->rtaCompatible:Z

    .line 227
    iput-boolean p8, p0, Lcom/google/glass/voice/StaticRecognizerFiles;->combined:Z

    .line 228
    iput-object p9, p0, Lcom/google/glass/voice/StaticRecognizerFiles;->sensitivity:Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    .line 229
    invoke-static {p10}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/StaticRecognizerFiles;->recognizedLiterals:Ljava/util/Set;

    .line 230
    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZZ[Ljava/lang/String;)V
    .locals 11
    .parameter
    .parameter
    .parameter "recogFileName"
    .parameter "recogFileResId"
    .parameter "searchFileName"
    .parameter "searchFileResId"
    .parameter "rtaCompatible"
    .parameter "combined"
    .parameter "recognizedLiterals"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "IZZ[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 239
    sget-object v9, Lcom/google/glass/voice/VoiceConfig$Sensitivity;->NORMAL:Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZZLcom/google/glass/voice/VoiceConfig$Sensitivity;[Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZ[Ljava/lang/String;)V
    .locals 10
    .parameter
    .parameter
    .parameter "recogFileName"
    .parameter "recogFileResId"
    .parameter "searchFileName"
    .parameter "searchFileResId"
    .parameter "rtaCompatible"
    .parameter "recognizedLiterals"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "IZ[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 266
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZZ[Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I[Ljava/lang/String;)V
    .locals 10
    .parameter
    .parameter
    .parameter "recogFileName"
    .parameter "recogFileResId"
    .parameter "searchFileName"
    .parameter "searchFileResId"
    .parameter "recognizedLiterals"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 251
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/google/glass/voice/StaticRecognizerFiles;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IZZ[Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/glass/voice/StaticRecognizerFiles;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/common/collect/Multimap;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/glass/voice/StaticRecognizerFiles;->filesetsByLiteral:Lcom/google/common/collect/Multimap;

    return-object v0
.end method

.method public static getFilesets(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .parameter "literal"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/glass/voice/StaticRecognizerFiles;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    sget-object v0, Lcom/google/glass/voice/StaticRecognizerFiles;->filesetsByLiteral:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p0}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static getRtaSingletonFileset(Ljava/lang/String;)Lcom/google/glass/voice/StaticRecognizerFiles;
    .locals 3
    .parameter "literal"

    .prologue
    .line 331
    invoke-static {p0}, Lcom/google/glass/voice/StaticRecognizerFiles;->getFilesets(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 332
    .local v0, fileset:Lcom/google/glass/voice/StaticRecognizerFiles;
    iget-boolean v2, v0, Lcom/google/glass/voice/StaticRecognizerFiles;->rtaCompatible:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/google/glass/voice/StaticRecognizerFiles;->rtaCompatible:Z

    if-eqz v2, :cond_0

    .line 336
    .end local v0           #fileset:Lcom/google/glass/voice/StaticRecognizerFiles;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFilesetAvailable(Ljava/lang/String;)Z
    .locals 1
    .parameter "literal"

    .prologue
    .line 323
    sget-object v0, Lcom/google/glass/voice/StaticRecognizerFiles;->filesetsByLiteral:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p0}, Lcom/google/common/collect/Multimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isRtaSingletonFilesetAvailable(Ljava/lang/String;)Z
    .locals 1
    .parameter "literal"

    .prologue
    .line 327
    invoke-static {p0}, Lcom/google/glass/voice/StaticRecognizerFiles;->getRtaSingletonFileset(Ljava/lang/String;)Lcom/google/glass/voice/StaticRecognizerFiles;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static optimizeSensitivity(Ljava/util/List;Lcom/google/glass/voice/VoiceConfig$Sensitivity;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter "sensitivity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/StaticRecognizerFiles;",
            ">;",
            "Lcom/google/glass/voice/VoiceConfig$Sensitivity;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/StaticRecognizerFiles;",
            ">;"
        }
    .end annotation

    .prologue
    .line 345
    .local p0, filesetsToMix:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/StaticRecognizerFiles;>;"
    new-instance v0, Lcom/google/glass/voice/StaticRecognizerFiles$4;

    invoke-direct {v0, p1}, Lcom/google/glass/voice/StaticRecognizerFiles$4;-><init>(Lcom/google/glass/voice/VoiceConfig$Sensitivity;)V

    invoke-static {p0, v0}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/voice/StaticRecognizerFiles;
    .locals 1
    .parameter "name"

    .prologue
    .line 22
    const-class v0, Lcom/google/glass/voice/StaticRecognizerFiles;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/StaticRecognizerFiles;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/voice/StaticRecognizerFiles;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/glass/voice/StaticRecognizerFiles;->$VALUES:[Lcom/google/glass/voice/StaticRecognizerFiles;

    invoke-virtual {v0}, [Lcom/google/glass/voice/StaticRecognizerFiles;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/voice/StaticRecognizerFiles;

    return-object v0
.end method
