.class public Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer$GlassGuardRecognizer;
.super Lcom/google/speech/recognizer/AbstractRecognizer;
.source "EmbeddedGuardRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/embedded/EmbeddedGuardRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GlassGuardRecognizer"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 40
    invoke-static {}, Lcom/google/android/speech/embedded/Greco3Recognizer;->maybeLoadSharedLibrary()V

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/speech/recognizer/AbstractRecognizer;-><init>()V

    return-void
.end method
