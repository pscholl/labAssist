.class public Lcom/google/glass/voice/network/RecognizerController;
.super Ljava/lang/Object;
.source "RecognizerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;
    }
.end annotation


# static fields
.field private static final FAILED_DIRECT_GWS_REQUEST_DESCRIPTION:Ljava/lang/String; = "Failed direct gws request"

.field private static final FORCED_TIMEOUT_MS:J = 0x4e20L

.field private static final MSG_FORCED_END:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final PIPE_SIZE_BYTES:I = 0x0

.field private static final SAVE_RESPONSE:Z = false

.field private static final STABILITY_THRESHOLD:D = 0.8

.field private static final TAG:Ljava/lang/String; = null

.field static final TIMEOUT_EXCEPTION_DESCRIPTION:Ljava/lang/String; = "Manually timed out"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final VERBOSE_LOGGING:Z

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final audioPipe:Lcom/google/glass/util/BytePipe;

.field private final callbackFactory:Lcom/google/glass/voice/network/CallbackFactory;

.field private final context:Landroid/content/Context;

.field private final cookies:Lcom/google/glass/voice/network/Cookies;

.field private directGwsRequest:Lcom/google/glass/voice/network/DirectGwsRequest;

.field private handler:Landroid/os/Handler;

.field private handlerThread:Landroid/os/HandlerThread;

.field queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final recognizer:Lcom/google/android/speech/Recognizer;

.field private final speechLevelSource:Lcom/google/android/speech/SpeechLevelSource;

.field private final speechSettings:Lcom/google/android/speech/SpeechSettings;

.field private userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

