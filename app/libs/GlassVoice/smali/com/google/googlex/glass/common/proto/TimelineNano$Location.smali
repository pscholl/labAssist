.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
.super Lcom/google/protobuf/nano/MessageNano;
.source "TimelineNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Location"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Location;


# instance fields
.field private accuracy_:D

.field private address_:Ljava/lang/String;

.field private bitField0_:I

.field private displayName_:Ljava/lang/String;

.field private id_:Ljava/lang/String;

.field private latitude_:D

.field private levelId_:Ljava/lang/String;

.field private levelNumber_:F

.field private longitude_:D

.field private source_:Ljava/lang/String;

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1867
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1868
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1873
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->id_:Ljava/lang/String;

    .line 1895
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->source_:Ljava/lang/String;

    .line 1917
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->timestamp_:J

    .line 1936
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->latitude_:D

    .line 1955
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->longitude_:D

    .line 1974
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->accuracy_:D

    .line 1993
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelId_:Ljava/lang/String;

    .line 2015
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelNumber_:F

    .line 2034
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->displayName_:Ljava/lang/String;

    .line 2056
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->address_:Ljava/lang/String;

    .line 1868
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2283
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2277
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 2078
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    .line 2079
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->id_:Ljava/lang/String;

    .line 2080
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->source_:Ljava/lang/String;

    .line 2081
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->timestamp_:J

    .line 2082
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->latitude_:D

    .line 2083
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->longitude_:D

    .line 2084
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->accuracy_:D

    .line 2085
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelId_:Ljava/lang/String;

    .line 2086
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelNumber_:F

    .line 2087
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->displayName_:Ljava/lang/String;

    .line 2088
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->address_:Ljava/lang/String;

    .line 2089
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->cachedSize:I

    .line 2090
    return-object p0
.end method

.method public clearAccuracy()Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 2

    .prologue
    .line 1987
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->accuracy_:D

    .line 1988
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    .line 1989
    return-object p0
.end method

.method public clearAddress()Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 1

    .prologue
    .line 2072
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->address_:Ljava/lang/String;

    .line 2073
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    .line 2074
    return-object p0
.end method

.method public clearDisplayName()Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 1

    .prologue
    .line 2050
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->displayName_:Ljava/lang/String;

    .line 2051
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    .line 2052
    return-object p0
.end method

.method public clearId()Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 1

    .prologue
    .line 1889
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->id_:Ljava/lang/String;

    .line 1890
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    .line 1891
    return-object p0
.end method

.method public clearLatitude()Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 2

    .prologue
    .line 1949
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->latitude_:D

    .line 1950
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    .line 1951
    return-object p0
.end method

.method public clearLevelId()Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 1

    .prologue
    .line 2009
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelId_:Ljava/lang/String;

    .line 2010
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    .line 2011
    return-object p0
.end method

.method public clearLevelNumber()Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 1

    .prologue
    .line 2028
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelNumber_:F

    .line 2029
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    .line 2030
    return-object p0
.end method

.method public clearLongitude()Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 2

    .prologue
    .line 1968
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->longitude_:D

    .line 1969
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    .line 1970
    return-object p0
.end method

.method public clearSource()Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 1

    .prologue
    .line 1911
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->source_:Ljava/lang/String;

    .line 1912
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    .line 1913
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 2

    .prologue
    .line 1930
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->timestamp_:J

    .line 1931
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    .line 1932
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2095
    if-ne p1, p0, :cond_1

    .line 2098
    :cond_0
    :goto_0
    return v1

    .line 2096
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 2097
    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 2098
    .local v0, other:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->id_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->id_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->source_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->source_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_2
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->timestamp_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->timestamp_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->latitude_:D

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->latitude_:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->longitude_:D

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->longitude_:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->accuracy_:D

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->accuracy_:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelId_:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelId_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_3
    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelNumber_:F

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelNumber_:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->displayName_:Ljava/lang/String;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->displayName_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->address_:Ljava/lang/String;

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->address_:Ljava/lang/String;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->id_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->id_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->source_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->source_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelId_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->displayName_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->displayName_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->address_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->address_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_0
.end method

.method public getAccuracy()D
    .locals 2

    .prologue
    .line 1976
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->accuracy_:D

    return-wide v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2058
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->address_:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2036
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->displayName_:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1875
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 1938
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->latitude_:D

    return-wide v0
.end method

.method public getLevelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1995
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelId_:Ljava/lang/String;

    return-object v0
.end method

.method public getLevelNumber()F
    .locals 1

    .prologue
    .line 2017
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelNumber_:F

    return v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 1957
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->longitude_:D

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 2161
    const/4 v0, 0x0

    .line 2162
    .local v0, size:I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    .line 2163
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->latitude_:D

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 2166
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    .line 2167
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->longitude_:D

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 2170
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_2

    .line 2171
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->displayName_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2174
    :cond_2
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_3

    .line 2175
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->address_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2178
    :cond_3
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    .line 2179
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->timestamp_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2182
    :cond_4
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 2183
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->accuracy_:D

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 2186
    :cond_5
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6

    .line 2187
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->id_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2190
    :cond_6
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_7

    .line 2191
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelId_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2194
    :cond_7
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_8

    .line 2195
    const/16 v1, 0x9

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelNumber_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2198
    :cond_8
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_9

    .line 2199
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->source_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2202
    :cond_9
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->cachedSize:I

    .line 2203
    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1897
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->source_:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 1919
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->timestamp_:J

    return-wide v0
