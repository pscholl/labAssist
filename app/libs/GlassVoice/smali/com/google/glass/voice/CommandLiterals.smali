.class public final Lcom/google/glass/voice/CommandLiterals;
.super Ljava/lang/Object;
.source "CommandLiterals.java"


# static fields
.field public static final ADD_A_CALENDAR_EVENT:Ljava/lang/String; = "add a calendar event"

.field public static final ADD_CAPTION:Ljava/lang/String; = "add a caption"

.field public static final ANSWER_CALL:Ljava/lang/String; = "answer call"

.field public static final CALL:Ljava/lang/String; = "make a call"

.field public static final CALL_ME_A_CAR:Ljava/lang/String; = "call me a car"

.field public static final CAPTURE_A_PANORAMA:Ljava/lang/String; = "capture a panorama"

.field public static final CHECK_ME_IN:Ljava/lang/String; = "check me in"

.field public static final CREATE_A_THREE_D_MODEL:Ljava/lang/String; = "create a 3d model"

.field public static final DECLINE_CALL:Ljava/lang/String; = "decline call"

.field public static final EXPLORE_NEARBY:Ljava/lang/String; = "explore nearby"

.field public static final FIND_A_PLACE:Ljava/lang/String; = "find a place"

.field public static final FIND_A_RECIPE:Ljava/lang/String; = "find a recipe"

.field public static final GOOGLE:Ljava/lang/String; = "google"

.field public static final LEARN_A_SONG:Ljava/lang/String; = "learn a song"

.field public static final LISTEN_TO:Ljava/lang/String; = "listen to"

.field public static final MAKE_A_REQUEST:Ljava/lang/String; = "make a request"

.field public static final NAVIGATION:Ljava/lang/String; = "get directions to"

.field public static final OK_GLASS:Ljava/lang/String; = "ok glass"

.field public static final PLAY_A_GAME:Ljava/lang/String; = "play a game"

.field public static final PLAY_MUSIC:Ljava/lang/String; = "play music"

.field public static final PLAY_PAUSE_VIDEO:Ljava/lang/String; = "video"

.field public static final POST_AN_UPDATE:Ljava/lang/String; = "post an update"

.field public static final READ_ALOUD:Ljava/lang/String; = "read aloud"

.field public static final RECOGNIZE_THIS_SONG:Ljava/lang/String; = "recognize this song"

.field public static final RECORD_A_RECIPE:Ljava/lang/String; = "record a recipe"

.field public static final RECORD_VIDEO:Ljava/lang/String; = "record video"

.field public static final REMIND_ME_TO:Ljava/lang/String; = "remind me to"

.field public static final REPLY:Ljava/lang/String; = "reply"

.field public static final SEND_IT_TO:Ljava/lang/String; = "send it to"

.field public static final SEND_MESSAGE_TO:Ljava/lang/String; = "send message to"

.field public static final SHARE:Ljava/lang/String; = "share with"

.field public static final SHOW_A_COMPASS:Ljava/lang/String; = "show a compass"

.field public static final SHOW_HIDE_ROUTE_OVERVIEW:Ljava/lang/String; = "show route overview"

.field public static final START_A_BIKE_RIDE:Ljava/lang/String; = "start a bike ride"

.field public static final START_A_ROUND_OF_GOLF:Ljava/lang/String; = "start a round of golf"

.field public static final START_A_RUN:Ljava/lang/String; = "start a run"

.field public static final START_A_STOPWATCH:Ljava/lang/String; = "start a stopwatch"

.field public static final START_A_TIMER:Ljava/lang/String; = "start a timer"

.field public static final START_A_WORKOUT:Ljava/lang/String; = "start a workout"

.field public static final STOP_DIRECTIONS:Ljava/lang/String; = "stop directions"

.field public static final SYSTEM_COMMANDS:[Ljava/lang/String; = null

.field public static final TAKE_A_NOTE:Ljava/lang/String; = "take a note"

.field public static final TAKE_PHOTO:Ljava/lang/String; = "take a picture"

.field public static final TRANSLATE_THIS:Ljava/lang/String; = "translate this"

.field public static final TUNE_AN_INSTRUMENT:Ljava/lang/String; = "tune an instrument"

.field public static final VIDEO_CALL:Ljava/lang/String; = "make a video call"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "google"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "take a picture"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "record video"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "get directions to"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "send message to"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "make a call"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "make a video call"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/voice/CommandLiterals;->SYSTEM_COMMANDS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSystemCommand(Ljava/lang/String;)Z
    .locals 1
    .parameter "commandLiteral"

    .prologue
    .line 79
    sget-object v0, Lcom/google/glass/voice/CommandLiterals;->SYSTEM_COMMANDS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
