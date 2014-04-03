.class public Lcom/google/glass/userevent/UserEventHelper;
.super Ljava/lang/Object;
.source "UserEventHelper.java"


# static fields
.field private static final EVENT_TUPLE_ASSIGNMENT:C = '='

.field private static final EVENT_TUPLE_SEPARATOR:C = '|'

.field private static final EVENT_TUPLE_SPLITTER:Lcom/google/common/base/Splitter; = null

.field public static final EXTRA_CHECKIN:Ljava/lang/String; = "checkin"

.field public static final EXTRA_FORCE_FLUSH:Ljava/lang/String; = "force_flush"

.field public static final EXTRA_FORCE_SAVE_TO_DISK:Ljava/lang/String; = "force_save_to_disk"

.field public static final EXTRA_READ_FRAMEWORK_EVENTS:Ljava/lang/String; = "read_framework_events"

.field public static final EXTRA_USER_EVENT:Ljava/lang/String; = "user_event"

.field public static final NON_ASSIGNMENT_ITEM_KEY:Ljava/lang/String; = null

.field private static final RESERVED_CHAR_MATCHER:Lcom/google/common/base/CharMatcher; = null

.field public static final USER_EVENT_SERVICE:Ljava/lang/String; = "com.google.glass.logging.UserEventService"

.field public static final USER_EVENT_SERVICE_PACKAGE:Ljava/lang/String; = "com.google.glass.logging"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;