.end method

.method public hasAccuracy()Z
    .locals 1

    .prologue
    .line 1984
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAddress()Z
    .locals 1

    .prologue
    .line 2069
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

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
    .line 2047
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

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
    .line 1886
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

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
    .line 1946
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

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
    .line 2006
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLevelNumber()Z
    .locals 1

    .prologue
    .line 2025
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

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
    .line 1965
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

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
    .line 1908
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 1927
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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
    const/16 v7, 0x20

    const/4 v2, 0x0

    .line 2111
    const/16 v0, 0x11

    .line 2112
    .local v0, result:I
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->id_:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 2113
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->source_:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 2114
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->timestamp_:J

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->timestamp_:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v1, v3

    .line 2115
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->latitude_:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->latitude_:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v1, v3

    .line 2116
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->longitude_:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->longitude_:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v1, v3

    .line 2117
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->accuracy_:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->accuracy_:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v1, v3

    .line 2118
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelId_:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    add-int v0, v3, v1

    .line 2119
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelNumber_:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int v0, v1, v3

    .line 2120
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->displayName_:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    :goto_3
    add-int v0, v3, v1

    .line 2121
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->address_:Ljava/lang/String;

    if-nez v3, :cond_4

    :goto_4
    add-int v0, v1, v2

    .line 2122
    return v0

    .line 2112
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->id_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 2113
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->source_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 2118
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelId_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    .line 2120
    :cond_3
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->displayName_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    .line 2121
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->address_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2211
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2212
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2216
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2217
    :sswitch_0
    return-object p0

    .line 2222
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->latitude_:D

    .line 2223
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    goto :goto_0

    .line 2227
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->longitude_:D

    .line 2228
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    goto :goto_0

    .line 2232
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->displayName_:Ljava/lang/String;

    .line 2233
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    goto :goto_0

    .line 2237
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->address_:Ljava/lang/String;

    .line 2238
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    goto :goto_0

    .line 2242
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->timestamp_:J

    .line 2243
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    goto :goto_0

    .line 2247
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->accuracy_:D

    .line 2248
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    goto :goto_0

    .line 2252
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->id_:Ljava/lang/String;

    .line 2253
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    goto :goto_0

    .line 2257
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelId_:Ljava/lang/String;

    .line 2258
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    goto :goto_0

    .line 2262
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelNumber_:F

    .line 2263
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    goto/16 :goto_0

    .line 2267
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->source_:Ljava/lang/String;

    .line 2268
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    goto/16 :goto_0

    .line 2212
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x11 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x31 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4d -> :sswitch_9
        0x52 -> :sswitch_a
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
    .line 1864
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    move-result-object v0

    return-object v0
.end method

.method public setAccuracy(D)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 1
    .parameter "value"

    .prologue
    .line 1979
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->accuracy_:D

    .line 1980
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    .line 1981
    return-object p0
.end method

.method public setAddress(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 1
    .parameter "value"

    .prologue
    .line 2061
    if-nez p1, :cond_0

    .line 2062
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2064
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->address_:Ljava/lang/String;

    .line 2065
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    .line 2066
    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 1
    .parameter "value"

    .prologue
    .line 2039
    if-nez p1, :cond_0

    .line 2040
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2042
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->displayName_:Ljava/lang/String;

    .line 2043
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    .line 2044
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 1
    .parameter "value"

    .prologue
    .line 1878
    if-nez p1, :cond_0

    .line 1879
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1881
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->id_:Ljava/lang/String;

    .line 1882
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    .line 1883
    return-object p0
.end method

.method public setLatitude(D)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 1
    .parameter "value"

    .prologue
    .line 1941
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->latitude_:D

    .line 1942
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    .line 1943
    return-object p0
.end method

.method public setLevelId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 1
    .parameter "value"

    .prologue
    .line 1998
    if-nez p1, :cond_0

    .line 1999
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2001
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelId_:Ljava/lang/String;

    .line 2002
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    .line 2003
    return-object p0
.end method

.method public setLevelNumber(F)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 1
    .parameter "value"

    .prologue
    .line 2020
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelNumber_:F

    .line 2021
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    .line 2022
    return-object p0
.end method

.method public setLongitude(D)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 1
    .parameter "value"

    .prologue
    .line 1960
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->longitude_:D

    .line 1961
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    .line 1962
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 1
    .parameter "value"

    .prologue
    .line 1900
    if-nez p1, :cond_0

    .line 1901
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1903
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->source_:Ljava/lang/String;

    .line 1904
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    .line 1905
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 1
    .parameter "value"

    .prologue
    .line 1922
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->timestamp_:J

    .line 1923
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    .line 1924
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
    .line 2127
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 2128
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->latitude_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 2130
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 2131
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->longitude_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 2133
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2

    .line 2134
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->displayName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2136
    :cond_2
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_3

    .line 2137
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->address_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2139
    :cond_3
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 2140
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->timestamp_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 2142
    :cond_4
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 2143
    const/4 v0, 0x6

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->accuracy_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 2145
    :cond_5
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    .line 2146
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->id_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2148
    :cond_6
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    .line 2149
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2151
    :cond_7
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    .line 2152
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelNumber_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2154
    :cond_8
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_9

    .line 2155
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->source_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2157
    :cond_9
    return-void
.end method
