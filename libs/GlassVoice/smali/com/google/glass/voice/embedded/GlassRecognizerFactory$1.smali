.class Lcom/google/glass/voice/embedded/GlassRecognizerFactory$1;
.super Lcom/google/glass/voice/embedded/EmbeddedGlassRecognizer;
.source "GlassRecognizerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->createCustomRecognizer(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/HotwordRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/embedded/GlassRecognizerFactory;

.field final synthetic val$config:Lcom/google/glass/voice/VoiceConfig;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/embedded/GlassRecognizerFactory;Landroid/content/Context;Lcom/google/glass/voice/embedded/MultiRecognizerController$Decoder;[Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/glass/voice/embedded/GlassRecognizerFactory$1;->this$0:Lcom/google/glass/voice/embedded/GlassRecognizerFactory;

    iput-object p5, p0, Lcom/google/glass/voice/embedded/GlassRecognizerFactory$1;->val$config:Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/glass/voice/embedded/EmbeddedGlassRecognizer;-><init>(Landroid/content/Context;Lcom/google/glass/voice/embedded/MultiRecognizerController$Decoder;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public stringToCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;
    .locals 7
    .parameter "phrase"

    .prologue
    .line 118
    iget-object v3, p0, Lcom/google/glass/voice/embedded/GlassRecognizerFactory$1;->this$0:Lcom/google/glass/voice/embedded/GlassRecognizerFactory;

    #calls: Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->getCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;
    invoke-static {v3, p1}, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->access$000(Lcom/google/glass/voice/embedded/GlassRecognizerFactory;Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    .line 119
    .local v0, command:Lcom/google/glass/voice/VoiceCommand;
    if-eqz v0, :cond_0

    .line 132
    .end local v0           #command:Lcom/google/glass/voice/VoiceCommand;
    :goto_0
    return-object v0

    .line 124
    .restart local v0       #command:Lcom/google/glass/voice/VoiceCommand;
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/glass/voice/embedded/GlassRecognizerFactory$1;->val$config:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v3}, Lcom/google/glass/voice/VoiceConfig;->getCustomPhrases()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[hotword_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/voice/embedded/GlassRecognizerFactory$1;->val$config:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v4}, Lcom/google/glass/voice/VoiceConfig;->getCustomPhrases()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    const-string v5, " "

    const-string v6, "_"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, hotword:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 128
    new-instance v0, Lcom/google/glass/voice/VoiceCommand;

    .end local v0           #command:Lcom/google/glass/voice/VoiceCommand;
    invoke-direct {v0, p1}, Lcom/google/glass/voice/VoiceCommand;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    .restart local v0       #command:Lcom/google/glass/voice/VoiceCommand;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 132
    .end local v1           #hotword:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
