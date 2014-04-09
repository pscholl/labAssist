.class Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;
.super Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;
.source "RecognizerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/network/RecognizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalGrecoListener"
.end annotation


# instance fields
.field private combinedRecognitionResult:Ljava/lang/CharSequence;

.field private gwsHeader:Ljava/lang/StringBuilder;

.field private pinholePage:Lcom/google/glass/voice/network/PinholePage;

.field private recognitionCompleteReceived:Z

.field private final recognizedText:Lcom/google/android/speech/utils/RecognizedText;

.field volatile sendingThroughGws:Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/glass/voice/network/RecognizerController;

.field private final voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;


# direct methods
.method public constructor <init>(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/glass/voice/network/VoiceInputCallback;)V
    .locals 1
    .parameter
    .parameter "voiceInputCallback"

    .prologue
    .line 366
    iput-object p1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-direct {p0}, Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;-><init>()V

    .line 343
    new-instance v0, Lcom/google/android/speech/utils/RecognizedText;

    invoke-direct {v0}, Lcom/google/android/speech/utils/RecognizedText;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->recognizedText:Lcom/google/android/speech/utils/RecognizedText;

    .line 357
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->sendingThroughGws:Z

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->gwsHeader:Ljava/lang/StringBuilder;

    .line 367
    iput-object p2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    .line 368
    return-void
.end method

.method static synthetic access$1100(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;)Lcom/google/glass/voice/network/VoiceInputCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 341
    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->handleActionResults(Ljava/lang/String;)V

    return-void
.end method

