.class public Lcom/google/glass/gesture/HeadGestureUtils;
.super Ljava/lang/Object;
.source "HeadGestureUtils.java"


# static fields
.field private static managerForTest:Lcom/google/android/glass/head/HeadGestureManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getGestureManager(Landroid/content/Context;)Lcom/google/android/glass/head/HeadGestureManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    invoke-static {}, Lcom/google/glass/predicates/Assert;->isTest()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/gesture/HeadGestureUtils;->managerForTest:Lcom/google/android/glass/head/HeadGestureManager;

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lcom/google/glass/gesture/HeadGestureUtils;->managerForTest:Lcom/google/android/glass/head/HeadGestureManager;

    .line 50
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/android/glass/head/HeadGestureManager;->from(Landroid/content/Context;)Lcom/google/android/glass/head/HeadGestureManager;

    move-result-object v0

    goto :goto_0
.end method

.method public static isGlobalLookUpGestureEnabled(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    invoke-static {p0}, Lcom/google/glass/gesture/HeadGestureUtils;->getGestureManager(Landroid/content/Context;)Lcom/google/android/glass/head/HeadGestureManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/glass/head/HeadGestureManager;->isGlobalLookUpGestureEnabled()Z

    move-result v0

    return v0
.end method

.method public static setGlobalLookUpGestureEnabled(Landroid/content/Context;Z)Z
    .locals 1
    .parameter "context"
    .parameter "state"

    .prologue
    .line 37
    invoke-static {p0}, Lcom/google/glass/gesture/HeadGestureUtils;->getGestureManager(Landroid/content/Context;)Lcom/google/android/glass/head/HeadGestureManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/glass/head/HeadGestureManager;->setGlobalLookUpGestureEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public static setGlobalLookUpGestureParameters(Landroid/content/Context;FF)Z
    .locals 1
    .parameter "context"
    .parameter "triggerPitchAngleDegrees"
    .parameter "triggerPitchHysteresisDegrees"

    .prologue
    .line 26
    invoke-static {p0}, Lcom/google/glass/gesture/HeadGestureUtils;->getGestureManager(Landroid/content/Context;)Lcom/google/android/glass/head/HeadGestureManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/glass/head/HeadGestureManager;->setGlobalLookUpGestureParameters(FF)Z

    move-result v0

    return v0
.end method

.method public static setManagerForTest(Lcom/google/android/glass/head/HeadGestureManager;)V
    .locals 0
    .parameter "managerForTest"

    .prologue
    .line 42
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 43
    sput-object p0, Lcom/google/glass/gesture/HeadGestureUtils;->managerForTest:Lcom/google/android/glass/head/HeadGestureManager;

    .line 44
    return-void
.end method
