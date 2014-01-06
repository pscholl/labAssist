.class Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient$CurlLogger;
.super Ljava/lang/Object;
.source "AndroidHttpClient.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurlLogger"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;


# direct methods
.method private constructor <init>(Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;)V
    .locals 0
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient$CurlLogger;->this$0:Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 397
    invoke-direct {p0, p1}, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient$CurlLogger;-><init>(Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;)V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 2
    .parameter "request"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    iget-object v1, p0, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient$CurlLogger;->this$0:Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;

    #getter for: Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->curlConfiguration:Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient$LoggingConfiguration;
    invoke-static {v1}, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->access$400(Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;)Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient$LoggingConfiguration;

    move-result-object v0

    .line 401
    .local v0, configuration:Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient$LoggingConfiguration;
    if-eqz v0, :cond_0

    #calls: Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient$LoggingConfiguration;->isLoggable()Z
    invoke-static {v0}, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient$LoggingConfiguration;->access$500(Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient$LoggingConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v1, :cond_0

    .line 404
    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    .end local p1
    #calls: Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->toCurl(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;
    invoke-static {p1}, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->access$600(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient$LoggingConfiguration;->println(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient$LoggingConfiguration;->access$700(Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient$LoggingConfiguration;Ljava/lang/String;)V

    .line 406
    :cond_0
    return-void
.end method
