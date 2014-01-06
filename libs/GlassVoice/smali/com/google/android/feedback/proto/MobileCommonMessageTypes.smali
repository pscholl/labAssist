.class public Lcom/google/android/feedback/proto/MobileCommonMessageTypes;
.super Ljava/lang/Object;
.source "MobileCommonMessageTypes.java"


# static fields
.field public static final ANR_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

.field public static final BATTERY_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

.field public static final BUILD_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

.field public static final COMMON_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

.field public static final CRASH_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

.field public static final DIMENSIONS:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

.field public static final IMAGE:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

.field public static final MOBILE_BUG_REPORT:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

.field public static final MOBILE_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

.field public static final PACKAGE_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

.field public static final PRODUCT_SPECIFIC_BINARY_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

.field public static final PRODUCT_SPECIFIC_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

.field public static final RECTANGLE:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

.field public static final RUNNING_SERVICE_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

.field public static final SYSTEM_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

.field public static final TELEPHONY_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

.field public static final USER_INITIATED_FEEDBACK_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/16 v8, 0x11c

    const/16 v7, 0x21c

    const/4 v6, 0x0

    .line 9
    new-instance v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->DIMENSIONS:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    .line 10
    new-instance v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->RECTANGLE:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    .line 11
    new-instance v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->PRODUCT_SPECIFIC_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    .line 12
    new-instance v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->COMMON_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    .line 13
    new-instance v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->PRODUCT_SPECIFIC_BINARY_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    .line 14
    new-instance v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->IMAGE:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    .line 15
    new-instance v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->MOBILE_BUG_REPORT:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    .line 16
    new-instance v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->MOBILE_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    .line 17
    new-instance v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->SYSTEM_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    .line 18
    new-instance v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->PACKAGE_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    .line 19
    new-instance v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->BUILD_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    .line 20
    new-instance v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->CRASH_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    .line 21
    new-instance v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->ANR_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    .line 22
    new-instance v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->BATTERY_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    .line 23
    new-instance v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->RUNNING_SERVICE_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    .line 24
    new-instance v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->USER_INITIATED_FEEDBACK_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    .line 25
    new-instance v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->TELEPHONY_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    .line 28
    sget-object v0, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->DIMENSIONS:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    const/16 v1, 0x112

    invoke-virtual {v0, v1, v9, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x112

    invoke-virtual {v0, v1, v10, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    .line 34
    sget-object v0, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->RECTANGLE:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    const/16 v1, 0x112

    invoke-virtual {v0, v1, v9, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x112

    invoke-virtual {v0, v1, v10, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x112

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x112

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    .line 44
    sget-object v0, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->PRODUCT_SPECIFIC_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v8, v9, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v7, v10, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    .line 50
    sget-object v0, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->COMMON_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    const/16 v1, 0x216

    invoke-virtual {v0, v1, v9, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v7, v10, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x215

    const/16 v2, 0x11

    new-instance v3, Ljava/lang/Long;

    const-wide/16 v4, -0x1

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x5

    const-string v2, "en"

    invoke-virtual {v0, v7, v1, v2}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x6

    const-string v2, "en_US"

    invoke-virtual {v0, v7, v1, v2}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41c

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41b

    const/16 v2, 0x9

    sget-object v3, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->PRODUCT_SPECIFIC_BINARY_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41b

    const/16 v2, 0xb

    sget-object v3, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->PRODUCT_SPECIFIC_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x216

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    .line 87
    sget-object v0, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->PRODUCT_SPECIFIC_BINARY_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v8, v9, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v7, v10, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x219

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    .line 95
    sget-object v0, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->IMAGE:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v8, v9, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v8, v10, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21b

    const/4 v2, 0x3

    sget-object v3, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->DIMENSIONS:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    .line 103
    sget-object v0, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->MOBILE_BUG_REPORT:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    const/16 v1, 0x11b

    sget-object v2, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->COMMON_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v9, v2}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x11b

    sget-object v2, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->MOBILE_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v10, v2}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x215

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x215

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    .line 113
    sget-object v0, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->MOBILE_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    const/16 v1, 0x11b

    sget-object v2, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->SYSTEM_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v9, v2}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x11b

    sget-object v2, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->PACKAGE_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v10, v2}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x11b

    const/4 v2, 0x3

    sget-object v3, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->BUILD_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21b

    const/4 v2, 0x4

    sget-object v3, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->CRASH_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21b

    const/4 v2, 0x5

    sget-object v3, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->ANR_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21b

    const/4 v2, 0x6

    sget-object v3, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->BATTERY_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21b

    const/4 v2, 0x7

    sget-object v3, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->RUNNING_SERVICE_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21b

    const/16 v2, 0x9

    sget-object v3, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->USER_INITIATED_FEEDBACK_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x215

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    .line 133
    sget-object v0, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->SYSTEM_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    const/16 v1, 0x116

    invoke-virtual {v0, v1, v9, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v7, v10, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41c

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41c

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21b

    const/4 v2, 0x6

    sget-object v3, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->TELEPHONY_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    .line 147
    sget-object v0, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->PACKAGE_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v8, v9, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v8, v10, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v8, v1, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x215

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x218

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    .line 161
    sget-object v0, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->BUILD_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v8, v9, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v8, v10, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v8, v1, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v8, v1, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v8, v1, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x215

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    .line 185
    sget-object v0, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->CRASH_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v8, v9, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v7, v10, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v8, v1, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x115

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v8, v1, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v8, v1, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v8, v1, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x215

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    .line 203
    sget-object v0, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->ANR_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v7, v9, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v8, v10, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v8, v1, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    .line 213
    sget-object v0, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->BATTERY_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    const/16 v1, 0x115

    invoke-virtual {v0, v1, v9, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x113

    invoke-virtual {v0, v1, v10, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v8, v1, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v8, v1, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x212

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x215

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    .line 227
    sget-object v0, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->RUNNING_SERVICE_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    const/16 v1, 0x113

    invoke-virtual {v0, v1, v9, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v8, v10, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    .line 233
    sget-object v0, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->USER_INITIATED_FEEDBACK_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v7, v9, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41b

    sget-object v2, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->PRODUCT_SPECIFIC_BINARY_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v10, v2}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21b

    const/4 v2, 0x4

    sget-object v3, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->IMAGE:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x215

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v7, v1, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    .line 249
    sget-object v0, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->TELEPHONY_DATA:Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    const/16 v1, 0x115

    invoke-virtual {v0, v1, v9, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, v7, v10, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x215

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    .line 257
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