.field private voiceConfig:Lcom/google/glass/voice/VoiceConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 75
    const-class v0, Lcom/google/glass/voice/network/RecognizerController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/RecognizerController;->TAG:Ljava/lang/String;

    .line 76
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/RecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 100
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Lcom/google/glass/voice/AudioByteUtils;->getByteLength(J)I

    move-result v0

    sput v0, Lcom/google/glass/voice/network/RecognizerController;->PIPE_SIZE_BYTES:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/speech/Recognizer;Lcom/google/android/speech/SpeechLevelSource;Lcom/google/android/speech/SpeechSettings;Lcom/google/glass/voice/network/Cookies;Landroid/content/Context;Lcom/google/glass/voice/network/CallbackFactory;Lcom/google/glass/location/LocationManagerHelper;)V
    .locals 2
    .parameter "recognizer"
    .parameter "speechLevelSource"
    .parameter "speechSettings"
    .parameter "cookies"
    .parameter "context"
    .parameter "callbackFactory"
    .parameter "locationManagerHelper"

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Lcom/google/glass/util/BytePipe;

    sget v1, Lcom/google/glass/voice/network/RecognizerController;->PIPE_SIZE_BYTES:I

    invoke-direct {v0, v1}, Lcom/google/glass/util/BytePipe;-><init>(I)V

    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->audioPipe:Lcom/google/glass/util/BytePipe;

    .line 146
    iput-object p1, p0, Lcom/google/glass/voice/network/RecognizerController;->recognizer:Lcom/google/android/speech/Recognizer;

    .line 147
    iput-object p2, p0, Lcom/google/glass/voice/network/RecognizerController;->speechLevelSource:Lcom/google/android/speech/SpeechLevelSource;

    .line 148
    iput-object p3, p0, Lcom/google/glass/voice/network/RecognizerController;->speechSettings:Lcom/google/android/speech/SpeechSettings;

    .line 149
    iput-object p4, p0, Lcom/google/glass/voice/network/RecognizerController;->cookies:Lcom/google/glass/voice/network/Cookies;

    .line 150
    new-instance v0, Lcom/google/glass/voice/network/DirectGwsRequest;

    invoke-direct {v0, p5, p7}, Lcom/google/glass/voice/network/DirectGwsRequest;-><init>(Landroid/content/Context;Lcom/google/glass/location/LocationManagerHelper;)V

    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->directGwsRequest:Lcom/google/glass/voice/network/DirectGwsRequest;

    .line 151
    iput-object p6, p0, Lcom/google/glass/voice/network/RecognizerController;->callbackFactory:Lcom/google/glass/voice/network/CallbackFactory;

    .line 152
    invoke-static {p5}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 153
    iput-object p5, p0, Lcom/google/glass/voice/network/RecognizerController;->context:Landroid/content/Context;

    .line 157
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RecognizerController"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->handlerThread:Landroid/os/HandlerThread;

    .line 158
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 159
    new-instance v0, Lcom/google/glass/voice/network/RecognizerController$1;

    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p5}, Lcom/google/glass/voice/network/RecognizerController$1;-><init>(Lcom/google/glass/voice/network/RecognizerController;Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;

    .line 182
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/google/glass/voice/network/RecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/android/speech/Recognizer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->recognizer:Lcom/google/android/speech/Recognizer;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/network/DirectGwsRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->directGwsRequest:Lcom/google/glass/voice/network/DirectGwsRequest;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/glass/voice/network/RecognizerController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/android/speech/SpeechLevelSource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->speechLevelSource:Lcom/google/android/speech/SpeechLevelSource;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/voice/network/RecognizerController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/SpeechException;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/network/RecognizerController;->getSpeechException(Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/SpeechException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/android/speech/exception/RecognizeException;)Lcom/google/glass/voice/network/SpeechException$Type;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/RecognizerController;->getSpeechExceptionType(Lcom/google/android/speech/exception/RecognizeException;)Lcom/google/glass/voice/network/SpeechException$Type;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/VoiceConfig;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->voiceConfig:Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/google/glass/voice/network/RecognizerController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/network/CallbackFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->callbackFactory:Lcom/google/glass/voice/network/CallbackFactory;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/network/Cookies;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->cookies:Lcom/google/glass/voice/network/Cookies;

    return-object v0
.end method

.method private createDispatchingWrapper(Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1
    .parameter "listener"
    .parameter "delegate"

    .prologue
    .line 235
    new-instance v0, Lcom/google/glass/voice/network/ListenerStreamWrapper;

    invoke-direct {v0, p2, p1}, Lcom/google/glass/voice/network/ListenerStreamWrapper;-><init>(Ljava/io/InputStream;Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;)V

    return-object v0
.end method

.method private getDetail(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 3
    .parameter "ex"

    .prologue
    .line 765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 766
    .local v0, b:Ljava/lang/StringBuilder;
    move-object v1, p1

    .line 767
    .local v1, current:Ljava/lang/Throwable;
    :goto_0
    if-eqz v1, :cond_0

    .line 768
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 770
    const-string v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 772
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getGrammarType(Lcom/google/android/speech/params/SessionParams$Mode;)Lcom/google/android/speech/embedded/Greco3Grammar;
    .locals 1
    .parameter "mode"

    .prologue
    .line 273
    const/4 v0, 0x0

    return-object v0
.end method

.method private getGreco3Mode(Lcom/google/android/speech/params/SessionParams$Mode;)Lcom/google/android/speech/embedded/Greco3Mode;
    .locals 1
    .parameter "mode"

    .prologue
    .line 277
    sget-object v0, Lcom/google/android/speech/embedded/Greco3Mode;->ENDPOINTER_VOICESEARCH:Lcom/google/android/speech/embedded/Greco3Mode;

    return-object v0
.end method

.method public static getModeForVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)Lcom/google/android/speech/params/SessionParams$Mode;
    .locals 2
    .parameter "voiceConfig"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getOpenEndedMode()Lcom/google/glass/voice/OpenEndedMode;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/OpenEndedMode;->DICTATION:Lcom/google/glass/voice/OpenEndedMode;

    if-ne v0, v1, :cond_0

    .line 243
    sget-object v0, Lcom/google/android/speech/params/SessionParams$Mode;->SERVICE_API:Lcom/google/android/speech/params/SessionParams$Mode;

    .line 250
    :goto_0
    return-object v0

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getOpenEndedMode()Lcom/google/glass/voice/OpenEndedMode;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/OpenEndedMode;->SOUND_SEARCH:Lcom/google/glass/voice/OpenEndedMode;

    if-ne v0, v1, :cond_1

    .line 246
    sget-object v0, Lcom/google/android/speech/params/SessionParams$Mode;->SOUND_SEARCH:Lcom/google/android/speech/params/SessionParams$Mode;

    goto :goto_0

    .line 250
    :cond_1
    sget-object v0, Lcom/google/android/speech/params/SessionParams$Mode;->VOICE_ACTIONS:Lcom/google/android/speech/params/SessionParams$Mode;

    goto :goto_0
.end method

.method private getSpeechException(Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/SpeechException;
    .locals 3
    .parameter "type"
    .parameter "ex"

    .prologue
    .line 751
    new-instance v0, Lcom/google/glass/voice/network/SpeechException;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/google/glass/voice/network/RecognizerController;->getDetail(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/google/glass/voice/network/SpeechException;-><init>(Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getSpeechExceptionType(Lcom/google/android/speech/exception/RecognizeException;)Lcom/google/glass/voice/network/SpeechException$Type;
    .locals 1
    .parameter "ex"

    .prologue
    .line 735
    instance-of v0, p1, Lcom/google/android/speech/exception/NetworkRecognizeException;

    if-eqz v0, :cond_0

    .line 736
    sget-object v0, Lcom/google/glass/voice/network/SpeechException$Type;->NETWORK_RECOGNIZE:Lcom/google/glass/voice/network/SpeechException$Type;

    .line 745
    :goto_0
    return-object v0

    .line 737
    :cond_0
    instance-of v0, p1, Lcom/google/android/speech/exception/NoMatchRecognizeException;

    if-eqz v0, :cond_1

    .line 738
    sget-object v0, Lcom/google/glass/voice/network/SpeechException$Type;->NO_MATCH:Lcom/google/glass/voice/network/SpeechException$Type;

    goto :goto_0

    .line 739
    :cond_1
    instance-of v0, p1, Lcom/google/android/speech/exception/AudioRecognizeException;

    if-eqz v0, :cond_2

    .line 740
    sget-object v0, Lcom/google/glass/voice/network/SpeechException$Type;->AUDIO_RECOGNIZE:Lcom/google/glass/voice/network/SpeechException$Type;

    goto :goto_0

    .line 745
    :cond_2
    sget-object v0, Lcom/google/glass/voice/network/SpeechException$Type;->SERVER:Lcom/google/glass/voice/network/SpeechException$Type;

    goto :goto_0
.end method

.method private maybeStopSavingAudio()V
    .locals 2

    .prologue
    .line 333
    invoke-static {}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getContainer()Lcom/google/glass/voice/network/VoiceSearchContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getAudioInputStreamFactory()Lcom/google/glass/voice/network/AudioInputStreamFactoryImpl;

    move-result-object v0

    .line 335
    .local v0, audioInputStreamFactory:Lcom/google/glass/voice/network/AudioInputStreamFactoryImpl;
    instance-of v1, v0, Lcom/google/glass/voice/network/AudioSavingInputStreamFactoryImpl;

    if-eqz v1, :cond_0

    .line 336
    check-cast v0, Lcom/google/glass/voice/network/AudioSavingInputStreamFactoryImpl;

    .end local v0           #audioInputStreamFactory:Lcom/google/glass/voice/network/AudioInputStreamFactoryImpl;
    invoke-virtual {v0}, Lcom/google/glass/voice/network/AudioSavingInputStreamFactoryImpl;->finishRecording()V

    .line 338
    :cond_0
    return-void
.end method


# virtual methods
.method public attachVoiceInputCallback(Lcom/google/glass/voice/network/VoiceInputCallback;)Z
    .locals 4
    .parameter "voiceInputCallback"

    .prologue
    const/4 v0, 0x0

    .line 282
    sget-object v1, Lcom/google/glass/voice/network/RecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "attachVoiceInputCallback"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    if-eqz v1, :cond_0

    .line 284
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    new-instance v1, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;-><init>(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/glass/voice/network/VoiceInputCallback;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->setListener(Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;)V

    .line 285
    new-instance v0, Lcom/google/glass/voice/network/RecognizerController$2;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/network/RecognizerController$2;-><init>(Lcom/google/glass/voice/network/RecognizerController;)V

    invoke-interface {p1, v0}, Lcom/google/glass/voice/network/VoiceInputCallback;->setSpeechLevelSource(Lcom/google/glass/voice/network/SpeechLevelSource;)V

    .line 292
    const/4 v0, 0x1

    .line 295
    :goto_0
    return v0

    .line 294
    :cond_0
    sget-object v1, Lcom/google/glass/voice/network/RecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "queueingGrecoListener was null in attachVoiceInputCallback"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public cancel()V
    .locals 3

    .prologue
    .line 317
    sget-object v0, Lcom/google/glass/voice/network/RecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "cancel"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->recognizer:Lcom/google/android/speech/Recognizer;

    invoke-interface {v0}, Lcom/google/android/speech/Recognizer;->cancel()V

    .line 319
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->audioPipe:Lcom/google/glass/util/BytePipe;

    invoke-virtual {v0}, Lcom/google/glass/util/BytePipe;->clear()V

    .line 320
    invoke-direct {p0}, Lcom/google/glass/voice/network/RecognizerController;->maybeStopSavingAudio()V

    .line 322
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->setCanceled()V

    .line 325
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    .line 326
    return-void
.end method

.method public detachVoiceInputCallback()V
    .locals 3

    .prologue
    .line 300
    sget-object v0, Lcom/google/glass/voice/network/RecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "detachVoiceInputCallback"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->setCanceled()V

    .line 304
    :cond_0
    return-void
.end method

.method public getSessionParamsBuilder(Lcom/google/android/speech/params/SessionParams$Mode;)Lcom/google/android/speech/params/SessionParams$Builder;
    .locals 6
    .parameter "mode"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 256
    new-instance v0, Lcom/google/android/speech/params/AudioInputParams$Builder;

    invoke-direct {v0}, Lcom/google/android/speech/params/AudioInputParams$Builder;-><init>()V

    .line 257
    .local v0, audioBuilder:Lcom/google/android/speech/params/AudioInputParams$Builder;
    invoke-virtual {v0, v4}, Lcom/google/android/speech/params/AudioInputParams$Builder;->setPlayBeepEnabled(Z)Lcom/google/android/speech/params/AudioInputParams$Builder;

    .line 259
    new-instance v1, Lcom/google/android/speech/params/SessionParams$Builder;

    invoke-direct {v1}, Lcom/google/android/speech/params/SessionParams$Builder;-><init>()V

    .line 260
    .local v1, builder:Lcom/google/android/speech/params/SessionParams$Builder;
    const-string v2, "en-US"

    invoke-virtual {v1, v2}, Lcom/google/android/speech/params/SessionParams$Builder;->setSpokenBcp47Locale(Ljava/lang/String;)Lcom/google/android/speech/params/SessionParams$Builder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/RecognizerController;->getGrammarType(Lcom/google/android/speech/params/SessionParams$Mode;)Lcom/google/android/speech/embedded/Greco3Grammar;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/speech/params/SessionParams$Builder;->setGreco3Grammar(Lcom/google/android/speech/embedded/Greco3Grammar;)Lcom/google/android/speech/params/SessionParams$Builder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/RecognizerController;->getGreco3Mode(Lcom/google/android/speech/params/SessionParams$Mode;)Lcom/google/android/speech/embedded/Greco3Mode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/speech/params/SessionParams$Builder;->setGreco3Mode(Lcom/google/android/speech/embedded/Greco3Mode;)Lcom/google/android/speech/params/SessionParams$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/voice/network/RecognizerController;->speechSettings:Lcom/google/android/speech/SpeechSettings;

    invoke-interface {v3}, Lcom/google/android/speech/SpeechSettings;->isProfanityFilterEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/speech/params/SessionParams$Builder;->setProfanityFilterEnabled(Z)Lcom/google/android/speech/params/SessionParams$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/google/android/speech/params/SessionParams$Builder;->setPartialResultsEnabled(Z)Lcom/google/android/speech/params/SessionParams$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/speech/params/SessionParams$Builder;->setRecordedAudio(Z)Lcom/google/android/speech/params/SessionParams$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/speech/params/SessionParams$Builder;->setMode(Lcom/google/android/speech/params/SessionParams$Mode;)Lcom/google/android/speech/params/SessionParams$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/speech/params/AudioInputParams$Builder;->build()Lcom/google/android/speech/params/AudioInputParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/speech/params/SessionParams$Builder;->setAudioInputParams(Lcom/google/android/speech/params/AudioInputParams;)Lcom/google/android/speech/params/SessionParams$Builder;

    .line 268
    invoke-virtual {v1, v5}, Lcom/google/android/speech/params/SessionParams$Builder;->setNoSpeechDetectedEnabled(Z)Lcom/google/android/speech/params/SessionParams$Builder;

    .line 269
    return-object v1
.end method

.method setDirectGwsRequestForTest(Lcom/google/glass/voice/network/DirectGwsRequest;)V
    .locals 0
    .parameter "dgr"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 777
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 778
    iput-object p1, p0, Lcom/google/glass/voice/network/RecognizerController;->directGwsRequest:Lcom/google/glass/voice/network/DirectGwsRequest;

    .line 779
    return-void
.end method

.method setUserEventHelperForTest(Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 0
    .parameter "ueh"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 783
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 784
    iput-object p1, p0, Lcom/google/glass/voice/network/RecognizerController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 785
    return-void
.end method

.method public startListening(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;)V
    .locals 9
    .parameter "voiceConfig"
    .parameter "listener"

    .prologue
    const/4 v8, 0x0

    .line 195
    iput-object p1, p0, Lcom/google/glass/voice/network/RecognizerController;->voiceConfig:Lcom/google/glass/voice/VoiceConfig;

    .line 196
    invoke-static {}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getContainer()Lcom/google/glass/voice/network/VoiceSearchContainer;

    move-result-object v2

    .line 197
    .local v2, vc:Lcom/google/glass/voice/network/VoiceSearchContainer;
    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceConfig;->getOpenEndedMode()Lcom/google/glass/voice/OpenEndedMode;

    move-result-object v3

    sget-object v4, Lcom/google/glass/voice/OpenEndedMode;->SOUND_SEARCH:Lcom/google/glass/voice/OpenEndedMode;

    if-ne v3, v4, :cond_0

    .line 199
    invoke-virtual {v2}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getAudioInputStreamFactory()Lcom/google/glass/voice/network/AudioInputStreamFactoryImpl;

    move-result-object v3

    new-instance v4, Lcom/google/glass/voice/network/ListenerStreamWrapper;

    iget-object v5, p0, Lcom/google/glass/voice/network/RecognizerController;->audioPipe:Lcom/google/glass/util/BytePipe;

    invoke-direct {v4, v5, p2}, Lcom/google/glass/voice/network/ListenerStreamWrapper;-><init>(Ljava/io/InputStream;Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;)V

    invoke-virtual {v3, v4}, Lcom/google/glass/voice/network/AudioInputStreamFactoryImpl;->setInputStream(Ljava/io/InputStream;)V

    .line 214
    :goto_0
    sget-object v3, Lcom/google/glass/voice/network/RecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "startListening"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    new-instance v3, Lcom/google/glass/voice/network/QueueingGrecoListener;

    invoke-direct {v3}, Lcom/google/glass/voice/network/QueueingGrecoListener;-><init>()V

    iput-object v3, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    .line 217
    invoke-static {p1}, Lcom/google/glass/voice/network/RecognizerController;->getModeForVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)Lcom/google/android/speech/params/SessionParams$Mode;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/glass/voice/network/RecognizerController;->getSessionParamsBuilder(Lcom/google/android/speech/params/SessionParams$Mode;)Lcom/google/android/speech/params/SessionParams$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/speech/params/SessionParams$Builder;->build()Lcom/google/android/speech/params/SessionParams;

    move-result-object v1

    .line 219
    .local v1, sessionParams:Lcom/google/android/speech/params/SessionParams;
    invoke-virtual {v1}, Lcom/google/android/speech/params/SessionParams;->getAudioInputParams()Lcom/google/android/speech/params/AudioInputParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/speech/params/AudioInputParams;->shouldStoreCompleteAudio()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 222
    .local v0, futureAudio:Lcom/google/common/util/concurrent/SettableFuture;,"Lcom/google/common/util/concurrent/SettableFuture<[B>;"
    :goto_1
    iget-object v3, p0, Lcom/google/glass/voice/network/RecognizerController;->recognizer:Lcom/google/android/speech/Recognizer;

    iget-object v4, p0, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    invoke-static {}, Lcom/google/glass/util/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    invoke-interface {v3, v1, v4, v5, v0}, Lcom/google/android/speech/Recognizer;->startListening(Lcom/google/android/speech/params/SessionParams;Lcom/google/android/speech/listeners/RecognitionEventListener;Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/SettableFuture;)V

    .line 225
    iget-object v3, p0, Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 226
    iget-object v3, p0, Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 231
    return-void

    .line 210
    .end local v0           #futureAudio:Lcom/google/common/util/concurrent/SettableFuture;,"Lcom/google/common/util/concurrent/SettableFuture<[B>;"
    .end local v1           #sessionParams:Lcom/google/android/speech/params/SessionParams;
    :cond_0
    invoke-virtual {v2}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getAudioInputStreamFactory()Lcom/google/glass/voice/network/AudioInputStreamFactoryImpl;

    move-result-object v3

    new-instance v4, Lcom/google/glass/voice/ResampleInputStream;

    iget-object v5, p0, Lcom/google/glass/voice/network/RecognizerController;->audioPipe:Lcom/google/glass/util/BytePipe;

    const/16 v6, 0x3e80

    const/16 v7, 0x1f40

    invoke-direct {v4, p2, v5, v6, v7}, Lcom/google/glass/voice/ResampleInputStream;-><init>(Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;Ljava/io/InputStream;II)V

    invoke-virtual {v3, v4}, Lcom/google/glass/voice/network/AudioInputStreamFactoryImpl;->setInputStream(Ljava/io/InputStream;)V

    goto :goto_0

    .line 219
    .restart local v1       #sessionParams:Lcom/google/android/speech/params/SessionParams;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public stopListening()V
    .locals 3

    .prologue
    .line 308
    sget-object v0, Lcom/google/glass/voice/network/RecognizerController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "stopListening"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->recognizer:Lcom/google/android/speech/Recognizer;

    invoke-interface {v0}, Lcom/google/android/speech/Recognizer;->stopListening()V

    .line 310
    return-void
.end method

.method public declared-synchronized writeAudio(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController;->audioPipe:Lcom/google/glass/util/BytePipe;

    invoke-virtual {v0, p1}, Lcom/google/glass/util/BytePipe;->write(Ljava/nio/ByteBuffer;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    monitor-exit p0

    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
