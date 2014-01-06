.class public Lcom/google/glass/voice/VoiceConfig;
.super Ljava/lang/Object;
.source "VoiceConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;,
        Lcom/google/glass/voice/VoiceConfig$Sensitivity;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/glass/voice/VoiceConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY:[Ljava/lang/String; = null

.field private static final EXTRA_ALLOW_SCREEN_OFF:Ljava/lang/String; = "allowScreenOff"

.field private static final EXTRA_LETTER_TO_SOUND_MODEL:Ljava/lang/String; = "letterToSoundModel"

.field private static final EXTRA_NAME:Ljava/lang/String; = "name"

.field private static final EXTRA_OPEN_ENDED_MODE:Ljava/lang/String; = "openEndedMode"

.field private static final EXTRA_PHRASES:Ljava/lang/String; = "phrases"

.field private static final EXTRA_SENSITIVITY:Ljava/lang/String; = "sensitivity"

.field private static final EXTRA_SHOULD_SAVE_AUDIO:Ljava/lang/String; = "saveAudio"

.field public static final GUARD:Lcom/google/glass/voice/VoiceConfig;

.field public static final OFF:Lcom/google/glass/voice/VoiceConfig;


# instance fields
.field private final extras:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {v0}, Lcom/google/glass/voice/VoiceConfig;-><init>()V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    .line 62
    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {v0}, Lcom/google/glass/voice/VoiceConfig;-><init>()V

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "ok glass"

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceConfig;->setPhrases([Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/glass/voice/VoiceConfig;->setShouldSaveAudio(Z)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->GUARD:Lcom/google/glass/voice/VoiceConfig;

    .line 180
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->EMPTY:[Ljava/lang/String;

    .line 269
    new-instance v0, Lcom/google/glass/voice/VoiceConfig$1;

    invoke-direct {v0}, Lcom/google/glass/voice/VoiceConfig$1;-><init>()V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceConfig;-><init>(Landroid/os/Bundle;)V

    .line 80
    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .parameter "extras"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/google/glass/voice/VoiceConfig;->extras:Landroid/os/Bundle;

    .line 84
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;Lcom/google/glass/voice/VoiceConfig$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceConfig;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 2
    .parameter "other"

    .prologue
    .line 75
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Lcom/google/glass/voice/VoiceConfig;->extras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceConfig;-><init>(Landroid/os/Bundle;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "customPhrases"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceConfig;-><init>()V

    .line 70
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/VoiceConfig;->setName(Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;

    .line 71
    invoke-virtual {p0, p2}, Lcom/google/glass/voice/VoiceConfig;->setPhrases([Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;

    .line 72
    return-void
.end method

.method public static forOpenEnded(Lcom/google/glass/voice/OpenEndedMode;)Lcom/google/glass/voice/VoiceConfig;
    .locals 1
    .parameter "openEndedMode"

    .prologue
    .line 87
    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {v0}, Lcom/google/glass/voice/VoiceConfig;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/voice/VoiceConfig;->setOpenEndedMode(Lcom/google/glass/voice/OpenEndedMode;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 103
    if-ne p0, p1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v1

    .line 106
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 107
    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 110
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 112
    check-cast v0, Lcom/google/glass/voice/VoiceConfig;

    .line 113
    .local v0, other:Lcom/google/glass/voice/VoiceConfig;
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceConfig;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 114
    goto :goto_0

    .line 116
    :cond_4
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getCustomPhrases()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceConfig;->getCustomPhrases()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 117
    goto :goto_0

    .line 119
    :cond_5
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->shouldSaveAudio()Z

    move-result v3

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceConfig;->shouldSaveAudio()Z

    move-result v4

    if-eq v3, v4, :cond_6

    move v1, v2

    .line 120
    goto :goto_0

    .line 122
    :cond_6
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getSensitivity()Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceConfig;->getSensitivity()Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    move-result-object v4

    if-eq v3, v4, :cond_7

    move v1, v2

    .line 123
    goto :goto_0

    .line 125
    :cond_7
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->shouldAllowScreenOff()Z

    move-result v3

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceConfig;->shouldAllowScreenOff()Z

    move-result v4

    if-eq v3, v4, :cond_8

    move v1, v2

    .line 126
    goto :goto_0

    .line 128
    :cond_8
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getOpenEndedMode()Lcom/google/glass/voice/OpenEndedMode;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceConfig;->getOpenEndedMode()Lcom/google/glass/voice/OpenEndedMode;

    move-result-object v4

    if-eq v3, v4, :cond_9

    move v1, v2

    .line 129
    goto :goto_0

    .line 131
    :cond_9
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getLetterToSoundModel()Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceConfig;->getLetterToSoundModel()Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;

    move-result-object v4

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 132
    goto :goto_0
.end method

.method public getCustomPhrases()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 183
    iget-object v1, p0, Lcom/google/glass/voice/VoiceConfig;->extras:Landroid/os/Bundle;

    const-string v2, "phrases"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, phrases:[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 185
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->EMPTY:[Ljava/lang/String;

    .line 187
    .end local v0           #phrases:[Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getLetterToSoundModel()Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;
    .locals 4

    .prologue
    .line 223
    invoke-static {}, Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;->values()[Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/VoiceConfig;->extras:Landroid/os/Bundle;

    const-string v2, "letterToSoundModel"

    sget-object v3, Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;->GENERIC:Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;

    invoke-virtual {v3}, Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;->ordinal()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->extras:Landroid/os/Bundle;

    const-string v1, "name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOpenEndedMode()Lcom/google/glass/voice/OpenEndedMode;
    .locals 4

    .prologue
    .line 236
    invoke-static {}, Lcom/google/glass/voice/OpenEndedMode;->values()[Lcom/google/glass/voice/OpenEndedMode;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/VoiceConfig;->extras:Landroid/os/Bundle;

    const-string v2, "openEndedMode"

    sget-object v3, Lcom/google/glass/voice/OpenEndedMode;->NONE:Lcom/google/glass/voice/OpenEndedMode;

    invoke-virtual {v3}, Lcom/google/glass/voice/OpenEndedMode;->ordinal()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getSensitivity()Lcom/google/glass/voice/VoiceConfig$Sensitivity;
    .locals 4

    .prologue
    .line 214
    invoke-static {}, Lcom/google/glass/voice/VoiceConfig$Sensitivity;->values()[Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/VoiceConfig;->extras:Landroid/os/Bundle;

    const-string v2, "sensitivity"

    sget-object v3, Lcom/google/glass/voice/VoiceConfig$Sensitivity;->NORMAL:Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    invoke-virtual {v3}, Lcom/google/glass/voice/VoiceConfig$Sensitivity;->ordinal()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 92
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->shouldAllowScreenOff()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getCustomPhrases()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getSensitivity()Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->shouldSaveAudio()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getOpenEndedMode()Lcom/google/glass/voice/OpenEndedMode;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getLetterToSoundModel()Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method isHotword()Z
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getCustomPhrases()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getCustomPhrases()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSearch()Z
    .locals 2

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getOpenEndedMode()Lcom/google/glass/voice/OpenEndedMode;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/OpenEndedMode;->SOUND_SEARCH:Lcom/google/glass/voice/OpenEndedMode;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getOpenEndedMode()Lcom/google/glass/voice/OpenEndedMode;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/OpenEndedMode;->NAVIGATION:Lcom/google/glass/voice/OpenEndedMode;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getOpenEndedMode()Lcom/google/glass/voice/OpenEndedMode;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/OpenEndedMode;->VOICE_SEARCH:Lcom/google/glass/voice/OpenEndedMode;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLetterToSoundModel(Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;)Lcom/google/glass/voice/VoiceConfig;
    .locals 3
    .parameter "letterToSoundModel"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->extras:Landroid/os/Bundle;

    const-string v1, "letterToSoundModel"

    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 219
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;
    .locals 2
    .parameter "name"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->extras:Landroid/os/Bundle;

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-object p0
.end method

.method setOpenEndedMode(Lcom/google/glass/voice/OpenEndedMode;)Lcom/google/glass/voice/VoiceConfig;
    .locals 3
    .parameter "openEndedMode"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->extras:Landroid/os/Bundle;

    const-string v1, "openEndedMode"

    invoke-virtual {p1}, Lcom/google/glass/voice/OpenEndedMode;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 232
    return-object p0
.end method

.method public varargs setPhrases([Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;
    .locals 2
    .parameter "phrases"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->extras:Landroid/os/Bundle;

    const-string v1, "phrases"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 177
    return-object p0
.end method

.method public setSensitivity(Lcom/google/glass/voice/VoiceConfig$Sensitivity;)Lcom/google/glass/voice/VoiceConfig;
    .locals 3
    .parameter "sensitivity"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->extras:Landroid/os/Bundle;

    const-string v1, "sensitivity"

    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceConfig$Sensitivity;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 210
    return-object p0
.end method

.method public setShouldAllowScreenOff(Z)Lcom/google/glass/voice/VoiceConfig;
    .locals 2
    .parameter "allowScreenOff"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->extras:Landroid/os/Bundle;

    const-string v1, "allowScreenOff"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 201
    return-object p0
.end method

.method public setShouldSaveAudio(Z)Lcom/google/glass/voice/VoiceConfig;
    .locals 2
    .parameter "shouldSaveAudio"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->extras:Landroid/os/Bundle;

    const-string v1, "saveAudio"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 192
    return-object p0
.end method

.method public shouldAllowScreenOff()Z
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->extras:Landroid/os/Bundle;

    const-string v1, "allowScreenOff"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public shouldSaveAudio()Z
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->extras:Landroid/os/Bundle;

    const-string v1, "saveAudio"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "VoiceConfig ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getCustomPhrases()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_0

    .line 144
    const-string v1, "getCustomPhrases()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getCustomPhrases()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->shouldSaveAudio()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    const-string v1, ", shouldSaveAudio()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->shouldSaveAudio()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->shouldAllowScreenOff()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 152
    const-string v1, ", shouldAllowScreenOff()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->shouldAllowScreenOff()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 155
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getOpenEndedMode()Lcom/google/glass/voice/OpenEndedMode;

    move-result-object v1

    sget-object v2, Lcom/google/glass/voice/OpenEndedMode;->NONE:Lcom/google/glass/voice/OpenEndedMode;

    if-eq v1, v2, :cond_3

    .line 156
    const-string v1, ", getOpenEndedMode()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getOpenEndedMode()Lcom/google/glass/voice/OpenEndedMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    :cond_3
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getLetterToSoundModel()Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;

    move-result-object v1

    sget-object v2, Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;->GENERIC:Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;

    if-eq v1, v2, :cond_4

    .line 160
    const-string v1, ", getLetterToSpeechModel()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getLetterToSoundModel()Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    :cond_4
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getSensitivity()Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    move-result-object v1

    sget-object v2, Lcom/google/glass/voice/VoiceConfig$Sensitivity;->NORMAL:Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    if-eq v1, v2, :cond_5

    .line 164
    const-string v1, ", getSensitivity()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getSensitivity()Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    :cond_5
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 168
    const-string v1, ", getName()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :cond_6
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 267
    return-void
.end method