.field private final loggingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x7c

    const/16 v2, 0x3d

    .line 30
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/userevent/UserEventHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/glass/userevent/UserEventHelper;->RESERVED_CHAR_MATCHER:Lcom/google/common/base/CharMatcher;

    .line 72
    invoke-static {v3}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Splitter;->omitEmptyStrings()Lcom/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lcom/google/glass/userevent/UserEventHelper;->EVENT_TUPLE_SPLITTER:Lcom/google/common/base/Splitter;

    .line 78
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/userevent/UserEventHelper;->NON_ASSIGNMENT_ITEM_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 97
    invoke-static {}, Lcom/google/glass/predicates/Assert;->isTest()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;Z)V

    .line 98
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .parameter "context"
    .parameter "loggingEnabled"

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/google/glass/userevent/UserEventHelper;->context:Landroid/content/Context;

    .line 109
    iput-boolean p2, p0, Lcom/google/glass/userevent/UserEventHelper;->loggingEnabled:Z

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/google/glass/userevent/UserEventHelper;->logInternal(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/glass/userevent/UserEventHelper;->flushInternal()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/glass/userevent/UserEventHelper;->saveToDiskInternal()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/glass/userevent/UserEventHelper;->checkinInternal()V

    return-void
.end method

.method public static appendData(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .parameter "builder"
    .parameter "data"

    .prologue
    .line 341
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    invoke-static {p0}, Lcom/google/glass/userevent/UserEventHelper;->ensureEndsWithSeparator(Ljava/lang/StringBuilder;)V

    .line 346
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_2

    .line 347
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 351
    :goto_1
    invoke-static {p0}, Lcom/google/glass/userevent/UserEventHelper;->ensureEndsWithSeparator(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 349
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "builder"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 322
    invoke-static {p0}, Lcom/google/glass/userevent/UserEventHelper;->ensureEndsWithSeparator(Ljava/lang/StringBuilder;)V

    .line 323
    invoke-static {p1}, Lcom/google/glass/userevent/UserEventHelper;->sanitize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 325
    invoke-static {p2}, Lcom/google/glass/userevent/UserEventHelper;->sanitize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    const/16 v0, 0x7c

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 327
    return-void
.end method

.method private checkinInternal()V
    .locals 4

    .prologue
    .line 225
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 226
    sget-object v1, Lcom/google/glass/userevent/UserEventHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Sending checkin."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 229
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.google.glass.logging"

    const-string v2, "com.google.glass.logging.UserEventService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string v1, "checkin"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 231
    iget-object v1, p0, Lcom/google/glass/userevent/UserEventHelper;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 232
    return-void
.end method

.method public static varargs createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "key"
    .parameter "value"
    .parameter "args"

    .prologue
    .line 285
    invoke-static {p0, p1, p2}, Lcom/google/glass/userevent/UserEventHelper;->createEventTupleBuilder(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs createEventTupleBuilder(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 9
    .parameter "key"
    .parameter "value"
    .parameter "args"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 295
    const-string v3, "null key"

    invoke-static {p0, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    array-length v3, p2

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    move v3, v4

    :goto_0
    const-string v6, "invalid number of key/value arguments (%s"

    new-array v7, v4, [Ljava/lang/Object;

    array-length v8, p2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v3, v6, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-static {v0, p0, p1}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 302
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1

    .line 304
    aget-object v3, p2, v1

    const-string v6, "null key (vararg %s)"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v3, v6, v7}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 305
    .local v2, keyObj:Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/String;

    const-string v6, "key (vararg %s) is not a String."

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v3, v6, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    move-object p0, v2

    .line 306
    check-cast p0, Ljava/lang/String;

    .line 308
    add-int/lit8 v3, v1, 0x1

    aget-object p1, p2, v3

    .line 309
    invoke-static {v0, p0, p1}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 302
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #i:I
    .end local v2           #keyObj:Ljava/lang/Object;
    :cond_0
    move v3, v5

    .line 296
    goto :goto_0

    .line 312
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    .restart local v1       #i:I
    :cond_1
    return-object v0
.end method

.method public static createProto(Lcom/google/glass/userevent/UserEventAction;JLjava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 2
    .parameter "action"
    .parameter "eventTimeMs"
    .parameter "data"

    .prologue
    .line 249
    new-instance v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    invoke-direct {v0}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;-><init>()V

    .line 250
    .local v0, userEvent:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    iget-object v1, p0, Lcom/google/glass/userevent/UserEventAction;->action:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventType:Ljava/lang/String;

    .line 251
    iput-wide p1, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventTimeMs:J

    .line 253
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    iput-object p3, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventData:Ljava/lang/String;

    .line 257
    :cond_0
    return-object v0
.end method

.method public static createProto(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 2
    .parameter "action"
    .parameter "data"

    .prologue
    .line 241
    invoke-static {}, Lcom/google/glass/util/ClockProvider;->get()Lcom/google/glass/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1, p1}, Lcom/google/glass/userevent/UserEventHelper;->createProto(Lcom/google/glass/userevent/UserEventAction;JLjava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v0

    return-object v0
.end method

.method private static ensureEndsWithSeparator(Ljava/lang/StringBuilder;)V
    .locals 3
    .parameter "builder"

    .prologue
    const/16 v2, 0x7c

    .line 403
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 404
    .local v0, length:I
    if-eqz v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_1

    .line 405
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 407
    :cond_1
    return-void
.end method

.method private flushInternal()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 175
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 176
    iget-boolean v1, p0, Lcom/google/glass/userevent/UserEventHelper;->loggingEnabled:Z

    if-nez v1, :cond_0

    .line 177
    sget-object v1, Lcom/google/glass/userevent/UserEventHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Not flushing user events as logging is disabled."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    :goto_0
    return-void

    .line 180
    :cond_0
    sget-object v1, Lcom/google/glass/userevent/UserEventHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Flushing user events."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 183
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.google.glass.logging"

    const-string v2, "com.google.glass.logging.UserEventService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string v1, "force_flush"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 185
    iget-object v1, p0, Lcom/google/glass/userevent/UserEventHelper;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private logInternal(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V
    .locals 3
    .parameter "action"
    .parameter "data"

    .prologue
    .line 152
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 154
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 155
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.google.glass.logging"

    const-string v2, "com.google.glass.logging.UserEventService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const-string v1, "user_event"

    invoke-static {p1, p2}, Lcom/google/glass/userevent/UserEventHelper;->createProto(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 157
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/userevent/UserEventHelper;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/util/IntentSender;->startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 158
    return-void
.end method

.method public static parseEventTuple(Ljava/lang/String;)Lcom/google/common/collect/ImmutableMultimap;
    .locals 8
    .parameter "eventTuple"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/ImmutableMultimap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 362
    const-string v7, "null eventTuple"

    invoke-static {p0, v7}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->builder()Lcom/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object v5

    .line 365
    .local v5, multimapBuilder:Lcom/google/common/collect/ImmutableListMultimap$Builder;,"Lcom/google/common/collect/ImmutableListMultimap$Builder<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v7, Lcom/google/glass/userevent/UserEventHelper;->EVENT_TUPLE_SPLITTER:Lcom/google/common/base/Splitter;

    invoke-virtual {v7, p0}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 368
    .local v2, item:Ljava/lang/String;
    const/16 v7, 0x3d

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 369
    .local v0, assignmentIndex:I
    if-gez v0, :cond_0

    .line 370
    sget-object v3, Lcom/google/glass/userevent/UserEventHelper;->NON_ASSIGNMENT_ITEM_KEY:Ljava/lang/String;

    .line 371
    .local v3, key:Ljava/lang/String;
    move-object v6, v2

    .line 377
    .local v6, value:Ljava/lang/String;
    :goto_1
    invoke-virtual {v5, v3, v6}, Lcom/google/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap$Builder;

    goto :goto_0

    .line 373
    .end local v3           #key:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v2, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 374
    .restart local v3       #key:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    .line 375
    .local v4, length:I
    add-int/lit8 v7, v0, 0x1

    if-le v4, v7, :cond_1

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #value:Ljava/lang/String;
    :goto_2
    goto :goto_1

    .end local v6           #value:Ljava/lang/String;
    :cond_1
    const-string v6, ""

    goto :goto_2

    .line 380
    .end local v0           #assignmentIndex:I
    .end local v2           #item:Ljava/lang/String;
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #length:I
    :cond_2
    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableListMultimap$Builder;->build()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v7

    return-object v7
.end method

.method private static sanitize(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 395
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/glass/userevent/UserEventHelper;->RESERVED_CHAR_MATCHER:Lcom/google/common/base/CharMatcher;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private saveToDiskInternal()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 200
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 201
    iget-boolean v1, p0, Lcom/google/glass/userevent/UserEventHelper;->loggingEnabled:Z

    if-nez v1, :cond_0

    .line 202
    sget-object v1, Lcom/google/glass/userevent/UserEventHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Not saving to disk as logging is disabled."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    :goto_0
    return-void

    .line 205
    :cond_0
    sget-object v1, Lcom/google/glass/userevent/UserEventHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Saving to disk."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 208
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.google.glass.logging"

    const-string v2, "com.google.glass.logging.UserEventService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const-string v1, "force_save_to_disk"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 210
    iget-object v1, p0, Lcom/google/glass/userevent/UserEventHelper;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method


# virtual methods
.method public checkin()V
    .locals 2

    .prologue
    .line 215
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/userevent/UserEventHelper$4;

    invoke-direct {v1, p0}, Lcom/google/glass/userevent/UserEventHelper$4;-><init>(Lcom/google/glass/userevent/UserEventHelper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 221
    return-void
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 162
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/userevent/UserEventHelper$2;

    invoke-direct {v1, p0}, Lcom/google/glass/userevent/UserEventHelper$2;-><init>(Lcom/google/glass/userevent/UserEventHelper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 168
    return-void
.end method

.method public log(Lcom/google/glass/userevent/UserEventAction;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V
    .locals 5
    .parameter "action"
    .parameter "data"

    .prologue
    .line 130
    sget-object v0, Lcom/google/glass/userevent/UserEventHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Log user event. action: [%s], data: [%s], loggingEnabled: [%s]."

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    iget-boolean v4, p0, Lcom/google/glass/userevent/UserEventHelper;->loggingEnabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    iget-boolean v0, p0, Lcom/google/glass/userevent/UserEventHelper;->loggingEnabled:Z

    if-nez v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/userevent/UserEventHelper$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/glass/userevent/UserEventHelper$1;-><init>(Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public saveToDisk()V
    .locals 2

    .prologue
    .line 190
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/userevent/UserEventHelper$3;

    invoke-direct {v1, p0}, Lcom/google/glass/userevent/UserEventHelper$3;-><init>(Lcom/google/glass/userevent/UserEventHelper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 196
    return-void
.end method
