.class public final Lcom/google/glass/companion/Proto$Envelope;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Envelope"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$Envelope;


# instance fields
.field private apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

.field private apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

.field private bitField0_:I

.field private command_:Lcom/google/glass/companion/Proto$Command;

.field private companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

.field private error_:Lcom/google/glass/companion/Proto$Error;

.field private glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

.field private glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

.field private glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

.field private glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

.field private inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

.field private inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

.field private locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

.field private locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

.field private messageC2G_:Ljava/lang/String;

.field private motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

.field private navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

.field private screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

.field private serialNumber_:I

.field private setupWifiC2G_:Ljava/lang/String;

.field private timeMillis_:J

.field public timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field public timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

.field private timezoneC2G_:Ljava/lang/String;

.field private uptimeMillis_:J

.field private urlG2C_:Ljava/lang/String;

.field public version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$Envelope;

    sput-object v0, Lcom/google/glass/companion/Proto$Envelope;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$Envelope;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 15
    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->version:I

    .line 18
    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber_:I

    .line 37
    iput-wide v1, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    .line 56
    iput-wide v1, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    .line 75
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 78
    sget-object v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    .line 141
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    .line 182
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    .line 204
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 989
    new-instance v0, Lcom/google/glass/companion/Proto$Envelope;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Envelope;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$Envelope;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 983
    new-instance v0, Lcom/google/glass/companion/Proto$Envelope;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Envelope;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Envelope;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/glass/companion/Proto$Envelope;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 473
    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 474
    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->version:I

    .line 475
    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber_:I

    .line 476
    iput-wide v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    .line 477
    iput-wide v2, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    .line 478
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 479
    sget-object v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    .line 480
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    .line 481
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    .line 482
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    .line 483
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    .line 484
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    .line 485
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    .line 486
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    .line 487
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 488
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    .line 489
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    .line 490
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    .line 491
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    .line 492
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    .line 493
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    .line 494
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    .line 495
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    .line 496
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    .line 497
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    .line 498
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    .line 499
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    .line 500
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->cachedSize:I

    .line 501
    return-object p0
.end method

.method public clearApiRequestC2G()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    .line 318
    return-object p0
.end method

.method public clearApiResponseG2C()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    .line 337
    return-object p0
.end method

.method public clearCommand()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    .line 299
    return-object p0
.end method

.method public clearCompanionInfo()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 242
    return-object p0
.end method

.method public clearError()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    .line 261
    return-object p0
.end method

.method public clearGlassInfoRequestC2G()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    .line 375
    return-object p0
.end method

.method public clearGlassInfoResponseG2C()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    .line 394
    return-object p0
.end method

.method public clearGlassSetupRequestC2G()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    .line 451
    return-object p0
.end method

.method public clearGlassSetupResponseG2C()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    .line 470
    return-object p0
.end method

.method public clearInputBoxRequestG2C()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    .line 413
    return-object p0
.end method

.method public clearInputBoxResponseC2G()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    .line 432
    return-object p0
.end method

.method public clearLocationMessageC2G()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    .line 116
    return-object p0
.end method

.method public clearLocationRequestG2C()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    .line 97
    return-object p0
.end method

.method public clearMessageC2G()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 135
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    .line 136
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 137
    return-object p0
.end method

.method public clearMotionC2G()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    .line 356
    return-object p0
.end method

.method public clearNavigationRequestC2G()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    .line 179
    return-object p0
.end method

.method public clearScreenshot()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    .line 280
    return-object p0
.end method

.method public clearSerialNumber()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber_:I

    .line 32
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 33
    return-object p0
.end method

.method public clearSetupWifiC2G()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 220
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    .line 221
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 222
    return-object p0
.end method

.method public clearTimeMillis()Lcom/google/glass/companion/Proto$Envelope;
    .locals 2

    .prologue
    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    .line 51
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 52
    return-object p0
.end method

.method public clearTimezoneC2G()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 157
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    .line 158
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 159
    return-object p0
.end method

.method public clearUptimeMillis()Lcom/google/glass/companion/Proto$Envelope;
    .locals 2

    .prologue
    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    .line 70
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 71
    return-object p0
.end method

