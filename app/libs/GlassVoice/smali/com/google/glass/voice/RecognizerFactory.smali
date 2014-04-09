.class public abstract Lcom/google/glass/voice/RecognizerFactory;
.super Ljava/lang/Object;
.source "RecognizerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/RecognizerFactory$1;,
        Lcom/google/glass/voice/RecognizerFactory$NoOpRecognizer;
    }
.end annotation


# static fields
.field public static final NO_OP_RECOGNIZER:Lcom/google/glass/voice/HotwordRecognizer;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/RecognizerFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 62
    new-instance v0, Lcom/google/glass/voice/RecognizerFactory$NoOpRecognizer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/glass/voice/RecognizerFactory$NoOpRecognizer;-><init>(Lcom/google/glass/voice/RecognizerFactory$1;)V

    sput-object v0, Lcom/google/glass/voice/RecognizerFactory;->NO_OP_RECOGNIZER:Lcom/google/glass/voice/HotwordRecognizer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/google/glass/voice/RecognizerFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method


# virtual methods
.method protected abstract createCustomRecognizer(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/HotwordRecognizer;
.end method

.method public createRecognizer(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/HotwordRecognizer;
    .locals 3
    .parameter "context"
    .parameter "config"

    .prologue
    .line 65
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {p2, v0}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lcom/google/glass/voice/RecognizerFactory;->NO_OP_RECOGNIZER:Lcom/google/glass/voice/HotwordRecognizer;

    .line 74
    :goto_0
    return-object v0

    .line 69
    :cond_0
    invoke-virtual {p2}, Lcom/google/glass/voice/VoiceConfig;->isHotword()Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    sget-object v0, Lcom/google/glass/voice/RecognizerFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Asked to compute a HotwordRecognizer for a non-hotword config, inconceivable."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    sget-object v0, Lcom/google/glass/voice/RecognizerFactory;->NO_OP_RECOGNIZER:Lcom/google/glass/voice/HotwordRecognizer;

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/voice/RecognizerFactory;->createCustomRecognizer(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v0

    goto :goto_0
.end method
