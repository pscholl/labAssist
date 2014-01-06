.class public Lcom/google/glass/logging/FeedbackBuilder;
.super Ljava/lang/Object;
.source "FeedbackBuilder.java"


# static fields
.field private static final BUGREPORT_COMMAND:[Ljava/lang/String; = null

.field private static final BUGREPORT_FILE_EXTENSION:Ljava/lang/String; = ".txt"

.field public static final BUGREPORT_MIME_TYPE:Ljava/lang/String; = "text/plain"

.field private static final DISK_FREE_COMMAND:[Ljava/lang/String; = null

.field private static final DMESG_COMMAND:[Ljava/lang/String; = null

.field public static final FEEDBACK_GLASSWARE_SOURCE:Ljava/lang/String; = "api:710542303397"

.field private static final FPGA_REVISION_COMMAND:[Ljava/lang/String; = null

.field private static final FPGA_REVISION_FILE:Ljava/lang/String; = "/sys/devices/platform/omapdss/manager2/panel-notle-dpi/fpga_revision"

.field private static final GLASS_PACKAGE_PREFIX:Ljava/lang/String; = "com.google.glass."

.field private static final PERSISTENT_LOG_COMMAND_0:[Ljava/lang/String; = null

.field private static final PERSISTENT_LOG_COMMAND_1:[Ljava/lang/String; = null

.field private static final PERSISTENT_LOG_COMMAND_2:[Ljava/lang/String; = null

.field private static final PERSISTENT_LOG_FILE_0:Ljava/lang/String; = "/sdcard/logs/log_dump"

.field private static final PERSISTENT_LOG_FILE_1:Ljava/lang/String; = "/sdcard/logs/log_dump.1"

.field private static final PERSISTENT_LOG_FILE_2:Ljava/lang/String; = "/sdcard/logs/log_dump.2"

.field private static final PING_DOMAIN_COMMAND:[Ljava/lang/String; = null

.field private static final PING_IP_COMMAND:[Ljava/lang/String; = null

.field public static final SCREENSHOT_MIME_TYPE:Ljava/lang/String; = "image/png"

.field private static final TRACE_0_COMMAND:[Ljava/lang/String; = null

.field private static final TRACE_0_FILE:Ljava/lang/String; = "/sys/kernel/debug/remoteproc/omap-rproc.1/trace0"

.field private static final TRACE_1_COMMAND:[Ljava/lang/String; = null

.field private static final TRACE_1_FILE:Ljava/lang/String; = "/sys/kernel/debug/remoteproc/omap-rproc.1/trace1"

.field private static final TRACE_LAST_COMMAND:[Ljava/lang/String; = null

.field private static final TRACE_LAST_FILE:Ljava/lang/String; = "/sys/kernel/debug/remoteproc/omap-rproc.1/trace1_last"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/FeedbackBuilder;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 48
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "dmesg"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/glass/logging/FeedbackBuilder;->DMESG_COMMAND:[Ljava/lang/String;

    .line 49
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "bugreport"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/glass/logging/FeedbackBuilder;->BUGREPORT_COMMAND:[Ljava/lang/String;

    .line 54
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "cat"

    aput-object v1, v0, v2

    const-string v1, "/sys/kernel/debug/remoteproc/omap-rproc.1/trace0"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/glass/logging/FeedbackBuilder;->TRACE_0_COMMAND:[Ljava/lang/String;

    .line 55
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "cat"

    aput-object v1, v0, v2

    const-string v1, "/sys/kernel/debug/remoteproc/omap-rproc.1/trace1"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/glass/logging/FeedbackBuilder;->TRACE_1_COMMAND:[Ljava/lang/String;

    .line 56
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "cat"

    aput-object v1, v0, v2

    const-string v1, "/sys/kernel/debug/remoteproc/omap-rproc.1/trace1_last"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/glass/logging/FeedbackBuilder;->TRACE_LAST_COMMAND:[Ljava/lang/String;

    .line 59
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "cat"

    aput-object v1, v0, v2

    const-string v1, "/sys/devices/platform/omapdss/manager2/panel-notle-dpi/fpga_revision"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/glass/logging/FeedbackBuilder;->FPGA_REVISION_COMMAND:[Ljava/lang/String;

    .line 60
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "df"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/glass/logging/FeedbackBuilder;->DISK_FREE_COMMAND:[Ljava/lang/String;

    .line 64
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "cat"

    aput-object v1, v0, v2

    const-string v1, "/sdcard/logs/log_dump"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/glass/logging/FeedbackBuilder;->PERSISTENT_LOG_COMMAND_0:[Ljava/lang/String;

    .line 65
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "cat"

    aput-object v1, v0, v2

    const-string v1, "/sdcard/logs/log_dump.1"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/glass/logging/FeedbackBuilder;->PERSISTENT_LOG_COMMAND_1:[Ljava/lang/String;

    .line 66
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "cat"

    aput-object v1, v0, v2

    const-string v1, "/sdcard/logs/log_dump.2"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/glass/logging/FeedbackBuilder;->PERSISTENT_LOG_COMMAND_2:[Ljava/lang/String;

    .line 69
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "ping"

    aput-object v1, v0, v2

    const-string v1, "-nc"

    aput-object v1, v0, v3

    const-string v1, "3"

    aput-object v1, v0, v4

    const-string v1, "8.8.8.8"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/glass/logging/FeedbackBuilder;->PING_IP_COMMAND:[Ljava/lang/String;

    .line 71
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "ping"

    aput-object v1, v0, v2

    const-string v1, "-nc"

    aput-object v1, v0, v3

    const-string v1, "3"

    aput-object v1, v0, v4

    const-string v1, "google.com"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/glass/logging/FeedbackBuilder;->PING_DOMAIN_COMMAND:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/glass/logging/FeedbackBuilder;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/glass/logging/FeedbackBuilder;->BUGREPORT_COMMAND:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-static {p0}, Lcom/google/glass/logging/FeedbackBuilder;->getApkInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/glass/logging/FeedbackBuilder;->DISK_FREE_COMMAND:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/glass/logging/FeedbackBuilder;->PERSISTENT_LOG_COMMAND_0:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/glass/logging/FeedbackBuilder;->PERSISTENT_LOG_COMMAND_1:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/glass/logging/FeedbackBuilder;->PERSISTENT_LOG_COMMAND_2:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/content/Context;Lcom/google/glass/timeline/TimelineHelper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-static {p0, p1}, Lcom/google/glass/logging/FeedbackBuilder;->getPinnedTimelineItemIds(Landroid/content/Context;Lcom/google/glass/timeline/TimelineHelper;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/io/OutputStream;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {p0, p1, p2}, Lcom/google/glass/logging/FeedbackBuilder;->appendOutput(Ljava/io/OutputStream;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {p0, p1, p2}, Lcom/google/glass/logging/FeedbackBuilder;->appendString(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/google/glass/logging/FeedbackBuilder;->getConnectivity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/glass/logging/FeedbackBuilder;->DMESG_COMMAND:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/glass/logging/FeedbackBuilder;->TRACE_0_COMMAND:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/glass/logging/FeedbackBuilder;->TRACE_1_COMMAND:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/glass/logging/FeedbackBuilder;->TRACE_LAST_COMMAND:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/glass/logging/FeedbackBuilder;->FPGA_REVISION_COMMAND:[Ljava/lang/String;

    return-object v0
.end method

.method private static appendOutput(Ljava/io/OutputStream;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "fos"
    .parameter "command"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 243
    invoke-static {p1}, Lcom/google/glass/util/CommandOutputCollector;->collectOutput([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, output:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 245
    const-string v1, "\n\nSTDOUT\n\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 246
    aget-object v1, v0, v3

    if-eqz v1, :cond_0

    .line 247
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 249
    :cond_0
    const-string v1, "\n\nSTDERR\n\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 250
    aget-object v1, v0, v4

    if-eqz v1, :cond_1

    .line 251
    aget-object v1, v0, v4

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 253
    :cond_1
    const-string v1, "\n\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 254
    return-void
.end method

.method private static appendString(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "fos"
    .parameter "string"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 239
    return-void
.end method

.method public static build(Landroid/content/Context;Lcom/google/glass/timeline/TimelineHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/glass/logging/CompanionLogReader;[Ljava/lang/String;)Z
    .locals 12
    .parameter "context"
    .parameter "timelineHelper"
    .parameter "bugId"
    .parameter "title"
    .parameter "description"
    .parameter "screenshotFilePath"
    .parameter "shouldBugreport"
    .parameter "companionLogReader"
    .parameter "additionalFiles"

    .prologue
    .line 108
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 109
    sget-object v1, Lcom/google/glass/logging/FeedbackBuilder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Capturing bugreport..."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    sget-object v1, Lcom/google/glass/logging/FeedbackBuilder;->logger:Lcom/google/glass/logging/FormattingLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Root URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/google/glass/net/ServerConstants;->getRootUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    sget-object v1, Lcom/google/glass/logging/FeedbackBuilder;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {}, Lcom/google/glass/logging/FeedbackBuilder;->getLabSettings()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    invoke-static {}, Lcom/google/glass/util/Feedback;->createNewBugId()Ljava/lang/String;

    move-result-object p2

    .line 118
    :cond_0
    new-instance v1, Lcom/google/glass/util/SettingsSecure;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {p1, p0, v1}, Lcom/google/glass/timeline/TimelineHelper;->createTimelineItem(Landroid/content/Context;Lcom/google/glass/util/SettingsSecure;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v11

    .line 123
    .local v11, timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    const/4 v1, 0x2

    invoke-virtual {v11, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncProtocol(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 125
    new-instance v10, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {v10}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;-><init>()V

    .line 126
    .local v10, shareTarget:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    const-string v1, "api:710542303397"

    invoke-virtual {v10, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 127
    invoke-static {v11, v10}, Lcom/google/glass/timeline/TimelineHelper;->addShareTarget(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    .line 129
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 130
    sget v1, Lcom/google/glass/logging/R$string;->bugreport_captured:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setTitle(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 134
    :goto_0
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 135
    invoke-virtual {v11}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 141
    :goto_1
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 142
    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;-><init>()V

    .line 143
    .local v7, attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->setClientCachePath(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 144
    const-string v1, "image/png"

    invoke-virtual {v7, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->setContentType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 145
    invoke-static {v11, v7}, Lcom/google/glass/timeline/TimelineHelper;->addAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)V

    .line 149
    .end local v7           #attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    :cond_1
    sget-object v1, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->BUG_REPORT:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v11, v1, v2}, Lcom/google/glass/timeline/TimelineHelper;->insertTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)Landroid/net/Uri;

    .line 151
    sget-object v1, Lcom/google/glass/logging/FeedbackBuilder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Published initial timeline item."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    invoke-static {v11}, Lcom/google/glass/timeline/TimelineHelper;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v9

    .local v9, finalItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    .line 155
    invoke-static/range {v1 .. v6}, Lcom/google/glass/logging/FeedbackBuilder;->captureAndAttachBugreport(Landroid/content/Context;Lcom/google/glass/timeline/TimelineHelper;Ljava/lang/String;ZLcom/google/glass/logging/CompanionLogReader;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 159
    sget-object v1, Lcom/google/glass/logging/FeedbackBuilder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Bugreport failed, removing initial timeline item."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    invoke-virtual {p1, p0, v9}, Lcom/google/glass/timeline/TimelineHelper;->deleteTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 163
    const/4 v1, 0x0

    .line 190
    :goto_2
    return v1

    .line 132
    .end local v9           #finalItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_2
    invoke-virtual {v11, p3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setTitle(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    goto :goto_0

    .line 137
    :cond_3
    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    goto :goto_1

    .line 167
    .restart local v9       #finalItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_4
    new-instance v8, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-direct {v8}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;-><init>()V

    .line 168
    .local v8, bugReport:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v1

    sget-object v2, Lcom/google/glass/util/CachedFilesManager$Type;->BUG_REPORT:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-static {p2}, Lcom/google/glass/logging/FeedbackBuilder;->getBugreportFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->setClientCachePath(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 170
    const-string v1, "text/plain"

    invoke-virtual {v8, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->setContentType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 171
    invoke-static {v9, v8}, Lcom/google/glass/timeline/TimelineHelper;->addAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)V

    .line 174
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncProtocol(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 176
    sget-object v1, Lcom/google/glass/logging/FeedbackBuilder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Bugreport attached, updating initial item to sync."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    new-instance v1, Lcom/google/glass/logging/FeedbackBuilder$1;

    invoke-direct {v1, p1, p0, v9}, Lcom/google/glass/logging/FeedbackBuilder$1;-><init>(Lcom/google/glass/timeline/TimelineHelper;Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    invoke-virtual {p1, v1}, Lcom/google/glass/timeline/TimelineHelper;->atomicUpdateTimelineItem(Lcom/google/glass/timeline/TimelineHelper$Update;)V

    .line 189
    sget-object v1, Lcom/google/glass/logging/FeedbackBuilder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Captured bugreport: %s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v8}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    const/4 v1, 0x1

    goto :goto_2
.end method

.method private static captureAndAttachBugreport(Landroid/content/Context;Lcom/google/glass/timeline/TimelineHelper;Ljava/lang/String;ZLcom/google/glass/logging/CompanionLogReader;[Ljava/lang/String;)Z
    .locals 9
    .parameter "context"
    .parameter "timelineHelper"
    .parameter "bugId"
    .parameter "shouldBugreport"
    .parameter "companionLogReader"
    .parameter "additionalFiles"

    .prologue
    .line 197
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v6

    sget-object v7, Lcom/google/glass/util/CachedFilesManager$Type;->BUG_REPORT:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-static {p2}, Lcom/google/glass/logging/FeedbackBuilder;->getBugreportFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/google/glass/logging/FeedbackBuilder$2;

    move v1, p3

    move-object v2, p4

    move-object v3, p0

    move-object v4, p1

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/logging/FeedbackBuilder$2;-><init>(ZLcom/google/glass/logging/CompanionLogReader;Landroid/content/Context;Lcom/google/glass/timeline/TimelineHelper;[Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8, v0}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    move-result v0

    return v0
.end method

.method private static getApkInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    .line 262
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .local v1, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 264
    .local v5, packageManager:Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 265
    .local v4, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.google.glass."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 268
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 270
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Last update: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    iget-wide v8, v4, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "First install: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    iget-wide v8, v4, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Location: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Native libraries location: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 279
    .end local v0           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #builder:Ljava/lang/StringBuilder;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v5           #packageManager:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .line 280
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v6, Lcom/google/glass/logging/FeedbackBuilder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Failed to get package info."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v10

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    const-string v6, ""

    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    return-object v6

    .line 278
    .restart local v1       #builder:Ljava/lang/StringBuilder;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #packageManager:Landroid/content/pm/PackageManager;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_1
.end method

.method private static getBugreportFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "bugId"

    .prologue
    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getConnectivity()Ljava/lang/String;
    .locals 2

    .prologue
    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/google/glass/logging/FeedbackBuilder;->PING_IP_COMMAND:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/glass/util/CommandOutputCollector;->collectOutput([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, sb:Ljava/lang/StringBuilder;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 290
    sget-object v1, Lcom/google/glass/logging/FeedbackBuilder;->PING_DOMAIN_COMMAND:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/glass/util/CommandOutputCollector;->collectOutput([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDmesg(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 87
    sget-object v1, Lcom/google/glass/logging/FeedbackBuilder;->DMESG_COMMAND:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/glass/util/CommandOutputCollector;->collectOutput([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, output:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 89
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 91
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private static getLabSettings()Ljava/lang/String;
    .locals 8

    .prologue
    .line 298
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Lab settings {\n"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    .local v5, labSettings:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/google/glass/util/Labs$Feature;->values()[Lcom/google/glass/util/Labs$Feature;

    move-result-object v0

    .local v0, arr$:[Lcom/google/glass/util/Labs$Feature;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v6, :cond_3

    aget-object v2, v0, v3

    .line 300
    .local v2, feature:Lcom/google/glass/util/Labs$Feature;
    const-string v7, "\t"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v2}, Lcom/google/glass/util/Labs$Feature;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    const/4 v4, 0x0

    .line 304
    .local v4, isEnabled:Z
    sget-object v7, Lcom/google/glass/util/Labs$Feature;->I_TORE_DOWN_THIS_APK_AND_ALL_I_GOT_WAS_THIS_STUPID_LAB:Lcom/google/glass/util/Labs$Feature;

    invoke-virtual {v7, v2}, Lcom/google/glass/util/Labs$Feature;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 307
    const/4 v4, 0x0

    .line 311
    :goto_1
    if-eqz v4, :cond_2

    const-string v1, "on"

    .line 312
    .local v1, enabled:Ljava/lang/String;
    :goto_2
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {v2}, Lcom/google/glass/util/Labs$Feature;->getDefaultValueAsBoolean()Z

    move-result v7

    if-eq v4, v7, :cond_0

    .line 314
    const-string v7, " (changed from default)"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    :cond_0
    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 309
    .end local v1           #enabled:Ljava/lang/String;
    :cond_1
    invoke-static {v2}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v4

    goto :goto_1

    .line 311
    :cond_2
    const-string v1, "off"

    goto :goto_2

    .line 318
    .end local v2           #feature:Lcom/google/glass/util/Labs$Feature;
    .end local v4           #isEnabled:Z
    :cond_3
    const-string v7, "}"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private static getPinnedTimelineItemIds(Landroid/content/Context;Lcom/google/glass/timeline/TimelineHelper;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "timelineHelper"

    .prologue
    .line 328
    invoke-virtual {p1, p0}, Lcom/google/glass/timeline/TimelineHelper;->queryPinnedItems(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 330
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_3

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    .local v2, sb:Ljava/lang/StringBuilder;
    :cond_0
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    .line 334
    .local v1, item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsDeleted()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "1"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 339
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 342
    if-eqz v0, :cond_1

    .line 343
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 346
    .end local v1           #item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_1
    :goto_1
    return-object v3

    .line 336
    .restart local v1       #item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .restart local v2       #sb:Ljava/lang/StringBuilder;
    :cond_2
    :try_start_1
    const-string v3, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 342
    .end local v1           #item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_3
    if-eqz v0, :cond_4

    .line 343
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 346
    :cond_4
    const-string v3, "no items"

    goto :goto_1

    .line 342
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_5

    .line 343
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v3
.end method
