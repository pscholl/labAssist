.class Lcom/google/glass/timeline/TimelineOptionsHelper$8;
.super Ljava/lang/Object;
.source "TimelineOptionsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineOptionsHelper;->onReadAloud(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

.field final synthetic val$speakExtraContext:Z

.field final synthetic val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineOptionsHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1492
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$8;->this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$8;->val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iput-boolean p3, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$8;->val$speakExtraContext:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1497
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$8;->this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

    #getter for: Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;
    invoke-static {v2}, Lcom/google/glass/timeline/TimelineOptionsHelper;->access$000(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/app/GlassActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$8;->val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-boolean v4, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$8;->val$speakExtraContext:Z

    invoke-static {v2, v3, v4}, Lcom/google/glass/timeline/TimelineHelper;->formatSpeakableText(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)Ljava/lang/String;

    move-result-object v1

    .line 1499
    .local v1, textToSynthesize:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1500
    const/4 v0, 0x0

    .line 1501
    .local v0, listener:Landroid/speech/tts/UtteranceProgressListener;
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$8;->this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

    #getter for: Lcom/google/glass/timeline/TimelineOptionsHelper;->timelineOptionProgressListener:Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineOptionProgressListener;
    invoke-static {v2}, Lcom/google/glass/timeline/TimelineOptionsHelper;->access$500(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineOptionProgressListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1502
    new-instance v0, Lcom/google/glass/timeline/TimelineOptionsHelper$8$1;

    .end local v0           #listener:Landroid/speech/tts/UtteranceProgressListener;
    invoke-direct {v0, p0}, Lcom/google/glass/timeline/TimelineOptionsHelper$8$1;-><init>(Lcom/google/glass/timeline/TimelineOptionsHelper$8;)V

    .line 1519
    .restart local v0       #listener:Landroid/speech/tts/UtteranceProgressListener;
    :cond_0
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$8;->this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

    #getter for: Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;
    invoke-static {v2}, Lcom/google/glass/timeline/TimelineOptionsHelper;->access$000(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/app/GlassActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/app/GlassApplication;->getTtsHelper()Lcom/google/glass/util/TtsHelper;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/google/glass/util/TtsHelper;->speakText(Ljava/lang/String;Landroid/speech/tts/UtteranceProgressListener;)V

    .line 1521
    .end local v0           #listener:Landroid/speech/tts/UtteranceProgressListener;
    :cond_1
    return-void
.end method
