.class final Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$1;
.super Ljava/lang/Object;
.source "NetworkRequestProducerParamsBuilder.java"

# interfaces
.implements Lcom/google/android/speech/params/DeviceParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder;->getDeviceParams(Landroid/content/Context;)Lcom/google/android/speech/params/DeviceParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApplicationVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "US"

    return-object v0
.end method

.method public getSearchDomainCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string v0, "US"

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Lcom/google/glass/net/UserAgent;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
