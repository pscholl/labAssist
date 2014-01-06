.class public Lcom/google/glass/voice/VoiceAnnotationActivity;
.super Lcom/google/glass/voice/BaseVoiceInputActivity;
.source "VoiceAnnotationActivity.java"


# static fields
.field private static final ANIMATE_UP_DURATION_MILLIS:J = 0xdcL

.field private static final BUNDLE_MAX_SIZE_BYTES:I = 0x100000

.field static final CANCEL_TIP_FADE_ANIMATION_DURATION_MILLIS:J = 0x1f4L

.field private static final INTENT_MODE_RECOGNIZER_INTENT:I = 0x0

.field private static final INTENT_MODE_VOICE_ANNOTATION_HELPER:I = 0x1

.field private static final MSG_CONFIRM_ANNOTATION:I = 0x0

.field private static final PROGRESS_SLIDER_COMMIT_ANNOTATION_MS:J = 0x3e8L

.field private static final TOP_MARGIN:I = 0x28

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private audioOutputStream:Ljava/io/ByteArrayOutputStream;

.field private cancelTip:Lcom/google/glass/widget/TypophileTextView;

.field private final handler:Landroid/os/Handler;

.field private isRecognitionResultExpanded:Z

.field private recognitionResult:Ljava/lang/String;

.field private recordAudio:Z

.field private replyToId:Ljava/lang/String;

.field private showAddingDialog:Z

.field private showGuardPhrase:Z

