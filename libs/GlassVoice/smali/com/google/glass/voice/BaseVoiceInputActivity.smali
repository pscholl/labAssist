.class public abstract Lcom/google/glass/voice/BaseVoiceInputActivity;
.super Lcom/google/glass/app/GlassVoiceActivity;
.source "BaseVoiceInputActivity.java"


# static fields
.field private static final ANIMATE_IN_DURATION_MILLIS:J = 0x64L

.field private static final ANIMATE_OUT_DURATION_MILLIS:J = 0xc8L

.field protected static final DICTATION:Lcom/google/glass/voice/VoiceConfig; = null

.field private static final ENDPOINT_CONFIRM_THRESHOLD_MILLIS:I = 0x3e8

.field public static final EXTRA_SHOULD_PLAY_INITIAL_SOUND:Ljava/lang/String; = "should_play_initial_sound"

#the value of this static final field might be set in the static constructor
.field private static final MIN_PLAY_VOICE_RESULT_SOUND_THRESHOLD_MILLIS:J = 0x0L

.field protected static final MSG_ON_ACTION_RESPONSE:I = 0xd

.field private static final MSG_ON_ERROR:I = 0x9

.field protected static final MSG_ON_HTML_ANSWER_CARD_RESULT:I = 0xb

.field protected static final MSG_ON_RECOGNITION_RESULT:I = 0x7
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected static final MSG_ON_SOUND_SEARCH_RESULT:I = 0x8

.field private static final MSG_SET_SPEECH_LEVEL_SOURCE:I = 0x5

.field private static final MSG_SHOW_DONE:I = 0x4

.field private static final MSG_SHOW_LISTENING:I = 0x0

.field private static final MSG_SHOW_MUSIC_DETECTED:I = 0xc

.field private static final MSG_SHOW_NO_SPEECH_DETECTED:I = 0x3

.field private static final MSG_SHOW_PROGRESS_BAR:I = 0xa

.field private static final MSG_SHOW_RECOGNIZING:I = 0x2

.field private static final MSG_SHOW_RECORDING:I = 0x1

.field private static final MSG_UPDATE_RECOGNIZED_TEXT:I = 0x6

.field private static final NO_RESOURCE_ID:I = 0x0

.field private static final SHOW_PROGRESS_BAR_DELAY_MILLIS:J = 0xfaL

.field private static final SHOW_RESULT_DURATION_MAX_ADDITIONAL:J = 0xbb8L

.field private static final SHOW_RESULT_DURATION_MINIMUM:J = 0x7d0L

.field public static final TYPE_ANNOTATION:I = 0x5

.field public static final TYPE_GLASSWARE:I = 0x3

.field public static final TYPE_MESSAGING:I = 0x2

.field public static final TYPE_MUSIC:I = 0x6

.field public static final TYPE_NAVIGATION:I = 0x1

.field public static final TYPE_SEARCH:I = 0x0

.field public static final TYPE_SOUND_SEARCH:I = 0x4


# instance fields
.field private audioView:Lcom/google/glass/voice/AudioInputRelativeLayout;

.field private endOfSpeechTime:J

.field private guardPhrase:Lcom/google/glass/widget/TypophileTextView;

.field protected final handler:Landroid/os/Handler;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private hasRecognitionResults:Z

.field private hasSearchResponse:Z

.field private isRetry:Z

.field private logFirstRecognizedText:Z

.field private powerHelper:Lcom/google/glass/util/PowerHelper;

.field private progressSlider:Lcom/google/glass/widget/SliderView;

.field protected prompt:Lcom/google/glass/widget/TypophileTextView;

.field protected recognitionResult:Ljava/lang/CharSequence;

.field private recognitionResultsCount:I

.field private recognitionUpdatesCount:I

.field private retryVoiceConfig:Lcom/google/glass/voice/VoiceConfig;

.field private final speakAgainRunnable:Ljava/lang/Runnable;

.field private startTime:J

.field private streamingTextView:Lcom/google/glass/voice/StreamingTextView;

.field protected triggerMethod:I

.field protected triggerTimeMillis:J

