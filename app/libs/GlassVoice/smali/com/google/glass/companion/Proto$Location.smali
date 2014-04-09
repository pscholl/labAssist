.class public final Lcom/google/glass/companion/Proto$Location;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Location"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$Location;


# instance fields
.field private accuracy_:F

.field private altitude_:D

.field private bearing_:F

.field private bitField0_:I

.field private latitude_:D

.field private levelId_:Ljava/lang/String;

.field private levelNumberE3_:I

.field private longitude_:D

.field private satellitesUsedInFix_:I

.field private speed_:F

.field private time_:J

.field private visibleSatellites_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2572
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$Location;

    sput-object v0, Lcom/google/glass/companion/Proto$Location;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$Location;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 2573
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 2578
    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    .line 2597
    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    .line 2616
    iput v2, p0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    .line 2635
    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    .line 2654
    iput v2, p0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    .line 2673
    iput v2, p0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    .line 2692
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    .line 2711
    iput v3, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    .line 2730
    iput v3, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    .line 2749
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/String;

    .line 2771
    iput v3, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I

    .line 2573
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Location;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3010
    new-instance v0, Lcom/google/glass/companion/Proto$Location;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Location;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$Location;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Location;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$Location;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3004
    new-instance v0, Lcom/google/glass/companion/Proto$Location;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Location;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Location;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/glass/companion/Proto$Location;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 2790
    iput v2, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 2791
    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    .line 2792
    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    .line 2793
    iput v3, p0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    .line 2794
    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    .line 2795
    iput v3, p0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    .line 2796
    iput v3, p0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    .line 2797
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    .line 2798
    iput v2, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    .line 2799
    iput v2, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    .line 2800
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/String;

    .line 2801
    iput v2, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I

    .line 2802
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->cachedSize:I

    .line 2803
    return-object p0
.end method

.method public clearAccuracy()Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 2629
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    .line 2630
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 2631
    return-object p0
.end method

.method public clearAltitude()Lcom/google/glass/companion/Proto$Location;
    .locals 2

    .prologue
    .line 2648
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    .line 2649
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 2650
    return-object p0
.end method

.method public clearBearing()Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 2667
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    .line 2668
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 2669
    return-object p0
.end method

.method public clearLatitude()Lcom/google/glass/companion/Proto$Location;
    .locals 2

    .prologue
    .line 2591
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    .line 2592
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 2593
    return-object p0
.end method

.method public clearLevelId()Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 2765
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/String;

    .line 2766
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 2767
    return-object p0
.end method

.method public clearLevelNumberE3()Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 2784
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I

    .line 2785
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 2786
    return-object p0
.end method

.method public clearLongitude()Lcom/google/glass/companion/Proto$Location;
    .locals 2

    .prologue
    .line 2610
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    .line 2611
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 2612
    return-object p0
.end method

.method public clearSatellitesUsedInFix()Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 2724
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    .line 2725
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 2726
    return-object p0
.end method

.method public clearSpeed()Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 2686
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    .line 2687
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 2688
    return-object p0
.end method

.method public clearTime()Lcom/google/glass/companion/Proto$Location;
    .locals 2

    .prologue
    .line 2705
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    .line 2706
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 2707
    return-object p0
.end method

.method public clearVisibleSatellites()Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 2743
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    .line 2744
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 2745
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2808
    if-ne p1, p0, :cond_1

    .line 2811
    :cond_0
    :goto_0
    return v1

    .line 2809
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$Location;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 2810
    check-cast v0, Lcom/google/glass/companion/Proto$Location;

    .line 2811
    .local v0, other:Lcom/google/glass/companion/Proto$Location;
    iget-wide v3, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    iget-wide v5, v0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    iget-wide v5, v0, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    iget v4, v0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    iget-wide v5, v0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    iget v4, v0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    iget v4, v0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    iget-wide v5, v0, Lcom/google/glass/companion/Proto$Location;->time_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget v3, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1
.end method

.method public getAccuracy()F
    .locals 1

    .prologue
    .line 2618
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    return v0
.end method

.method public getAltitude()D
    .locals 2

    .prologue
    .line 2637
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    return-wide v0
.end method

.method public getBearing()F
    .locals 1

    .prologue
    .line 2656
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 2580
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    return-wide v0
.end method

.method public getLevelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2751
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/String;

    return-object v0
.end method

.method public getLevelNumberE3()I
    .locals 1

    .prologue
    .line 2773
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I

    return v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 2599
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    return-wide v0
.end method

.method public getSatellitesUsedInFix()I
    .locals 1

    .prologue
    .line 2713
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 2879
    const/4 v0, 0x0

    .line 2880
    .local v0, size:I
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2881
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 2884
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 2885
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 2888
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 2889
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2892
    :cond_2
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 2893
    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 2896
    :cond_3
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 2897
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2900
    :cond_4
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 2901
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2904
    :cond_5
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 2905
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2908
    :cond_6
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 2909
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2912
    :cond_7
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    .line 2913
    const/16 v1, 0x9

    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2916
    :cond_8
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    .line 2917
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2920
    :cond_9
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    .line 2921
    const/16 v1, 0xb

    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2924
    :cond_a
    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->cachedSize:I

    .line 2925
    return v0
.end method

.method public getSpeed()F
    .locals 1

    .prologue
    .line 2675
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    return v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 2694
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    return-wide v0
.end method

.method public getVisibleSatellites()I
    .locals 1

    .prologue
    .line 2732
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    return v0
.end method