.field private sliderView:Lcom/google/glass/widget/SliderView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceAnnotationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;-><init>()V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->showGuardPhrase:Z

    .line 89
    iput-boolean v1, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->isRecognitionResultExpanded:Z

    .line 94
    iput-boolean v1, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->showAddingDialog:Z

    .line 107
    new-instance v0, Lcom/google/glass/voice/VoiceAnnotationActivity$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/VoiceAnnotationActivity$1;-><init>(Lcom/google/glass/voice/VoiceAnnotationActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/VoiceAnnotationActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->confirmAnnotation()V

    return-void
.end method

.method private attachResult(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3
    .parameter "extrasBundle"
    .parameter "result"

    .prologue
    .line 453
    const-string v0, "android.speech.extra.RESULTS"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 455
    return-void
.end method

.method private callingActivityHasRecordAudioPermission()Z
    .locals 4

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 240
    .local v0, permissionStatus:I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private confirmAnnotation()V
    .locals 4

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 342
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->recognitionResult:Ljava/lang/String;

    .line 343
    .local v0, textToReturn:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 344
    sget-object v1, Lcom/google/glass/voice/VoiceAnnotationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Empty annotation returned. Finishing..."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->finish()V

    .line 360
    .end local v0           #textToReturn:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 349
    .restart local v0       #textToReturn:Ljava/lang/String;
    :cond_1
    iget-boolean v1, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->showAddingDialog:Z

    if-eqz v1, :cond_2

    .line 350
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->showAddingDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 351
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/glass/voice/VoiceAnnotationActivity;->shouldShowCommitSlider(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 352
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->showCommitSlider(Ljava/lang/String;)V

    goto :goto_0

    .line 354
    :cond_3
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 355
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->onAnnotationCommitted(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    goto :goto_0
.end method

.method private getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 475
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getForwardExtras()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private getIntentMode()I
    .locals 2

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    const/4 v0, 0x0

    .line 227
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getPendingIntent()Landroid/app/PendingIntent;
    .locals 2

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    return-object v0
.end method

.method private hasPendingIntent()Z
    .locals 2

    .prologue
    .line 467
    const-string v0, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    const/4 v0, 0x1

    .line 471
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasVoiceTrigger()Z
    .locals 2

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "trigger"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private launchPendingIntent(Ljava/lang/String;)V
    .locals 7
    .parameter "recognitionResult"

    .prologue
    const/4 v6, 0x0

    .line 437
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v3

    .line 438
    .local v3, pendingIntent:Landroid/app/PendingIntent;
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getForwardExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 439
    .local v2, forwardExtras:Landroid/os/Bundle;
    if-nez v2, :cond_0

    .line 440
    new-instance v2, Landroid/os/Bundle;

    .end local v2           #forwardExtras:Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 442
    .restart local v2       #forwardExtras:Landroid/os/Bundle;
    :cond_0
    invoke-direct {p0, v2, p1}, Lcom/google/glass/voice/VoiceAnnotationActivity;->attachResult(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 444
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v4, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 446
    .local v1, fillIn:Landroid/content/Intent;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, p0, v4, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :goto_0
    return-void

    .line 447
    :catch_0
    move-exception v0

    .line 448
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Pending intent canceled, cannot forward"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private launchVoiceTrigger(Ljava/lang/String;)V
    .locals 4
    .parameter "recognitionResult"

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "trigger"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/glass/app/VoiceTrigger;

    .line 431
    .local v1, trigger:Lcom/google/android/glass/app/VoiceTrigger;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 432
    .local v0, bundle:Landroid/os/Bundle;
    invoke-direct {p0, v0, p1}, Lcom/google/glass/voice/VoiceAnnotationActivity;->attachResult(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 433
    invoke-virtual {v1, p0, v0}, Lcom/google/android/glass/app/VoiceTrigger;->activate(Landroid/content/Context;Landroid/os/Bundle;)Z

    .line 434
    return-void
.end method

.method private recordAudioData([BII)V
    .locals 1
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->audioOutputStream:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->audioOutputStream:Ljava/io/ByteArrayOutputStream;

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->audioOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 318
    return-void
.end method

.method private resetRecording()V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->audioOutputStream:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 322
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->audioOutputStream:Ljava/io/ByteArrayOutputStream;

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->audioOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 325
    return-void
.end method

.method private showCancelTip()V
    .locals 3

    .prologue
    .line 547
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->cancelTip:Lcom/google/glass/widget/TypophileTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setAlpha(F)V

    .line 548
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->cancelTip:Lcom/google/glass/widget/TypophileTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 549
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->cancelTip:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v0}, Lcom/google/glass/widget/TypophileTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 550
    return-void
.end method


# virtual methods
.method getCustomPromptText(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .parameter "intent"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getIntentMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 150
    const-string v0, "android.speech.extra.PROMPT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "prompt_msg"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 543
    sget-object v0, Lcom/google/glass/voice/VoiceAnnotationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method protected getPromptText()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 499
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/google/glass/voice/VoiceAnnotationActivity;->shouldShowPrompt(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 500
    const-string v0, ""

    .line 509
    :cond_0
    :goto_0
    return-object v0

    .line 503
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getCustomPromptText(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, customPrompt:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 509
    invoke-super {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getPromptText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method protected getSelectedCommandText()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 529
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "header_msg"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, customHeader:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 533
    .end local v0           #customHeader:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #customHeader:Ljava/lang/String;
    :cond_0
    invoke-super {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getSelectedCommandText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method protected getSelectedCommandTextResId()I
    .locals 1

    .prologue
    .line 524
    sget v0, Lcom/google/glass/voice/R$string;->voice_menu_item_add_caption:I

    return v0
.end method

.method protected getSpeakNowPromptResId()I
    .locals 1

    .prologue
    .line 519
    sget v0, Lcom/google/glass/voice/R$string;->voice_annotation_speak_your_message:I

    return v0
.end method

.method protected getType()I
    .locals 1

    .prologue
    .line 488
    const/4 v0, 0x5

    return v0
.end method

.method onAnnotationCommitted(Ljava/lang/String;)V
    .locals 3
    .parameter "recognitionResult"

    .prologue
    .line 411
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->hasVoiceTrigger()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 412
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceAnnotationActivity;->launchVoiceTrigger(Ljava/lang/String;)V

    .line 421
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->finish()V

    .line 422
    return-void

    .line 413
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->hasPendingIntent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 414
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceAnnotationActivity;->launchPendingIntent(Ljava/lang/String;)V

    goto :goto_0

    .line 416
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 417
    .local v1, intent:Landroid/content/Intent;
    iget-boolean v2, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->recordAudio:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->audioOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 418
    .local v0, audioData:[B
    :goto_1
    invoke-virtual {p0, v1, p1, v0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->setResultExtras(Landroid/content/Intent;Ljava/lang/String;[B)V

    .line 419
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/google/glass/voice/VoiceAnnotationActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 417
    .end local v0           #audioData:[B
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onConfirm()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 331
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getVoiceConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 333
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 334
    const/4 v0, 0x1

    .line 336
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->onConfirm()Z

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 122
    invoke-super {p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 127
    .local v0, intent:Landroid/content/Intent;
    sget v1, Lcom/google/glass/voice/R$id;->header:I

    invoke-virtual {p0, v1}, Lcom/google/glass/voice/VoiceAnnotationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->shouldHideHeader(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    const-string v1, "hide_guard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->showGuardPhrase:Z

    .line 133
    sget v1, Lcom/google/glass/voice/R$id;->cancel_tip:I

    invoke-virtual {p0, v1}, Lcom/google/glass/voice/VoiceAnnotationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    iput-object v1, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->cancelTip:Lcom/google/glass/widget/TypophileTextView;

    .line 134
    sget v1, Lcom/google/glass/voice/R$id;->progress_slider:I

    invoke-virtual {p0, v1}, Lcom/google/glass/voice/VoiceAnnotationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/SliderView;

    iput-object v1, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->sliderView:Lcom/google/glass/widget/SliderView;

    .line 136
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->wantAudioData(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->callingActivityHasRecordAudioPermission()Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_2
    iput-boolean v3, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->recordAudio:Z

    .line 139
    const-string v1, "reply_to_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    const-string v1, "reply_to_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->replyToId:Ljava/lang/String;

    .line 143
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->shouldShowAddingDialog(Landroid/content/Intent;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->showAddingDialog:Z

    .line 144
    sget-object v1, Lcom/google/glass/voice/VoiceAnnotationActivity;->DICTATION:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {p0, v1}, Lcom/google/glass/voice/VoiceAnnotationActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 145
    sget-object v1, Lcom/google/glass/voice/VoiceAnnotationActivity;->DICTATION:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {p0, v1}, Lcom/google/glass/voice/VoiceAnnotationActivity;->setRetryVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 146
    return-void

    :cond_1
    move v1, v2

    .line 127
    goto :goto_0

    :cond_2
    move v1, v2

    .line 130
    goto :goto_1

    :cond_3
    move v3, v2

    .line 136
    goto :goto_2
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 4
    .parameter "dismissAction"

    .prologue
    const/4 v3, 0x0

    .line 254
    sget-object v0, Lcom/google/glass/voice/VoiceAnnotationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onDismiss"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 256
    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->VOICE_MESSAGE_DISMISS:Lcom/google/glass/userevent/UserEventAction;

    const-string v1, "t"

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/voice/VoiceAnnotationActivity;->logUserEvent(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 258
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->sliderView:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->stopProgress()V

    .line 259
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->detachVoiceInputCallback()V

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->recognitionResult:Ljava/lang/String;

    .line 261
    invoke-virtual {p0, v3}, Lcom/google/glass/voice/VoiceAnnotationActivity;->setResult(I)V

    .line 262
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->finish()V

    .line 263
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 245
    invoke-super {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->onPause()V

    .line 247
    iget-boolean v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->recordAudio:Z

    if-eqz v0, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->resetRecording()V

    .line 250
    :cond_0
    return-void
.end method

.method protected onRecognitionResult(Ljava/lang/String;)V
    .locals 6
    .parameter "recognitionResult"

    .prologue
    const/4 v5, 0x0

    .line 290
    iget-object v2, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->recognitionResult:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 291
    sget-object v2, Lcom/google/glass/voice/VoiceAnnotationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "PROBLEM: Recognition result was already set!"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/VoiceAnnotationActivity;->cleanRecognitionResults(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 294
    iput-object p1, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->recognitionResult:Ljava/lang/String;

    .line 295
    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {p0, v2}, Lcom/google/glass/voice/VoiceAnnotationActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 297
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->showCancelTip()V

    .line 299
    invoke-static {p1}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getResultDuration(Ljava/lang/String;)J

    move-result-wide v0

    .line 300
    .local v0, showResultDuration:J
    iget-object v2, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 301
    return-void
.end method

.method public onResampledAudioData([BII)Z
    .locals 1
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->recordAudio:Z

    if-nez v0, :cond_0

    .line 306
    const/4 v0, 0x0

    .line 310
    :goto_0
    return v0

    .line 309
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/voice/VoiceAnnotationActivity;->recordAudioData([BII)V

    .line 310
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onUpdateRecognizedText()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xdc

    const/4 v3, 0x1

    .line 275
    iget-boolean v2, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->isRecognitionResultExpanded:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getRecognizedTextLineCount()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 276
    iput-boolean v3, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->isRecognitionResultExpanded:Z

    .line 278
    sget v2, Lcom/google/glass/voice/R$id;->streaming_text:I

    invoke-virtual {p0, v2}, Lcom/google/glass/voice/VoiceAnnotationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/StreamingTextView;

    .line 279
    .local v1, streamingTextView:Lcom/google/glass/voice/StreamingTextView;
    invoke-virtual {v1}, Lcom/google/glass/voice/StreamingTextView;->getY()F

    move-result v2

    const/high16 v3, 0x4220

    sub-float v0, v2, v3

    .line 281
    .local v0, moveUpBy:F
    sget v2, Lcom/google/glass/voice/R$id;->header:I

    invoke-virtual {p0, v2}, Lcom/google/glass/voice/VoiceAnnotationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    neg-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 283
    invoke-virtual {v1}, Lcom/google/glass/voice/StreamingTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    neg-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 286
    .end local v0           #moveUpBy:F
    .end local v1           #streamingTextView:Lcom/google/glass/voice/StreamingTextView;
    :cond_0
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 483
    sget v0, Lcom/google/glass/voice/R$layout;->voice_input_view:I

    return v0
.end method

.method setResultExtras(Landroid/content/Intent;Ljava/lang/String;[B)V
    .locals 5
    .parameter "intent"
    .parameter "recognitionResult"
    .parameter "audioBytes"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 203
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getIntentMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 204
    const-string v0, "android.speech.extra.RESULTS"

    new-array v1, v2, [Ljava/lang/String;

    aput-object p2, v1, v4

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    const-string v0, "annotation_result"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    if-eqz p3, :cond_2

    .line 210
    array-length v0, p3

    const/high16 v1, 0x10

    if-ge v0, v1, :cond_3

    .line 211
    const-string v0, "audio_data"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 217
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->replyToId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    const-string v0, "reply_to_id"

    iget-object v1, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->replyToId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 213
    :cond_3
    sget-object v0, Lcom/google/glass/voice/VoiceAnnotationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Audio data too large to fit in Intent; byte length: %d"

    new-array v2, v2, [Ljava/lang/Object;

    array-length v3, p3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method shouldHideHeader(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 185
    const-string v2, "hide_header"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    :cond_0
    :goto_0
    return v0

    .line 190
    :cond_1
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getIntentMode()I

    move-result v2

    if-ne v2, v0, :cond_2

    move v0, v1

    .line 191
    goto :goto_0

    .line 195
    :cond_2
    const-string v2, "header_msg"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 196
    goto :goto_0
.end method

.method protected shouldPlayVoiceResultSound()Z
    .locals 1

    .prologue
    .line 538
    const/4 v0, 0x1

    return v0
.end method

.method public shouldProvideAudioData()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->recordAudio:Z

    return v0
.end method

.method shouldShowAddingDialog(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 165
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getIntentMode()I

    move-result v1

    if-nez v1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "hide_adding_dialog"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method shouldShowCommitSlider(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    const/4 v0, 0x1

    .line 173
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getIntentMode()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldShowGuardPhrase()Z
    .locals 1

    .prologue
    .line 493
    iget-boolean v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->showGuardPhrase:Z

    return v0
.end method

.method shouldShowPrompt(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 157
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getIntentMode()I

    move-result v2

    if-nez v2, :cond_1

    .line 160
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "hide_prompt"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public showAddingDialog(Ljava/lang/String;)V
    .locals 3
    .parameter "textToReturn"

    .prologue
    .line 390
    new-instance v1, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    sget v2, Lcom/google/glass/voice/R$string;->voice_annotation_adding:I

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    sget v2, Lcom/google/glass/voice/R$drawable;->ic_message_medium:I

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    sget v2, Lcom/google/glass/voice/R$string;->voice_annotation_added:I

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    sget v2, Lcom/google/glass/voice/R$drawable;->ic_done_medium:I

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/glass/voice/VoiceAnnotationActivity$3;

    invoke-direct {v2, p0, p1}, Lcom/google/glass/voice/VoiceAnnotationActivity$3;-><init>(Lcom/google/glass/voice/VoiceAnnotationActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    .line 403
    .local v0, dialog:Lcom/google/glass/widget/MessageDialog;
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->showMessage(Lcom/google/glass/widget/MessageDialog;)V

    .line 404
    return-void
.end method

.method public showCommitSlider(Ljava/lang/String;)V
    .locals 4
    .parameter "textToReturn"

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity;->sliderView:Lcom/google/glass/widget/SliderView;

    const-wide/16 v1, 0x3e8

    new-instance v3, Lcom/google/glass/voice/VoiceAnnotationActivity$2;

    invoke-direct {v3, p0, p1}, Lcom/google/glass/voice/VoiceAnnotationActivity$2;-><init>(Lcom/google/glass/voice/VoiceAnnotationActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/widget/SliderView;->startProgress(JLandroid/animation/Animator$AnimatorListener;)V

    .line 383
    return-void
.end method

.method protected showProgressOnRecognitionResult()Z
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method wantAudioData(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 177
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->getIntentMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 180
    :goto_0
    return v0

    :cond_0
    const-string v1, "want_audio_data"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method