.field protected final voiceInputCallback:Lcom/google/glass/voice/network/IVoiceInputCallback;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final voiceInputCallbackLogger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 87
    sget-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_COMPLETED:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManager$SoundId;->getDuration()I

    move-result v0

    add-int/lit16 v0, v0, 0x1f4

    int-to-long v0, v0

    sput-wide v0, Lcom/google/glass/voice/BaseVoiceInputActivity;->MIN_PLAY_VOICE_RESULT_SOUND_THRESHOLD_MILLIS:J

    .line 152
    sget-object v0, Lcom/google/glass/voice/OpenEndedMode;->DICTATION:Lcom/google/glass/voice/OpenEndedMode;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceConfig;->forOpenEnded(Lcom/google/glass/voice/OpenEndedMode;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/BaseVoiceInputActivity;->DICTATION:Lcom/google/glass/voice/VoiceConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Lcom/google/glass/app/GlassVoiceActivity;-><init>()V

    .line 155
    iput-boolean v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->hasSearchResponse:Z

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->recognitionResult:Ljava/lang/CharSequence;

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->logFirstRecognizedText:Z

    .line 168
    iput-boolean v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->hasRecognitionResults:Z

    .line 177
    iput-boolean v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->isRetry:Z

    .line 218
    new-instance v0, Lcom/google/glass/voice/BaseVoiceInputActivity$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/BaseVoiceInputActivity$1;-><init>(Lcom/google/glass/voice/BaseVoiceInputActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    .line 284
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "voiceInputCallback"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->voiceInputCallbackLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 287
    new-instance v0, Lcom/google/glass/voice/BaseVoiceInputActivity$2;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/BaseVoiceInputActivity$2;-><init>(Lcom/google/glass/voice/BaseVoiceInputActivity;)V

    iput-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->voiceInputCallback:Lcom/google/glass/voice/network/IVoiceInputCallback;

    .line 383
    new-instance v0, Lcom/google/glass/voice/BaseVoiceInputActivity$3;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/BaseVoiceInputActivity$3;-><init>(Lcom/google/glass/voice/BaseVoiceInputActivity;)V

    iput-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->speakAgainRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/BaseVoiceInputActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->updatePowerHelper(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/voice/BaseVoiceInputActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->updateKeepScreenOn(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/glass/voice/BaseVoiceInputActivity;Ljava/lang/CharSequence;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/BaseVoiceInputActivity;->dispatchOnRecognitionResult(Ljava/lang/CharSequence;F)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/glass/voice/BaseVoiceInputActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->dispatchOnHtmlAnswerCardResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/glass/voice/BaseVoiceInputActivity;Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->dispatchOnSoundSearchResult(Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/glass/voice/BaseVoiceInputActivity;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->dispatchOnActionResponse([B)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/glass/voice/BaseVoiceInputActivity;Lcom/google/glass/voice/network/SpeechException;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->dispatchOnError(Lcom/google/glass/voice/network/SpeechException;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/glass/voice/BaseVoiceInputActivity;)Lcom/google/glass/widget/SliderView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/glass/voice/BaseVoiceInputActivity;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->voiceInputCallbackLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/glass/voice/BaseVoiceInputActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->reset()V

    return-void
.end method

.method static synthetic access$1802(Lcom/google/glass/voice/BaseVoiceInputActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->isRetry:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/google/glass/voice/BaseVoiceInputActivity;)Lcom/google/glass/voice/VoiceConfig;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->retryVoiceConfig:Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/voice/BaseVoiceInputActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->dispatchShowListening()V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/glass/voice/BaseVoiceInputActivity;)Lcom/google/glass/voice/AudioInputRelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->audioView:Lcom/google/glass/voice/AudioInputRelativeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/voice/BaseVoiceInputActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->dispatchShowRecording()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/voice/BaseVoiceInputActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->dispatchShowRecognizing()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/voice/BaseVoiceInputActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->dispatchShowNoSpeechDetected()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/glass/voice/BaseVoiceInputActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->dispatchShowMusicDetected()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/glass/voice/BaseVoiceInputActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->dispatchShowDone()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/glass/voice/BaseVoiceInputActivity;Lcom/google/glass/voice/network/ISpeechLevelSource;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->dispatchSetSpeechLevelSource(Lcom/google/glass/voice/network/ISpeechLevelSource;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/glass/voice/BaseVoiceInputActivity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/BaseVoiceInputActivity;->dispatchUpdateRecognizedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private animateIn(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 3
    .parameter "view"
    .parameter "postAnimationRunnable"

    .prologue
    .line 1088
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1089
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1090
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/glass/voice/BaseVoiceInputActivity$7;

    invoke-direct {v1, p0, p2}, Lcom/google/glass/voice/BaseVoiceInputActivity$7;-><init>(Lcom/google/glass/voice/BaseVoiceInputActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1102
    return-void
.end method

.method private animateOut(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 1106
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/glass/voice/BaseVoiceInputActivity$8;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity$8;-><init>(Lcom/google/glass/voice/BaseVoiceInputActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1116
    return-void
.end method

.method private dispatchOnActionResponse([B)V
    .locals 0
    .parameter "response"

    .prologue
    .line 961
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->onActionResponse([B)V

    .line 962
    return-void
.end method

.method private dispatchOnError(Lcom/google/glass/voice/network/SpeechException;)V
    .locals 0
    .parameter "exception"

    .prologue
    .line 992
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->onError(Lcom/google/glass/voice/network/SpeechException;)V

    .line 993
    return-void
.end method

.method private dispatchOnHtmlAnswerCardResult(Ljava/lang/String;)V
    .locals 7
    .parameter "htmlResponse"

    .prologue
    .line 939
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->hasSearchResponse:Z

    .line 940
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->recognitionResult:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const-string v2, ""

    :goto_0
    iget-wide v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->startTime:J

    iget-wide v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->endOfSpeechTime:J

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/voice/BaseVoiceInputActivity;->onHtmlAnswerCardResult(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 945
    return-void

    .line 940
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->recognitionResult:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private dispatchOnRecognitionResult(Ljava/lang/CharSequence;F)V
    .locals 12
    .parameter "text"
    .parameter "confidence"

    .prologue
    const/16 v11, 0xa

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 888
    iput-object p1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->recognitionResult:Ljava/lang/CharSequence;

    .line 889
    iget-object v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->prompt:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v5, v10}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 890
    iget-object v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    if-eqz v5, :cond_0

    .line 891
    iget-object v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    invoke-virtual {v5, v9}, Lcom/google/glass/voice/StreamingTextView;->setVisibility(I)V

    .line 892
    iget-object v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    invoke-virtual {p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->cleanRecognitionResults(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/glass/voice/StreamingTextView;->setFinalRecognizedText(Ljava/lang/CharSequence;)V

    .line 895
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->showProgressOnRecognitionResult()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 896
    iget-object v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v5}, Lcom/google/glass/widget/SliderView;->startIndeterminate()V

    .line 904
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->startTime:J

    sub-long v3, v5, v7

    .line 905
    .local v3, timeToRecognitionTotal:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->endOfSpeechTime:J

    sub-long v1, v5, v7

    .line 909
    .local v1, timeToRecognitionFromEndOfSpeech:J
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->shouldPlayVoiceResultSound()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-wide v5, Lcom/google/glass/voice/BaseVoiceInputActivity;->MIN_PLAY_VOICE_RESULT_SOUND_THRESHOLD_MILLIS:J

    cmp-long v5, v1, v5

    if-lez v5, :cond_1

    .line 911
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v5

    sget-object v6, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_RESULT:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v5, v6}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 916
    :cond_1
    const-string v5, "id"

    iget-wide v6, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->startTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/16 v7, 0xc

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "confidence"

    aput-object v8, v7, v9

    const/4 v8, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "network"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-direct {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getNetworkTypeForLogging()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "time_total"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string v9, "time_from_eos"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const-string v8, "type"

    aput-object v8, v7, v10

    const/16 v8, 0x9

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getType()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const-string v8, "trigger"

    aput-object v8, v7, v11

    const/16 v8, 0xb

    iget v9, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->triggerMethod:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 924
    .local v0, eventTuple:Ljava/lang/String;
    sget-object v5, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_RECOGNITION:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {p0, v5, v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->logUserEvent(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 927
    monitor-enter p0

    .line 928
    :try_start_0
    iget v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->recognitionResultsCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->recognitionResultsCount:I

    .line 929
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 931
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/glass/voice/BaseVoiceInputActivity;->onRecognitionResult(Ljava/lang/String;)V

    .line 932
    return-void

    .line 900
    .end local v0           #eventTuple:Ljava/lang/String;
    .end local v1           #timeToRecognitionFromEndOfSpeech:J
    .end local v3           #timeToRecognitionTotal:J
    :cond_2
    iget-object v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v5, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 901
    iget-object v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v5}, Lcom/google/glass/widget/SliderView;->stopIndeterminate()V

    goto/16 :goto_0

    .line 929
    .restart local v0       #eventTuple:Ljava/lang/String;
    .restart local v1       #timeToRecognitionFromEndOfSpeech:J
    .restart local v3       #timeToRecognitionTotal:J
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method private dispatchOnSoundSearchResult(Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)V
    .locals 0
    .parameter "earsResponse"

    .prologue
    .line 953
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->onSoundSearchResult(Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)V

    .line 954
    return-void
.end method

.method private dispatchSetSpeechLevelSource(Lcom/google/glass/voice/network/ISpeechLevelSource;)V
    .locals 2
    .parameter "speechLevelSource"

    .prologue
    .line 816
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->audioView:Lcom/google/glass/voice/AudioInputRelativeLayout;

    new-instance v1, Lcom/google/glass/voice/BaseVoiceInputActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity$6;-><init>(Lcom/google/glass/voice/BaseVoiceInputActivity;Lcom/google/glass/voice/network/ISpeechLevelSource;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/AudioInputRelativeLayout;->setSpeechLevelSource(Lcom/google/glass/voice/network/SpeechLevelSource;)V

    .line 828
    return-void
.end method

.method private dispatchShowDone()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 779
    iget-object v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->audioView:Lcom/google/glass/voice/AudioInputRelativeLayout;

    invoke-virtual {v3}, Lcom/google/glass/voice/AudioInputRelativeLayout;->showNotListening()V

    .line 782
    iget-boolean v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->hasSearchResponse:Z

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->isSearchResponseExpected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 783
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->isMessageShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 784
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Error to display, but error already on screen"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 809
    :goto_0
    return-void

    .line 787
    :cond_0
    iget-object v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v3}, Lcom/google/glass/widget/SliderView;->stopIndeterminate()V

    .line 788
    iget-object v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 791
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->startTime:J

    sub-long v1, v3, v5

    .line 792
    .local v1, timeToError:J
    const-string v3, "id"

    iget-wide v4, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->startTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "query"

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->recognitionResult:Ljava/lang/CharSequence;

    aput-object v6, v5, v8

    const/4 v6, 0x2

    const-string v7, "time"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "type"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "trigger"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    iget v7, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->triggerMethod:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 798
    .local v0, eventTuple:Ljava/lang/String;
    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_NO_ANSWER:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {p0, v3, v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->logUserEvent(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 800
    new-instance v3, Lcom/google/glass/app/GlassError;

    invoke-direct {v3}, Lcom/google/glass/app/GlassError;-><init>()V

    sget v4, Lcom/google/glass/voiceclient/R$string;->voice_search_no_answer:I

    invoke-virtual {v3, v4}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v3

    sget v4, Lcom/google/glass/voiceclient/R$drawable;->ic_cloud_sad_big:I

    invoke-virtual {v3, v4}, Lcom/google/glass/app/GlassError;->setIconId(I)Lcom/google/glass/app/GlassError;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/google/glass/app/GlassError;->setAutoHide(Z)Lcom/google/glass/app/GlassError;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/google/glass/app/GlassError;->show(Lcom/google/glass/app/GlassActivity;)V

    goto :goto_0

    .line 807
    .end local v0           #eventTuple:Ljava/lang/String;
    .end local v1           #timeToError:J
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->showDone()V

    goto :goto_0
.end method

.method private dispatchShowListening()V
    .locals 11

    .prologue
    const-wide/16 v9, -0x1

    const/16 v5, 0x8

    const/4 v8, 0x0

    .line 607
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 608
    .local v1, listeningStartTimeMillis:J
    iget-object v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 609
    iget-object v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v3}, Lcom/google/glass/widget/SliderView;->stopIndeterminate()V

    .line 610
    iget-object v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    if-eqz v3, :cond_0

    .line 611
    iget-object v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    invoke-virtual {v3, v5}, Lcom/google/glass/voice/StreamingTextView;->setVisibility(I)V

    .line 613
    :cond_0
    iget-object v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->prompt:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getPromptText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    iget-object v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->audioView:Lcom/google/glass/voice/AudioInputRelativeLayout;

    invoke-virtual {v3}, Lcom/google/glass/voice/AudioInputRelativeLayout;->getVisibility()I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 619
    iget-object v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->prompt:Lcom/google/glass/widget/TypophileTextView;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/google/glass/voice/BaseVoiceInputActivity;->animateIn(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 620
    iget-object v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->audioView:Lcom/google/glass/voice/AudioInputRelativeLayout;

    new-instance v4, Lcom/google/glass/voice/BaseVoiceInputActivity$5;

    invoke-direct {v4, p0}, Lcom/google/glass/voice/BaseVoiceInputActivity$5;-><init>(Lcom/google/glass/voice/BaseVoiceInputActivity;)V

    invoke-direct {p0, v3, v4}, Lcom/google/glass/voice/BaseVoiceInputActivity;->animateIn(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 634
    :goto_0
    iget-wide v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->triggerTimeMillis:J

    cmp-long v3, v3, v9

    if-eqz v3, :cond_4

    .line 635
    const-string v3, "l"

    iget-wide v4, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->triggerTimeMillis:J

    sub-long v4, v1, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "m"

    aput-object v6, v5, v8

    const/4 v6, 0x1

    iget v7, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->triggerMethod:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 638
    .local v0, eventTuple:Ljava/lang/String;
    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->START_LISTENING_DELAY:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {p0, v3, v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->logUserEvent(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 641
    iput v8, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->triggerMethod:I

    .line 642
    iput-wide v9, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->triggerTimeMillis:J

    .line 647
    .end local v0           #eventTuple:Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    if-eqz v3, :cond_1

    .line 648
    iget-object v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    invoke-virtual {v3}, Lcom/google/glass/voice/StreamingTextView;->reset()V

    .line 650
    :cond_1
    return-void

    .line 629
    :cond_2
    iget-object v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->prompt:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v3}, Lcom/google/glass/widget/TypophileTextView;->getVisibility()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 630
    iget-object v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->prompt:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v3, v8}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 632
    :cond_3
    iget-object v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->audioView:Lcom/google/glass/voice/AudioInputRelativeLayout;

    invoke-virtual {v3}, Lcom/google/glass/voice/AudioInputRelativeLayout;->showListening()V

    goto :goto_0

    .line 644
    :cond_4
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "We have no idea when the trigger method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->triggerMethod:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was initiated."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private dispatchShowMusicDetected()V
    .locals 0

    .prologue
    .line 771
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->onMusicDetected()V

    .line 772
    return-void
.end method

.method private dispatchShowNoSpeechDetected()V
    .locals 0

    .prologue
    .line 740
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->onNoSpeechDetected()V

    .line 741
    return-void
.end method

.method private dispatchShowRecognizing()V
    .locals 0

    .prologue
    .line 706
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->onRecognizing()V

    .line 707
    return-void
.end method

.method private dispatchShowRecording()V
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->audioView:Lcom/google/glass/voice/AudioInputRelativeLayout;

    invoke-virtual {v0}, Lcom/google/glass/voice/AudioInputRelativeLayout;->showRecording()V

    .line 700
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    invoke-virtual {v0}, Lcom/google/glass/voice/StreamingTextView;->reset()V

    .line 703
    :cond_0
    return-void
.end method

.method private dispatchUpdateRecognizedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 11
    .parameter "stableText"
    .parameter "pendingText"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 831
    iput-boolean v10, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->hasRecognitionResults:Z

    .line 833
    if-nez p1, :cond_0

    if-eqz p2, :cond_2

    .line 834
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->cleanRecognitionResults(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 835
    .local v2, stableCleaned:Ljava/lang/CharSequence;
    invoke-virtual {p0, p2}, Lcom/google/glass/voice/BaseVoiceInputActivity;->cleanRecognitionResults(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 837
    .local v1, pendingCleaned:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->prompt:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v5}, Lcom/google/glass/widget/TypophileTextView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 873
    .end local v1           #pendingCleaned:Ljava/lang/CharSequence;
    .end local v2           #stableCleaned:Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 846
    .restart local v1       #pendingCleaned:Ljava/lang/CharSequence;
    .restart local v2       #stableCleaned:Ljava/lang/CharSequence;
    :cond_1
    iget-object v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->prompt:Lcom/google/glass/widget/TypophileTextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 847
    iget-object v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    if-eqz v5, :cond_2

    .line 848
    iget-object v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    invoke-virtual {v5, v9}, Lcom/google/glass/voice/StreamingTextView;->setVisibility(I)V

    .line 849
    iget-object v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    invoke-virtual {v5, v2, v1}, Lcom/google/glass/voice/StreamingTextView;->updateRecognizedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 854
    .end local v1           #pendingCleaned:Ljava/lang/CharSequence;
    .end local v2           #stableCleaned:Ljava/lang/CharSequence;
    :cond_2
    iget-boolean v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->logFirstRecognizedText:Z

    if-eqz v5, :cond_3

    .line 855
    iput-boolean v9, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->logFirstRecognizedText:Z

    .line 857
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->startTime:J

    sub-long v3, v5, v7

    .line 858
    .local v3, timeToFirstRecognition:J
    const-string v5, "id"

    iget-wide v6, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->startTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "time"

    aput-object v8, v7, v9

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x2

    const-string v9, "type"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getType()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "trigger"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget v9, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->triggerMethod:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 863
    .local v0, eventTuple:Ljava/lang/String;
    sget-object v5, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_FIRST_RECOGNITION:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {p0, v5, v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->logUserEvent(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 868
    .end local v0           #eventTuple:Ljava/lang/String;
    .end local v3           #timeToFirstRecognition:J
    :cond_3
    monitor-enter p0

    .line 869
    :try_start_0
    iget v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->recognitionUpdatesCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->recognitionUpdatesCount:I

    .line 870
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 872
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->onUpdateRecognizedText()V

    goto :goto_0

    .line 870
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method private getErrorOnConfirmRunnable(Lcom/google/glass/voice/network/SpeechException;)Ljava/lang/Runnable;
    .locals 2
    .parameter "e"

    .prologue
    .line 1077
    invoke-virtual {p1}, Lcom/google/glass/voice/network/SpeechException;->getType()Lcom/google/glass/voice/network/SpeechException$Type;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/SpeechException$Type;->NO_MATCH:Lcom/google/glass/voice/network/SpeechException$Type;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/SpeechException$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/glass/voice/network/SpeechException;->getType()Lcom/google/glass/voice/network/SpeechException$Type;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/SpeechException$Type;->AUDIO_RECOGNIZE:Lcom/google/glass/voice/network/SpeechException$Type;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/SpeechException$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1079
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->speakAgainRunnable:Ljava/lang/Runnable;

    .line 1081
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/google/glass/util/SettingsHelper;->getGoToSettingsRunnable(Landroid/content/Context;)Ljava/lang/Runnable;

    move-result-object v0

    goto :goto_0
.end method

.method private getNetworkTypeForLogging()I
    .locals 3

    .prologue
    .line 1021
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1023
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1024
    .local v1, netInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static final getResultDuration(Ljava/lang/String;)J
    .locals 10
    .parameter "recognitionResult"

    .prologue
    .line 1244
    const-wide/16 v0, 0x7d0

    const-wide v2, 0x40a7700000000000L

    const-wide/high16 v4, 0x3ff0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    int-to-double v6, v6

    const-wide v8, 0x4061800000000000L

    div-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private logError(Lcom/google/glass/voice/network/SpeechException;)V
    .locals 8
    .parameter "exception"

    .prologue
    .line 1029
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->startTime:J

    sub-long v1, v3, v5

    .line 1030
    .local v1, timeToError:J
    const-string v3, "id"

    iget-wide v4, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->startTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v5, 0xc

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "error"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/google/glass/voice/network/SpeechException;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "detail"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {p1}, Lcom/google/glass/voice/network/SpeechException;->getDetail()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "network"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    invoke-direct {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getNetworkTypeForLogging()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "time"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "type"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string v7, "trigger"

    aput-object v7, v5, v6

    const/16 v6, 0xb

    iget v7, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->triggerMethod:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1038
    .local v0, eventTuple:Ljava/lang/String;
    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_ERROR:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {p0, v3, v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->logUserEvent(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 1039
    return-void
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 553
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->audioView:Lcom/google/glass/voice/AudioInputRelativeLayout;

    invoke-virtual {v0}, Lcom/google/glass/voice/AudioInputRelativeLayout;->showNotListening()V

    .line 554
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 555
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->stopIndeterminate()V

    .line 558
    iput-boolean v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->isRetry:Z

    .line 559
    iput-boolean v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->hasSearchResponse:Z

    .line 560
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->recognitionResult:Ljava/lang/CharSequence;

    .line 561
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->logFirstRecognizedText:Z

    .line 562
    return-void
.end method

.method private updateKeepScreenOn(I)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1133
    sparse-switch p1, :sswitch_data_0

    .line 1145
    :goto_0
    return-void

    .line 1136
    :sswitch_0
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    goto :goto_0

    .line 1142
    :sswitch_1
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    goto :goto_0

    .line 1133
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3 -> :sswitch_1
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method private updatePowerHelper(I)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1119
    packed-switch p1, :pswitch_data_0

    .line 1130
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1125
    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    if-eqz v0, :cond_0

    .line 1126
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->userActivity()V

    goto :goto_0

    .line 1119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected cleanRecognitionResults(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "results"

    .prologue
    .line 1156
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->shouldNormalizeHashtags()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1158
    invoke-static {p1}, Lcom/google/glass/voice/VoiceUtils;->normalizeHashtags(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1161
    .end local p1
    :cond_0
    return-object p1
.end method

.method protected getAudioInputViewResId()I
    .locals 1

    .prologue
    .line 407
    sget v0, Lcom/google/glass/voiceclient/R$id;->microphone_container:I

    return v0
.end method

.method protected getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getErrorIconId(Lcom/google/glass/voice/network/SpeechException;)I
    .locals 2
    .parameter "e"

    .prologue
    .line 1069
    invoke-virtual {p1}, Lcom/google/glass/voice/network/SpeechException;->getType()Lcom/google/glass/voice/network/SpeechException$Type;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/SpeechException$Type;->AUDIO_RECOGNIZE:Lcom/google/glass/voice/network/SpeechException$Type;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/SpeechException$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1070
    sget v0, Lcom/google/glass/voiceclient/R$drawable;->ic_exclamation_big:I

    .line 1072
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/google/glass/voiceclient/R$drawable;->ic_cloud_sad_big:I

    goto :goto_0
.end method

.method protected getErrorMessageId(Lcom/google/glass/voice/network/SpeechException;)I
    .locals 2
    .parameter "e"

    .prologue
    .line 1047
    invoke-virtual {p1}, Lcom/google/glass/voice/network/SpeechException;->getType()Lcom/google/glass/voice/network/SpeechException$Type;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/SpeechException$Type;->NETWORK_RECOGNIZE:Lcom/google/glass/voice/network/SpeechException$Type;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/SpeechException$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1048
    sget v0, Lcom/google/glass/voiceclient/R$string;->voice_input_network_error:I

    .line 1055
    :goto_0
    return v0

    .line 1049
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/voice/network/SpeechException;->getType()Lcom/google/glass/voice/network/SpeechException$Type;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/SpeechException$Type;->NO_MATCH:Lcom/google/glass/voice/network/SpeechException$Type;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/SpeechException$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1050
    sget v0, Lcom/google/glass/voiceclient/R$string;->voice_input_no_match:I

    goto :goto_0

    .line 1051
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/voice/network/SpeechException;->getType()Lcom/google/glass/voice/network/SpeechException$Type;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/SpeechException$Type;->AUDIO_RECOGNIZE:Lcom/google/glass/voice/network/SpeechException$Type;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/SpeechException$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1052
    sget v0, Lcom/google/glass/voiceclient/R$string;->voice_input_audio_error:I

    goto :goto_0

    .line 1055
    :cond_2
    sget v0, Lcom/google/glass/voiceclient/R$string;->voice_input_server_error:I

    goto :goto_0
.end method

.method protected getFinalSelectedCommandText()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 683
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getFinalSelectedCommandTextResId()I

    move-result v0

    .line 684
    .local v0, resId:I
    if-nez v0, :cond_0

    .line 685
    const/4 v1, 0x0

    .line 687
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method protected getFinalSelectedCommandTextResId()I
    .locals 1

    .prologue
    .line 1228
    const/4 v0, 0x0

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method protected getPromptText()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 653
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getSpeakNowPromptResId()I

    move-result v0

    .line 654
    .local v0, resId:I
    if-nez v0, :cond_0

    .line 655
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Must provide prompt text or ID."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 658
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized getRecognitionResultsCount()I
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 979
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->recognitionResultsCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRecognitionUpdatesCount()I
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 988
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->recognitionUpdatesCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getRecognizedTextLineCount()I
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    invoke-virtual {v0}, Lcom/google/glass/voice/StreamingTextView;->getLineCount()I

    move-result v0

    .line 883
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getSecondaryErrorMessageId(Lcom/google/glass/voice/network/SpeechException;)I
    .locals 2
    .parameter "e"

    .prologue
    .line 1060
    invoke-virtual {p1}, Lcom/google/glass/voice/network/SpeechException;->getType()Lcom/google/glass/voice/network/SpeechException$Type;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/SpeechException$Type;->NO_MATCH:Lcom/google/glass/voice/network/SpeechException$Type;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/SpeechException$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/glass/voice/network/SpeechException;->getType()Lcom/google/glass/voice/network/SpeechException$Type;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/SpeechException$Type;->AUDIO_RECOGNIZE:Lcom/google/glass/voice/network/SpeechException$Type;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/SpeechException$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1062
    :cond_0
    sget v0, Lcom/google/glass/voiceclient/R$string;->error_tap_speak_again:I

    .line 1064
    :goto_0
    return v0

    :cond_1
    sget v0, Lcom/google/glass/voiceclient/R$string;->error_tap_connection_settings:I

    goto :goto_0
.end method

.method protected getSelectedCommandText()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 670
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getSelectedCommandTextResId()I

    move-result v0

    .line 671
    .local v0, resId:I
    if-nez v0, :cond_0

    .line 672
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Must provide input type text or ID."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 674
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method protected getSelectedCommandTextResId()I
    .locals 1

    .prologue
    .line 1221
    const/4 v0, 0x0

    return v0
.end method

.method protected getSpeakNowPromptResId()I
    .locals 1

    .prologue
    .line 1212
    const/4 v0, 0x0

    return v0
.end method

.method protected getStartSound()Lcom/google/glass/sound/SoundManager$SoundId;
    .locals 1

    .prologue
    .line 695
    sget-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_PENDING:Lcom/google/glass/sound/SoundManager$SoundId;

    return-object v0
.end method

.method protected abstract getType()I
.end method

.method public getVoiceInputCallback()Lcom/google/glass/voice/network/IVoiceInputCallback;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 970
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->voiceInputCallback:Lcom/google/glass/voice/network/IVoiceInputCallback;

    return-object v0
.end method

.method protected isRetry()Z
    .locals 1

    .prologue
    .line 1043
    iget-boolean v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->isRetry:Z

    return v0
.end method

.method protected isSearchResponseExpected()Z
    .locals 1

    .prologue
    .line 1175
    const/4 v0, 0x0

    return v0
.end method

.method protected logSearchStarted(I)V
    .locals 6
    .parameter "trigger"

    .prologue
    .line 438
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->startTime:J

    .line 442
    const-string v1, "id"

    iget-wide v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->startTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "type"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "trigger"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, eventTuple:Ljava/lang/String;
    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_STARTED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->logUserEvent(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method protected onActionResponse([B)V
    .locals 0
    .parameter "response"

    .prologue
    .line 966
    return-void
.end method

.method public onConfirm()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 567
    iget-object v4, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->audioView:Lcom/google/glass/voice/AudioInputRelativeLayout;

    invoke-virtual {v4}, Lcom/google/glass/voice/AudioInputRelativeLayout;->getState()Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    move-result-object v4

    sget-object v5, Lcom/google/glass/voice/AudioInputRelativeLayout$State;->NOT_LISTENING:Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    if-ne v4, v5, :cond_1

    .line 568
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v3

    sget-object v4, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v3, v4}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 580
    :cond_0
    :goto_0
    return v2

    .line 574
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->startTime:J

    sub-long v0, v4, v6

    .line 575
    .local v0, timeSinceStart:J
    const-wide/16 v4, 0x3e8

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 576
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Manually endpointed after %d ms"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 577
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->endpointNetworkRecognizer()V

    move v2, v3

    .line 578
    goto :goto_0
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 6
    .parameter "dismissAction"

    .prologue
    .line 587
    const-string v1, "id"

    iget-wide v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->startTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "type"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "trigger"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->triggerMethod:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 591
    .local v0, eventTuple:Ljava/lang/String;
    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_DISMISS:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->logUserEvent(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 593
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassVoiceActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    move-result v1

    return v1
.end method

.method protected onError(Lcom/google/glass/voice/network/SpeechException;)V
    .locals 5
    .parameter "exception"

    .prologue
    const/4 v2, 0x1

    .line 996
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->isMessageShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 997
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Received error while already showing error on screen: %s"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/glass/voice/network/SpeechException;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1017
    :goto_0
    return-void

    .line 1002
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->logError(Lcom/google/glass/voice/network/SpeechException;)V

    .line 1004
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->audioView:Lcom/google/glass/voice/AudioInputRelativeLayout;

    invoke-virtual {v0}, Lcom/google/glass/voice/AudioInputRelativeLayout;->showNotListening()V

    .line 1005
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->audioView:Lcom/google/glass/voice/AudioInputRelativeLayout;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->animateOut(Landroid/view/View;)V

    .line 1006
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->prompt:Lcom/google/glass/widget/TypophileTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 1007
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1008
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->stopIndeterminate()V

    .line 1010
    new-instance v0, Lcom/google/glass/app/GlassError;

    invoke-direct {v0}, Lcom/google/glass/app/GlassError;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getErrorMessageId(Lcom/google/glass/voice/network/SpeechException;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getSecondaryErrorMessageId(Lcom/google/glass/voice/network/SpeechException;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setSecondaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getErrorIconId(Lcom/google/glass/voice/network/SpeechException;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setIconId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getErrorOnConfirmRunnable(Lcom/google/glass/voice/network/SpeechException;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setOnConfirmRunnable(Ljava/lang/Runnable;)Lcom/google/glass/app/GlassError;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/app/GlassError;->show(Lcom/google/glass/app/GlassActivity;)V

    goto :goto_0
.end method

.method protected onHtmlAnswerCardResult(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0
    .parameter "htmlResponse"
    .parameter "recognitionResult"
    .parameter "startTime"
    .parameter "endOfSpeechTime"

    .prologue
    .line 950
    return-void
.end method

.method protected onMusicDetected()V
    .locals 0

    .prologue
    .line 776
    return-void
.end method

.method protected onNoSpeechDetected()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 744
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->isMessageShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 745
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "No-speech error to display, but error already on screen"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 768
    :goto_0
    return-void

    .line 749
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->audioView:Lcom/google/glass/voice/AudioInputRelativeLayout;

    invoke-virtual {v1}, Lcom/google/glass/voice/AudioInputRelativeLayout;->showNotListening()V

    .line 750
    iget-object v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v1}, Lcom/google/glass/widget/SliderView;->stopIndeterminate()V

    .line 751
    iget-object v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 754
    const-string v1, "id"

    iget-wide v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->startTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "recognition"

    aput-object v4, v3, v5

    iget-boolean v4, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->hasRecognitionResults:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string v5, "type"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "trigger"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->triggerMethod:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 759
    .local v0, eventTuple:Ljava/lang/String;
    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_NO_SPEECH_DETECTED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->logUserEvent(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 761
    new-instance v1, Lcom/google/glass/app/GlassError;

    invoke-direct {v1}, Lcom/google/glass/app/GlassError;-><init>()V

    sget v2, Lcom/google/glass/voiceclient/R$string;->error_no_speech_detected:I

    invoke-virtual {v1, v2}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v1

    sget v2, Lcom/google/glass/voiceclient/R$string;->error_tap_speak_again:I

    invoke-virtual {v1, v2}, Lcom/google/glass/app/GlassError;->setSecondaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v1

    sget v2, Lcom/google/glass/voiceclient/R$drawable;->ic_exclamation_big:I

    invoke-virtual {v1, v2}, Lcom/google/glass/app/GlassError;->setIconId(I)Lcom/google/glass/app/GlassError;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->speakAgainRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/google/glass/app/GlassError;->setOnConfirmRunnable(Ljava/lang/Runnable;)Lcom/google/glass/app/GlassError;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/app/GlassError;->show(Lcom/google/glass/app/GlassActivity;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->detachVoiceInputCallback()V

    .line 535
    invoke-super {p0}, Lcom/google/glass/app/GlassVoiceActivity;->onPause()V

    .line 536
    return-void
.end method

.method protected onRecognitionResult(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 936
    return-void
.end method

.method protected onRecognizing()V
    .locals 8

    .prologue
    .line 711
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->endOfSpeechTime:J

    .line 713
    iget-object v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->audioView:Lcom/google/glass/voice/AudioInputRelativeLayout;

    invoke-virtual {v3}, Lcom/google/glass/voice/AudioInputRelativeLayout;->showNotListening()V

    .line 714
    iget-object v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->audioView:Lcom/google/glass/voice/AudioInputRelativeLayout;

    invoke-direct {p0, v3}, Lcom/google/glass/voice/BaseVoiceInputActivity;->animateOut(Landroid/view/View;)V

    .line 715
    iget-object v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->prompt:Lcom/google/glass/widget/TypophileTextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 716
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v3

    sget-object v4, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_COMPLETED:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v3, v4}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 722
    iget-object v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/16 v4, 0xa

    const-wide/16 v5, 0xfa

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 726
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->startTime:J

    sub-long v1, v3, v5

    .line 727
    .local v1, timeToEndOfSpeech:J
    const-string v3, "id"

    iget-wide v4, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->startTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "time"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "type"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "trigger"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    iget v7, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->triggerMethod:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 732
    .local v0, eventTuple:Ljava/lang/String;
    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_END_OF_SPEECH:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {p0, v3, v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->logUserEvent(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 733
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 451
    invoke-super {p0}, Lcom/google/glass/app/GlassVoiceActivity;->onResume()V

    .line 453
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->onResumeActions()V

    .line 454
    return-void
.end method

.method protected onResumeActions()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 457
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getCurrentView()Landroid/view/View;

    move-result-object v1

    .line 458
    .local v1, content:Landroid/view/View;
    sget v6, Lcom/google/glass/voiceclient/R$id;->initial_selected_voice_command_text:I

    invoke-virtual {p0, v6}, Lcom/google/glass/voice/BaseVoiceInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/glass/widget/TypophileTextView;

    .line 460
    .local v4, initialSelectedCommandTextView:Lcom/google/glass/widget/TypophileTextView;
    sget v6, Lcom/google/glass/voiceclient/R$id;->final_selected_voice_command_text:I

    invoke-virtual {p0, v6}, Lcom/google/glass/voice/BaseVoiceInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/glass/widget/TypophileTextView;

    .line 462
    .local v3, finalSelectedCommandTextView:Lcom/google/glass/widget/TypophileTextView;
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getAudioInputViewResId()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/glass/voice/AudioInputRelativeLayout;

    iput-object v6, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->audioView:Lcom/google/glass/voice/AudioInputRelativeLayout;

    .line 463
    sget v6, Lcom/google/glass/voiceclient/R$id;->voice_input_guard_phrase:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/glass/widget/TypophileTextView;

    iput-object v6, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->guardPhrase:Lcom/google/glass/widget/TypophileTextView;

    .line 464
    sget v6, Lcom/google/glass/voiceclient/R$id;->voice_input_prompt:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/glass/widget/TypophileTextView;

    iput-object v6, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->prompt:Lcom/google/glass/widget/TypophileTextView;

    .line 465
    sget v6, Lcom/google/glass/voiceclient/R$id;->streaming_text:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/glass/voice/StreamingTextView;

    iput-object v6, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    .line 466
    sget v6, Lcom/google/glass/voiceclient/R$id;->progress_slider:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/glass/widget/SliderView;

    iput-object v6, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    .line 469
    invoke-direct {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->reset()V

    .line 471
    iget-object v6, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->guardPhrase:Lcom/google/glass/widget/TypophileTextView;

    if-eqz v6, :cond_0

    .line 472
    iget-object v8, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->guardPhrase:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->shouldShowGuardPhrase()Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v7

    :goto_0
    invoke-virtual {v8, v6}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 476
    :cond_0
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 477
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 478
    .local v5, netInfo:Landroid/net/NetworkInfo;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-nez v6, :cond_3

    .line 479
    :cond_1
    iget-object v6, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->audioView:Lcom/google/glass/voice/AudioInputRelativeLayout;

    invoke-virtual {v6}, Lcom/google/glass/voice/AudioInputRelativeLayout;->showNotListening()V

    .line 482
    new-instance v6, Lcom/google/glass/voice/network/SpeechException;

    const/4 v7, 0x0

    const-string v8, "AbortNoConnectivity"

    const-string v9, ""

    invoke-direct {v6, v7, v8, v9}, Lcom/google/glass/voice/network/SpeechException;-><init>(Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/google/glass/voice/BaseVoiceInputActivity;->logError(Lcom/google/glass/voice/network/SpeechException;)V

    .line 483
    new-instance v6, Lcom/google/glass/app/GlassError;

    invoke-direct {v6}, Lcom/google/glass/app/GlassError;-><init>()V

    sget v7, Lcom/google/glass/voiceclient/R$string;->voice_network_connectivity:I

    invoke-virtual {v6, v7}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v6

    sget v7, Lcom/google/glass/voiceclient/R$string;->error_tap_connection_settings:I

    invoke-virtual {v6, v7}, Lcom/google/glass/app/GlassError;->setSecondaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v6

    sget v7, Lcom/google/glass/voiceclient/R$drawable;->ic_cloud_sad_big:I

    invoke-virtual {v6, v7}, Lcom/google/glass/app/GlassError;->setIconId(I)Lcom/google/glass/app/GlassError;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v6

    sget-object v7, Lcom/google/glass/app/GlassError$OnConfirmAction;->GO_TO_SETTINGS:Lcom/google/glass/app/GlassError$OnConfirmAction;

    invoke-virtual {v6, v7}, Lcom/google/glass/app/GlassError;->setOnConfirmAction(Lcom/google/glass/app/GlassError$OnConfirmAction;)Lcom/google/glass/app/GlassError;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/google/glass/app/GlassError;->show(Lcom/google/glass/app/GlassActivity;)V

    .line 523
    :goto_1
    return-void

    .line 472
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v5           #netInfo:Landroid/net/NetworkInfo;
    :cond_2
    const/16 v6, 0x8

    goto :goto_0

    .line 496
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    .restart local v5       #netInfo:Landroid/net/NetworkInfo;
    :cond_3
    if-eqz v4, :cond_4

    .line 497
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getFinalSelectedCommandText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 498
    .local v2, finalSelectedCommandText:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 499
    invoke-virtual {v3, v2}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    const/high16 v6, 0x3f80

    invoke-virtual {v3, v6}, Lcom/google/glass/widget/TypophileTextView;->setAlpha(F)V

    .line 501
    invoke-virtual {v3, v7}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 507
    invoke-virtual {v4}, Lcom/google/glass/widget/TypophileTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v7, 0xc8

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/google/glass/voice/BaseVoiceInputActivity$4;

    invoke-direct {v7, p0, v4}, Lcom/google/glass/voice/BaseVoiceInputActivity$4;-><init>(Lcom/google/glass/voice/BaseVoiceInputActivity;Lcom/google/glass/widget/TypophileTextView;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 522
    .end local v2           #finalSelectedCommandText:Ljava/lang/CharSequence;
    :cond_4
    :goto_2
    new-instance v6, Lcom/google/glass/util/PowerHelper;

    invoke-direct {v6, p0}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    goto :goto_1

    .line 518
    .restart local v2       #finalSelectedCommandText:Ljava/lang/CharSequence;
    :cond_5
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getSelectedCommandText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method protected onSoundSearchResult(Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)V
    .locals 0
    .parameter "earsResponse"

    .prologue
    .line 958
    return-void
.end method

.method protected onStart()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    .line 412
    invoke-super {p0}, Lcom/google/glass/app/GlassVoiceActivity;->onStart()V

    .line 417
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 418
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    const-string v1, "should_play_initial_sound"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getStartSound()Lcom/google/glass/sound/SoundManager$SoundId;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 422
    :cond_0
    if-eqz v0, :cond_1

    .line 423
    const-string v1, "trigger_method"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->triggerMethod:I

    .line 425
    const-string v1, "trigger_time"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->triggerTimeMillis:J

    .line 434
    :goto_0
    iget v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->triggerMethod:I

    invoke-virtual {p0, v1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->logSearchStarted(I)V

    .line 435
    return-void

    .line 428
    :cond_1
    iput v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->triggerMethod:I

    .line 429
    iput-wide v4, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->triggerTimeMillis:J

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->finish()V

    .line 549
    invoke-super {p0}, Lcom/google/glass/app/GlassVoiceActivity;->onStop()V

    .line 550
    return-void
.end method

.method protected onUpdateRecognizedText()V
    .locals 0

    .prologue
    .line 877
    return-void
.end method

.method public onVoiceServiceConnected()V
    .locals 1

    .prologue
    .line 598
    invoke-super {p0}, Lcom/google/glass/app/GlassVoiceActivity;->onVoiceServiceConnected()V

    .line 603
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->voiceInputCallback:Lcom/google/glass/voice/network/IVoiceInputCallback;

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->attachVoiceInputCallback(Lcom/google/glass/voice/network/IVoiceInputCallback;)V

    .line 604
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 398
    sget v0, Lcom/google/glass/voiceclient/R$layout;->voice_input_view:I

    return v0
.end method

.method public setRetryVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 1200
    iput-object p1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->retryVoiceConfig:Lcom/google/glass/voice/VoiceConfig;

    .line 1201
    return-void
.end method

.method protected shouldNormalizeHashtags()Z
    .locals 1

    .prologue
    .line 1170
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldPlayVoiceResultSound()Z
    .locals 1

    .prologue
    .line 1186
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldShowGuardPhrase()Z
    .locals 1

    .prologue
    .line 662
    const/4 v0, 0x1

    return v0
.end method

.method protected showDone()V
    .locals 0

    .prologue
    .line 813
    return-void
.end method

.method public showError(Lcom/google/glass/widget/MessageDialog;)V
    .locals 0
    .parameter "errorDialog"

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->detachVoiceInputCallback()V

    .line 541
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassVoiceActivity;->showError(Lcom/google/glass/widget/MessageDialog;)V

    .line 542
    return-void
.end method

.method protected showNoSpeechDetected()V
    .locals 2

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1234
    return-void
.end method

.method protected showProgressOnRecognitionResult()Z
    .locals 1

    .prologue
    .line 736
    const/4 v0, 0x1

    return v0
.end method
