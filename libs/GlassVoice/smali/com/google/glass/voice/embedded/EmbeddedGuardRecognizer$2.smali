.class Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer$2;
.super Ljava/lang/Thread;
.source "EmbeddedGuardRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->activate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;

.field final synthetic val$sessionParams:Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;Ljava/lang/String;Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer$2;->this$0:Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;

    iput-object p3, p0, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer$2;->val$sessionParams:Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 228
    iget-object v1, p0, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer$2;->this$0:Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;

    #getter for: Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->recognizer:Lcom/google/speech/recognizer/Recognizer;
    invoke-static {v1}, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->access$200(Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;)Lcom/google/speech/recognizer/Recognizer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer$2;->val$sessionParams:Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    invoke-interface {v1, v2}, Lcom/google/speech/recognizer/Recognizer;->run(Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;)Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;

    move-result-object v0

    .line 229
    .local v0, result:Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;
    invoke-virtual {v0}, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->getStatus()I

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    invoke-static {}, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GlassGuardRecognizer exited with status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->getStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    :cond_0
    invoke-static {}, Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "run() finished"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    return-void
.end method
