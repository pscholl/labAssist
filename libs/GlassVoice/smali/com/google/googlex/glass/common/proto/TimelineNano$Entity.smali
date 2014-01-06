.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
.super Lcom/google/protobuf/nano/MessageNano;
.source "TimelineNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;,
        Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;,
        Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$ContactGroup;,
        Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Type;,
        Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$MessagingOption;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;


# instance fields
.field public acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

.field public acceptType:[Ljava/lang/String;

.field private bitField0_:I

.field public contactGroup:[I

.field private creationTime_:J

.field private displayName_:Ljava/lang/String;

.field private email_:Ljava/lang/String;

.field private fullName_:Ljava/lang/String;

.field private id_:Ljava/lang/String;

.field public imageUrl:[Ljava/lang/String;

.field private isCommunicationTarget_:Z

.field private messagingOption_:I

.field public messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

.field private nickname_:Ljava/lang/String;

.field private obfuscatedGaiaId_:Ljava/lang/String;

.field private phoneNumber_:Ljava/lang/String;

.field private priority_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

.field public secondaryEmail:[Ljava/lang/String;

.field public secondaryPhoneNumber:[Ljava/lang/String;

.field public sharingFeature:[I

.field private shouldSync_:Z

.field private source_:Ljava/lang/String;

.field private speakableName_:Ljava/lang/String;

.field private type_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2905
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2906
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 3357
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source_:Ljava/lang/String;

    .line 3379
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id_:Ljava/lang/String;

    .line 3401
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->obfuscatedGaiaId_:Ljava/lang/String;

    .line 3423
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .line 3426
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingOption_:I

    .line 3445
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    .line 3448
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName_:Ljava/lang/String;

    .line 3470
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->nickname_:Ljava/lang/String;

    .line 3492
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->fullName_:Ljava/lang/String;

    .line 3514
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    .line 3517
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->shouldSync_:Z

    .line 3536
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->type_:I

    .line 3555
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber_:Ljava/lang/String;

    .line 3577
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    .line 3580
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email_:Ljava/lang/String;

    .line 3602
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    .line 3605
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    .line 3608
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->isCommunicationTarget_:Z

    .line 3646
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    .line 3649
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->speakableName_:Ljava/lang/String;

    .line 3671
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    .line 3674
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->creationTime_:J

    .line 2906
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4278
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4272
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3693
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 3694
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source_:Ljava/lang/String;

    .line 3695
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id_:Ljava/lang/String;

    .line 3696
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->obfuscatedGaiaId_:Ljava/lang/String;

    .line 3697
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .line 3698
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingOption_:I

    .line 3699
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    .line 3700
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName_:Ljava/lang/String;

    .line 3701
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->nickname_:Ljava/lang/String;

    .line 3702
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->fullName_:Ljava/lang/String;

    .line 3703
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    .line 3704
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->shouldSync_:Z

    .line 3705
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->type_:I

    .line 3706
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber_:Ljava/lang/String;

    .line 3707
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    .line 3708
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email_:Ljava/lang/String;

    .line 3709
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    .line 3710
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    .line 3711
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->isCommunicationTarget_:Z

    .line 3712
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    .line 3713
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    .line 3714
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->speakableName_:Ljava/lang/String;

    .line 3715
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    .line 3716
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->creationTime_:J

    .line 3717
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->cachedSize:I

    .line 3718
    return-object p0
.end method

.method public clearCreationTime()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 2

    .prologue
    .line 3687
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->creationTime_:J

    .line 3688
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 3689
    return-object p0
.end method

.method public clearDisplayName()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 3464
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName_:Ljava/lang/String;

    .line 3465
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 3466
    return-object p0
.end method

.method public clearEmail()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 3596
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email_:Ljava/lang/String;

    .line 3597
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 3598
    return-object p0
.end method

.method public clearFullName()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 3508
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->fullName_:Ljava/lang/String;

    .line 3509
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 3510
    return-object p0
.end method

.method public clearId()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 3395
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id_:Ljava/lang/String;

    .line 3396
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 3397
    return-object p0
.end method

.method public clearIsCommunicationTarget()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 3621
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->isCommunicationTarget_:Z

    .line 3622
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 3623
    return-object p0
.end method

.method public clearMessagingOption()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 3439
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingOption_:I

    .line 3440
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 3441
    return-object p0
.end method

.method public clearNickname()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 3486
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->nickname_:Ljava/lang/String;

    .line 3487
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 3488
    return-object p0
.end method

.method public clearObfuscatedGaiaId()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 3417
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->obfuscatedGaiaId_:Ljava/lang/String;

    .line 3418
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 3419
    return-object p0
.end method

.method public clearPhoneNumber()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 3571
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber_:Ljava/lang/String;

    .line 3572
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 3573
    return-object p0
.end method

.method public clearPriority()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 3642
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    .line 3643
    return-object p0
.end method

.method public clearShouldSync()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 3530
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->shouldSync_:Z

    .line 3531
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 3532
    return-object p0
.end method

.method public clearSource()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 3373
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source_:Ljava/lang/String;

    .line 3374
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 3375
    return-object p0
.end method

.method public clearSpeakableName()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 3665
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->speakableName_:Ljava/lang/String;

    .line 3666
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 3667
    return-object p0
.end method

.method public clearType()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 3549
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->type_:I

    .line 3550
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 3551
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3723
    if-ne p1, p0, :cond_1

    .line 3726
    :cond_0
    :goto_0
    return v1

    .line 3724
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 3725
    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 3726
    .local v0, other:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->obfuscatedGaiaId_:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->obfuscatedGaiaId_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingOption_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingOption_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName_:Ljava/lang/String;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->nickname_:Ljava/lang/String;

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->nickname_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->fullName_:Ljava/lang/String;

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->fullName_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->shouldSync_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->shouldSync_:Z

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->type_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->type_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber_:Ljava/lang/String;

    if-nez v3, :cond_a

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email_:Ljava/lang/String;

    if-nez v3, :cond_b

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_8
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->isCommunicationTarget_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->isCommunicationTarget_:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    if-nez v3, :cond_c

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    if-nez v3, :cond_3

    :goto_9
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->speakableName_:Ljava/lang/String;

    if-nez v3, :cond_d

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->speakableName_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_a
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->creationTime_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->creationTime_:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->obfuscatedGaiaId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->obfuscatedGaiaId_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_4

    :cond_8
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->nickname_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->nickname_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_5

    :cond_9
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->fullName_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->fullName_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_6

    :cond_a
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_7

    :cond_b
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_8

    :cond_c
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_9

    :cond_d
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->speakableName_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->speakableName_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_a
.end method

.method public getCreationTime()J
    .locals 2

    .prologue
    .line 3676
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->creationTime_:J

    return-wide v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3450
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName_:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3582
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email_:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3494
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->fullName_:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3381
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsCommunicationTarget()Z
    .locals 1

    .prologue
    .line 3610
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->isCommunicationTarget_:Z

    return v0
.end method

.method public getMessagingOption()I
    .locals 1

    .prologue
    .line 3428
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingOption_:I

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3472
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->nickname_:Ljava/lang/String;

    return-object v0
.end method

.method public getObfuscatedGaiaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3403
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->obfuscatedGaiaId_:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3557
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber_:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;
    .locals 1

    .prologue
    .line 3629
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 9

    .prologue
    .line 3910
    const/4 v5, 0x0

    .line 3911
    .local v5, size:I
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    .line 3912
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source_:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 3915
    :cond_0
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_1

    .line 3916
    const/4 v6, 0x2

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id_:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 3919
    :cond_1
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_2

    .line 3920
    const/4 v6, 0x3

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName_:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 3923
    :cond_2
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_3

    .line 3924
    const/4 v6, 0x5

    iget-boolean v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->shouldSync_:Z

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v6

    add-int/2addr v5, v6

    .line 3927
    :cond_3
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v6, v6, 0x100

    if-eqz v6, :cond_4

    .line 3928
    const/4 v6, 0x6

    iget v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->type_:I

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    .line 3931
    :cond_4
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_5

    .line 3932
    const/4 v6, 0x7

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber_:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 3935
    :cond_5
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_6

    .line 3936
    const/16 v6, 0x8

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email_:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 3939
    :cond_6
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_8

    .line 3940
    const/4 v1, 0x0

    .line 3941
    .local v1, dataSize:I
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_7

    aget-object v2, v0, v3

    .line 3942
    .local v2, element:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v1, v6

    .line 3941
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3945
    .end local v2           #element:Ljava/lang/String;
    :cond_7
    add-int/2addr v5, v1

    .line 3946
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    .line 3948
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #dataSize:I
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_8
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v6, v6, 0x800

    if-eqz v6, :cond_9

    .line 3949
    const/16 v6, 0xa

    iget-boolean v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->isCommunicationTarget_:Z

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v6

    add-int/2addr v5, v6

    .line 3952
    :cond_9
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_b

    .line 3953
    const/4 v1, 0x0

    .line 3954
    .restart local v1       #dataSize:I
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_1
    if-ge v3, v4, :cond_a

    aget-object v2, v0, v3

    .line 3955
    .restart local v2       #element:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v1, v6

    .line 3954
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3958
    .end local v2           #element:Ljava/lang/String;
    :cond_a
    add-int/2addr v5, v1

    .line 3959
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    .line 3961
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #dataSize:I
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_b
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_d

    .line 3962
    const/4 v1, 0x0

    .line 3963
    .restart local v1       #dataSize:I
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_2
    if-ge v3, v4, :cond_c

    aget-object v2, v0, v3

    .line 3964
    .restart local v2       #element:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v1, v6

    .line 3963
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3967
    .end local v2           #element:Ljava/lang/String;
    :cond_c
    add-int/2addr v5, v1

    .line 3968
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    .line 3970
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #dataSize:I
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_d
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    if-eqz v6, :cond_e

    .line 3971
    const/16 v6, 0xe

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 3974
    :cond_e
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_10

    .line 3975
    const/4 v1, 0x0

    .line 3976
    .restart local v1       #dataSize:I
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_3
    if-ge v3, v4, :cond_f

    aget-object v2, v0, v3

    .line 3977
    .restart local v2       #element:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v1, v6

    .line 3976
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 3980
    .end local v2           #element:Ljava/lang/String;
    :cond_f
    add-int/2addr v5, v1

    .line 3981
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    .line 3983
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #dataSize:I
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_10
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    if-eqz v6, :cond_11

    .line 3984
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_4
    if-ge v3, v4, :cond_11

    aget-object v2, v0, v3

    .line 3985
    .local v2, element:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    const/16 v6, 0x10

    invoke-static {v6, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 3984
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 3989
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .end local v2           #element:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_11
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v6, v6, 0x1000

    if-eqz v6, :cond_12

    .line 3990
    const/16 v6, 0x11

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->speakableName_:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 3993
    :cond_12
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    if-eqz v6, :cond_14

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    array-length v6, v6

    if-lez v6, :cond_14

    .line 3994
    const/4 v1, 0x0

    .line 3995
    .restart local v1       #dataSize:I
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    .local v0, arr$:[I
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_5
    if-ge v3, v4, :cond_13

    aget v2, v0, v3

    .line 3996
    .local v2, element:I
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v1, v6

    .line 3995
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 3999
    .end local v2           #element:I
    :cond_13
    add-int/2addr v5, v1

    .line 4000
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 4002
    .end local v0           #arr$:[I
    .end local v1           #dataSize:I
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_14
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v6, v6, 0x2000

    if-eqz v6, :cond_15

    .line 4003
    const/16 v6, 0x15

    iget-wide v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->creationTime_:J

    invoke-static {v6, v7, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v6

    add-int/2addr v5, v6

    .line 4006
    :cond_15
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    if-eqz v6, :cond_16

    .line 4007
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_6
    if-ge v3, v4, :cond_16

    aget-object v2, v0, v3

    .line 4008
    .local v2, element:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    const/16 v6, 0x16

    invoke-static {v6, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 4007
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 4012
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .end local v2           #element:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_16
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_17

    .line 4013
    const/16 v6, 0x17

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->nickname_:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 4016
    :cond_17
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_18

    .line 4017
    const/16 v6, 0x19

    iget v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingOption_:I

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    .line 4020
    :cond_18
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_19

    .line 4021
    const/16 v6, 0x1a

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->fullName_:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 4024
    :cond_19
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    if-eqz v6, :cond_1b

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    array-length v6, v6

    if-lez v6, :cond_1b

    .line 4025
    const/4 v1, 0x0

    .line 4026
    .restart local v1       #dataSize:I
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    .local v0, arr$:[I
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_7
    if-ge v3, v4, :cond_1a

    aget v2, v0, v3

    .line 4027
    .local v2, element:I
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v1, v6

    .line 4026
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 4030
    .end local v2           #element:I
    :cond_1a
    add-int/2addr v5, v1

    .line 4031
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 4033
    .end local v0           #arr$:[I
    .end local v1           #dataSize:I
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1b
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_1c

    .line 4034
    const/16 v6, 0x1c

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->obfuscatedGaiaId_:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 4037
    :cond_1c
    iput v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->cachedSize:I

    .line 4038
    return v5
.end method

.method public getShouldSync()Z
    .locals 1

    .prologue
    .line 3519
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->shouldSync_:Z

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3359
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source_:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeakableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3651
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->speakableName_:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 3538
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->type_:I

    return v0
.end method

.method public hasCreationTime()Z
    .locals 1

    .prologue
    .line 3684
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDisplayName()Z
    .locals 1

    .prologue
    .line 3461
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEmail()Z
    .locals 1

    .prologue
    .line 3593
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFullName()Z
    .locals 1

    .prologue
    .line 3505
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 3392
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsCommunicationTarget()Z
    .locals 1

    .prologue
    .line 3618
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMessagingOption()Z
    .locals 1

    .prologue
    .line 3436
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNickname()Z
    .locals 1

    .prologue
    .line 3483
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasObfuscatedGaiaId()Z
    .locals 1

    .prologue
    .line 3414
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPhoneNumber()Z
    .locals 1

    .prologue
    .line 3568
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPriority()Z
    .locals 1

    .prologue
    .line 3639
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasShouldSync()Z
    .locals 1

    .prologue
    .line 3527
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSource()Z
    .locals 1

    .prologue
    .line 3370
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSpeakableName()Z
    .locals 1

    .prologue
    .line 3662
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 3546
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3752
    const/16 v1, 0x11

    .line 3753
    .local v1, result:I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source_:Ljava/lang/String;

    if-nez v2, :cond_8

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 3754
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id_:Ljava/lang/String;

    if-nez v2, :cond_9

    move v2, v3

    :goto_1
    add-int v1, v6, v2

    .line 3755
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->obfuscatedGaiaId_:Ljava/lang/String;

    if-nez v2, :cond_a

    move v2, v3

    :goto_2
    add-int v1, v6, v2

    .line 3756
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    if-nez v2, :cond_b

    mul-int/lit8 v1, v1, 0x1f

    .line 3762
    :cond_0
    mul-int/lit8 v2, v1, 0x1f

    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingOption_:I

    add-int v1, v2, v6

    .line 3763
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    if-nez v2, :cond_d

    mul-int/lit8 v1, v1, 0x1f

    .line 3769
    :cond_1
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName_:Ljava/lang/String;

    if-nez v2, :cond_e

    move v2, v3

    :goto_3
    add-int v1, v6, v2

    .line 3770
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->nickname_:Ljava/lang/String;

    if-nez v2, :cond_f

    move v2, v3

    :goto_4
    add-int v1, v6, v2

    .line 3771
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->fullName_:Ljava/lang/String;

    if-nez v2, :cond_10

    move v2, v3

    :goto_5
    add-int v1, v6, v2

    .line 3772
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    if-nez v2, :cond_11

    mul-int/lit8 v1, v1, 0x1f

    .line 3778
    :cond_2
    mul-int/lit8 v6, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->shouldSync_:Z

    if-eqz v2, :cond_13

    move v2, v4

    :goto_6
    add-int v1, v6, v2

    .line 3779
    mul-int/lit8 v2, v1, 0x1f

    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->type_:I

    add-int v1, v2, v6

    .line 3780
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber_:Ljava/lang/String;

    if-nez v2, :cond_14

    move v2, v3

    :goto_7
    add-int v1, v6, v2

    .line 3781
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    if-nez v2, :cond_15

    mul-int/lit8 v1, v1, 0x1f

    .line 3787
    :cond_3
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email_:Ljava/lang/String;

    if-nez v2, :cond_17

    move v2, v3

    :goto_8
    add-int v1, v6, v2

    .line 3788
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    if-nez v2, :cond_18

    mul-int/lit8 v1, v1, 0x1f

    .line 3794
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    if-nez v2, :cond_1a

    mul-int/lit8 v1, v1, 0x1f

    .line 3800
    :cond_5
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->isCommunicationTarget_:Z

    if-eqz v6, :cond_1c

    :goto_9
    add-int v1, v2, v4

    .line 3801
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    if-nez v2, :cond_1d

    move v2, v3

    :goto_a
    add-int v1, v4, v2

    .line 3802
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    if-nez v2, :cond_1e

    mul-int/lit8 v1, v1, 0x1f

    .line 3808
    :cond_6
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->speakableName_:Ljava/lang/String;

    if-nez v4, :cond_20

    :goto_b
    add-int v1, v2, v3

    .line 3809
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    if-nez v2, :cond_21

    mul-int/lit8 v1, v1, 0x1f

    .line 3815
    :cond_7
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->creationTime_:J

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->creationTime_:J

    const/16 v7, 0x20

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 3816
    return v1

    .line 3753
    :cond_8
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_0

    .line 3754
    :cond_9
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    .line 3755
    :cond_a
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->obfuscatedGaiaId_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_2

    .line 3758
    :cond_b
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 3759
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    aget-object v2, v2, v0

    if-nez v2, :cond_c

    move v2, v3

    :goto_d
    add-int v1, v6, v2

    .line 3758
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 3759
    :cond_c
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;->hashCode()I

    move-result v2

    goto :goto_d

    .line 3765
    .end local v0           #i:I
    :cond_d
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_e
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 3766
    mul-int/lit8 v2, v1, 0x1f

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    aget v6, v6, v0

    add-int v1, v2, v6

    .line 3765
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 3769
    .end local v0           #i:I
    :cond_e
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_3

    .line 3770
    :cond_f
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->nickname_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_4

    .line 3771
    :cond_10
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->fullName_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_5

    .line 3774
    :cond_11
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_f
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 3775
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_12

    move v2, v3

    :goto_10
    add-int v1, v6, v2

    .line 3774
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 3775
    :cond_12
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_10

    .end local v0           #i:I
    :cond_13
    move v2, v5

    .line 3778
    goto/16 :goto_6

    .line 3780
    :cond_14
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_7

    .line 3783
    :cond_15
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_11
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 3784
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_16

    move v2, v3

    :goto_12
    add-int v1, v6, v2

    .line 3783
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 3784
    :cond_16
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_12

    .line 3787
    .end local v0           #i:I
    :cond_17
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_8

    .line 3790
    :cond_18
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_13
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 3791
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_19

    move v2, v3

    :goto_14
    add-int v1, v6, v2

    .line 3790
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 3791
    :cond_19
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_14

    .line 3796
    .end local v0           #i:I
    :cond_1a
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_15
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 3797
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_1b

    move v2, v3

    :goto_16
    add-int v1, v6, v2

    .line 3796
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 3797
    :cond_1b
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_16

    .end local v0           #i:I
    :cond_1c
    move v4, v5

    .line 3800
    goto/16 :goto_9

    .line 3801
    :cond_1d
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->hashCode()I

    move-result v2

    goto/16 :goto_a

    .line 3804
    :cond_1e
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_17
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 3805
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    aget-object v2, v2, v0

    if-nez v2, :cond_1f

    move v2, v3

    :goto_18
    add-int v1, v4, v2

    .line 3804
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 3805
    :cond_1f
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->hashCode()I

    move-result v2

    goto :goto_18

    .line 3808
    .end local v0           #i:I
    :cond_20
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->speakableName_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_b

    .line 3811
    :cond_21
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_19
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 3812
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    aget v3, v3, v0

    add-int v1, v2, v3

    .line 3811
    add-int/lit8 v0, v0, 0x1

    goto :goto_19
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 9
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 4046
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 4047
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 4051
    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 4052
    :sswitch_0
    return-object p0

    .line 4057
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source_:Ljava/lang/String;

    .line 4058
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    goto :goto_0

    .line 4062
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id_:Ljava/lang/String;

    .line 4063
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    goto :goto_0

    .line 4067
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName_:Ljava/lang/String;

    .line 4068
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    goto :goto_0

    .line 4072
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->shouldSync_:Z

    .line 4073
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit16 v6, v6, 0x80

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    goto :goto_0

    .line 4077
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 4078
    .local v4, temp:I
    if-eqz v4, :cond_1

    if-ne v4, v8, :cond_2

    .line 4080
    :cond_1
    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->type_:I

    .line 4084
    :goto_1
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit16 v6, v6, 0x100

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    goto :goto_0

    .line 4082
    :cond_2
    iput v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->type_:I

    goto :goto_1

    .line 4088
    .end local v4           #temp:I
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber_:Ljava/lang/String;

    .line 4089
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit16 v6, v6, 0x200

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    goto :goto_0

    .line 4093
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email_:Ljava/lang/String;

    .line 4094
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit16 v6, v6, 0x400

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    goto :goto_0

    .line 4098
    :sswitch_8
    const/16 v6, 0x4a

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4099
    .local v0, arrayLength:I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    array-length v1, v6

    .line 4100
    .local v1, i:I
    add-int v6, v1, v0

    new-array v2, v6, [Ljava/lang/String;

    .line 4101
    .local v2, newArray:[Ljava/lang/String;
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4102
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    .line 4103
    :goto_2
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_3

    .line 4104
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 4105
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4103
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4108
    :cond_3
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    goto/16 :goto_0

    .line 4112
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Ljava/lang/String;
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->isCommunicationTarget_:Z

    .line 4113
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit16 v6, v6, 0x800

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    goto/16 :goto_0

    .line 4117
    :sswitch_a
    const/16 v6, 0x62

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4118
    .restart local v0       #arrayLength:I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    array-length v1, v6

    .line 4119
    .restart local v1       #i:I
    add-int v6, v1, v0

    new-array v2, v6, [Ljava/lang/String;

    .line 4120
    .restart local v2       #newArray:[Ljava/lang/String;
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4121
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    .line 4122
    :goto_3
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_4

    .line 4123
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 4124
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4122
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4127
    :cond_4
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    goto/16 :goto_0

    .line 4131
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Ljava/lang/String;
    :sswitch_b
    const/16 v6, 0x6a

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4132
    .restart local v0       #arrayLength:I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    array-length v1, v6

    .line 4133
    .restart local v1       #i:I
    add-int v6, v1, v0

    new-array v2, v6, [Ljava/lang/String;

    .line 4134
    .restart local v2       #newArray:[Ljava/lang/String;
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4135
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    .line 4136
    :goto_4
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_5

    .line 4137
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 4138
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4136
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 4141
    :cond_5
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    goto/16 :goto_0

    .line 4145
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Ljava/lang/String;
    :sswitch_c
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    if-nez v6, :cond_6

    .line 4146
    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;-><init>()V

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    .line 4148
    :cond_6
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 4152
    :sswitch_d
    const/16 v6, 0x7a

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4153
    .restart local v0       #arrayLength:I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    array-length v1, v6

    .line 4154
    .restart local v1       #i:I
    add-int v6, v1, v0

    new-array v2, v6, [Ljava/lang/String;

    .line 4155
    .restart local v2       #newArray:[Ljava/lang/String;
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4156
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    .line 4157
    :goto_5
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_7

    .line 4158
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 4159
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4157
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 4162
    :cond_7
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    goto/16 :goto_0

    .line 4166
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Ljava/lang/String;
    :sswitch_e
    const/16 v6, 0x82

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4167
    .restart local v0       #arrayLength:I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    if-nez v6, :cond_9

    move v1, v5

    .line 4168
    .restart local v1       #i:I
    :goto_6
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    .line 4169
    .local v2, newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    if-eqz v6, :cond_8

    .line 4170
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4172
    :cond_8
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    .line 4173
    :goto_7
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_a

    .line 4174
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;-><init>()V

    aput-object v7, v6, v1

    .line 4175
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 4176
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4173
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4167
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    :cond_9
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    array-length v1, v6

    goto :goto_6

    .line 4179
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    :cond_a
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;-><init>()V

    aput-object v7, v6, v1

    .line 4180
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 4184
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->speakableName_:Ljava/lang/String;

    .line 4185
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit16 v6, v6, 0x1000

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    goto/16 :goto_0

    .line 4189
    :sswitch_10
    const/16 v6, 0xa0

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4190
    .restart local v0       #arrayLength:I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    array-length v1, v6

    .line 4191
    .restart local v1       #i:I
    add-int v6, v1, v0

    new-array v2, v6, [I

    .line 4192
    .local v2, newArray:[I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4193
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    .line 4194
    :goto_8
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_b

    .line 4195
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    aput v7, v6, v1

    .line 4196
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4194
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 4199
    :cond_b
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    aput v7, v6, v1

    goto/16 :goto_0

    .line 4203
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[I
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->creationTime_:J

    .line 4204
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit16 v6, v6, 0x2000

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    goto/16 :goto_0

    .line 4208
    :sswitch_12
    const/16 v6, 0xb2

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4209
    .restart local v0       #arrayLength:I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    if-nez v6, :cond_d

    move v1, v5

    .line 4210
    .restart local v1       #i:I
    :goto_9
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .line 4211
    .local v2, newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    if-eqz v6, :cond_c

    .line 4212
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4214
    :cond_c
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .line 4215
    :goto_a
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_e

    .line 4216
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;-><init>()V

    aput-object v7, v6, v1

    .line 4217
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 4218
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4215
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 4209
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    :cond_d
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    array-length v1, v6

    goto :goto_9

    .line 4221
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    :cond_e
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;-><init>()V

    aput-object v7, v6, v1

    .line 4222
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 4226
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->nickname_:Ljava/lang/String;

    .line 4227
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    goto/16 :goto_0

    .line 4231
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 4232
    .restart local v4       #temp:I
    if-eqz v4, :cond_f

    if-eq v4, v8, :cond_f

    const/4 v6, 0x2

    if-ne v4, v6, :cond_10

    .line 4235
    :cond_f
    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingOption_:I

    .line 4239
    :goto_b
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    goto/16 :goto_0

    .line 4237
    :cond_10
    iput v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingOption_:I

    goto :goto_b

    .line 4243
    .end local v4           #temp:I
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->fullName_:Ljava/lang/String;

    .line 4244
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit8 v6, v6, 0x40

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    goto/16 :goto_0

    .line 4248
    :sswitch_16
    const/16 v6, 0xd8

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4249
    .restart local v0       #arrayLength:I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    array-length v1, v6

    .line 4250
    .restart local v1       #i:I
    add-int v6, v1, v0

    new-array v2, v6, [I

    .line 4251
    .local v2, newArray:[I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4252
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    .line 4253
    :goto_c
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_11

    .line 4254
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    aput v7, v6, v1

    .line 4255
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4253
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 4258
    :cond_11
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    aput v7, v6, v1

    goto/16 :goto_0

    .line 4262
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[I
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->obfuscatedGaiaId_:Ljava/lang/String;

    .line 4263
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    goto/16 :goto_0

    .line 4047
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x28 -> :sswitch_4
        0x30 -> :sswitch_5
        0x3a -> :sswitch_6
        0x42 -> :sswitch_7
        0x4a -> :sswitch_8
        0x50 -> :sswitch_9
        0x62 -> :sswitch_a
        0x6a -> :sswitch_b
        0x72 -> :sswitch_c
        0x7a -> :sswitch_d
        0x82 -> :sswitch_e
        0x8a -> :sswitch_f
        0xa0 -> :sswitch_10
        0xa8 -> :sswitch_11
        0xb2 -> :sswitch_12
        0xba -> :sswitch_13
        0xc8 -> :sswitch_14
        0xd2 -> :sswitch_15
        0xd8 -> :sswitch_16
        0xe2 -> :sswitch_17
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
    .line 2902
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    return-object v0
.end method

.method public setCreationTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1
    .parameter "value"

    .prologue
    .line 3679
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->creationTime_:J

    .line 3680
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 3681
    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1
    .parameter "value"

    .prologue
    .line 3453
    if-nez p1, :cond_0

    .line 3454
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3456
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName_:Ljava/lang/String;

    .line 3457
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 3458
    return-object p0
.end method

.method public setEmail(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1
    .parameter "value"

    .prologue
    .line 3585
    if-nez p1, :cond_0

    .line 3586
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3588
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email_:Ljava/lang/String;

    .line 3589
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 3590
    return-object p0
.end method

.method public setFullName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1
    .parameter "value"

    .prologue
    .line 3497
    if-nez p1, :cond_0

    .line 3498
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3500
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->fullName_:Ljava/lang/String;

    .line 3501
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 3502
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1
    .parameter "value"

    .prologue
    .line 3384
    if-nez p1, :cond_0

    .line 3385
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3387
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id_:Ljava/lang/String;

    .line 3388
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 3389
    return-object p0
.end method

.method public setIsCommunicationTarget(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1
    .parameter "value"

    .prologue
    .line 3613
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->isCommunicationTarget_:Z

    .line 3614
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 3615
    return-object p0
.end method

.method public setMessagingOption(I)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1
    .parameter "value"

    .prologue
    .line 3431
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingOption_:I

    .line 3432
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 3433
    return-object p0
.end method

.method public setNickname(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1
    .parameter "value"

    .prologue
    .line 3475
    if-nez p1, :cond_0

    .line 3476
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3478
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->nickname_:Ljava/lang/String;

    .line 3479
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 3480
    return-object p0
.end method

.method public setObfuscatedGaiaId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1
    .parameter "value"

    .prologue
    .line 3406
    if-nez p1, :cond_0

    .line 3407
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3409
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->obfuscatedGaiaId_:Ljava/lang/String;

    .line 3410
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 3411
    return-object p0
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1
    .parameter "value"

    .prologue
    .line 3560
    if-nez p1, :cond_0

    .line 3561
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3563
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber_:Ljava/lang/String;

    .line 3564
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 3565
    return-object p0
.end method

.method public setPriority(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1
    .parameter "value"

    .prologue
    .line 3632
    if-nez p1, :cond_0

    .line 3633
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3635
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    .line 3636
    return-object p0
.end method

.method public setShouldSync(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1
    .parameter "value"

    .prologue
    .line 3522
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->shouldSync_:Z

    .line 3523
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 3524
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1
    .parameter "value"

    .prologue
    .line 3362
    if-nez p1, :cond_0

    .line 3363
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3365
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source_:Ljava/lang/String;

    .line 3366
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 3367
    return-object p0
.end method

.method public setSpeakableName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1
    .parameter "value"

    .prologue
    .line 3654
    if-nez p1, :cond_0

    .line 3655
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3657
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->speakableName_:Ljava/lang/String;

    .line 3658
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 3659
    return-object p0
.end method

.method public setType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1
    .parameter "value"

    .prologue
    .line 3541
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->type_:I

    .line 3542
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    .line 3543
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
    .line 3821
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 3822
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source_:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3824
    :cond_0
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 3825
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id_:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3827
    :cond_1
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_2

    .line 3828
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName_:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3830
    :cond_2
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_3

    .line 3831
    const/4 v4, 0x5

    iget-boolean v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->shouldSync_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3833
    :cond_3
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_4

    .line 3834
    const/4 v4, 0x6

    iget v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->type_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3836
    :cond_4
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_5

    .line 3837
    const/4 v4, 0x7

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber_:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3839
    :cond_5
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_6

    .line 3840
    const/16 v4, 0x8

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email_:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3842
    :cond_6
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 3843
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptType:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_7

    aget-object v1, v0, v2

    .line 3844
    .local v1, element:Ljava/lang/String;
    const/16 v4, 0x9

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3843
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3847
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #element:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_7
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_8

    .line 3848
    const/16 v4, 0xa

    iget-boolean v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->isCommunicationTarget_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3850
    :cond_8
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 3851
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v3, :cond_9

    aget-object v1, v0, v2

    .line 3852
    .restart local v1       #element:Ljava/lang/String;
    const/16 v4, 0xc

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3851
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3855
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #element:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_9
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 3856
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_2
    if-ge v2, v3, :cond_a

    aget-object v1, v0, v2

    .line 3857
    .restart local v1       #element:Ljava/lang/String;
    const/16 v4, 0xd

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3856
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3860
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #element:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_a
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    if-eqz v4, :cond_b

    .line 3861
    const/16 v4, 0xe

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->priority_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 3863
    :cond_b
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    if-eqz v4, :cond_c

    .line 3864
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryEmail:[Ljava/lang/String;

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_3
    if-ge v2, v3, :cond_c

    aget-object v1, v0, v2

    .line 3865
    .restart local v1       #element:Ljava/lang/String;
    const/16 v4, 0xf

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3864
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3868
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #element:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_c
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    if-eqz v4, :cond_d

    .line 3869
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_4
    if-ge v2, v3, :cond_d

    aget-object v1, v0, v2

    .line 3870
    .local v1, element:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    const/16 v4, 0x10

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 3869
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 3873
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_d
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_e

    .line 3874
    const/16 v4, 0x11

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->speakableName_:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3876
    :cond_e
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    array-length v4, v4

    if-lez v4, :cond_f

    .line 3877
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->contactGroup:[I

    .local v0, arr$:[I
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_5
    if-ge v2, v3, :cond_f

    aget v1, v0, v2

    .line 3878
    .local v1, element:I
    const/16 v4, 0x14

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3877
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 3881
    .end local v0           #arr$:[I
    .end local v1           #element:I
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_f
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_10

    .line 3882
    const/16 v4, 0x15

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->creationTime_:J

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 3884
    :cond_10
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    if-eqz v4, :cond_11

    .line 3885
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingPersona:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_6
    if-ge v2, v3, :cond_11

    aget-object v1, v0, v2

    .line 3886
    .local v1, element:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    const/16 v4, 0x16

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 3885
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 3889
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/TimelineNano$MessagingPersona;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_11
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_12

    .line 3890
    const/16 v4, 0x17

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->nickname_:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3892
    :cond_12
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_13

    .line 3893
    const/16 v4, 0x19

    iget v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->messagingOption_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3895
    :cond_13
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_14

    .line 3896
    const/16 v4, 0x1a

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->fullName_:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3898
    :cond_14
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    array-length v4, v4

    if-lez v4, :cond_15

    .line 3899
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->sharingFeature:[I

    .local v0, arr$:[I
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_7
    if-ge v2, v3, :cond_15

    aget v1, v0, v2

    .line 3900
    .local v1, element:I
    const/16 v4, 0x1b

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3899
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 3903
    .end local v0           #arr$:[I
    .end local v1           #element:I
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_15
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_16

    .line 3904
    const/16 v4, 0x1c

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->obfuscatedGaiaId_:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3906
    :cond_16
    return-void
.end method
