.class final Lcom/google/glass/voice/VoiceConfig$1;
.super Ljava/lang/Object;
.source "VoiceConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/VoiceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/glass/voice/VoiceConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/voice/VoiceConfig;
    .locals 3
    .parameter "in"

    .prologue
    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 275
    .local v0, extras:Landroid/os/Bundle;
    new-instance v1, Lcom/google/glass/voice/VoiceConfig;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/glass/voice/VoiceConfig;-><init>(Landroid/os/Bundle;Lcom/google/glass/voice/VoiceConfig$1;)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 270
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/VoiceConfig$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/glass/voice/VoiceConfig;
    .locals 1
    .parameter "size"

    .prologue
    .line 280
    new-array v0, p1, [Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 270
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/VoiceConfig$1;->newArray(I)[Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    return-object v0
.end method
