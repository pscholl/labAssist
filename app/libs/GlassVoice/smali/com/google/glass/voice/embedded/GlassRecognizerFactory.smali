.class public Lcom/google/glass/voice/embedded/GlassRecognizerFactory;
.super Lcom/google/glass/voice/RecognizerFactory;
.source "GlassRecognizerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/embedded/GlassRecognizerFactory$FilteredGrecoRecognizer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GlassFactory"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "GlassFactory"

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/glass/voice/RecognizerFactory;-><init>()V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/embedded/GlassRecognizerFactory;Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->getCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    return-object v0
.end method

.method private getCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;
    .locals 1
    .parameter "phrase"

    .prologue
    .line 57
    const-string v0, "[hotword_ok_glass]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->OK_GLASS:Lcom/google/glass/voice/VoiceCommand;

    .line 104
    :goto_0
    return-object v0

    .line 59
    :cond_0
    const-string v0, "[hotword_take_a_picture]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->TAKE_PHOTO:Lcom/google/glass/voice/VoiceCommand;

    goto :goto_0

    .line 61
    :cond_1
    const-string v0, "[hotword_record_a_video]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->RECORD_VIDEO:Lcom/google/glass/voice/VoiceCommand;

    goto :goto_0

    .line 63
    :cond_2
    const-string v0, "[hotword_google]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->GOOGLE:Lcom/google/glass/voice/VoiceCommand;

    goto :goto_0

    .line 65
    :cond_3
    const-string v0, "[hotword_get_directions]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 66
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->NAVIGATION:Lcom/google/glass/voice/VoiceCommand;

    goto :goto_0

    .line 67
    :cond_4
    const-string v0, "[hotword_make_a_video_call]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 68
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->VIDEO_CALL:Lcom/google/glass/voice/VoiceCommand;

    goto :goto_0

    .line 69
    :cond_5
    const-string v0, "[hotword_make_a_call]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 70
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->CALL:Lcom/google/glass/voice/VoiceCommand;

    goto :goto_0

    .line 71
    :cond_6
    const-string v0, "[hotword_send_a_message]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 72
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->SEND_MESSAGE_TO:Lcom/google/glass/voice/VoiceCommand;

    goto :goto_0

    .line 73
    :cond_7
    const-string v0, "[hotword_reply]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 74
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->REPLY:Lcom/google/glass/voice/VoiceCommand;

    goto :goto_0

    .line 75
    :cond_8
    const-string v0, "[hotword_read_aloud]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 76
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->READ_ALOUD:Lcom/google/glass/voice/VoiceCommand;

    goto :goto_0

    .line 77
    :cond_9
    const-string v0, "[hotword_answer_call]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 78
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->ANSWER_CALL:Lcom/google/glass/voice/VoiceCommand;

    goto :goto_0

    .line 79
    :cond_a
    const-string v0, "[hotword_ignore_call]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 80
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->DECLINE_CALL:Lcom/google/glass/voice/VoiceCommand;

    goto :goto_0

    .line 81
    :cond_b
    const-string v0, "[hotword_share_with]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 82
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->SHARE:Lcom/google/glass/voice/VoiceCommand;

    goto/16 :goto_0

    .line 83
    :cond_c
    const-string v0, "[listen_to]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 84
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->LISTEN_TO:Lcom/google/glass/voice/VoiceCommand;

    goto/16 :goto_0

    .line 88
    :cond_d
    const-string v0, "[hotword_take_a_note]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 89
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->TAKE_NOTE:Lcom/google/glass/voice/VoiceCommand;

    goto/16 :goto_0

    .line 90
    :cond_e
    const-string v0, "[hotword_post_an_update]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 91
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->POST_AN_UPDATE:Lcom/google/glass/voice/VoiceCommand;

    goto/16 :goto_0

    .line 92
    :cond_f
    const-string v0, "[hotword_check_me_in]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 93
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->CHECK_ME_IN:Lcom/google/glass/voice/VoiceCommand;

    goto/16 :goto_0

    .line 94
    :cond_10
    const-string v0, "[hotword_add_a_calendar_event]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 95
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->ADD_A_CALENDAR_EVENT:Lcom/google/glass/voice/VoiceCommand;

    goto/16 :goto_0

    .line 96
    :cond_11
    const-string v0, "[hotword_find_a_recipe]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 97
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->FIND_A_RECIPE:Lcom/google/glass/voice/VoiceCommand;

    goto/16 :goto_0

    .line 98
    :cond_12
    const-string v0, "[hotword_find_a_place]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 99
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->FIND_A_PLACE:Lcom/google/glass/voice/VoiceCommand;

    goto/16 :goto_0

    .line 100
    :cond_13
    const-string v0, "[hotword_explore_nearby]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 101
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->EXPLORE_NEARBY:Lcom/google/glass/voice/VoiceCommand;

    goto/16 :goto_0

    .line 104
    :cond_14
    const/4 v0, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method protected createCustomRecognizer(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/HotwordRecognizer;
    .locals 6
    .parameter "context"
    .parameter "config"

    .prologue
    .line 111
    sget-object v3, Lcom/google/glass/voice/embedded/MultiRecognizerController$Decoder;->DYN_5:Lcom/google/glass/voice/embedded/MultiRecognizerController$Decoder;

    .line 113
    .local v3, decoder:Lcom/google/glass/voice/embedded/MultiRecognizerController$Decoder;
    new-instance v0, Lcom/google/glass/voice/embedded/GlassRecognizerFactory$1;

    invoke-virtual {p2}, Lcom/google/glass/voice/VoiceConfig;->getCustomPhrases()[Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/voice/embedded/GlassRecognizerFactory$1;-><init>(Lcom/google/glass/voice/embedded/GlassRecognizerFactory;Landroid/content/Context;Lcom/google/glass/voice/embedded/MultiRecognizerController$Decoder;[Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig;)V

    return-object v0
.end method
