.class public final enum Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;
.super Ljava/lang/Enum;
.source "VoiceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/VoiceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LetterToSoundModel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;

.field public static final enum GENERIC:Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;

.field public static final enum NAMES:Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;

    const-string v1, "GENERIC"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;->GENERIC:Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;

    new-instance v0, Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;

    const-string v1, "NAMES"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;->NAMES:Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;

    sget-object v1, Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;->GENERIC:Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;->NAMES:Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;->$VALUES:[Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;
    .locals 1
    .parameter "name"

    .prologue
    .line 37
    const-class v0, Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;->$VALUES:[Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;

    invoke-virtual {v0}, [Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/voice/VoiceConfig$LetterToSoundModel;

    return-object v0
.end method
