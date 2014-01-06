.class public final Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
.super Lcom/google/protobuf/nano/MessageNano;
.source "GlassExtensionsNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/GlassExtensionsNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlassUserEventPerformanceStats"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;


# instance fields
.field public batteryChargeWhenFullUah:I

.field public batteryStateOfChargeUah:I

.field public batteryTemperatureMilliCentigrade:I

.field public boardTemperatureMilliCentigrade:I

.field public frequencyScalingGovernor:I

.field public frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

.field public reportedSoc:I

.field public totalBytesSent:J

.field public totalKernelMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    sput-object v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->EMPTY_ARRAY:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 105
    sget-object v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->EMPTY_ARRAY:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    .line 108
    iput-wide v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalKernelMs:J

    .line 111
    iput v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade:I

    .line 114
    iput v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryStateOfChargeUah:I

    .line 117
    iput v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryChargeWhenFullUah:I

    .line 120
    iput v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->reportedSoc:I

    .line 123
    iput v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade:I

    .line 126
    iput-wide v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalBytesSent:J

    .line 129
    iput v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyScalingGovernor:I

    .line 102
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    new-instance v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    invoke-direct {v0}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 329
    new-instance v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    invoke-direct {v0}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 132
    sget-object v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->EMPTY_ARRAY:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    .line 133
    iput-wide v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalKernelMs:J

    .line 134
    iput v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade:I

    .line 135
    iput v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryStateOfChargeUah:I

    .line 136
    iput v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryChargeWhenFullUah:I

    .line 137
    iput v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->reportedSoc:I

    .line 138
    iput v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade:I

    .line 139
    iput-wide v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalBytesSent:J

    .line 140
    iput v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyScalingGovernor:I

    .line 141
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->cachedSize:I

    .line 142
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 147
    if-ne p1, p0, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v1

    .line 148
    :cond_1
    instance-of v3, p1, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 149
    check-cast v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    .line 150
    .local v0, other:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    iget-object v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalKernelMs:J

    iget-wide v5, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalKernelMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade:I

    iget v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryStateOfChargeUah:I

    iget v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryStateOfChargeUah:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryChargeWhenFullUah:I

    iget v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryChargeWhenFullUah:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->reportedSoc:I

    iget v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->reportedSoc:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade:I

    iget v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade:I

    if-ne v3, v4, :cond_3

    iget-wide v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalBytesSent:J

    iget-wide v5, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalBytesSent:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyScalingGovernor:I

    iget v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyScalingGovernor:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 215
    const/4 v4, 0x0

    .line 216
    .local v4, size:I
    iget-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    if-eqz v5, :cond_0

    .line 217
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    .local v0, arr$:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 218
    .local v1, element:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
    const/4 v5, 0x1

    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 217
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 222
    .end local v0           #arr$:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
    .end local v1           #element:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    iget-wide v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalKernelMs:J

    cmp-long v5, v5, v8

    if-eqz v5, :cond_1

    .line 223
    const/4 v5, 0x2

    iget-wide v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalKernelMs:J

    invoke-static {v5, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    .line 226
    :cond_1
    iget v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade:I

    if-eqz v5, :cond_2

    .line 227
    const/4 v5, 0x3

    iget v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 230
    :cond_2
    iget v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryStateOfChargeUah:I

    if-eqz v5, :cond_3

    .line 231
    const/4 v5, 0x4

    iget v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryStateOfChargeUah:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 234
    :cond_3
    iget v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryChargeWhenFullUah:I

    if-eqz v5, :cond_4

    .line 235
    const/4 v5, 0x5

    iget v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryChargeWhenFullUah:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 238
    :cond_4
    iget v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade:I

    if-eqz v5, :cond_5

    .line 239
    const/4 v5, 0x6

    iget v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 242
    :cond_5
    iget-wide v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalBytesSent:J

    cmp-long v5, v5, v8

    if-eqz v5, :cond_6

    .line 243
    const/4 v5, 0x7

    iget-wide v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalBytesSent:J

    invoke-static {v5, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    .line 246
    :cond_6
    iget v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->reportedSoc:I

    if-eqz v5, :cond_7

    .line 247
    const/16 v5, 0x8

    iget v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->reportedSoc:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 250
    :cond_7
    iget v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyScalingGovernor:I

    if-eqz v5, :cond_8

    .line 251
    const/16 v5, 0x9

    iget v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyScalingGovernor:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 254
    :cond_8
    iput v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->cachedSize:I

    .line 255
    return v4
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/16 v7, 0x20

    .line 162
    const/16 v1, 0x11

    .line 163
    .local v1, result:I
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    if-nez v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 169
    :cond_0
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalKernelMs:J

    iget-wide v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalKernelMs:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 170
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade:I

    add-int v1, v2, v3

    .line 171
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryStateOfChargeUah:I

    add-int v1, v2, v3

    .line 172
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryChargeWhenFullUah:I

    add-int v1, v2, v3

    .line 173
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->reportedSoc:I

    add-int v1, v2, v3

    .line 174
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade:I

    add-int v1, v2, v3

    .line 175
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalBytesSent:J

    iget-wide v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalBytesSent:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 176
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyScalingGovernor:I

    add-int v1, v2, v3

    .line 177
    return v1

    .line 165
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 166
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    add-int v1, v3, v2

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_2
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    .locals 7
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 263
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 264
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 268
    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 269
    :sswitch_0
    return-object p0

    .line 274
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 275
    .local v0, arrayLength:I
    iget-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    if-nez v5, :cond_2

    move v1, v4

    .line 276
    .local v1, i:I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    .line 277
    .local v2, newArray:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
    iget-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    if-eqz v5, :cond_1

    .line 278
    iget-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 280
    :cond_1
    iput-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    .line 281
    :goto_2
    iget-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 282
    iget-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    new-instance v6, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    invoke-direct {v6}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;-><init>()V

    aput-object v6, v5, v1

    .line 283
    iget-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 284
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 281
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 275
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
    :cond_2
    iget-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    array-length v1, v5

    goto :goto_1

    .line 287
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
    :cond_3
    iget-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    new-instance v6, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    invoke-direct {v6}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;-><init>()V

    aput-object v6, v5, v1

    .line 288
    iget-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 292
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalKernelMs:J

    goto :goto_0

    .line 296
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade:I

    goto :goto_0

    .line 300
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryStateOfChargeUah:I

    goto :goto_0

    .line 304
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryChargeWhenFullUah:I

    goto :goto_0

    .line 308
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade:I

    goto :goto_0

    .line 312
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalBytesSent:J

    goto/16 :goto_0

    .line 316
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->reportedSoc:I

    goto/16 :goto_0

    .line 320
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyScalingGovernor:I

    goto/16 :goto_0

    .line 264
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
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
    .line 98
    invoke-virtual {p0, p1}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 9
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v7, 0x0

    .line 182
    iget-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    if-eqz v4, :cond_0

    .line 183
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    .local v0, arr$:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 184
    .local v1, element:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
    const/4 v4, 0x1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 183
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    .end local v0           #arr$:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
    .end local v1           #element:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    iget-wide v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalKernelMs:J

    cmp-long v4, v4, v7

    if-eqz v4, :cond_1

    .line 188
    const/4 v4, 0x2

    iget-wide v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalKernelMs:J

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 190
    :cond_1
    iget v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade:I

    if-eqz v4, :cond_2

    .line 191
    const/4 v4, 0x3

    iget v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 193
    :cond_2
    iget v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryStateOfChargeUah:I

    if-eqz v4, :cond_3

    .line 194
    const/4 v4, 0x4

    iget v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryStateOfChargeUah:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 196
    :cond_3
    iget v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryChargeWhenFullUah:I

    if-eqz v4, :cond_4

    .line 197
    const/4 v4, 0x5

    iget v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryChargeWhenFullUah:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 199
    :cond_4
    iget v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade:I

    if-eqz v4, :cond_5

    .line 200
    const/4 v4, 0x6

    iget v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 202
    :cond_5
    iget-wide v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalBytesSent:J

    cmp-long v4, v4, v7

    if-eqz v4, :cond_6

    .line 203
    const/4 v4, 0x7

    iget-wide v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalBytesSent:J

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 205
    :cond_6
    iget v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->reportedSoc:I

    if-eqz v4, :cond_7

    .line 206
    const/16 v4, 0x8

    iget v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->reportedSoc:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 208
    :cond_7
    iget v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyScalingGovernor:I

    if-eqz v4, :cond_8

    .line 209
    const/16 v4, 0x9

    iget v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyScalingGovernor:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 211
    :cond_8
    return-void
.end method