.method public hasAccuracy()Z
    .locals 1

    .prologue
    .line 2626
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAltitude()Z
    .locals 1

    .prologue
    .line 2645
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBearing()Z
    .locals 1

    .prologue
    .line 2664
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLatitude()Z
    .locals 1

    .prologue
    .line 2588
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLevelId()Z
    .locals 1

    .prologue
    .line 2762
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLevelNumberE3()Z
    .locals 1

    .prologue
    .line 2781
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLongitude()Z
    .locals 1

    .prologue
    .line 2607
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSatellitesUsedInFix()Z
    .locals 1

    .prologue
    .line 2721
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSpeed()Z
    .locals 1

    .prologue
    .line 2683
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTime()Z
    .locals 1

    .prologue
    .line 2702
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVisibleSatellites()Z
    .locals 1

    .prologue
    .line 2740
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

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
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 2825
    const/16 v0, 0x11

    .line 2826
    .local v0, result:I
    iget-wide v1, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    ushr-long/2addr v3, v6

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/lit16 v0, v1, 0x20f

    .line 2827
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 2828
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 2829
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 2830
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 2831
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 2832
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    iget-wide v4, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 2833
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    add-int v0, v1, v2

    .line 2834
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    add-int v0, v1, v2

    .line 2835
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int v0, v2, v1

    .line 2836
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I

    add-int v0, v1, v2

    .line 2837
    return v0

    .line 2835
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Location;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2933
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2934
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2938
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2939
    :sswitch_0
    return-object p0

    .line 2944
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    .line 2945
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    goto :goto_0

    .line 2949
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    .line 2950
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    goto :goto_0

    .line 2954
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    .line 2955
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    goto :goto_0

    .line 2959
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    .line 2960
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    goto :goto_0

    .line 2964
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    .line 2965
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    goto :goto_0

    .line 2969
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    .line 2970
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    goto :goto_0

    .line 2974
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    .line 2975
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    goto :goto_0

    .line 2979
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    .line 2980
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    goto :goto_0

    .line 2984
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    .line 2985
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    goto/16 :goto_0

    .line 2989
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/String;

    .line 2990
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    goto/16 :goto_0

    .line 2994
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I

    .line 2995
    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    goto/16 :goto_0

    .line 2934
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x11 -> :sswitch_2
        0x1d -> :sswitch_3
        0x21 -> :sswitch_4
        0x2d -> :sswitch_5
        0x35 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
        0x58 -> :sswitch_b
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
    .line 2569
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$Location;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$Location;

    move-result-object v0

    return-object v0
.end method

.method public setAccuracy(F)Lcom/google/glass/companion/Proto$Location;
    .locals 1
    .parameter "value"

    .prologue
    .line 2621
    iput p1, p0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    .line 2622
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 2623
    return-object p0
.end method

.method public setAltitude(D)Lcom/google/glass/companion/Proto$Location;
    .locals 1
    .parameter "value"

    .prologue
    .line 2640
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    .line 2641
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 2642
    return-object p0
.end method

.method public setBearing(F)Lcom/google/glass/companion/Proto$Location;
    .locals 1
    .parameter "value"

    .prologue
    .line 2659
    iput p1, p0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    .line 2660
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 2661
    return-object p0
.end method

.method public setLatitude(D)Lcom/google/glass/companion/Proto$Location;
    .locals 1
    .parameter "value"

    .prologue
    .line 2583
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    .line 2584
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 2585
    return-object p0
.end method

.method public setLevelId(Ljava/lang/String;)Lcom/google/glass/companion/Proto$Location;
    .locals 1
    .parameter "value"

    .prologue
    .line 2754
    if-nez p1, :cond_0

    .line 2755
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2757
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/String;

    .line 2758
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 2759
    return-object p0
.end method

.method public setLevelNumberE3(I)Lcom/google/glass/companion/Proto$Location;
    .locals 1
    .parameter "value"

    .prologue
    .line 2776
    iput p1, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I

    .line 2777
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 2778
    return-object p0
.end method

.method public setLongitude(D)Lcom/google/glass/companion/Proto$Location;
    .locals 1
    .parameter "value"

    .prologue
    .line 2602
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    .line 2603
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 2604
    return-object p0
.end method

.method public setSatellitesUsedInFix(I)Lcom/google/glass/companion/Proto$Location;
    .locals 1
    .parameter "value"

    .prologue
    .line 2716
    iput p1, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    .line 2717
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 2718
    return-object p0
.end method

.method public setSpeed(F)Lcom/google/glass/companion/Proto$Location;
    .locals 1
    .parameter "value"

    .prologue
    .line 2678
    iput p1, p0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    .line 2679
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 2680
    return-object p0
.end method

.method public setTime(J)Lcom/google/glass/companion/Proto$Location;
    .locals 1
    .parameter "value"

    .prologue
    .line 2697
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    .line 2698
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 2699
    return-object p0
.end method

.method public setVisibleSatellites(I)Lcom/google/glass/companion/Proto$Location;
    .locals 1
    .parameter "value"

    .prologue
    .line 2735
    iput p1, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    .line 2736
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    .line 2737
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2842
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2843
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/glass/companion/Proto$Location;->latitude_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 2845
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 2846
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/glass/companion/Proto$Location;->longitude_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 2848
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 2849
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->accuracy_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2851
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 2852
    const/4 v0, 0x4

    iget-wide v1, p0, Lcom/google/glass/companion/Proto$Location;->altitude_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 2854
    :cond_3
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 2855
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->bearing_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2857
    :cond_4
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 2858
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->speed_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2860
    :cond_5
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 2861
    const/4 v0, 0x7

    iget-wide v1, p0, Lcom/google/glass/companion/Proto$Location;->time_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 2863
    :cond_6
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 2864
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2866
    :cond_7
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    .line 2867
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2869
    :cond_8
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    .line 2870
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2872
    :cond_9
    iget v0, p0, Lcom/google/glass/companion/Proto$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    .line 2873
    const/16 v0, 0xb

    iget v1, p0, Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2875
    :cond_a
    return-void
.end method
