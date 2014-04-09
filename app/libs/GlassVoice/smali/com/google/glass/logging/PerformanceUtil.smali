.class public final Lcom/google/glass/logging/PerformanceUtil;
.super Ljava/lang/Object;
.source "PerformanceUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/logging/PerformanceUtil$ScalingGovernor;
    }
.end annotation


# static fields
.field private static final BATTERY_TEMPERATURE_FILE:Ljava/lang/String; = "/sys/class/power_supply/bq27520-0/temp"

.field private static final BOARD_TEMPERATURE_FILE:Ljava/lang/String; = "/sys/devices/platform/notle_pcb_sensor.0/temperature"

.field public static final BOARD_TEMPERATURE_WARNING_THRESHOLD:J = 0xd6d8L

.field private static final CAPACITY_FILE_EVT2:Ljava/lang/String; = "/sys/class/power_supply/bq27520-0/capacity"

.field private static final CHARGE_FILE_EVT2:Ljava/lang/String; = "/sys/class/power_supply/bq27520-0/charge_now"

.field private static final CHARGE_WHEN_FULL_FILE_EVT2:Ljava/lang/String; = "/sys/class/power_supply/bq27520-0/charge_full"

.field private static final CPU_FREQUENCY_SCALING_GOVERNOR_FILE:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

.field private static final CPU_FREQUENCY_TIME_FILE:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state"

.field private static final REPORTED_SOC_FILE_EVT2:Ljava/lang/String; = "/sys/class/power_supply/bq27520-0/capacity"