.method public clearUrlG2C()Lcom/google/glass/companion/Proto$Envelope;
    .locals 1

    .prologue
    .line 198
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    .line 199
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 200
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 506
    if-ne p1, p0, :cond_1

    .line 509
    :cond_0
    :goto_0
    return v1

    .line 507
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$Envelope;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 508
    check-cast v0, Lcom/google/glass/companion/Proto$Envelope;

    .line 509
    .local v0, other:Lcom/google/glass/companion/Proto$Envelope;
    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->version:I

    iget v4, v0, Lcom/google/glass/companion/Proto$Envelope;->version:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber_:I

    if-ne v3, v4, :cond_3

    iget-wide v3, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    iget-wide v5, v0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    iget-wide v5, v0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    if-nez v3, :cond_3

    :goto_2
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_3
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    if-nez v3, :cond_3

    :goto_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_6
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    if-nez v3, :cond_a

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_7
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    if-nez v3, :cond_b

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    if-nez v3, :cond_3

    :goto_8
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    if-nez v3, :cond_c

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    if-nez v3, :cond_3

    :goto_9
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    if-nez v3, :cond_d

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    if-nez v3, :cond_3

    :goto_a
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    if-nez v3, :cond_e

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    if-nez v3, :cond_3

    :goto_b
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    if-nez v3, :cond_f

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    if-nez v3, :cond_3

    :goto_c
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    if-nez v3, :cond_10

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    if-nez v3, :cond_3

    :goto_d
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    if-nez v3, :cond_11

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    if-nez v3, :cond_3

    :goto_e
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    if-nez v3, :cond_12

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    if-nez v3, :cond_3

    :goto_f
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    if-nez v3, :cond_13

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    if-nez v3, :cond_3

    :goto_10
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    if-nez v3, :cond_14

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    if-nez v3, :cond_3

    :goto_11
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    if-nez v3, :cond_15

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    if-nez v3, :cond_3

    :goto_12
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    if-nez v3, :cond_16

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    if-nez v3, :cond_3

    :goto_13
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    if-nez v3, :cond_17

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$LocationRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$LocationMessage;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_4

    :cond_8
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$NavigationRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_5

    :cond_9
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_6

    :cond_a
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_7

    :cond_b
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$CompanionInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_8

    :cond_c
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$Error;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_9

    :cond_d
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$ScreenShot;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_a

    :cond_e
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$Command;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_b

    :cond_f
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$ApiRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_c

    :cond_10
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$ApiResponse;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_d

    :cond_11
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$MotionEvent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_e

    :cond_12
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$GlassInfoRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_f

    :cond_13
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$GlassInfoResponse;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_10

    :cond_14
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$InputBoxRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_11

    :cond_15
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$InputBoxResponse;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_12

    :cond_16
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$GlassSetupRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_13

    :cond_17
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$GlassSetupResponse;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_0
.end method

.method public getApiRequestC2G()Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    return-object v0
.end method

.method public getApiResponseG2C()Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    return-object v0
.end method

.method public getCommand()Lcom/google/glass/companion/Proto$Command;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    return-object v0
.end method

.method public getCompanionInfo()Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    return-object v0
.end method

.method public getError()Lcom/google/glass/companion/Proto$Error;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    return-object v0
.end method

.method public getGlassInfoRequestC2G()Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    return-object v0
.end method

.method public getGlassInfoResponseG2C()Lcom/google/glass/companion/Proto$GlassInfoResponse;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    return-object v0
.end method

.method public getGlassSetupRequestC2G()Lcom/google/glass/companion/Proto$GlassSetupRequest;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    return-object v0
.end method

.method public getGlassSetupResponseG2C()Lcom/google/glass/companion/Proto$GlassSetupResponse;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    return-object v0
.end method

.method public getInputBoxRequestG2C()Lcom/google/glass/companion/Proto$InputBoxRequest;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    return-object v0
.end method

.method public getInputBoxResponseC2G()Lcom/google/glass/companion/Proto$InputBoxResponse;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    return-object v0
.end method

.method public getLocationMessageC2G()Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method

.method public getLocationRequestG2C()Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    return-object v0
.end method

.method public getMessageC2G()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    return-object v0
.end method

.method public getMotionC2G()Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    return-object v0
.end method

.method public getNavigationRequestC2G()Lcom/google/glass/companion/Proto$NavigationRequest;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    return-object v0
.end method

.method public getScreenshot()Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    return-object v0
.end method

