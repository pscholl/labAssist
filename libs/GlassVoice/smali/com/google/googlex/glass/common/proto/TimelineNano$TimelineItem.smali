.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
.super Lcom/google/protobuf/nano/MessageNano;
.source "TimelineNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimelineItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;,
        Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ViewType;,
        Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$SmsType;,
        Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$SyncProtocol;,
        Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$SyncStatus;,
        Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$SourceType;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# instance fields
.field public attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

.field private bitField0_:I

.field private bundleId_:Ljava/lang/String;

.field private canonicalUrl_:Ljava/lang/String;

.field private cloudSyncProtocol_:I

.field private cloudSyncStatus_:I

.field private companionSyncProtocol_:I

.field private companionSyncStatus_:I

.field private creationTime_:J

.field private creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

.field private displayTime_:J

.field private expirationTime_:J

.field private html_:Ljava/lang/String;

.field private id_:Ljava/lang/String;

.field private inReplyTo_:Ljava/lang/String;

.field private isBundleCover_:Z

.field private isDeleted_:Z

.field private isPinned_:Z

.field public linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

.field private location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

.field public menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

.field private modifiedTime_:J

.field private notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

.field public pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

.field private pinScore_:I

.field private pinTime_:J

.field private progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

.field private sendToPhoneUrl_:Ljava/lang/String;

.field public shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