.field private static final UNKNOWN:J = -0x1L

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/PerformanceUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBatteryCapacity()J
    .locals 2

    .prologue
    .line 89
    const-string v0, "/sys/class/power_supply/bq27520-0/capacity"

    invoke-static {v0}, Lcom/google/glass/logging/PerformanceUtil;->readLongValue(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getBatteryChargeWhenFullUah()J
    .locals 2

    .prologue
    .line 111
    const-string v0, "/sys/class/power_supply/bq27520-0/charge_full"

    invoke-static {v0}, Lcom/google/glass/logging/PerformanceUtil;->readLongValue(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getBatteryStateOfChargeUah()J
    .locals 2

    .prologue
    .line 96
    const-string v0, "/sys/class/power_supply/bq27520-0/charge_now"

    invoke-static {v0}, Lcom/google/glass/logging/PerformanceUtil;->readLongValue(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getBatteryTemperature()J
    .locals 4

    .prologue
    .line 120
    const-wide/16 v0, 0x64

    const-string v2, "/sys/class/power_supply/bq27520-0/temp"

    invoke-static {v2}, Lcom/google/glass/logging/PerformanceUtil;->readLongValue(Ljava/lang/String;)J

    move-result-wide v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static getBoardTemperature()J
    .locals 2

    .prologue
    .line 129
    const-string v0, "/sys/devices/platform/notle_pcb_sensor.0/temperature"

    invoke-static {v0}, Lcom/google/glass/logging/PerformanceUtil;->readLongValue(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFrequencyScalingGovernor()I
    .locals 7

    .prologue
    const/4 v2, -0x1

    .line 155
    const-string v3, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    invoke-static {v3}, Lcom/google/glass/logging/PerformanceUtil;->readStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, name:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    :goto_0
    return v2

    .line 161
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/logging/PerformanceUtil$ScalingGovernor;->valueOf(Ljava/lang/String;)Lcom/google/glass/logging/PerformanceUtil$ScalingGovernor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/logging/PerformanceUtil$ScalingGovernor;->getId()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/google/glass/logging/PerformanceUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Failed to convert name to ScalingGovernor: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-interface {v3, v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getFrequencyStats(Ljava/util/Map;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state"

    invoke-static {v2, p0}, Lcom/google/glass/logging/PerformanceUtil;->readLongToLongMapFile(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 139
    sget-object v2, Lcom/google/glass/logging/PerformanceUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Failed to read time spent at different cpu frequencies from file: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state"

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 148
    :cond_0
    return-void

    .line 145
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 146
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;"
    const-wide/16 v3, 0xa

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    mul-long v2, v3, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getReportedBatteryStateOfChargePercent()J
    .locals 2

    .prologue
    .line 103
    const-string v0, "/sys/class/power_supply/bq27520-0/capacity"

    invoke-static {v0}, Lcom/google/glass/logging/PerformanceUtil;->readLongValue(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTotalBytesSent()J
    .locals 2

    .prologue
    .line 173
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method private static readLongToLongMapFile(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 14
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    const/4 v12, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 208
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 210
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    .line 212
    sget-object v10, Lcom/google/glass/logging/PerformanceUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v11, "File doesn\'t exist: %s"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p0, v9, v8

    invoke-interface {v10, v11, v9}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    :cond_0
    :goto_0
    return v8

    .line 215
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v10

    if-nez v10, :cond_2

    .line 216
    sget-object v10, Lcom/google/glass/logging/PerformanceUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v11, "Can\'t read file: %s"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p0, v9, v8

    invoke-interface {v10, v11, v9}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 219
    :cond_2
    const/4 v0, 0x0

    .line 221
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_7

    .line 223
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, line:Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 224
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 225
    sget-object v10, Lcom/google/glass/logging/PerformanceUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v11, "Empty file: %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p0, v12, v13

    invoke-interface {v10, v11, v12}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_a

    .line 245
    if-eqz v1, :cond_0

    .line 247
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 248
    :catch_0
    move-exception v2

    .line 249
    .local v2, e:Ljava/io/IOException;
    sget-object v10, Lcom/google/glass/logging/PerformanceUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v11, "Error closing file: %s"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p0, v9, v8

    invoke-interface {v10, v2, v11, v9}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 228
    .end local v2           #e:Ljava/io/IOException;
    :cond_3
    :try_start_3
    const-string v10, " "

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, elements:[Ljava/lang/String;
    array-length v10, v3

    if-eq v10, v12, :cond_4

    .line 230
    sget-object v10, Lcom/google/glass/logging/PerformanceUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v11, "Malformed line in map to map file: %s, line: %s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p0, v12, v13

    const/4 v13, 0x1

    aput-object v6, v12, v13

    invoke-interface {v10, v11, v12}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_a

    .line 245
    if-eqz v1, :cond_0

    .line 247
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 248
    :catch_1
    move-exception v2

    .line 249
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v10, Lcom/google/glass/logging/PerformanceUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v11, "Error closing file: %s"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p0, v9, v8

    invoke-interface {v10, v2, v11, v9}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 233
    .end local v2           #e:Ljava/io/IOException;
    :cond_4
    const/4 v10, 0x0

    :try_start_5
    aget-object v10, v3, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 234
    .local v5, key:Ljava/lang/Long;
    const/4 v10, 0x1

    aget-object v10, v3, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 235
    .local v7, value:Ljava/lang/Long;
    invoke-interface {p1, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_a

    goto :goto_1

    .line 238
    .end local v3           #elements:[Ljava/lang/String;
    .end local v5           #key:Ljava/lang/Long;
    .end local v6           #line:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/Long;
    :catch_2
    move-exception v2

    move-object v0, v1

    .line 239
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_6
    sget-object v10, Lcom/google/glass/logging/PerformanceUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v11, "File %s doesn\'t exist"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p0, v12, v13

    invoke-interface {v10, v2, v11, v12}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 245
    if-eqz v0, :cond_0

    .line 247
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 248
    :catch_3
    move-exception v2

    .line 249
    .local v2, e:Ljava/io/IOException;
    sget-object v10, Lcom/google/glass/logging/PerformanceUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v11, "Error closing file: %s"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p0, v9, v8

    invoke-interface {v10, v2, v11, v9}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 245
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v6       #line:Ljava/lang/String;
    :cond_5
    if-eqz v1, :cond_6

    .line 247
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_6
    :goto_3
    move v8, v9

    .line 250
    goto/16 :goto_0

    .line 248
    :catch_4
    move-exception v2

    .line 249
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v10, Lcom/google/glass/logging/PerformanceUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v11, "Error closing file: %s"

    new-array v12, v9, [Ljava/lang/Object;

    aput-object p0, v12, v8

    invoke-interface {v10, v2, v11, v12}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 240
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .end local v6           #line:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :catch_5
    move-exception v2

    .line 241
    .restart local v2       #e:Ljava/io/IOException;
    :goto_4
    :try_start_9
    sget-object v10, Lcom/google/glass/logging/PerformanceUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v11, "Error reading file: %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p0, v12, v13

    invoke-interface {v10, v2, v11, v12}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 245
    if-eqz v0, :cond_0

    .line 247
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_0

    .line 248
    :catch_6
    move-exception v2

    .line 249
    sget-object v10, Lcom/google/glass/logging/PerformanceUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v11, "Error closing file: %s"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p0, v9, v8

    invoke-interface {v10, v2, v11, v9}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 242
    .end local v2           #e:Ljava/io/IOException;
    :catch_7
    move-exception v2

    .line 243
    .local v2, e:Ljava/lang/NumberFormatException;
    :goto_5
    :try_start_b
    sget-object v10, Lcom/google/glass/logging/PerformanceUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v11, "Error reading the value as long from file: %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p0, v12, v13

    invoke-interface {v10, v2, v11, v12}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 245
    if-eqz v0, :cond_0

    .line 247
    :try_start_c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto/16 :goto_0

    .line 248
    :catch_8
    move-exception v2

    .line 249
    .local v2, e:Ljava/io/IOException;
    sget-object v10, Lcom/google/glass/logging/PerformanceUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v11, "Error closing file: %s"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p0, v9, v8

    invoke-interface {v10, v2, v11, v9}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 245
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_6
    if-eqz v0, :cond_7

    .line 247
    :try_start_d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 250
    :cond_7
    :goto_7
    throw v10

    .line 248
    :catch_9
    move-exception v2

    .line 249
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v11, Lcom/google/glass/logging/PerformanceUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v12, "Error closing file: %s"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p0, v9, v8

    invoke-interface {v11, v2, v12, v9}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    .line 245
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v10

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_6

    .line 242
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_a
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_5

    .line 240
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_b
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_4

    .line 238
    :catch_c
    move-exception v2

    goto/16 :goto_2
.end method

.method private static readLongValue(Ljava/lang/String;)J
    .locals 8
    .parameter "location"

    .prologue
    const-wide/16 v2, -0x1

    .line 181
    invoke-static {p0}, Lcom/google/glass/logging/PerformanceUtil;->readStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, value:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 190
    :goto_0
    return-wide v2

    .line 187
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/google/glass/logging/PerformanceUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Error reading the value as long from file: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-interface {v4, v0, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static readStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "location"

    .prologue
    .line 196
    invoke-static {p0}, Lcom/google/glass/logging/PerformanceUtil;->readSystemFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static readSystemFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "location"

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 263
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 265
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 266
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 267
    sget-object v6, Lcom/google/glass/logging/PerformanceUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "File doesn\'t exist: %s"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object p0, v8, v10

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v5

    .line 299
    :cond_0
    :goto_0
    return-object v4

    .line 271
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v6

    if-nez v6, :cond_2

    .line 272
    sget-object v6, Lcom/google/glass/logging/PerformanceUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Can\'t read file: %s"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object p0, v8, v10

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v5

    .line 273
    goto :goto_0

    .line 276
    :cond_2
    const/4 v0, 0x0

    .line 278
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 279
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 280
    .local v4, line:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 281
    sget-object v6, Lcom/google/glass/logging/PerformanceUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Empty file: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 291
    if-eqz v1, :cond_3

    .line 293
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_1
    move-object v4, v5

    .line 296
    goto :goto_0

    .line 294
    :catch_0
    move-exception v2

    .line 295
    .local v2, e:Ljava/io/IOException;
    sget-object v6, Lcom/google/glass/logging/PerformanceUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Error closing file: %s"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object p0, v8, v10

    invoke-interface {v6, v2, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 291
    .end local v2           #e:Ljava/io/IOException;
    :cond_4
    if-eqz v1, :cond_0

    .line 293
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 294
    :catch_1
    move-exception v2

    .line 295
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v5, Lcom/google/glass/logging/PerformanceUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Error closing file: %s"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object p0, v7, v10

    invoke-interface {v5, v2, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 286
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #line:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :catch_2
    move-exception v2

    .line 287
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    sget-object v6, Lcom/google/glass/logging/PerformanceUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "File %s doesn\'t exist"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    invoke-interface {v6, v2, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 291
    if-eqz v0, :cond_5

    .line 293
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .end local v2           #e:Ljava/io/FileNotFoundException;
    :cond_5
    :goto_3
    move-object v4, v5

    .line 299
    goto :goto_0

    .line 294
    .restart local v2       #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v2

    .line 295
    .local v2, e:Ljava/io/IOException;
    sget-object v6, Lcom/google/glass/logging/PerformanceUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Error closing file: %s"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object p0, v8, v10

    invoke-interface {v6, v2, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 288
    .end local v2           #e:Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 289
    .restart local v2       #e:Ljava/io/IOException;
    :goto_4
    :try_start_6
    sget-object v6, Lcom/google/glass/logging/PerformanceUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Error reading file: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    invoke-interface {v6, v2, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 291
    if-eqz v0, :cond_5

    .line 293
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_3

    .line 294
    :catch_5
    move-exception v2

    .line 295
    sget-object v6, Lcom/google/glass/logging/PerformanceUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Error closing file: %s"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object p0, v8, v10

    invoke-interface {v6, v2, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 291
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_5
    if-eqz v0, :cond_6

    .line 293
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 296
    :cond_6
    :goto_6
    throw v5

    .line 294
    :catch_6
    move-exception v2

    .line 295
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v6, Lcom/google/glass/logging/PerformanceUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Error closing file: %s"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object p0, v8, v10

    invoke-interface {v6, v2, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 291
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_5

    .line 288
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_4

    .line 286
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_8
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2
.end method
