.class public Lcom/google/glass/widget/GlasswareIconBinder;
.super Ljava/lang/Object;
.source "GlasswareIconBinder.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private companionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/GlasswareIconBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/companion/RemoteCompanionProxy;)V
    .locals 0
    .parameter "companionProxy"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/glass/widget/GlasswareIconBinder;->companionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    .line 35
    return-void
.end method


# virtual methods
.method public bind(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Landroid/view/View;)V
    .locals 12
    .parameter "entity"
    .parameter "view"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 46
    if-nez p1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    invoke-static {p1}, Lcom/google/glass/entity/EntityHelper;->getProjectId(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v6

    .line 50
    .local v6, projectId:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 53
    if-eqz p2, :cond_0

    .line 56
    sget v9, Lcom/google/glass/common/R$id;->glassware_icon:I

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 57
    .local v3, iconView:Landroid/widget/ImageView;
    if-nez v3, :cond_2

    .line 58
    sget-object v7, Lcom/google/glass/widget/GlasswareIconBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "View does not contain expected glassware icon view"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v7, v9, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    sget-object v9, Lcom/google/glass/util/Labs$Feature;->MSG_GW:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v9}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 66
    invoke-static {p1}, Lcom/google/glass/entity/EntityHelper;->isFocusEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 67
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getEmail()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    move v1, v7

    .line 68
    .local v1, hasEmail:Z
    :goto_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    move v2, v7

    .line 69
    .local v2, hasPhoneNumber:Z
    :goto_2
    iget-object v9, p0, Lcom/google/glass/widget/GlasswareIconBinder;->companionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v9}, Lcom/google/glass/companion/RemoteCompanionProxy;->isSmsEnabled()Z

    move-result v4

    .line 71
    .local v4, isSmsEnabled:Z
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getMessagingOption()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 105
    if-eqz v2, :cond_9

    if-eqz v4, :cond_9

    .line 106
    sget v7, Lcom/google/glass/common/R$drawable;->ic_message_medium:I

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .end local v1           #hasEmail:Z
    .end local v2           #hasPhoneNumber:Z
    .end local v4           #isSmsEnabled:Z
    :cond_3
    move v1, v8

    .line 67
    goto :goto_1

    .restart local v1       #hasEmail:Z
    :cond_4
    move v2, v8

    .line 68
    goto :goto_2

    .line 74
    .restart local v2       #hasPhoneNumber:Z
    .restart local v4       #isSmsEnabled:Z
    :pswitch_0
    invoke-static {p1}, Lcom/google/glass/entity/EntityHelper;->getMessagingPersona(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    move-result-object v5

    .line 75
    .local v5, persona:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->hasSource()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getSource()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 78
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getSource()Ljava/lang/String;

    move-result-object v7

    const-string v8, "api:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getSource()Ljava/lang/String;

    move-result-object v7

    const-string v8, "api:"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 120
    .end local v1           #hasEmail:Z
    .end local v2           #hasPhoneNumber:Z
    .end local v4           #isSmsEnabled:Z
    .end local v5           #persona:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    :cond_5
    :goto_3
    new-instance v0, Lcom/google/glass/util/GlasswareIconLoadingTask;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    sget-object v8, Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;->MEDIUM:Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;

    invoke-direct {v0, v7, v6, v8, v3}, Lcom/google/glass/util/GlasswareIconLoadingTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;Landroid/widget/ImageView;)V

    .line 122
    .local v0, glasswareIconLoadingTask:Lcom/google/glass/util/GlasswareIconLoadingTask;
    invoke-static {v0}, Lcom/google/glass/util/DeferredContentLoader;->load(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V

    .line 125
    sget v7, Lcom/google/glass/common/R$id;->tag_loading_task:I

    invoke-virtual {p2, v7, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 78
    .end local v0           #glasswareIconLoadingTask:Lcom/google/glass/util/GlasswareIconLoadingTask;
    .restart local v1       #hasEmail:Z
    .restart local v2       #hasPhoneNumber:Z
    .restart local v4       #isSmsEnabled:Z
    .restart local v5       #persona:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    :cond_6
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->getSource()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 86
    .end local v5           #persona:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    :pswitch_1
    sget v7, Lcom/google/glass/common/R$drawable;->ic_email_medium:I

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 91
    :pswitch_2
    if-eqz v4, :cond_7

    .line 92
    sget v7, Lcom/google/glass/common/R$drawable;->ic_message_medium:I

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 95
    :cond_7
    if-eqz v1, :cond_8

    .line 96
    sget v7, Lcom/google/glass/common/R$drawable;->ic_email_medium:I

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 99
    :cond_8
    sget-object v9, Lcom/google/glass/widget/GlasswareIconBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "No companion device or email for entity with SMS messaging preference [entityId=%s]."

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v8

    invoke-interface {v9, v10, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 109
    :cond_9
    if-eqz v1, :cond_a

    .line 110
    sget v7, Lcom/google/glass/common/R$drawable;->ic_email_medium:I

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 113
    :cond_a
    sget-object v9, Lcom/google/glass/widget/GlasswareIconBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "No companion device or email for entity with default messaging preference [entityId=%s]."

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v8

    invoke-interface {v9, v10, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public recycle(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 135
    if-nez p1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    sget v1, Lcom/google/glass/common/R$id;->tag_loading_task:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/GlasswareIconLoadingTask;

    .line 140
    .local v0, glasswareIconLoadingTask:Lcom/google/glass/util/GlasswareIconLoadingTask;
    if-eqz v0, :cond_0

    .line 141
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/util/GlasswareIconLoadingTask;->cancel(Z)V

    .line 142
    sget v1, Lcom/google/glass/common/R$id;->tag_loading_task:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method
