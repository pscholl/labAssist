.class Lcom/google/glass/entity/EntityItemView$1;
.super Landroid/os/AsyncTask;
.source "EntityItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/entity/EntityItemView;->bind(Ljava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/entity/EntityItemView;

.field final synthetic val$protobuf:[B


# direct methods
.method constructor <init>(Lcom/google/glass/entity/EntityItemView;[B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/glass/entity/EntityItemView$1;->this$0:Lcom/google/glass/entity/EntityItemView;

    iput-object p2, p0, Lcom/google/glass/entity/EntityItemView$1;->val$protobuf:[B

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1
    .parameter "params"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView$1;->val$protobuf:[B

    invoke-static {v0}, Lcom/google/glass/entity/EntityHelper;->fromProtoByteArray([B)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/entity/EntityItemView$1;->doInBackground([Ljava/lang/Void;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView$1;->this$0:Lcom/google/glass/entity/EntityItemView;

    #setter for: Lcom/google/glass/entity/EntityItemView;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-static {v0, p1}, Lcom/google/glass/entity/EntityItemView;->access$002(Lcom/google/glass/entity/EntityItemView;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 82
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView$1;->this$0:Lcom/google/glass/entity/EntityItemView;

    invoke-virtual {v0}, Lcom/google/glass/entity/EntityItemView;->getEntity()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView$1;->this$0:Lcom/google/glass/entity/EntityItemView;

    #getter for: Lcom/google/glass/entity/EntityItemView;->image:Lcom/google/glass/widget/MosaicView;
    invoke-static {v0}, Lcom/google/glass/entity/EntityItemView;->access$300(Lcom/google/glass/entity/EntityItemView;)Lcom/google/glass/widget/MosaicView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/entity/EntityItemView$1;->this$0:Lcom/google/glass/entity/EntityItemView;

    invoke-virtual {v1}, Lcom/google/glass/entity/EntityItemView;->getEntity()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v1

    iget-object v1, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;->ALWAYS_HIDDEN:Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;

    iget-object v3, p0, Lcom/google/glass/entity/EntityItemView$1;->this$0:Lcom/google/glass/entity/EntityItemView;

    #getter for: Lcom/google/glass/entity/EntityItemView;->imageWidth:I
    invoke-static {v3}, Lcom/google/glass/entity/EntityItemView;->access$100(Lcom/google/glass/entity/EntityItemView;)I

    move-result v3

    iget-object v4, p0, Lcom/google/glass/entity/EntityItemView$1;->this$0:Lcom/google/glass/entity/EntityItemView;

    #getter for: Lcom/google/glass/entity/EntityItemView;->imageHeight:I
    invoke-static {v4}, Lcom/google/glass/entity/EntityItemView;->access$200(Lcom/google/glass/entity/EntityItemView;)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/google/glass/widget/ImageLoaders;->forImageUrls(Ljava/util/List;Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;II)Lcom/google/glass/widget/ImageLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MosaicView;->loadImages(Lcom/google/glass/widget/ImageLoader;)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView$1;->this$0:Lcom/google/glass/entity/EntityItemView;

    #getter for: Lcom/google/glass/entity/EntityItemView;->glasswareIconBinder:Lcom/google/glass/widget/GlasswareIconBinder;
    invoke-static {v0}, Lcom/google/glass/entity/EntityItemView;->access$400(Lcom/google/glass/entity/EntityItemView;)Lcom/google/glass/widget/GlasswareIconBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView$1;->this$0:Lcom/google/glass/entity/EntityItemView;

    #getter for: Lcom/google/glass/entity/EntityItemView;->glasswareIconBinder:Lcom/google/glass/widget/GlasswareIconBinder;
    invoke-static {v0}, Lcom/google/glass/entity/EntityItemView;->access$400(Lcom/google/glass/entity/EntityItemView;)Lcom/google/glass/widget/GlasswareIconBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/entity/EntityItemView$1;->this$0:Lcom/google/glass/entity/EntityItemView;

    invoke-virtual {v1}, Lcom/google/glass/entity/EntityItemView;->getEntity()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/entity/EntityItemView$1;->this$0:Lcom/google/glass/entity/EntityItemView;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/widget/GlasswareIconBinder;->bind(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Landroid/view/View;)V

    .line 89
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    check-cast p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/entity/EntityItemView$1;->onPostExecute(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    return-void
.end method