.method private addGwsHeader(Ljava/lang/String;Z)V
    .locals 11
    .parameter "fragment"
    .parameter "complete"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 637
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->gwsHeader:Ljava/lang/StringBuilder;

    if-nez v8, :cond_1

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    iget-object v8, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->gwsHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    if-eqz p2, :cond_0

    .line 642
    iget-object v8, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->gwsHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 643
    .local v3, headers:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 644
    .local v5, status:Lorg/apache/http/StatusLine;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 645
    .local v0, cookieList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v8, v3

    if-ge v4, v8, :cond_4

    .line 646
    aget-object v2, v3, v4

    .line 647
    .local v2, headerString:Ljava/lang/String;
    if-nez v4, :cond_3

    .line 649
    new-instance v8, Lorg/apache/http/message/BasicLineParser;

    invoke-direct {v8}, Lorg/apache/http/message/BasicLineParser;-><init>()V

    invoke-static {v2, v8}, Lorg/apache/http/message/BasicLineParser;->parseStatusLine(Ljava/lang/String;Lorg/apache/http/message/LineParser;)Lorg/apache/http/StatusLine;

    move-result-object v5

    .line 645
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 650
    :cond_3
    const-string v8, "Set-Cookie:"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 651
    const/16 v8, 0xb

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 654
    .end local v2           #headerString:Ljava/lang/String;
    :cond_4
    if-eqz v5, :cond_5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_5

    .line 656
    iget-object v6, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->cookies:Lcom/google/glass/voice/network/Cookies;
    invoke-static {v6}, Lcom/google/glass/voice/network/RecognizerController;->access$900(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/network/Cookies;

    move-result-object v6

    new-instance v7, Lcom/google/glass/voice/network/SearchQueryBuilder;

    invoke-direct {v7}, Lcom/google/glass/voice/network/SearchQueryBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/google/glass/voice/network/SearchQueryBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/google/glass/voice/network/Cookies;->setCookiesFromSetCookieHeaders(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 658
    :cond_5
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v8

    const-string v9, "status is not 200 OK: %s"

    new-array v10, v7, [Ljava/lang/Object;

    aput-object v5, v10, v6

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 662
    invoke-direct {p0}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->useGwsServer()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-boolean v8, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->sendingThroughGws:Z

    if-nez v8, :cond_0

    .line 664
    :cond_6
    const-string v8, "c"

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 665
    .local v1, eventTuple:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;
    invoke-static {v8}, Lcom/google/glass/voice/network/RecognizerController;->access$1000(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v8

    sget-object v9, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_NOT_OK_HTTP_STATUS_RETRYING:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v8, v9, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 667
    iget-object v8, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->combinedRecognitionResult:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    if-eqz v5, :cond_7

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    const/16 v10, 0x191

    if-eq v9, v10, :cond_8

    :cond_7
    move v6, v7

    :cond_8
    invoke-direct {p0, v8, v6}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->sendGwsRequest(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method private handleActionResults(Ljava/lang/String;)V
    .locals 5
    .parameter "actionString"

    .prologue
    .line 616
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 629
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    const/4 v0, 0x0

    .line 621
    .local v0, actionBytes:[B
    const/16 v2, 0x8

    :try_start_0
    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 625
    :goto_1
    if-eqz v0, :cond_0

    array-length v2, v0

    if-eqz v2, :cond_0

    .line 628
    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    invoke-interface {v2, v0}, Lcom/google/glass/voice/network/VoiceInputCallback;->onActionResponse([B)V

    goto :goto_0

    .line 622
    :catch_0
    move-exception v1

    .line 623
    .local v1, iae:Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "unable to base64 decode action string"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private sendGwsRequest(Ljava/lang/String;Z)V
    .locals 9
    .parameter "query"
    .parameter "canUseSignIn"

    .prologue
    const/4 v8, 0x1

    .line 689
    iput-boolean v8, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->sendingThroughGws:Z

    .line 691
    iget-object v3, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->directGwsRequest:Lcom/google/glass/voice/network/DirectGwsRequest;
    invoke-static {v3}, Lcom/google/glass/voice/network/RecognizerController;->access$1300(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/network/DirectGwsRequest;

    move-result-object v3

    new-instance v4, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;

    invoke-direct {v4, p0}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;-><init>(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;)V

    invoke-virtual {v3, p1, p2, v4}, Lcom/google/glass/voice/network/DirectGwsRequest;->sendGwsRequest(Ljava/lang/String;ZLcom/google/glass/voice/network/GwsResponseHandler;)V

    .line 720
    iget-object v3, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/google/glass/voice/network/RecognizerController;->access$1400(Lcom/google/glass/voice/network/RecognizerController;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 722
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 723
    .local v2, netInfo:Landroid/net/NetworkInfo;
    const-string v4, "si"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v7, "network"

    aput-object v7, v6, v3

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v8

    invoke-static {v4, v5, v6}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 726
    .local v1, eventTuple:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;
    invoke-static {v3}, Lcom/google/glass/voice/network/RecognizerController;->access$1000(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v3

    sget-object v4, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_SEND_DIRECT_GWS_REQUEST:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v3, v4, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 728
    return-void

    .line 723
    .end local v1           #eventTuple:Ljava/lang/String;
    :cond_0
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private useGwsServer()Z
    .locals 1

    .prologue
    .line 682
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->SPECIAL_GWS_SERVER:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getRecognitionResult(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)Ljava/lang/String;
    .locals 3
    .parameter "recognitionEvent"

    .prologue
    .line 526
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasResult()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 527
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getResult()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    move-result-object v1

    .line 528
    .local v1, result:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    invoke-virtual {v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->getHypothesisCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 529
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->getHypothesis(I)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    move-result-object v0

    .line 530
    .local v0, hypothesis:Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    invoke-virtual {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasText()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 531
    invoke-virtual {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getText()Ljava/lang/String;

    move-result-object v2

    .line 535
    .end local v0           #hypothesis:Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .end local v1           #result:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onBeginningOfSpeech()V
    .locals 3

    .prologue
    .line 378
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "onBeginningOfSpeech"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 379
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    invoke-interface {v0}, Lcom/google/glass/voice/network/VoiceInputCallback;->showRecording()V

    .line 380
    return-void
.end method

.method public onDone()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 390
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/voice/network/RecognizerController;->access$300(Lcom/google/glass/voice/network/RecognizerController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 391
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "onDone"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    iget-boolean v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->sendingThroughGws:Z

    if-nez v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    invoke-interface {v0}, Lcom/google/glass/voice/network/VoiceInputCallback;->showDone()V

    .line 395
    :cond_0
    iget-boolean v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->recognitionCompleteReceived:Z

    if-nez v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    sget-object v2, Lcom/google/glass/voice/network/SpeechException$Type;->NO_MATCH:Lcom/google/glass/voice/network/SpeechException$Type;

    new-instance v3, Lcom/google/android/speech/exception/NoMatchRecognizeException;

    invoke-direct {v3}, Lcom/google/android/speech/exception/NoMatchRecognizeException;-><init>()V

    #calls: Lcom/google/glass/voice/network/RecognizerController;->getSpeechException(Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/SpeechException;
    invoke-static {v1, v2, v3}, Lcom/google/glass/voice/network/RecognizerController;->access$400(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/SpeechException;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/glass/voice/network/VoiceInputCallback;->onError(Lcom/google/glass/voice/network/SpeechException;)V

    .line 399
    :cond_1
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 3

    .prologue
    .line 384
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "onEndOfSpeech"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    invoke-interface {v0}, Lcom/google/glass/voice/network/VoiceInputCallback;->showRecognizing()V

    .line 386
    return-void
.end method

.method public onError(Lcom/google/android/speech/exception/RecognizeException;)V
    .locals 7
    .parameter "exception"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 410
    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/google/glass/voice/network/RecognizerController;->access$300(Lcom/google/glass/voice/network/RecognizerController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 411
    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #calls: Lcom/google/glass/voice/network/RecognizerController;->getSpeechExceptionType(Lcom/google/android/speech/exception/RecognizeException;)Lcom/google/glass/voice/network/SpeechException$Type;
    invoke-static {v2, p1}, Lcom/google/glass/voice/network/RecognizerController;->access$500(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/android/speech/exception/RecognizeException;)Lcom/google/glass/voice/network/SpeechException$Type;

    move-result-object v1

    .line 412
    .local v1, type:Lcom/google/glass/voice/network/SpeechException$Type;
    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->combinedRecognitionResult:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->voiceConfig:Lcom/google/glass/voice/VoiceConfig;
    invoke-static {v2}, Lcom/google/glass/voice/network/RecognizerController;->access$600(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->voiceConfig:Lcom/google/glass/voice/VoiceConfig;
    invoke-static {v2}, Lcom/google/glass/voice/network/RecognizerController;->access$600(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/voice/VoiceConfig;->isSearch()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/google/glass/voice/network/SpeechException$Type;->NO_MATCH:Lcom/google/glass/voice/network/SpeechException$Type;

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/speech/exception/RecognizeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/speech/exception/RecognizeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Manually timed out"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/speech/exception/RecognizeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed direct gws request"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 423
    :cond_0
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Received onError %s with a final result %s, sending gws request"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    iget-object v5, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->combinedRecognitionResult:Ljava/lang/CharSequence;

    aput-object v5, v4, v6

    invoke-interface {v2, p1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 425
    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->combinedRecognitionResult:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v6}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->sendGwsRequest(Ljava/lang/String;Z)V

    .line 432
    :goto_0
    return-void

    .line 429
    :cond_1
    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->recognizedText:Lcom/google/android/speech/utils/RecognizedText;

    invoke-virtual {v2}, Lcom/google/android/speech/utils/RecognizedText;->getStableForErrorReporting()Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, recognizedText:Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "onError [%s]"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-interface {v2, p1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    iget-object v3, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #calls: Lcom/google/glass/voice/network/RecognizerController;->getSpeechException(Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/SpeechException;
    invoke-static {v3, v1, p1}, Lcom/google/glass/voice/network/RecognizerController;->access$400(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/SpeechException;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/glass/voice/network/VoiceInputCallback;->onError(Lcom/google/glass/voice/network/SpeechException;)V

    goto :goto_0
.end method

.method public onMediaDataResult([B)V
    .locals 5
    .parameter "audio"

    .prologue
    .line 540
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "onMediaDataResult (ignored) - audio length: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    array-length v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 543
    return-void
.end method

.method public onMusicDetected()V
    .locals 3

    .prologue
    .line 608
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Music detected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 609
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    invoke-interface {v0}, Lcom/google/glass/voice/network/VoiceInputCallback;->showMusicDetected()V

    .line 610
    return-void
.end method

.method public onNoSpeechDetected()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 403
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/voice/network/RecognizerController;->access$300(Lcom/google/glass/voice/network/RecognizerController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 404
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "onNoSpeechDetected"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    invoke-interface {v0}, Lcom/google/glass/voice/network/VoiceInputCallback;->showNoSpeechDetected()V

    .line 406
    return-void
.end method

.method public onPinholeResult(Lcom/google/speech/s3/PinholeStream$PinholeOutput;)V
    .locals 6
    .parameter "pinholeOutput"

    .prologue
    const/4 v3, 0x0

    .line 547
    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/google/glass/voice/network/RecognizerController;->access$300(Lcom/google/glass/voice/network/RecognizerController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 549
    invoke-direct {p0}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->useGwsServer()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->sendingThroughGws:Z

    if-eqz v2, :cond_1

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v4, "onPinholeResult"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-interface {v2, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 562
    iget-boolean v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->recognitionCompleteReceived:Z

    if-eqz v2, :cond_6

    .line 566
    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->combinedRecognitionResult:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 567
    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->pinholePage:Lcom/google/glass/voice/network/PinholePage;

    if-nez v2, :cond_2

    .line 568
    new-instance v2, Lcom/google/glass/voice/network/PinholePage;

    invoke-direct {v2}, Lcom/google/glass/voice/network/PinholePage;-><init>()V

    iput-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->pinholePage:Lcom/google/glass/voice/network/PinholePage;

    .line 571
    :cond_2
    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->pinholePage:Lcom/google/glass/voice/network/PinholePage;

    invoke-virtual {v2, p1}, Lcom/google/glass/voice/network/PinholePage;->update(Lcom/google/speech/s3/PinholeStream$PinholeOutput;)V

    .line 572
    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->pinholePage:Lcom/google/glass/voice/network/PinholePage;

    const-string v4, "act0"

    invoke-virtual {v2, v4}, Lcom/google/glass/voice/network/PinholePage;->getPinholeDocumentByType(Ljava/lang/String;)Lcom/google/glass/voice/network/PinholePage$PinholeDocument;

    move-result-object v0

    .line 575
    .local v0, action:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    if-eqz v0, :cond_3

    .line 576
    invoke-virtual {v0}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->handleActionResults(Ljava/lang/String;)V

    .line 579
    :cond_3
    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->pinholePage:Lcom/google/glass/voice/network/PinholePage;

    const-string v4, "ans0"

    invoke-virtual {v2, v4}, Lcom/google/glass/voice/network/PinholePage;->getPinholeDocumentByType(Ljava/lang/String;)Lcom/google/glass/voice/network/PinholePage$PinholeDocument;

    move-result-object v1

    .line 581
    .local v1, doc:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    if-eqz v1, :cond_4

    .line 582
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v4, "Got a doc from the pinhole results."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v2, v4, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 583
    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    invoke-virtual {v1}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/glass/voice/network/VoiceInputCallback;->onHtmlAnswerCardResult(Ljava/lang/String;)V

    .line 584
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->pinholePage:Lcom/google/glass/voice/network/PinholePage;

    .line 588
    :cond_4
    invoke-virtual {p1}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->hasGwsHeaderFragment()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 589
    invoke-virtual {p1}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->getGwsHeaderFragment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->getGwsHeaderComplete()Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->addGwsHeader(Ljava/lang/String;Z)V

    goto :goto_0

    .end local v0           #action:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    .end local v1           #doc:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    :cond_5
    move v2, v3

    .line 566
    goto :goto_1

    .line 594
    :cond_6
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v4, "No recognition result from server."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v2, v4, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 595
    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    iget-object v3, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    sget-object v4, Lcom/google/glass/voice/network/SpeechException$Type;->NO_MATCH:Lcom/google/glass/voice/network/SpeechException$Type;

    new-instance v5, Lcom/google/android/speech/exception/NoMatchRecognizeException;

    invoke-direct {v5}, Lcom/google/android/speech/exception/NoMatchRecognizeException;-><init>()V

    #calls: Lcom/google/glass/voice/network/RecognizerController;->getSpeechException(Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/SpeechException;
    invoke-static {v3, v4, v5}, Lcom/google/glass/voice/network/RecognizerController;->access$400(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/SpeechException;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/glass/voice/network/VoiceInputCallback;->onError(Lcom/google/glass/voice/network/SpeechException;)V

    goto/16 :goto_0
.end method

.method public onReadyForSpeech(FF)V
    .locals 3
    .parameter "noiseLevel"
    .parameter "snr"

    .prologue
    .line 372
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "onReadyForSpeech"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    invoke-interface {v0}, Lcom/google/glass/voice/network/VoiceInputCallback;->showListening()V

    .line 374
    return-void
.end method

.method public onRecognitionResult(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V
    .locals 14
    .parameter "recognitionEvent"

    .prologue
    const/4 v13, 0x3

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 440
    iget-object v9, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->recognizedText:Lcom/google/android/speech/utils/RecognizedText;

    invoke-virtual {v9}, Lcom/google/android/speech/utils/RecognizedText;->hasCompletedRecognition()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 441
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v8

    const-string v9, "Result after completed recognition."

    new-array v10, v5, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getEventType()I

    move-result v9

    if-nez v9, :cond_8

    .line 450
    iget-object v9, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/google/glass/voice/network/RecognizerController;->access$300(Lcom/google/glass/voice/network/RecognizerController;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 451
    iget-object v9, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/google/glass/voice/network/RecognizerController;->access$300(Lcom/google/glass/voice/network/RecognizerController;)Landroid/os/Handler;

    move-result-object v9

    const-wide/16 v10, 0x4e20

    invoke-virtual {v9, v5, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 458
    const-string v6, ""

    .line 459
    .local v6, stablePrefix:Ljava/lang/String;
    const-string v7, ""

    .line 460
    .local v7, unstablePrefix:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getPartialResult()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    move-result-object v4

    .line 461
    .local v4, partial:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getPartCount()I

    move-result v9

    if-ge v2, v9, :cond_3

    .line 462
    invoke-virtual {v4, v2}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getPart(I)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    move-result-object v3

    .line 463
    .local v3, part:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    invoke-virtual {v3}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->getStability()D

    move-result-wide v9

    const-wide v11, 0x3fe999999999999aL

    cmpl-double v9, v9, v11

    if-ltz v9, :cond_2

    .line 464
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 461
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 466
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 470
    .end local v3           #part:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    :cond_3
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v9

    const-string v10, "onRecognitionResult"

    new-array v11, v5, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 471
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$700()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onRecognitionResult("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v9, v10}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    if-nez v9, :cond_4

    .line 475
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->getRecognitionResult(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)Ljava/lang/String;

    move-result-object v6

    .line 477
    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    if-lez v9, :cond_5

    .line 478
    iget-object v9, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    invoke-interface {v9, v6, v7}, Lcom/google/glass/voice/network/VoiceInputCallback;->updateRecognizedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 482
    :cond_5
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    :cond_6
    move v5, v8

    .line 484
    .local v5, partialRecognitionReceived:Z
    :cond_7
    if-eqz v5, :cond_0

    iget-object v8, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->callbackFactory:Lcom/google/glass/voice/network/CallbackFactory;
    invoke-static {v8}, Lcom/google/glass/voice/network/RecognizerController;->access$800(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/network/CallbackFactory;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->callbackFactory:Lcom/google/glass/voice/network/CallbackFactory;
    invoke-static {v8}, Lcom/google/glass/voice/network/RecognizerController;->access$800(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/network/CallbackFactory;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/glass/voice/network/CallbackFactory;->getLastEndpointerEventProcessor()Lcom/google/glass/voice/network/EndpointerEventProcessor;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 486
    iget-object v8, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->callbackFactory:Lcom/google/glass/voice/network/CallbackFactory;
    invoke-static {v8}, Lcom/google/glass/voice/network/RecognizerController;->access$800(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/network/CallbackFactory;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/glass/voice/network/CallbackFactory;->getLastEndpointerEventProcessor()Lcom/google/glass/voice/network/EndpointerEventProcessor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/glass/voice/network/EndpointerEventProcessor;->resetNoSpeechDetectedTimer()V

    goto/16 :goto_0

    .line 488
    .end local v2           #i:I
    .end local v4           #partial:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    .end local v5           #partialRecognitionReceived:Z
    .end local v6           #stablePrefix:Ljava/lang/String;
    .end local v7           #unstablePrefix:Ljava/lang/String;
    :cond_8
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getEventType()I

    move-result v9

    if-ne v9, v8, :cond_0

    .line 490
    iget-object v9, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->handler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/google/glass/voice/network/RecognizerController;->access$300(Lcom/google/glass/voice/network/RecognizerController;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 492
    iget-object v9, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->recognizedText:Lcom/google/android/speech/utils/RecognizedText;

    invoke-virtual {v9, p1}, Lcom/google/android/speech/utils/RecognizedText;->updateFinal(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)Lcom/google/android/speech/alternates/CorrectableString;

    move-result-object v0

    .line 494
    .local v0, combinedResult:Lcom/google/android/speech/alternates/CorrectableString;
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v9

    const-string v10, "onRecognitionResult(combined)"

    new-array v11, v5, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 495
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$700()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onRecognitionResult(combined="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v9, v10}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 500
    iput-boolean v8, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->recognitionCompleteReceived:Z

    .line 501
    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->combinedRecognitionResult:Ljava/lang/CharSequence;

    .line 503
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v9, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->gwsHeader:Ljava/lang/StringBuilder;

    .line 504
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->pinholePage:Lcom/google/glass/voice/network/PinholePage;

    .line 505
    invoke-direct {p0}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->useGwsServer()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 506
    invoke-virtual {v0}, Lcom/google/android/speech/alternates/CorrectableString;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, v8}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->sendGwsRequest(Ljava/lang/String;Z)V

    .line 513
    :cond_9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 514
    iget-object v8, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    iget-object v9, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    sget-object v10, Lcom/google/glass/voice/network/SpeechException$Type;->NO_MATCH:Lcom/google/glass/voice/network/SpeechException$Type;

    new-instance v11, Lcom/google/android/speech/exception/NoMatchRecognizeException;

    invoke-direct {v11}, Lcom/google/android/speech/exception/NoMatchRecognizeException;-><init>()V

    #calls: Lcom/google/glass/voice/network/RecognizerController;->getSpeechException(Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/SpeechException;
    invoke-static {v9, v10, v11}, Lcom/google/glass/voice/network/RecognizerController;->access$400(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/SpeechException;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/google/glass/voice/network/VoiceInputCallback;->onError(Lcom/google/glass/voice/network/SpeechException;)V

    goto/16 :goto_0

    .line 517
    :cond_a
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasCombinedResult()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getCombinedResult()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->getHypothesisCount()I

    move-result v8

    if-lez v8, :cond_b

    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getCombinedResult()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->getHypothesis(I)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getConfidence()F

    move-result v1

    .line 520
    .local v1, confidence:F
    :goto_3
    iget-object v8, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    invoke-interface {v8, v0, v1}, Lcom/google/glass/voice/network/VoiceInputCallback;->onRecognitionResult(Ljava/lang/CharSequence;F)V

    goto/16 :goto_0

    .line 517
    .end local v1           #confidence:F
    :cond_b
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public onSoundSearchResult(Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)V
    .locals 3
    .parameter "earsResponse"

    .prologue
    .line 602
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Sound search result"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 603
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;

    invoke-interface {v0, p1}, Lcom/google/glass/voice/network/VoiceInputCallback;->onSoundSearchResult(Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)V

    .line 604
    return-void
.end method
