.class public Lcom/google/glass/voice/embedded/CombinedRecognizerFactory;
.super Lcom/google/glass/voice/RecognizerFactory;
.source "CombinedRecognizerFactory.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private fallbackFactory:Lcom/google/glass/voice/RecognizerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/embedded/CombinedRecognizerFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/voice/RecognizerFactory;)V
    .locals 0
    .parameter "fallback"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/glass/voice/RecognizerFactory;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/glass/voice/embedded/CombinedRecognizerFactory;->fallbackFactory:Lcom/google/glass/voice/RecognizerFactory;

    .line 24
    return-void
.end method


# virtual methods
.method protected createCustomRecognizer(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/HotwordRecognizer;
    .locals 2
    .parameter "context"
    .parameter "config"

    .prologue
    .line 38
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Should be using fallback recognizer."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createRecognizer(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/HotwordRecognizer;
    .locals 1
    .parameter "context"
    .parameter "config"

    .prologue
    .line 28
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->GUARD:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v0, p2}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    new-instance v0, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;

    invoke-direct {v0}, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;-><init>()V

    .line 31
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/embedded/CombinedRecognizerFactory;->fallbackFactory:Lcom/google/glass/voice/RecognizerFactory;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/voice/RecognizerFactory;->createRecognizer(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v0

    goto :goto_0
.end method
