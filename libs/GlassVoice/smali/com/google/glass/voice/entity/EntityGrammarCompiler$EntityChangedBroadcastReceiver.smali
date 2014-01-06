.class Lcom/google/glass/voice/entity/EntityGrammarCompiler$EntityChangedBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "EntityGrammarCompiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/entity/EntityGrammarCompiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntityChangedBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/entity/EntityGrammarCompiler;


# direct methods
.method private constructor <init>(Lcom/google/glass/voice/entity/EntityGrammarCompiler;)V
    .locals 3
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/google/glass/voice/entity/EntityGrammarCompiler$EntityChangedBroadcastReceiver;->this$0:Lcom/google/glass/voice/entity/EntityGrammarCompiler;

    .line 181
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.glass.action.ENTITY_CACHE_CHANGED"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/voice/entity/EntityGrammarCompiler;Lcom/google/glass/voice/entity/EntityGrammarCompiler$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/google/glass/voice/entity/EntityGrammarCompiler$EntityChangedBroadcastReceiver;-><init>(Lcom/google/glass/voice/entity/EntityGrammarCompiler;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 195
    invoke-static {}, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/glass/voice/entity/EntityGrammarCompiler$EntityChangedBroadcastReceiver;->this$0:Lcom/google/glass/voice/entity/EntityGrammarCompiler;

    #calls: Lcom/google/glass/voice/entity/EntityGrammarCompiler;->isRequiredToRecompileGrammars()Z
    invoke-static {v0}, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->access$100(Lcom/google/glass/voice/entity/EntityGrammarCompiler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/google/glass/voice/entity/EntityGrammarCompiler$EntityChangedBroadcastReceiver;->this$0:Lcom/google/glass/voice/entity/EntityGrammarCompiler;

    #calls: Lcom/google/glass/voice/entity/EntityGrammarCompiler;->invalidateGrammars()V
    invoke-static {v0}, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->access$200(Lcom/google/glass/voice/entity/EntityGrammarCompiler;)V

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/voice/entity/EntityGrammarCompiler$EntityChangedBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "The display names have not changed, so not recompiling grammars"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