.field public sharingFeature:[I

.field private smsType_:I

.field private sourceAccountId_:Ljava/lang/String;

.field private sourceItemId_:Ljava/lang/String;

.field private sourceType_:I

.field private source_:Ljava/lang/String;

.field private speakableText_:Ljava/lang/String;

.field private speakableType_:Ljava/lang/String;

.field private text_:Ljava/lang/String;

.field private title_:Ljava/lang/String;

.field private viewType_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 164
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id_:Ljava/lang/String;

    .line 186
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId_:Ljava/lang/String;

    .line 208
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isBundleCover_:Z

    .line 227
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime_:J

    .line 246
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime_:J

    .line 265
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime_:J

    .line 284
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime_:J

    .line 303
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->expirationTime_:J

    .line 322
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinScore_:I

    .line 341
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned_:Z

    .line 360
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDeleted_:Z

    .line 379
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source_:Ljava/lang/String;

    .line 401
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceType_:I

    .line 420
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId_:Ljava/lang/String;

    .line 442
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId_:Ljava/lang/String;

    .line 464
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl_:Ljava/lang/String;

    .line 505
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 508
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo_:Ljava/lang/String;

    .line 530
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title_:Ljava/lang/String;

    .line 552
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text_:Ljava/lang/String;

    .line 574
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html_:Ljava/lang/String;

    .line 596
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType_:Ljava/lang/String;

    .line 618
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText_:Ljava/lang/String;

    .line 640
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 662
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 665
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 687
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncStatus_:I

    .line 706
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncStatus_:I

    .line 725
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol_:I

    .line 744
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncProtocol_:I

    .line 763
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->smsType_:I

    .line 782
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    .line 804
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->viewType_:I

    .line 823
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    .line 845
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .line 14
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1685
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1679
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 848
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 849
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id_:Ljava/lang/String;

    .line 850
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId_:Ljava/lang/String;

    .line 851
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isBundleCover_:Z

    .line 852
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime_:J

    .line 853
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime_:J

    .line 854
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime_:J

    .line 855
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime_:J

    .line 856
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->expirationTime_:J

    .line 857
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinScore_:I

    .line 858
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned_:Z

    .line 859
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDeleted_:Z

    .line 860
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source_:Ljava/lang/String;

    .line 861
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceType_:I

    .line 862
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId_:Ljava/lang/String;

    .line 863
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId_:Ljava/lang/String;

    .line 864
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl_:Ljava/lang/String;

    .line 865
    iput-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 866
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 867
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo_:Ljava/lang/String;

    .line 868
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title_:Ljava/lang/String;

    .line 869
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text_:Ljava/lang/String;

    .line 870
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html_:Ljava/lang/String;

    .line 871
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType_:Ljava/lang/String;

    .line 872
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText_:Ljava/lang/String;

    .line 873
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 874
    iput-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 875
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 876
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 877
    iput-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    .line 878
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncStatus_:I

    .line 879
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncStatus_:I

    .line 880
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol_:I

    .line 881
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncProtocol_:I

    .line 882
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->smsType_:I

    .line 883
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    .line 884
    iput v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->viewType_:I

    .line 885
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    .line 886
    iput-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    .line 887
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .line 888
    iput v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cachedSize:I

    .line 889
    return-object p0
.end method

.method public clearBundleId()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 202
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId_:Ljava/lang/String;

    .line 203
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 204
    return-object p0
.end method

.method public clearCanonicalUrl()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 480
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl_:Ljava/lang/String;

    .line 481
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 482
    return-object p0
.end method

.method public clearCloudSyncProtocol()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 738
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol_:I

    .line 739
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 740
    return-object p0
.end method

.method public clearCloudSyncStatus()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 700
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncStatus_:I

    .line 701
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 702
    return-object p0
.end method

.method public clearCompanionSyncProtocol()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 757
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncProtocol_:I

    .line 758
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 759
    return-object p0
.end method

.method public clearCompanionSyncStatus()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 719
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncStatus_:I

    .line 720
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 721
    return-object p0
.end method

.method public clearCreationTime()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 240
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime_:J

    .line 241
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 242
    return-object p0
.end method

.method public clearCreator()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 501
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 502
    return-object p0
.end method

.method public clearDisplayTime()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 278
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime_:J

    .line 279
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 280
    return-object p0
.end method

.method public clearExpirationTime()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 316
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->expirationTime_:J

    .line 317
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 318
    return-object p0
.end method

.method public clearHtml()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 590
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html_:Ljava/lang/String;

    .line 591
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 592
    return-object p0
.end method

.method public clearId()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 180
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id_:Ljava/lang/String;

    .line 181
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 182
    return-object p0
.end method

.method public clearInReplyTo()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 524
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo_:Ljava/lang/String;

    .line 525
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 526
    return-object p0
.end method

.method public clearIsBundleCover()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isBundleCover_:Z

    .line 222
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 223
    return-object p0
.end method

.method public clearIsDeleted()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDeleted_:Z

    .line 374
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 375
    return-object p0
.end method

.method public clearIsPinned()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned_:Z

    .line 355
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 356
    return-object p0
.end method

.method public clearLocation()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 658
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 659
    return-object p0
.end method

.method public clearModifiedTime()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 259
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime_:J

    .line 260
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 261
    return-object p0
.end method

.method public clearNotification()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 683
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    .line 684
    return-object p0
.end method

.method public clearPinScore()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinScore_:I

    .line 336
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 337
    return-object p0
.end method

.method public clearPinTime()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 297
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime_:J

    .line 298
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 299
    return-object p0
.end method

.method public clearProgressStatus()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 841
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    .line 842
    return-object p0
.end method

.method public clearSendToPhoneUrl()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 798
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    .line 799
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 800
    return-object p0
.end method

.method public clearSmsType()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 776
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->smsType_:I

    .line 777
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 778
    return-object p0
.end method

.method public clearSource()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 395
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source_:Ljava/lang/String;

    .line 396
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 397
    return-object p0
.end method

.method public clearSourceAccountId()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 458
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId_:Ljava/lang/String;

    .line 459
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 460
    return-object p0
.end method

.method public clearSourceItemId()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 436
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId_:Ljava/lang/String;

    .line 437
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 438
    return-object p0
.end method

.method public clearSourceType()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 414
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceType_:I

    .line 415
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 416
    return-object p0
.end method

.method public clearSpeakableText()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 634
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText_:Ljava/lang/String;

    .line 635
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 636
    return-object p0
.end method

.method public clearSpeakableType()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 612
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType_:Ljava/lang/String;

    .line 613
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 614
    return-object p0
.end method

.method public clearText()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 568
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text_:Ljava/lang/String;

    .line 569
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 570
    return-object p0
.end method

.method public clearTitle()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 546
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title_:Ljava/lang/String;

    .line 547
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 548
    return-object p0
.end method

.method public clearViewType()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2

    .prologue
    .line 817
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->viewType_:I

    .line 818
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 819
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 894
    if-ne p1, p0, :cond_1

    .line 897
    :cond_0
    :goto_0
    return v1

    .line 895
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 896
    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 897
    .local v0, other:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_2
    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isBundleCover_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isBundleCover_:Z

    if-ne v3, v4, :cond_3

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->expirationTime_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->expirationTime_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinScore_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinScore_:I

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned_:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDeleted_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDeleted_:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source_:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_3
    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceType_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceType_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId_:Ljava/lang/String;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId_:Ljava/lang/String;

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl_:Ljava/lang/String;

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v3, :cond_a

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v3, :cond_3

    :goto_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo_:Ljava/lang/String;

    if-nez v3, :cond_b

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_8
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title_:Ljava/lang/String;

    if-nez v3, :cond_c

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_9
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text_:Ljava/lang/String;

    if-nez v3, :cond_d

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_a
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html_:Ljava/lang/String;

    if-nez v3, :cond_e

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_b
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType_:Ljava/lang/String;

    if-nez v3, :cond_f

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_c
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText_:Ljava/lang/String;

    if-nez v3, :cond_10

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_d
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    if-nez v3, :cond_11

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    if-nez v3, :cond_3

    :goto_e
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    if-nez v3, :cond_12

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    if-nez v3, :cond_3

    :goto_f
    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncStatus_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncStatus_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncStatus_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncStatus_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncProtocol_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncProtocol_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->smsType_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->smsType_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    if-nez v3, :cond_13

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_10
    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->viewType_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->viewType_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    if-nez v3, :cond_14

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    if-nez v3, :cond_3

    :goto_11
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_4

    :cond_8
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_5

    :cond_9
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_6

    :cond_a
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_7

    :cond_b
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_8

    :cond_c
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_9

    :cond_d
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_a

    :cond_e
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_b

    :cond_f
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_c

    :cond_10
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_d

    :cond_11
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_e

    :cond_12
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_f

    :cond_13
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_10

    :cond_14
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_11
.end method

.method public getBundleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId_:Ljava/lang/String;

    return-object v0
.end method

.method public getCanonicalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getCloudSyncProtocol()I
    .locals 1

    .prologue
    .line 727
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol_:I

    return v0
.end method

.method public getCloudSyncStatus()I
    .locals 1

    .prologue
    .line 689
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncStatus_:I

    return v0
.end method

.method public getCompanionSyncProtocol()I
    .locals 1

    .prologue
    .line 746
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncProtocol_:I

    return v0
.end method

.method public getCompanionSyncStatus()I
    .locals 1

    .prologue
    .line 708
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncStatus_:I

    return v0
.end method

.method public getCreationTime()J
    .locals 2

    .prologue
    .line 229
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime_:J

    return-wide v0
.end method

.method public getCreator()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    return-object v0
.end method

.method public getDisplayTime()J
    .locals 2

    .prologue
    .line 267
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime_:J

    return-wide v0
.end method

.method public getExpirationTime()J
    .locals 2

    .prologue
    .line 305
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->expirationTime_:J

    return-wide v0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html_:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getInReplyTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsBundleCover()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isBundleCover_:Z

    return v0
.end method

.method public getIsDeleted()Z
    .locals 1

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDeleted_:Z

    return v0
.end method

.method public getIsPinned()Z
    .locals 1

    .prologue
    .line 343
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned_:Z

    return v0
.end method

.method public getLocation()Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    return-object v0
.end method

.method public getModifiedTime()J
    .locals 2

    .prologue
    .line 248
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime_:J

    return-wide v0
.end method

.method public getNotification()Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    return-object v0
.end method

.method public getPinScore()I
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinScore_:I

    return v0
.end method

.method public getPinTime()J
    .locals 2

    .prologue
    .line 286
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime_:J

    return-wide v0
.end method

.method public getProgressStatus()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    return-object v0
.end method

.method public getSendToPhoneUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 9

    .prologue
    .line 1147
    const/4 v5, 0x0

    .line 1148
    .local v5, size:I
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    .line 1149
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id_:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1152
    :cond_0
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_1

    .line 1153
    const/4 v6, 0x2

    iget-wide v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime_:J

    invoke-static {v6, v7, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v6

    add-int/2addr v5, v6

    .line 1156
    :cond_1
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_2

    .line 1157
    const/4 v6, 0x3

    iget-wide v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime_:J

    invoke-static {v6, v7, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v6

    add-int/2addr v5, v6

    .line 1160
    :cond_2
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v6, v6, 0x800

    if-eqz v6, :cond_3

    .line 1161
    const/4 v6, 0x4

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source_:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1164
    :cond_3
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v6, :cond_4

    .line 1165
    const/4 v6, 0x5

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1168
    :cond_4
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v6, :cond_5

    .line 1169
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_5

    aget-object v2, v0, v3

    .line 1170
    .local v2, element:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    const/4 v6, 0x6

    invoke-static {v6, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1169
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1174
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .end local v2           #element:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_5
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v7, 0x1

    and-int/2addr v6, v7

    if-eqz v6, :cond_6

    .line 1175
    const/4 v6, 0x7

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo_:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1178
    :cond_6
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v7, 0x4

    and-int/2addr v6, v7

    if-eqz v6, :cond_7

    .line 1179
    const/16 v6, 0x8

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text_:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1182
    :cond_7
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    if-eqz v6, :cond_8

    .line 1183
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_1
    if-ge v3, v4, :cond_8

    aget-object v2, v0, v3

    .line 1184
    .local v2, element:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    const/16 v6, 0x9

    invoke-static {v6, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1183
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1188
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .end local v2           #element:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_8
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    if-eqz v6, :cond_9

    .line 1189
    const/16 v6, 0xa

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1192
    :cond_9
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-eqz v6, :cond_a

    .line 1193
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_2
    if-ge v3, v4, :cond_a

    aget-object v2, v0, v3

    .line 1194
    .local v2, element:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    const/16 v6, 0xb

    invoke-static {v6, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1193
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1198
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .end local v2           #element:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_a
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v7, 0x40

    and-int/2addr v6, v7

    if-eqz v6, :cond_b

    .line 1199
    const/16 v6, 0xc

    iget v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncStatus_:I

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    .line 1202
    :cond_b
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v7, 0x100

    and-int/2addr v6, v7

    if-eqz v6, :cond_c

    .line 1203
    const/16 v6, 0xd

    iget v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol_:I

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    .line 1206
    :cond_c
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v6, v6, 0x1000

    if-eqz v6, :cond_d

    .line 1207
    const/16 v6, 0xe

    iget v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceType_:I

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    .line 1210
    :cond_d
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_e

    .line 1211
    const/16 v6, 0xf

    iget-boolean v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDeleted_:Z

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v6

    add-int/2addr v5, v6

    .line 1214
    :cond_e
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    if-eqz v6, :cond_f

    .line 1215
    const/16 v6, 0x10

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1218
    :cond_f
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_10

    .line 1219
    const/16 v6, 0x11

    iget-wide v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime_:J

    invoke-static {v6, v7, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v6

    add-int/2addr v5, v6

    .line 1222
    :cond_10
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-eqz v6, :cond_11

    .line 1223
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .restart local v0       #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_3
    if-ge v3, v4, :cond_11

    aget-object v2, v0, v3

    .line 1224
    .restart local v2       #element:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    const/16 v6, 0x12

    invoke-static {v6, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1223
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1228
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .end local v2           #element:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_11
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v7, 0x20

    and-int/2addr v6, v7

    if-eqz v6, :cond_12

    .line 1229
    const/16 v6, 0x13

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText_:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1232
    :cond_12
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v7, 0x400

    and-int/2addr v6, v7

    if-eqz v6, :cond_13

    .line 1233
    const/16 v6, 0x14

    iget v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->smsType_:I

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    .line 1236
    :cond_13
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_14

    .line 1237
    const/16 v6, 0x15

    iget-boolean v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned_:Z

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v6

    add-int/2addr v5, v6

    .line 1240
    :cond_14
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v7, 0x2

    and-int/2addr v6, v7

    if-eqz v6, :cond_15

    .line 1241
    const/16 v6, 0x17

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title_:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1244
    :cond_15
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v7, 0x8

    and-int/2addr v6, v7

    if-eqz v6, :cond_16

    .line 1245
    const/16 v6, 0x18

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html_:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1248
    :cond_16
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_17

    .line 1249
    const/16 v6, 0x19

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId_:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1252
    :cond_17
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v7, 0x800

    and-int/2addr v6, v7

    if-eqz v6, :cond_18

    .line 1253
    const/16 v6, 0x1c

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1256
    :cond_18
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_19

    .line 1257
    const/16 v6, 0x1d

    iget-boolean v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isBundleCover_:Z

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v6

    add-int/2addr v5, v6

    .line 1260
    :cond_19
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v6, v6, 0x2000

    if-eqz v6, :cond_1a

    .line 1261
    const/16 v6, 0x1e

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId_:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1264
    :cond_1a
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const v7, 0x8000

    and-int/2addr v6, v7

    if-eqz v6, :cond_1b

    .line 1265
    const/16 v6, 0x1f

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl_:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1268
    :cond_1b
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v7, 0x80

    and-int/2addr v6, v7

    if-eqz v6, :cond_1c

    .line 1269
    const/16 v6, 0x21

    iget v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncStatus_:I

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    .line 1272
    :cond_1c
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v7, 0x200

    and-int/2addr v6, v7

    if-eqz v6, :cond_1d

    .line 1273
    const/16 v6, 0x22

    iget v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncProtocol_:I

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    .line 1276
    :cond_1d
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_1e

    .line 1277
    const/16 v6, 0x23

    iget-wide v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime_:J

    invoke-static {v6, v7, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v6

    add-int/2addr v5, v6

    .line 1280
    :cond_1e
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v6, v6, 0x100

    if-eqz v6, :cond_1f

    .line 1281
    const/16 v6, 0x24

    iget v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinScore_:I

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    .line 1284
    :cond_1f
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v6, v6, 0x4000

    if-eqz v6, :cond_20

    .line 1285
    const/16 v6, 0x25

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId_:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1288
    :cond_20
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v7, 0x10

    and-int/2addr v6, v7

    if-eqz v6, :cond_21

    .line 1289
    const/16 v6, 0x26

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType_:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1292
    :cond_21
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_22

    .line 1293
    const/16 v6, 0x27

    iget-wide v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->expirationTime_:J

    invoke-static {v6, v7, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v6

    add-int/2addr v5, v6

    .line 1296
    :cond_22
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v7, 0x1000

    and-int/2addr v6, v7

    if-eqz v6, :cond_23

    .line 1297
    const/16 v6, 0x28

    iget v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->viewType_:I

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    .line 1300
    :cond_23
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    if-eqz v6, :cond_25

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    array-length v6, v6

    if-lez v6, :cond_25

    .line 1301
    const/4 v1, 0x0

    .line 1302
    .local v1, dataSize:I
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    .local v0, arr$:[I
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_4
    if-ge v3, v4, :cond_24

    aget v2, v0, v3

    .line 1303
    .local v2, element:I
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v1, v6

    .line 1302
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1306
    .end local v2           #element:I
    :cond_24
    add-int/2addr v5, v1

    .line 1307
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 1309
    .end local v0           #arr$:[I
    .end local v1           #dataSize:I
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_25
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    if-eqz v6, :cond_26

    .line 1310
    const/16 v6, 0x2a

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1313
    :cond_26
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    if-eqz v6, :cond_27

    .line 1314
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_5
    if-ge v3, v4, :cond_27

    aget-object v2, v0, v3

    .line 1315
    .local v2, element:Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    const/16 v6, 0x2b

    invoke-static {v6, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1314
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1319
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    .end local v2           #element:Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_27
    iput v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cachedSize:I

    .line 1320
    return v5
.end method

.method public getSmsType()I
    .locals 1

    .prologue
    .line 765
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->smsType_:I

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source_:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceType()I
    .locals 1

    .prologue
    .line 403
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceType_:I

    return v0
.end method

.method public getSpeakableText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText_:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeakableType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType_:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text_:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .prologue
    .line 806
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->viewType_:I

    return v0
.end method

.method public hasBundleId()Z
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCanonicalUrl()Z
    .locals 2

    .prologue
    .line 477
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCloudSyncProtocol()Z
    .locals 2

    .prologue
    .line 735
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x100

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCloudSyncStatus()Z
    .locals 2

    .prologue
    .line 697
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x40

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCompanionSyncProtocol()Z
    .locals 2

    .prologue
    .line 754
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x200

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCompanionSyncStatus()Z
    .locals 2

    .prologue
    .line 716
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x80

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCreationTime()Z
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCreator()Z
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDisplayTime()Z
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasExpirationTime()Z
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHtml()Z
    .locals 2

    .prologue
    .line 587
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x8

    and-int/2addr v0, v1

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
    .line 177
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInReplyTo()Z
    .locals 2

    .prologue
    .line 521
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsBundleCover()Z
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsDeleted()Z
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsPinned()Z
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLocation()Z
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasModifiedTime()Z
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNotification()Z
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPinScore()Z
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPinTime()Z
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasProgressStatus()Z
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSendToPhoneUrl()Z
    .locals 2

    .prologue
    .line 795
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x800

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSmsType()Z
    .locals 2

    .prologue
    .line 773
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x400

    and-int/2addr v0, v1

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
    .line 392
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSourceAccountId()Z
    .locals 1

    .prologue
    .line 455
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSourceItemId()Z
    .locals 1

    .prologue
    .line 433
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSourceType()Z
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSpeakableText()Z
    .locals 2

    .prologue
    .line 631
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x20

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSpeakableType()Z
    .locals 2

    .prologue
    .line 609
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 2

    .prologue
    .line 565
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTitle()Z
    .locals 2

    .prologue
    .line 543
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasViewType()Z
    .locals 2

    .prologue
    .line 814
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x1000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 11

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v10, 0x20

    const/4 v3, 0x0

    .line 939
    const/16 v1, 0x11

    .line 940
    .local v1, result:I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id_:Ljava/lang/String;

    if-nez v2, :cond_6

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 941
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId_:Ljava/lang/String;

    if-nez v2, :cond_7

    move v2, v3

    :goto_1
    add-int v1, v6, v2

    .line 942
    mul-int/lit8 v6, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isBundleCover_:Z

    if-eqz v2, :cond_8

    move v2, v4

    :goto_2
    add-int v1, v6, v2

    .line 943
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime_:J

    iget-wide v8, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime_:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v6, v6

    add-int v1, v2, v6

    .line 944
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime_:J

    iget-wide v8, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime_:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v6, v6

    add-int v1, v2, v6

    .line 945
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime_:J

    iget-wide v8, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime_:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v6, v6

    add-int v1, v2, v6

    .line 946
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime_:J

    iget-wide v8, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime_:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v6, v6

    add-int v1, v2, v6

    .line 947
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->expirationTime_:J

    iget-wide v8, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->expirationTime_:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v6, v6

    add-int v1, v2, v6

    .line 948
    mul-int/lit8 v2, v1, 0x1f

    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinScore_:I

    add-int v1, v2, v6

    .line 949
    mul-int/lit8 v6, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned_:Z

    if-eqz v2, :cond_9

    move v2, v4

    :goto_3
    add-int v1, v6, v2

    .line 950
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDeleted_:Z

    if-eqz v6, :cond_a

    :goto_4
    add-int v1, v2, v4

    .line 951
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source_:Ljava/lang/String;

    if-nez v2, :cond_b

    move v2, v3

    :goto_5
    add-int v1, v4, v2

    .line 952
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceType_:I

    add-int v1, v2, v4

    .line 953
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId_:Ljava/lang/String;

    if-nez v2, :cond_c

    move v2, v3

    :goto_6
    add-int v1, v4, v2

    .line 954
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId_:Ljava/lang/String;

    if-nez v2, :cond_d

    move v2, v3

    :goto_7
    add-int v1, v4, v2

    .line 955
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl_:Ljava/lang/String;

    if-nez v2, :cond_e

    move v2, v3

    :goto_8
    add-int v1, v4, v2

    .line 956
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v2, :cond_f

    move v2, v3

    :goto_9
    add-int v1, v4, v2

    .line 957
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v2, :cond_10

    mul-int/lit8 v1, v1, 0x1f

    .line 963
    :cond_0
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo_:Ljava/lang/String;

    if-nez v2, :cond_12

    move v2, v3

    :goto_a
    add-int v1, v4, v2

    .line 964
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title_:Ljava/lang/String;

    if-nez v2, :cond_13

    move v2, v3

    :goto_b
    add-int v1, v4, v2

    .line 965
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text_:Ljava/lang/String;

    if-nez v2, :cond_14

    move v2, v3

    :goto_c
    add-int v1, v4, v2

    .line 966
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html_:Ljava/lang/String;

    if-nez v2, :cond_15

    move v2, v3

    :goto_d
    add-int v1, v4, v2

    .line 967
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType_:Ljava/lang/String;

    if-nez v2, :cond_16

    move v2, v3

    :goto_e
    add-int v1, v4, v2

    .line 968
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText_:Ljava/lang/String;

    if-nez v2, :cond_17

    move v2, v3

    :goto_f
    add-int v1, v4, v2

    .line 969
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    if-nez v2, :cond_18

    mul-int/lit8 v1, v1, 0x1f

    .line 975
    :cond_1
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    if-nez v2, :cond_1a

    move v2, v3

    :goto_10
    add-int v1, v4, v2

    .line 976
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-nez v2, :cond_1b

    mul-int/lit8 v1, v1, 0x1f

    .line 982
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-nez v2, :cond_1d

    mul-int/lit8 v1, v1, 0x1f

    .line 988
    :cond_3
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    if-nez v2, :cond_1f

    move v2, v3

    :goto_11
    add-int v1, v4, v2

    .line 989
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncStatus_:I

    add-int v1, v2, v4

    .line 990
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncStatus_:I

    add-int v1, v2, v4

    .line 991
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol_:I

    add-int v1, v2, v4

    .line 992
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncProtocol_:I

    add-int v1, v2, v4

    .line 993
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->smsType_:I

    add-int v1, v2, v4

    .line 994
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    if-nez v2, :cond_20

    move v2, v3

    :goto_12
    add-int v1, v4, v2

    .line 995
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->viewType_:I

    add-int v1, v2, v4

    .line 996
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    if-nez v2, :cond_21

    mul-int/lit8 v1, v1, 0x1f

    .line 1002
    :cond_4
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    if-nez v2, :cond_22

    move v2, v3

    :goto_13
    add-int v1, v4, v2

    .line 1003
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    if-nez v2, :cond_23

    mul-int/lit8 v1, v1, 0x1f

    .line 1009
    :cond_5
    return v1

    .line 940
    :cond_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_0

    .line 941
    :cond_7
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :cond_8
    move v2, v5

    .line 942
    goto/16 :goto_2

    :cond_9
    move v2, v5

    .line 949
    goto/16 :goto_3

    :cond_a
    move v4, v5

    .line 950
    goto/16 :goto_4

    .line 951
    :cond_b
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_5

    .line 953
    :cond_c
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_6

    .line 954
    :cond_d
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_7

    .line 955
    :cond_e
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_8

    .line 956
    :cond_f
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hashCode()I

    move-result v2

    goto/16 :goto_9

    .line 959
    :cond_10
    const/4 v0, 0x0

    .local v0, i:I
    :goto_14
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 960
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    aget-object v2, v2, v0

    if-nez v2, :cond_11

    move v2, v3

    :goto_15
    add-int v1, v4, v2

    .line 959
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 960
    :cond_11
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hashCode()I

    move-result v2

    goto :goto_15

    .line 963
    .end local v0           #i:I
    :cond_12
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_a

    .line 964
    :cond_13
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_b

    .line 965
    :cond_14
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_c

    .line 966
    :cond_15
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_d

    .line 967
    :cond_16
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_e

    .line 968
    :cond_17
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_f

    .line 971
    :cond_18
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_16
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 972
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    aget-object v2, v2, v0

    if-nez v2, :cond_19

    move v2, v3

    :goto_17
    add-int v1, v4, v2

    .line 971
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 972
    :cond_19
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->hashCode()I

    move-result v2

    goto :goto_17

    .line 975
    .end local v0           #i:I
    :cond_1a
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->hashCode()I

    move-result v2

    goto/16 :goto_10

    .line 978
    :cond_1b
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_18
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 979
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    aget-object v2, v2, v0

    if-nez v2, :cond_1c

    move v2, v3

    :goto_19
    add-int v1, v4, v2

    .line 978
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 979
    :cond_1c
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->hashCode()I

    move-result v2

    goto :goto_19

    .line 984
    .end local v0           #i:I
    :cond_1d
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1a
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 985
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    aget-object v2, v2, v0

    if-nez v2, :cond_1e

    move v2, v3

    :goto_1b
    add-int v1, v4, v2

    .line 984
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 985
    :cond_1e
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->hashCode()I

    move-result v2

    goto :goto_1b

    .line 988
    .end local v0           #i:I
    :cond_1f
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->hashCode()I

    move-result v2

    goto/16 :goto_11

    .line 994
    :cond_20
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_12

    .line 998
    :cond_21
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1c
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 999
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    aget v4, v4, v0

    add-int v1, v2, v4

    .line 998
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 1002
    .end local v0           #i:I
    :cond_22
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;->hashCode()I

    move-result v2

    goto/16 :goto_13

    .line 1005
    :cond_23
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1d
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 1006
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    aget-object v2, v2, v0

    if-nez v2, :cond_24

    move v2, v3

    :goto_1e
    add-int v1, v4, v2

    .line 1005
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 1006
    :cond_24
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->hashCode()I

    move-result v2

    goto :goto_1e
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 11
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 1328
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 1329
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 1333
    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1334
    :sswitch_0
    return-object p0

    .line 1339
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id_:Ljava/lang/String;

    .line 1340
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto :goto_0

    .line 1344
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime_:J

    .line 1345
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto :goto_0

    .line 1349
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime_:J

    .line 1350
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto :goto_0

    .line 1354
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source_:Ljava/lang/String;

    .line 1355
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit16 v6, v6, 0x800

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto :goto_0

    .line 1359
    :sswitch_5
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v6, :cond_1

    .line 1360
    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;-><init>()V

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 1362
    :cond_1
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1366
    :sswitch_6
    const/16 v6, 0x32

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1367
    .local v0, arrayLength:I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v6, :cond_3

    move v1, v5

    .line 1368
    .local v1, i:I
    :goto_1
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 1369
    .local v2, newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v6, :cond_2

    .line 1370
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1372
    :cond_2
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 1373
    :goto_2
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_4

    .line 1374
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;-><init>()V

    aput-object v7, v6, v1

    .line 1375
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1376
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1373
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1367
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_3
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v1, v6

    goto :goto_1

    .line 1379
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_4
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;-><init>()V

    aput-object v7, v6, v1

    .line 1380
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1384
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo_:Ljava/lang/String;

    .line 1385
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v7, 0x1

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1389
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text_:Ljava/lang/String;

    .line 1390
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v7, 0x4

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1394
    :sswitch_9
    const/16 v6, 0x4a

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1395
    .restart local v0       #arrayLength:I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    if-nez v6, :cond_6

    move v1, v5

    .line 1396
    .restart local v1       #i:I
    :goto_3
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 1397
    .local v2, newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    if-eqz v6, :cond_5

    .line 1398
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1400
    :cond_5
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 1401
    :goto_4
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_7

    .line 1402
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;-><init>()V

    aput-object v7, v6, v1

    .line 1403
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1404
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1401
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1395
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    :cond_6
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    array-length v1, v6

    goto :goto_3

    .line 1407
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    :cond_7
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;-><init>()V

    aput-object v7, v6, v1

    .line 1408
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1412
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    :sswitch_a
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    if-nez v6, :cond_8

    .line 1413
    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;-><init>()V

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 1415
    :cond_8
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1419
    :sswitch_b
    const/16 v6, 0x5a

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1420
    .restart local v0       #arrayLength:I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-nez v6, :cond_a

    move v1, v5

    .line 1421
    .restart local v1       #i:I
    :goto_5
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 1422
    .local v2, newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-eqz v6, :cond_9

    .line 1423
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1425
    :cond_9
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 1426
    :goto_6
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_b

    .line 1427
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    aput-object v7, v6, v1

    .line 1428
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1429
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1426
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1420
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    :cond_a
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v1, v6

    goto :goto_5

    .line 1432
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    :cond_b
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    aput-object v7, v6, v1

    .line 1433
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1437
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 1438
    .local v4, temp:I
    if-eqz v4, :cond_c

    if-eq v4, v8, :cond_c

    if-ne v4, v9, :cond_d

    .line 1441
    :cond_c
    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncStatus_:I

    .line 1445
    :goto_7
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v7, 0x40

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1443
    :cond_d
    iput v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncStatus_:I

    goto :goto_7

    .line 1449
    .end local v4           #temp:I
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 1450
    .restart local v4       #temp:I
    if-eqz v4, :cond_e

    if-eq v4, v8, :cond_e

    if-ne v4, v9, :cond_f

    .line 1453
    :cond_e
    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol_:I

    .line 1457
    :goto_8
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v7, 0x100

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1455
    :cond_f
    iput v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol_:I

    goto :goto_8

    .line 1461
    .end local v4           #temp:I
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 1462
    .restart local v4       #temp:I
    if-eqz v4, :cond_10

    if-eq v4, v8, :cond_10

    if-ne v4, v9, :cond_11

    .line 1465
    :cond_10
    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceType_:I

    .line 1469
    :goto_9
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit16 v6, v6, 0x1000

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1467
    :cond_11
    iput v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceType_:I

    goto :goto_9

    .line 1473
    .end local v4           #temp:I
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDeleted_:Z

    .line 1474
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit16 v6, v6, 0x400

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1478
    :sswitch_10
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    if-nez v6, :cond_12

    .line 1479
    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;-><init>()V

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    .line 1481
    :cond_12
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1485
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime_:J

    .line 1486
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1490
    :sswitch_12
    const/16 v6, 0x92

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1491
    .restart local v0       #arrayLength:I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-nez v6, :cond_14

    move v1, v5

    .line 1492
    .restart local v1       #i:I
    :goto_a
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 1493
    .restart local v2       #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-eqz v6, :cond_13

    .line 1494
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1496
    :cond_13
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 1497
    :goto_b
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_15

    .line 1498
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    aput-object v7, v6, v1

    .line 1499
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1500
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1497
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1491
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    :cond_14
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v1, v6

    goto :goto_a

    .line 1503
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    :cond_15
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    aput-object v7, v6, v1

    .line 1504
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1508
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText_:Ljava/lang/String;

    .line 1509
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v7, 0x20

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1513
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 1514
    .restart local v4       #temp:I
    if-eqz v4, :cond_16

    if-eq v4, v8, :cond_16

    if-ne v4, v9, :cond_17

    .line 1517
    :cond_16
    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->smsType_:I

    .line 1521
    :goto_c
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v7, 0x400

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1519
    :cond_17
    iput v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->smsType_:I

    goto :goto_c

    .line 1525
    .end local v4           #temp:I
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned_:Z

    .line 1526
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit16 v6, v6, 0x200

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1530
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title_:Ljava/lang/String;

    .line 1531
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v7, 0x2

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1535
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html_:Ljava/lang/String;

    .line 1536
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v7, 0x8

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1540
    :sswitch_18
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId_:Ljava/lang/String;

    .line 1541
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1545
    :sswitch_19
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    .line 1546
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v7, 0x800

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1550
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isBundleCover_:Z

    .line 1551
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1555
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId_:Ljava/lang/String;

    .line 1556
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit16 v6, v6, 0x2000

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1560
    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl_:Ljava/lang/String;

    .line 1561
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const v7, 0x8000

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1565
    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 1566
    .restart local v4       #temp:I
    if-eqz v4, :cond_18

    if-eq v4, v8, :cond_18

    if-ne v4, v9, :cond_19

    .line 1569
    :cond_18
    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncStatus_:I

    .line 1573
    :goto_d
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v7, 0x80

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1571
    :cond_19
    iput v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncStatus_:I

    goto :goto_d

    .line 1577
    .end local v4           #temp:I
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 1578
    .restart local v4       #temp:I
    if-eqz v4, :cond_1a

    if-eq v4, v8, :cond_1a

    if-ne v4, v9, :cond_1b

    .line 1581
    :cond_1a
    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncProtocol_:I

    .line 1585
    :goto_e
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v7, 0x200

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1583
    :cond_1b
    iput v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncProtocol_:I

    goto :goto_e

    .line 1589
    .end local v4           #temp:I
    :sswitch_1f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime_:J

    .line 1590
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit8 v6, v6, 0x40

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1594
    :sswitch_20
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinScore_:I

    .line 1595
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit16 v6, v6, 0x100

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1599
    :sswitch_21
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId_:Ljava/lang/String;

    .line 1600
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit16 v6, v6, 0x4000

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1604
    :sswitch_22
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType_:Ljava/lang/String;

    .line 1605
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v7, 0x10

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1609
    :sswitch_23
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->expirationTime_:J

    .line 1610
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit16 v6, v6, 0x80

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1614
    :sswitch_24
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 1615
    .restart local v4       #temp:I
    if-eq v4, v10, :cond_1c

    if-eqz v4, :cond_1c

    if-eq v4, v8, :cond_1c

    if-eq v4, v9, :cond_1c

    const/4 v6, 0x3

    if-eq v4, v6, :cond_1c

    const/4 v6, 0x4

    if-eq v4, v6, :cond_1c

    const/4 v6, 0x5

    if-eq v4, v6, :cond_1c

    const/4 v6, 0x6

    if-eq v4, v6, :cond_1c

    const/4 v6, 0x7

    if-eq v4, v6, :cond_1c

    const/16 v6, 0x8

    if-eq v4, v6, :cond_1c

    const/16 v6, 0x9

    if-eq v4, v6, :cond_1c

    const/16 v6, 0xa

    if-ne v4, v6, :cond_1d

    .line 1627
    :cond_1c
    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->viewType_:I

    .line 1631
    :goto_f
    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v7, 0x1000

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    goto/16 :goto_0

    .line 1629
    :cond_1d
    iput v10, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->viewType_:I

    goto :goto_f

    .line 1635
    .end local v4           #temp:I
    :sswitch_25
    const/16 v6, 0x148

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1636
    .restart local v0       #arrayLength:I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    array-length v1, v6

    .line 1637
    .restart local v1       #i:I
    add-int v6, v1, v0

    new-array v2, v6, [I

    .line 1638
    .local v2, newArray:[I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1639
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    .line 1640
    :goto_10
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_1e

    .line 1641
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    aput v7, v6, v1

    .line 1642
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1640
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1645
    :cond_1e
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    aput v7, v6, v1

    goto/16 :goto_0

    .line 1649
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[I
    :sswitch_26
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    if-nez v6, :cond_1f

    .line 1650
    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;-><init>()V

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    .line 1652
    :cond_1f
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1656
    :sswitch_27
    const/16 v6, 0x15a

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1657
    .restart local v0       #arrayLength:I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    if-nez v6, :cond_21

    move v1, v5

    .line 1658
    .restart local v1       #i:I
    :goto_11
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .line 1659
    .local v2, newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    if-eqz v6, :cond_20

    .line 1660
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1662
    :cond_20
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .line 1663
    :goto_12
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_22

    .line 1664
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;-><init>()V

    aput-object v7, v6, v1

    .line 1665
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1666
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1663
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1657
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    :cond_21
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    array-length v1, v6

    goto :goto_11

    .line 1669
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    :cond_22
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;-><init>()V

    aput-object v7, v6, v1

    .line 1670
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1329
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
        0x70 -> :sswitch_e
        0x78 -> :sswitch_f
        0x82 -> :sswitch_10
        0x88 -> :sswitch_11
        0x92 -> :sswitch_12
        0x9a -> :sswitch_13
        0xa0 -> :sswitch_14
        0xa8 -> :sswitch_15
        0xba -> :sswitch_16
        0xc2 -> :sswitch_17
        0xca -> :sswitch_18
        0xe2 -> :sswitch_19
        0xe8 -> :sswitch_1a
        0xf2 -> :sswitch_1b
        0xfa -> :sswitch_1c
        0x108 -> :sswitch_1d
        0x110 -> :sswitch_1e
        0x118 -> :sswitch_1f
        0x120 -> :sswitch_20
        0x12a -> :sswitch_21
        0x132 -> :sswitch_22
        0x138 -> :sswitch_23
        0x140 -> :sswitch_24
        0x148 -> :sswitch_25
        0x152 -> :sswitch_26
        0x15a -> :sswitch_27
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
    .line 10
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method public setBundleId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 191
    if-nez p1, :cond_0

    .line 192
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 194
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId_:Ljava/lang/String;

    .line 195
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 196
    return-object p0
.end method

.method public setCanonicalUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2
    .parameter "value"

    .prologue
    .line 469
    if-nez p1, :cond_0

    .line 470
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 472
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl_:Ljava/lang/String;

    .line 473
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 474
    return-object p0
.end method

.method public setCloudSyncProtocol(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2
    .parameter "value"

    .prologue
    .line 730
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol_:I

    .line 731
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x100

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 732
    return-object p0
.end method

.method public setCloudSyncStatus(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2
    .parameter "value"

    .prologue
    .line 692
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncStatus_:I

    .line 693
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x40

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 694
    return-object p0
.end method

.method public setCompanionSyncProtocol(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2
    .parameter "value"

    .prologue
    .line 749
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncProtocol_:I

    .line 750
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x200

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 751
    return-object p0
.end method

.method public setCompanionSyncStatus(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2
    .parameter "value"

    .prologue
    .line 711
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncStatus_:I

    .line 712
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x80

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 713
    return-object p0
.end method

.method public setCreationTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 232
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime_:J

    .line 233
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 234
    return-object p0
.end method

.method public setCreator(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 491
    if-nez p1, :cond_0

    .line 492
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 494
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 495
    return-object p0
.end method

.method public setDisplayTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 270
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime_:J

    .line 271
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 272
    return-object p0
.end method

.method public setExpirationTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 308
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->expirationTime_:J

    .line 309
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 310
    return-object p0
.end method

.method public setHtml(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2
    .parameter "value"

    .prologue
    .line 579
    if-nez p1, :cond_0

    .line 580
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 582
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html_:Ljava/lang/String;

    .line 583
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 584
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 169
    if-nez p1, :cond_0

    .line 170
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 172
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id_:Ljava/lang/String;

    .line 173
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 174
    return-object p0
.end method

.method public setInReplyTo(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2
    .parameter "value"

    .prologue
    .line 513
    if-nez p1, :cond_0

    .line 514
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 516
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo_:Ljava/lang/String;

    .line 517
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 518
    return-object p0
.end method

.method public setIsBundleCover(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isBundleCover_:Z

    .line 214
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 215
    return-object p0
.end method

.method public setIsDeleted(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 365
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDeleted_:Z

    .line 366
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 367
    return-object p0
.end method

.method public setIsPinned(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 346
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned_:Z

    .line 347
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 348
    return-object p0
.end method

.method public setLocation(Lcom/google/googlex/glass/common/proto/TimelineNano$Location;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 648
    if-nez p1, :cond_0

    .line 649
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 651
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 652
    return-object p0
.end method

.method public setModifiedTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 251
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime_:J

    .line 252
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 253
    return-object p0
.end method

.method public setNotification(Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 673
    if-nez p1, :cond_0

    .line 674
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 676
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    .line 677
    return-object p0
.end method

.method public setPinScore(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 327
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinScore_:I

    .line 328
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 329
    return-object p0
.end method

.method public setPinTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 289
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime_:J

    .line 290
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 291
    return-object p0
.end method

.method public setProgressStatus(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 831
    if-nez p1, :cond_0

    .line 832
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 834
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    .line 835
    return-object p0
.end method

.method public setSendToPhoneUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2
    .parameter "value"

    .prologue
    .line 787
    if-nez p1, :cond_0

    .line 788
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 790
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    .line 791
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x800

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 792
    return-object p0
.end method

.method public setSmsType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2
    .parameter "value"

    .prologue
    .line 768
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->smsType_:I

    .line 769
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x400

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 770
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 384
    if-nez p1, :cond_0

    .line 385
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 387
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source_:Ljava/lang/String;

    .line 388
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 389
    return-object p0
.end method

.method public setSourceAccountId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 447
    if-nez p1, :cond_0

    .line 448
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 450
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId_:Ljava/lang/String;

    .line 451
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 452
    return-object p0
.end method

.method public setSourceItemId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 425
    if-nez p1, :cond_0

    .line 426
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 428
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId_:Ljava/lang/String;

    .line 429
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 430
    return-object p0
.end method

.method public setSourceType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 406
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceType_:I

    .line 407
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 408
    return-object p0
.end method

.method public setSpeakableText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2
    .parameter "value"

    .prologue
    .line 623
    if-nez p1, :cond_0

    .line 624
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 626
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText_:Ljava/lang/String;

    .line 627
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 628
    return-object p0
.end method

.method public setSpeakableType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2
    .parameter "value"

    .prologue
    .line 601
    if-nez p1, :cond_0

    .line 602
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 604
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType_:Ljava/lang/String;

    .line 605
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 606
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2
    .parameter "value"

    .prologue
    .line 557
    if-nez p1, :cond_0

    .line 558
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 560
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text_:Ljava/lang/String;

    .line 561
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 562
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2
    .parameter "value"

    .prologue
    .line 535
    if-nez p1, :cond_0

    .line 536
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 538
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title_:Ljava/lang/String;

    .line 539
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 540
    return-object p0
.end method

.method public setViewType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 2
    .parameter "value"

    .prologue
    .line 809
    iput p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->viewType_:I

    .line 810
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v1, 0x1000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    .line 811
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
    .line 1014
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 1015
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id_:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1017
    :cond_0
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_1

    .line 1018
    const/4 v4, 0x2

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creationTime_:J

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 1020
    :cond_1
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_2

    .line 1021
    const/4 v4, 0x3

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime_:J

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 1023
    :cond_2
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_3

    .line 1024
    const/4 v4, 0x4

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source_:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1026
    :cond_3
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v4, :cond_4

    .line 1027
    const/4 v4, 0x5

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->creator_:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1029
    :cond_4
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v4, :cond_5

    .line 1030
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_5

    aget-object v1, v0, v2

    .line 1031
    .local v1, element:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    const/4 v4, 0x6

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1030
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1034
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_5
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v5, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_6

    .line 1035
    const/4 v4, 0x7

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->inReplyTo_:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1037
    :cond_6
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v5, 0x4

    and-int/2addr v4, v5

    if-eqz v4, :cond_7

    .line 1038
    const/16 v4, 0x8

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text_:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1040
    :cond_7
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    if-eqz v4, :cond_8

    .line 1041
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v3, :cond_8

    aget-object v1, v0, v2

    .line 1042
    .local v1, element:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    const/16 v4, 0x9

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1041
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1045
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_8
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    if-eqz v4, :cond_9

    .line 1046
    const/16 v4, 0xa

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->location_:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1048
    :cond_9
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-eqz v4, :cond_a

    .line 1049
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_2
    if-ge v2, v3, :cond_a

    aget-object v1, v0, v2

    .line 1050
    .local v1, element:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    const/16 v4, 0xb

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1049
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1053
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_a
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v5, 0x40

    and-int/2addr v4, v5

    if-eqz v4, :cond_b

    .line 1054
    const/16 v4, 0xc

    iget v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncStatus_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1056
    :cond_b
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v5, 0x100

    and-int/2addr v4, v5

    if-eqz v4, :cond_c

    .line 1057
    const/16 v4, 0xd

    iget v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1059
    :cond_c
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_d

    .line 1060
    const/16 v4, 0xe

    iget v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceType_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1062
    :cond_d
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_e

    .line 1063
    const/16 v4, 0xf

    iget-boolean v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isDeleted_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1065
    :cond_e
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    if-eqz v4, :cond_f

    .line 1066
    const/16 v4, 0x10

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->notification_:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1068
    :cond_f
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_10

    .line 1069
    const/16 v4, 0x11

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->displayTime_:J

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 1071
    :cond_10
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-eqz v4, :cond_11

    .line 1072
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .restart local v0       #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_3
    if-ge v2, v3, :cond_11

    aget-object v1, v0, v2

    .line 1073
    .restart local v1       #element:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    const/16 v4, 0x12

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1072
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1076
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_11
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v5, 0x20

    and-int/2addr v4, v5

    if-eqz v4, :cond_12

    .line 1077
    const/16 v4, 0x13

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableText_:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1079
    :cond_12
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v5, 0x400

    and-int/2addr v4, v5

    if-eqz v4, :cond_13

    .line 1080
    const/16 v4, 0x14

    iget v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->smsType_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1082
    :cond_13
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_14

    .line 1083
    const/16 v4, 0x15

    iget-boolean v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isPinned_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1085
    :cond_14
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v5, 0x2

    and-int/2addr v4, v5

    if-eqz v4, :cond_15

    .line 1086
    const/16 v4, 0x17

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->title_:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1088
    :cond_15
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v5, 0x8

    and-int/2addr v4, v5

    if-eqz v4, :cond_16

    .line 1089
    const/16 v4, 0x18

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html_:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1091
    :cond_16
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_17

    .line 1092
    const/16 v4, 0x19

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bundleId_:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1094
    :cond_17
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v5, 0x800

    and-int/2addr v4, v5

    if-eqz v4, :cond_18

    .line 1095
    const/16 v4, 0x1c

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sendToPhoneUrl_:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1097
    :cond_18
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_19

    .line 1098
    const/16 v4, 0x1d

    iget-boolean v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->isBundleCover_:Z

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1100
    :cond_19
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_1a

    .line 1101
    const/16 v4, 0x1e

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceItemId_:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1103
    :cond_1a
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const v5, 0x8000

    and-int/2addr v4, v5

    if-eqz v4, :cond_1b

    .line 1104
    const/16 v4, 0x1f

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->canonicalUrl_:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1106
    :cond_1b
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v5, 0x80

    and-int/2addr v4, v5

    if-eqz v4, :cond_1c

    .line 1107
    const/16 v4, 0x21

    iget v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncStatus_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1109
    :cond_1c
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v5, 0x200

    and-int/2addr v4, v5

    if-eqz v4, :cond_1d

    .line 1110
    const/16 v4, 0x22

    iget v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncProtocol_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1112
    :cond_1d
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_1e

    .line 1113
    const/16 v4, 0x23

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinTime_:J

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 1115
    :cond_1e
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_1f

    .line 1116
    const/16 v4, 0x24

    iget v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pinScore_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1118
    :cond_1f
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x4000

    if-eqz v4, :cond_20

    .line 1119
    const/16 v4, 0x25

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceAccountId_:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1121
    :cond_20
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v5, 0x10

    and-int/2addr v4, v5

    if-eqz v4, :cond_21

    .line 1122
    const/16 v4, 0x26

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->speakableType_:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1124
    :cond_21
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_22

    .line 1125
    const/16 v4, 0x27

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->expirationTime_:J

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 1127
    :cond_22
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->bitField0_:I

    const/high16 v5, 0x1000

    and-int/2addr v4, v5

    if-eqz v4, :cond_23

    .line 1128
    const/16 v4, 0x28

    iget v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->viewType_:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1130
    :cond_23
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    if-eqz v4, :cond_24

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    array-length v4, v4

    if-lez v4, :cond_24

    .line 1131
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    .local v0, arr$:[I
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_4
    if-ge v2, v3, :cond_24

    aget v1, v0, v2

    .line 1132
    .local v1, element:I
    const/16 v4, 0x29

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1131
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1135
    .end local v0           #arr$:[I
    .end local v1           #element:I
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_24
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    if-eqz v4, :cond_25

    .line 1136
    const/16 v4, 0x2a

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->progressStatus_:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1138
    :cond_25
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    if-eqz v4, :cond_26

    .line 1139
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_5
    if-ge v2, v3, :cond_26

    aget-object v1, v0, v2

    .line 1140
    .local v1, element:Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    const/16 v4, 0x2b

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1139
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1143
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_26
    return-void
.end method