.method public getSerialNumber()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    .line 664
    const/4 v4, 0x0

    .line 665
    .local v4, size:I
    const/4 v5, 0x1

    iget v6, p0, Lcom/google/glass/companion/Proto$Envelope;->version:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 667
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 668
    const/4 v5, 0x2

    iget v6, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber_:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 671
    :cond_0
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 672
    const/4 v5, 0x3

    iget-wide v6, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    invoke-static {v5, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    .line 675
    :cond_1
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2

    .line 676
    const/4 v5, 0x4

    iget-wide v6, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    invoke-static {v5, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    .line 679
    :cond_2
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v5, :cond_3

    .line 680
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 681
    .local v1, element:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    const/4 v5, 0x5

    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 680
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 685
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_3
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    if-eqz v5, :cond_4

    .line 686
    const/4 v5, 0x6

    iget-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 689
    :cond_4
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    if-eqz v5, :cond_5

    .line 690
    const/4 v5, 0x7

    iget-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 693
    :cond_5
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_6

    .line 694
    const/16 v5, 0x8

    iget-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 697
    :cond_6
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_7

    .line 698
    const/16 v5, 0x9

    iget-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 701
    :cond_7
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    if-eqz v5, :cond_8

    .line 702
    const/16 v5, 0xa

    iget-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 705
    :cond_8
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_9

    .line 706
    const/16 v5, 0xb

    iget-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 709
    :cond_9
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_a

    .line 710
    const/16 v5, 0xc

    iget-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 713
    :cond_a
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    if-eqz v5, :cond_b

    .line 714
    const/16 v5, 0xd

    iget-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 717
    :cond_b
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    if-eqz v5, :cond_c

    .line 718
    const/16 v5, 0xe

    iget-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 721
    :cond_c
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    if-eqz v5, :cond_d

    .line 722
    const/16 v5, 0xf

    iget-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 725
    :cond_d
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    if-eqz v5, :cond_e

    .line 726
    const/16 v5, 0x10

    iget-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 729
    :cond_e
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    if-eqz v5, :cond_f

    .line 730
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    .local v0, arr$:[Lcom/google/glass/companion/Proto$TimelineItemResponse;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v3, :cond_f

    aget-object v1, v0, v2

    .line 731
    .local v1, element:Lcom/google/glass/companion/Proto$TimelineItemResponse;
    const/16 v5, 0x11

    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 730
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 735
    .end local v0           #arr$:[Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .end local v1           #element:Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_f
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    if-eqz v5, :cond_10

    .line 736
    const/16 v5, 0x12

    iget-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 739
    :cond_10
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    if-eqz v5, :cond_11

    .line 740
    const/16 v5, 0x13

    iget-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 743
    :cond_11
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    if-eqz v5, :cond_12

    .line 744
    const/16 v5, 0x14

    iget-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 747
    :cond_12
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    if-eqz v5, :cond_13

    .line 748
    const/16 v5, 0x15

    iget-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 751
    :cond_13
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    if-eqz v5, :cond_14

    .line 752
    const/16 v5, 0x16

    iget-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 755
    :cond_14
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    if-eqz v5, :cond_15

    .line 756
    const/16 v5, 0x17

    iget-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 759
    :cond_15
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    if-eqz v5, :cond_16

    .line 760
    const/16 v5, 0x18

    iget-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 763
    :cond_16
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    if-eqz v5, :cond_17

    .line 764
    const/16 v5, 0x19

    iget-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 767
    :cond_17
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    if-eqz v5, :cond_18

    .line 768
    const/16 v5, 0x1a

    iget-object v6, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 771
    :cond_18
    iput v4, p0, Lcom/google/glass/companion/Proto$Envelope;->cachedSize:I

    .line 772
    return v4
.end method

.method public getSetupWifiC2G()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeMillis()J
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    return-wide v0
.end method

.method public getTimezoneC2G()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    return-object v0
.end method

.method public getUptimeMillis()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    return-wide v0
.end method

.method public getUrlG2C()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    return-object v0
.end method

.method public hasApiRequestC2G()Z
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasApiResponseG2C()Z
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCommand()Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCompanionInfo()Z
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGlassInfoRequestC2G()Z
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGlassInfoResponseG2C()Z
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGlassSetupRequestC2G()Z
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGlassSetupResponseG2C()Z
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInputBoxRequestG2C()Z
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInputBoxResponseC2G()Z
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLocationMessageC2G()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLocationRequestG2C()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMessageC2G()Z
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMotionC2G()Z
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNavigationRequestC2G()Z
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasScreenshot()Z
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSerialNumber()Z
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSetupWifiC2G()Z
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimeMillis()Z
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimezoneC2G()Z
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUptimeMillis()Z
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUrlG2C()Z
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/4 v3, 0x0

    .line 538
    const/16 v1, 0x11

    .line 539
    .local v1, result:I
    iget v2, p0, Lcom/google/glass/companion/Proto$Envelope;->version:I

    add-int/lit16 v1, v2, 0x20f

    .line 540
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber_:I

    add-int v1, v2, v4

    .line 541
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    iget-wide v6, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 542
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    iget-wide v6, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 543
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v2, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 549
    :cond_0
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    if-nez v2, :cond_4

    mul-int/lit8 v1, v1, 0x1f

    .line 555
    :cond_1
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    if-nez v2, :cond_6

    move v2, v3

    :goto_0
    add-int v1, v4, v2

    .line 556
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    if-nez v2, :cond_7

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 557
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    if-nez v2, :cond_8

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 558
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    if-nez v2, :cond_9

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 559
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    if-nez v2, :cond_a

    move v2, v3

    :goto_4
    add-int v1, v4, v2

    .line 560
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    if-nez v2, :cond_b

    move v2, v3

    :goto_5
    add-int v1, v4, v2

    .line 561
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    if-nez v2, :cond_c

    move v2, v3

    :goto_6
    add-int v1, v4, v2

    .line 562
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    if-nez v2, :cond_d

    move v2, v3

    :goto_7
    add-int v1, v4, v2

    .line 563
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    if-nez v2, :cond_e

    move v2, v3

    :goto_8
    add-int v1, v4, v2

    .line 564
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    if-nez v2, :cond_f

    move v2, v3

    :goto_9
    add-int v1, v4, v2

    .line 565
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    if-nez v2, :cond_10

    move v2, v3

    :goto_a
    add-int v1, v4, v2

    .line 566
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    if-nez v2, :cond_11

    move v2, v3

    :goto_b
    add-int v1, v4, v2

    .line 567
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    if-nez v2, :cond_12

    move v2, v3

    :goto_c
    add-int v1, v4, v2

    .line 568
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    if-nez v2, :cond_13

    move v2, v3

    :goto_d
    add-int v1, v4, v2

    .line 569
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    if-nez v2, :cond_14

    move v2, v3

    :goto_e
    add-int v1, v4, v2

    .line 570
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    if-nez v2, :cond_15

    move v2, v3

    :goto_f
    add-int v1, v4, v2

    .line 571
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    if-nez v2, :cond_16

    move v2, v3

    :goto_10
    add-int v1, v4, v2

    .line 572
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    if-nez v2, :cond_17

    move v2, v3

    :goto_11
    add-int v1, v4, v2

    .line 573
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    if-nez v2, :cond_18

    move v2, v3

    :goto_12
    add-int v1, v4, v2

    .line 574
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    if-nez v4, :cond_19

    :goto_13
    add-int v1, v2, v3

    .line 575
    return v1

    .line 545
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_14
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 546
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    move v2, v3

    :goto_15
    add-int v1, v4, v2

    .line 545
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 546
    :cond_3
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hashCode()I

    move-result v2

    goto :goto_15

    .line 551
    .end local v0           #i:I
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_16
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 552
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    aget-object v2, v2, v0

    if-nez v2, :cond_5

    move v2, v3

    :goto_17
    add-int v1, v4, v2

    .line 551
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 552
    :cond_5
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->hashCode()I

    move-result v2

    goto :goto_17

    .line 555
    .end local v0           #i:I
    :cond_6
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$LocationRequest;->hashCode()I

    move-result v2

    goto/16 :goto_0

    .line 556
    :cond_7
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$LocationMessage;->hashCode()I

    move-result v2

    goto/16 :goto_1

    .line 557
    :cond_8
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_2

    .line 558
    :cond_9
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_3

    .line 559
    :cond_a
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$NavigationRequest;->hashCode()I

    move-result v2

    goto/16 :goto_4

    .line 560
    :cond_b
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_5

    .line 561
    :cond_c
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_6

    .line 562
    :cond_d
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$CompanionInfo;->hashCode()I

    move-result v2

    goto/16 :goto_7

    .line 563
    :cond_e
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Error;->hashCode()I

    move-result v2

    goto/16 :goto_8

    .line 564
    :cond_f
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$ScreenShot;->hashCode()I

    move-result v2

    goto/16 :goto_9

    .line 565
    :cond_10
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Command;->hashCode()I

    move-result v2

    goto/16 :goto_a

    .line 566
    :cond_11
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$ApiRequest;->hashCode()I

    move-result v2

    goto/16 :goto_b

    .line 567
    :cond_12
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$ApiResponse;->hashCode()I

    move-result v2

    goto/16 :goto_c

    .line 568
    :cond_13
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$MotionEvent;->hashCode()I

    move-result v2

    goto/16 :goto_d

    .line 569
    :cond_14
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$GlassInfoRequest;->hashCode()I

    move-result v2

    goto/16 :goto_e

    .line 570
    :cond_15
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$GlassInfoResponse;->hashCode()I

    move-result v2

    goto/16 :goto_f

    .line 571
    :cond_16
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$InputBoxRequest;->hashCode()I

    move-result v2

    goto/16 :goto_10

    .line 572
    :cond_17
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$InputBoxResponse;->hashCode()I

    move-result v2

    goto/16 :goto_11

    .line 573
    :cond_18
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$GlassSetupRequest;->hashCode()I

    move-result v2

    goto/16 :goto_12

    .line 574
    :cond_19
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    invoke-virtual {v3}, Lcom/google/glass/companion/Proto$GlassSetupResponse;->hashCode()I

    move-result v3

    goto/16 :goto_13
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 7
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 780
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 781
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 785
    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 786
    :sswitch_0
    return-object p0

    .line 791
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/Proto$Envelope;->version:I

    goto :goto_0

    .line 795
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v5

    iput v5, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber_:I

    .line 796
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    goto :goto_0

    .line 800
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    .line 801
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    goto :goto_0

    .line 805
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    .line 806
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    goto :goto_0

    .line 810
    :sswitch_5
    const/16 v5, 0x2a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 811
    .local v0, arrayLength:I
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v5, :cond_2

    move v1, v4

    .line 812
    .local v1, i:I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 813
    .local v2, newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v5, :cond_1

    .line 814
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 816
    :cond_1
    iput-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 817
    :goto_2
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 818
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    aput-object v6, v5, v1

    .line 819
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 820
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 817
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 811
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_2
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    array-length v1, v5

    goto :goto_1

    .line 823
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_3
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    aput-object v6, v5, v1

    .line 824
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 828
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :sswitch_6
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    if-nez v5, :cond_4

    .line 829
    new-instance v5, Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$LocationRequest;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    .line 831
    :cond_4
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 835
    :sswitch_7
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    if-nez v5, :cond_5

    .line 836
    new-instance v5, Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$LocationMessage;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    .line 838
    :cond_5
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 842
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    .line 843
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    goto/16 :goto_0

    .line 847
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    .line 848
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    goto/16 :goto_0

    .line 852
    :sswitch_a
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    if-nez v5, :cond_6

    .line 853
    new-instance v5, Lcom/google/glass/companion/Proto$NavigationRequest;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$NavigationRequest;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    .line 855
    :cond_6
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 859
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    .line 860
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    goto/16 :goto_0

    .line 864
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    .line 865
    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    goto/16 :goto_0

    .line 869
    :sswitch_d
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    if-nez v5, :cond_7

    .line 870
    new-instance v5, Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$CompanionInfo;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 872
    :cond_7
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 876
    :sswitch_e
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    if-nez v5, :cond_8

    .line 877
    new-instance v5, Lcom/google/glass/companion/Proto$Error;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$Error;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    .line 879
    :cond_8
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 883
    :sswitch_f
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    if-nez v5, :cond_9

    .line 884
    new-instance v5, Lcom/google/glass/companion/Proto$ScreenShot;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$ScreenShot;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    .line 886
    :cond_9
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 890
    :sswitch_10
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    if-nez v5, :cond_a

    .line 891
    new-instance v5, Lcom/google/glass/companion/Proto$Command;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$Command;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    .line 893
    :cond_a
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 897
    :sswitch_11
    const/16 v5, 0x8a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 898
    .restart local v0       #arrayLength:I
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    if-nez v5, :cond_c

    move v1, v4

    .line 899
    .restart local v1       #i:I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/glass/companion/Proto$TimelineItemResponse;

    .line 900
    .local v2, newArray:[Lcom/google/glass/companion/Proto$TimelineItemResponse;
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    if-eqz v5, :cond_b

    .line 901
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 903
    :cond_b
    iput-object v2, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    .line 904
    :goto_4
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_d

    .line 905
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    new-instance v6, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    invoke-direct {v6}, Lcom/google/glass/companion/Proto$TimelineItemResponse;-><init>()V

    aput-object v6, v5, v1

    .line 906
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 907
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 904
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 898
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/glass/companion/Proto$TimelineItemResponse;
    :cond_c
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    array-length v1, v5

    goto :goto_3

    .line 910
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/glass/companion/Proto$TimelineItemResponse;
    :cond_d
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    new-instance v6, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    invoke-direct {v6}, Lcom/google/glass/companion/Proto$TimelineItemResponse;-><init>()V

    aput-object v6, v5, v1

    .line 911
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 915
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/glass/companion/Proto$TimelineItemResponse;
    :sswitch_12
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    if-nez v5, :cond_e

    .line 916
    new-instance v5, Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$ApiRequest;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    .line 918
    :cond_e
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 922
    :sswitch_13
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    if-nez v5, :cond_f

    .line 923
    new-instance v5, Lcom/google/glass/companion/Proto$ApiResponse;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$ApiResponse;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    .line 925
    :cond_f
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 929
    :sswitch_14
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    if-nez v5, :cond_10

    .line 930
    new-instance v5, Lcom/google/glass/companion/Proto$MotionEvent;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$MotionEvent;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    .line 932
    :cond_10
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 936
    :sswitch_15
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    if-nez v5, :cond_11

    .line 937
    new-instance v5, Lcom/google/glass/companion/Proto$GlassInfoRequest;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$GlassInfoRequest;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    .line 939
    :cond_11
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 943
    :sswitch_16
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    if-nez v5, :cond_12

    .line 944
    new-instance v5, Lcom/google/glass/companion/Proto$GlassInfoResponse;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$GlassInfoResponse;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    .line 946
    :cond_12
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 950
    :sswitch_17
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    if-nez v5, :cond_13

    .line 951
    new-instance v5, Lcom/google/glass/companion/Proto$InputBoxRequest;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$InputBoxRequest;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    .line 953
    :cond_13
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 957
    :sswitch_18
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    if-nez v5, :cond_14

    .line 958
    new-instance v5, Lcom/google/glass/companion/Proto$InputBoxResponse;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$InputBoxResponse;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    .line 960
    :cond_14
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 964
    :sswitch_19
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    if-nez v5, :cond_15

    .line 965
    new-instance v5, Lcom/google/glass/companion/Proto$GlassSetupRequest;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$GlassSetupRequest;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    .line 967
    :cond_15
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 971
    :sswitch_1a
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    if-nez v5, :cond_16

    .line 972
    new-instance v5, Lcom/google/glass/companion/Proto$GlassSetupResponse;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$GlassSetupResponse;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    .line 974
    :cond_16
    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 781
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
        0x92 -> :sswitch_12
        0x9a -> :sswitch_13
        0xa2 -> :sswitch_14
        0xaa -> :sswitch_15
        0xb2 -> :sswitch_16
        0xba -> :sswitch_17
        0xc2 -> :sswitch_18
        0xca -> :sswitch_19
        0xd2 -> :sswitch_1a
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$Envelope;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    return-object v0
.end method

.method public setApiRequestC2G(Lcom/google/glass/companion/Proto$ApiRequest;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .parameter "value"

    .prologue
    .line 307
    if-nez p1, :cond_0

    .line 308
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 310
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    .line 311
    return-object p0
.end method

.method public setApiResponseG2C(Lcom/google/glass/companion/Proto$ApiResponse;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .parameter "value"

    .prologue
    .line 326
    if-nez p1, :cond_0

    .line 327
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 329
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    .line 330
    return-object p0
.end method

.method public setCommand(Lcom/google/glass/companion/Proto$Command;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .parameter "value"

    .prologue
    .line 288
    if-nez p1, :cond_0

    .line 289
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 291
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    .line 292
    return-object p0
.end method

.method public setCompanionInfo(Lcom/google/glass/companion/Proto$CompanionInfo;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .parameter "value"

    .prologue
    .line 231
    if-nez p1, :cond_0

    .line 232
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 234
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 235
    return-object p0
.end method

.method public setError(Lcom/google/glass/companion/Proto$Error;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .parameter "value"

    .prologue
    .line 250
    if-nez p1, :cond_0

    .line 251
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 253
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    .line 254
    return-object p0
.end method

.method public setGlassInfoRequestC2G(Lcom/google/glass/companion/Proto$GlassInfoRequest;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .parameter "value"

    .prologue
    .line 364
    if-nez p1, :cond_0

    .line 365
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 367
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    .line 368
    return-object p0
.end method

.method public setGlassInfoResponseG2C(Lcom/google/glass/companion/Proto$GlassInfoResponse;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .parameter "value"

    .prologue
    .line 383
    if-nez p1, :cond_0

    .line 384
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 386
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    .line 387
    return-object p0
.end method

.method public setGlassSetupRequestC2G(Lcom/google/glass/companion/Proto$GlassSetupRequest;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .parameter "value"

    .prologue
    .line 440
    if-nez p1, :cond_0

    .line 441
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 443
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    .line 444
    return-object p0
.end method

.method public setGlassSetupResponseG2C(Lcom/google/glass/companion/Proto$GlassSetupResponse;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .parameter "value"

    .prologue
    .line 459
    if-nez p1, :cond_0

    .line 460
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 462
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    .line 463
    return-object p0
.end method

.method public setInputBoxRequestG2C(Lcom/google/glass/companion/Proto$InputBoxRequest;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .parameter "value"

    .prologue
    .line 402
    if-nez p1, :cond_0

    .line 403
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 405
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    .line 406
    return-object p0
.end method

.method public setInputBoxResponseC2G(Lcom/google/glass/companion/Proto$InputBoxResponse;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .parameter "value"

    .prologue
    .line 421
    if-nez p1, :cond_0

    .line 422
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 424
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    .line 425
    return-object p0
.end method

.method public setLocationMessageC2G(Lcom/google/glass/companion/Proto$LocationMessage;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .parameter "value"

    .prologue
    .line 105
    if-nez p1, :cond_0

    .line 106
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 108
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    .line 109
    return-object p0
.end method

.method public setLocationRequestG2C(Lcom/google/glass/companion/Proto$LocationRequest;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .parameter "value"

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 89
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    .line 90
    return-object p0
.end method

.method public setMessageC2G(Ljava/lang/String;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .parameter "value"

    .prologue
    .line 124
    if-nez p1, :cond_0

    .line 125
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 127
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    .line 128
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 129
    return-object p0
.end method

.method public setMotionC2G(Lcom/google/glass/companion/Proto$MotionEvent;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .parameter "value"

    .prologue
    .line 345
    if-nez p1, :cond_0

    .line 346
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 348
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    .line 349
    return-object p0
.end method

.method public setNavigationRequestC2G(Lcom/google/glass/companion/Proto$NavigationRequest;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .parameter "value"

    .prologue
    .line 168
    if-nez p1, :cond_0

    .line 169
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 171
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    .line 172
    return-object p0
.end method

.method public setScreenshot(Lcom/google/glass/companion/Proto$ScreenShot;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .parameter "value"

    .prologue
    .line 269
    if-nez p1, :cond_0

    .line 270
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 272
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    .line 273
    return-object p0
.end method

.method public setSerialNumber(I)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .parameter "value"

    .prologue
    .line 23
    iput p1, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber_:I

    .line 24
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 25
    return-object p0
.end method

.method public setSetupWifiC2G(Ljava/lang/String;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .parameter "value"

    .prologue
    .line 209
    if-nez p1, :cond_0

    .line 210
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 212
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    .line 213
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 214
    return-object p0
.end method

.method public setTimeMillis(J)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .parameter "value"

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    .line 43
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 44
    return-object p0
.end method

.method public setTimezoneC2G(Ljava/lang/String;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .parameter "value"

    .prologue
    .line 146
    if-nez p1, :cond_0

    .line 147
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 149
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    .line 150
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 151
    return-object p0
.end method

.method public setUptimeMillis(J)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .parameter "value"

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    .line 62
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 63
    return-object p0
.end method

.method public setUrlG2C(Ljava/lang/String;)Lcom/google/glass/companion/Proto$Envelope;
    .locals 1
    .parameter "value"

    .prologue
    .line 187
    if-nez p1, :cond_0

    .line 188
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 190
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    .line 191
    iget v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    .line 192
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 580
    const/4 v4, 0x1

    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->version:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 581
    iget v4, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 582
    const/4 v4, 0x2

    iget v5, p0, Lcom/google/glass/companion/Proto$Envelope;->serialNumber_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 584
    :cond_0
    iget v4, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 585
    const/4 v4, 0x3

    iget-wide v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timeMillis_:J

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 587
    :cond_1
    iget v4, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    .line 588
    const/4 v4, 0x4

    iget-wide v5, p0, Lcom/google/glass/companion/Proto$Envelope;->uptimeMillis_:J

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 590
    :cond_2
    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v4, :cond_3

    .line 591
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 592
    .local v1, element:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    const/4 v4, 0x5

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 591
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 595
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_3
    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    if-eqz v4, :cond_4

    .line 596
    const/4 v4, 0x6

    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->locationRequestG2C_:Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 598
    :cond_4
    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    if-eqz v4, :cond_5

    .line 599
    const/4 v4, 0x7

    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->locationMessageC2G_:Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 601
    :cond_5
    iget v4, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_6

    .line 602
    const/16 v4, 0x8

    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->messageC2G_:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 604
    :cond_6
    iget v4, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_7

    .line 605
    const/16 v4, 0x9

    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->timezoneC2G_:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 607
    :cond_7
    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    if-eqz v4, :cond_8

    .line 608
    const/16 v4, 0xa

    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->navigationRequestC2G_:Lcom/google/glass/companion/Proto$NavigationRequest;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 610
    :cond_8
    iget v4, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_9

    .line 611
    const/16 v4, 0xb

    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->urlG2C_:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 613
    :cond_9
    iget v4, p0, Lcom/google/glass/companion/Proto$Envelope;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_a

    .line 614
    const/16 v4, 0xc

    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->setupWifiC2G_:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 616
    :cond_a
    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    if-eqz v4, :cond_b

    .line 617
    const/16 v4, 0xd

    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->companionInfo_:Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 619
    :cond_b
    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    if-eqz v4, :cond_c

    .line 620
    const/16 v4, 0xe

    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->error_:Lcom/google/glass/companion/Proto$Error;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 622
    :cond_c
    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    if-eqz v4, :cond_d

    .line 623
    const/16 v4, 0xf

    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->screenshot_:Lcom/google/glass/companion/Proto$ScreenShot;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 625
    :cond_d
    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    if-eqz v4, :cond_e

    .line 626
    const/16 v4, 0x10

    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->command_:Lcom/google/glass/companion/Proto$Command;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 628
    :cond_e
    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    if-eqz v4, :cond_f

    .line 629
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Envelope;->timelineItemResponseC2G:[Lcom/google/glass/companion/Proto$TimelineItemResponse;

    .local v0, arr$:[Lcom/google/glass/companion/Proto$TimelineItemResponse;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v3, :cond_f

    aget-object v1, v0, v2

    .line 630
    .local v1, element:Lcom/google/glass/companion/Proto$TimelineItemResponse;
    const/16 v4, 0x11

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 629
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 633
    .end local v0           #arr$:[Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .end local v1           #element:Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_f
    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    if-eqz v4, :cond_10

    .line 634
    const/16 v4, 0x12

    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->apiRequestC2G_:Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 636
    :cond_10
    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    if-eqz v4, :cond_11

    .line 637
    const/16 v4, 0x13

    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->apiResponseG2C_:Lcom/google/glass/companion/Proto$ApiResponse;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 639
    :cond_11
    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    if-eqz v4, :cond_12

    .line 640
    const/16 v4, 0x14

    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->motionC2G_:Lcom/google/glass/companion/Proto$MotionEvent;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 642
    :cond_12
    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    if-eqz v4, :cond_13

    .line 643
    const/16 v4, 0x15

    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoRequestC2G_:Lcom/google/glass/companion/Proto$GlassInfoRequest;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 645
    :cond_13
    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    if-eqz v4, :cond_14

    .line 646
    const/16 v4, 0x16

    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassInfoResponseG2C_:Lcom/google/glass/companion/Proto$GlassInfoResponse;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 648
    :cond_14
    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    if-eqz v4, :cond_15

    .line 649
    const/16 v4, 0x17

    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxRequestG2C_:Lcom/google/glass/companion/Proto$InputBoxRequest;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 651
    :cond_15
    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    if-eqz v4, :cond_16

    .line 652
    const/16 v4, 0x18

    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->inputBoxResponseC2G_:Lcom/google/glass/companion/Proto$InputBoxResponse;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 654
    :cond_16
    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    if-eqz v4, :cond_17

    .line 655
    const/16 v4, 0x19

    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupRequestC2G_:Lcom/google/glass/companion/Proto$GlassSetupRequest;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 657
    :cond_17
    iget-object v4, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    if-eqz v4, :cond_18

    .line 658
    const/16 v4, 0x1a

    iget-object v5, p0, Lcom/google/glass/companion/Proto$Envelope;->glassSetupResponseG2C_:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 660
    :cond_18
    return-void
.end method
