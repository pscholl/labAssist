.class public Lcom/google/glass/util/CachedBitmapFactory;
.super Ljava/lang/Object;
.source "CachedBitmapFactory.java"


# static fields
.field private static final FILE_READ_BUFFER:[B = null

.field private static final MAX_IMAGE_SIZE:I = 0x400

.field private static final TEMP_STORAGE_BUFFER_SIZE_BYTES:I = 0x4000

.field private static final TEMP_STORAGE_NUM_BUFFERS:I = 0x4

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

.field protected final context:Landroid/content/Context;

.field private dcimTracker:Lcom/google/glass/fs/DirectoryTracker;

.field protected final minHeight:I

.field protected final minWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 28
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    sput-object v1, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 36
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1, v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v1, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 39
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 40
    sget-object v1, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v2, 0x4000

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_0
    const/high16 v1, 0x20

    new-array v1, v1, [B

    sput-object v1, Lcom/google/glass/util/CachedBitmapFactory;->FILE_READ_BUFFER:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4
    .parameter "context"
    .parameter "minWidth"
    .parameter "minHeight"

    .prologue
    const/4 v3, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p3, v3}, Lcom/google/glass/util/CachedBitmapFactory;-><init>(Landroid/content/Context;IILcom/google/glass/fs/DirectoryTracker;)V

    .line 81
    :try_start_0
    new-instance v1, Lcom/google/glass/fs/DirectoryTracker;

    sget-object v2, Lcom/google/glass/app/GlassApplication;->DCIM_DIRECTORY:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/glass/fs/DirectoryTracker;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/glass/util/CachedBitmapFactory;->dcimTracker:Lcom/google/glass/fs/DirectoryTracker;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Ljava/io/IOException;
    iput-object v3, p0, Lcom/google/glass/util/CachedBitmapFactory;->dcimTracker:Lcom/google/glass/fs/DirectoryTracker;

    .line 89
    sget-object v1, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "DirectoryTracker threw IOException during construction."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/google/glass/fs/DirectoryTracker;)V
    .locals 1
    .parameter "context"
    .parameter "minWidth"
    .parameter "minHeight"
    .parameter "tracker"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/util/CachedBitmapFactory;->dcimTracker:Lcom/google/glass/fs/DirectoryTracker;

    .line 65
    iput-object p1, p0, Lcom/google/glass/util/CachedBitmapFactory;->context:Landroid/content/Context;

    .line 66
    iput p2, p0, Lcom/google/glass/util/CachedBitmapFactory;->minWidth:I

    .line 67
    iput p3, p0, Lcom/google/glass/util/CachedBitmapFactory;->minHeight:I

    .line 68
    iput-object p4, p0, Lcom/google/glass/util/CachedBitmapFactory;->dcimTracker:Lcom/google/glass/fs/DirectoryTracker;

    .line 69
    new-instance v0, Lcom/google/glass/timeline/AttachmentHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/timeline/AttachmentHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/util/CachedBitmapFactory;->attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

    .line 70
    return-void
.end method

.method private static isCancelled(Lcom/google/glass/util/Condition;)Z
    .locals 1
    .parameter "isCancelled"

    .prologue
    .line 384
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/util/Condition;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadBitmapFile(Ljava/lang/String;IILcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;
    .locals 28
    .parameter "path"
    .parameter "minWidth"
    .parameter "minHeight"
    .parameter "isCancelled"

    .prologue
    .line 270
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 272
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 273
    .local v10, file:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_1

    .line 274
    sget-object v21, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "The file \""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\" does not exist. Not decoding it as an image."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-interface/range {v21 .. v23}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    const/4 v3, 0x0

    .line 380
    .end local p1
    .end local p2
    :cond_0
    :goto_0
    return-object v3

    .line 278
    .restart local p1
    .restart local p2
    :cond_1
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 282
    .local v14, options:Landroid/graphics/BitmapFactory$Options;
    const/16 v21, 0x1

    move/from16 v0, v21

    iput-boolean v0, v14, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 285
    sget-object v21, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [B

    .line 286
    .local v20, tempStorage:[B
    if-eqz v20, :cond_2

    .line 287
    move-object/from16 v0, v20

    iput-object v0, v14, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 297
    :cond_2
    :try_start_0
    sget-object v22, Lcom/google/glass/util/CachedBitmapFactory;->FILE_READ_BUFFER:[B

    monitor-enter v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 301
    .local v18, startTime:J
    invoke-static/range {p3 .. p3}, Lcom/google/glass/util/CachedBitmapFactory;->isCancelled(Lcom/google/glass/util/Condition;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 302
    sget-object v21, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v23, "Request for bitmap has been cancelled. Will not read file."

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    const/4 v3, 0x0

    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 376
    if-eqz v20, :cond_0

    .line 377
    sget-object v21, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 308
    :cond_3
    :try_start_2
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v23

    sget-object v21, Lcom/google/glass/util/CachedBitmapFactory;->FILE_READ_BUFFER:[B

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v25, v0

    cmp-long v21, v23, v25

    if-lez v21, :cond_4

    .line 309
    sget-object v21, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v23, "Shared file read buffer is too small to hold: %s bytes"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v23

    move-wide/from16 v0, v23

    long-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v4, v0, [B

    .line 311
    .local v4, buffer:[B
    move-object/from16 v0, p3

    invoke-static {v10, v4, v0}, Lcom/google/glass/util/FileHelper;->read(Ljava/io/File;[BLcom/google/glass/util/Condition;)I

    move-result v13

    .line 314
    .local v13, length:I
    const/16 v21, 0x1

    move/from16 v0, v21

    iput-boolean v0, v14, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 324
    :goto_1
    invoke-static/range {p3 .. p3}, Lcom/google/glass/util/CachedBitmapFactory;->isCancelled(Lcom/google/glass/util/Condition;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 325
    sget-object v21, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v23, "Request for bitmap has been cancelled. Will not decode dimensions."

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    const/4 v3, 0x0

    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 376
    if-eqz v20, :cond_0

    .line 377
    sget-object v21, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 316
    .end local v4           #buffer:[B
    .end local v13           #length:I
    :cond_4
    :try_start_3
    sget-object v4, Lcom/google/glass/util/CachedBitmapFactory;->FILE_READ_BUFFER:[B

    .line 317
    .restart local v4       #buffer:[B
    move-object/from16 v0, p3

    invoke-static {v10, v4, v0}, Lcom/google/glass/util/FileHelper;->read(Ljava/io/File;[BLcom/google/glass/util/Condition;)I

    move-result v13

    .line 320
    .restart local v13       #length:I
    const/16 v21, 0x0

    move/from16 v0, v21

    iput-boolean v0, v14, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    goto :goto_1

    .line 369
    .end local v4           #buffer:[B
    .end local v13           #length:I
    .end local v18           #startTime:J
    .end local p1
    .end local p2
    :catchall_0
    move-exception v21

    monitor-exit v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v21
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 370
    :catch_0
    move-exception v7

    .line 371
    .local v7, e:Ljava/io/IOException;
    :try_start_5
    sget-object v21, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v22, "The file \"%s\" could not be read. Not decoding it as an image."

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object p0, v23, v24

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v7, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 372
    const/4 v3, 0x0

    .line 376
    if-eqz v20, :cond_0

    .line 377
    sget-object v21, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 330
    .end local v7           #e:Ljava/io/IOException;
    .restart local v4       #buffer:[B
    .restart local v13       #length:I
    .restart local v18       #startTime:J
    .restart local p1
    .restart local p2
    :cond_5
    const/16 v21, 0x1

    :try_start_6
    move/from16 v0, v21

    iput-boolean v0, v14, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 331
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-static {v4, v0, v13, v14}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 334
    .local v3, bitmap:Landroid/graphics/Bitmap;
    iget v12, v14, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 335
    .local v12, fullWidth:I
    iget v11, v14, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 336
    .local v11, fullHeight:I
    const/16 v21, 0x1

    if-gtz p1, :cond_6

    const/16 p1, 0x1

    .end local p1
    :cond_6
    div-int v23, v12, p1

    move/from16 v0, v21

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 337
    .local v16, sampleSizeX:I
    const/16 v21, 0x1

    if-gtz p2, :cond_7

    const/16 p2, 0x1

    .end local p2
    :cond_7
    div-int v23, v11, p2

    move/from16 v0, v21

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 338
    .local v17, sampleSizeY:I
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v15

    .line 342
    .local v15, sampleSize:I
    :goto_2
    div-int v21, v12, v15

    const/16 v23, 0x400

    move/from16 v0, v21

    move/from16 v1, v23

    if-gt v0, v1, :cond_8

    div-int v21, v11, v15

    const/16 v23, 0x400

    move/from16 v0, v21

    move/from16 v1, v23

    if-le v0, v1, :cond_9

    .line 343
    :cond_8
    mul-int/lit8 v15, v15, 0x2

    goto :goto_2

    .line 345
    :cond_9
    iput v15, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 349
    if-eqz p3, :cond_a

    new-instance v21, Lcom/google/glass/util/CachedBitmapFactory$2;

    move-object/from16 v0, v21

    invoke-direct {v0, v14}, Lcom/google/glass/util/CachedBitmapFactory$2;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/glass/util/Condition;->addCallback(Ljava/lang/Runnable;)Z

    move-result v21

    if-nez v21, :cond_b

    .line 357
    :cond_a
    const/16 v21, 0x0

    move/from16 v0, v21

    iput-boolean v0, v14, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 358
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-static {v4, v0, v13, v14}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 360
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 361
    .local v8, endTime:J
    iget v6, v14, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 362
    .local v6, decodedWidth:I
    iget v5, v14, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 363
    .local v5, decodedHeight:I
    sget-object v21, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v23, "Decoded a %sx%s image (%s) into a %sx%s bitmap, took %sms"

    const/16 v24, 0x6

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    aput-object p0, v24, v25

    const/16 v25, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x5

    sub-long v26, v8, v18

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    monitor-exit v22
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 376
    if-eqz v20, :cond_0

    .line 377
    sget-object v21, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 366
    .end local v5           #decodedHeight:I
    .end local v6           #decodedWidth:I
    .end local v8           #endTime:J
    :cond_b
    :try_start_7
    sget-object v21, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v23, "Request for bitmap has been cancelled. Will not decode image."

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    const/4 v3, 0x0

    monitor-exit v22
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 376
    .end local v3           #bitmap:Landroid/graphics/Bitmap;
    if-eqz v20, :cond_0

    .line 377
    sget-object v21, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 376
    .end local v4           #buffer:[B
    .end local v11           #fullHeight:I
    .end local v12           #fullWidth:I
    .end local v13           #length:I
    .end local v15           #sampleSize:I
    .end local v16           #sampleSizeX:I
    .end local v17           #sampleSizeY:I
    .end local v18           #startTime:J
    :catchall_1
    move-exception v21

    if-eqz v20, :cond_c

    .line 377
    sget-object v22, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_c
    throw v21
.end method


# virtual methods
.method public final cacheContainsAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z
    .locals 3
    .parameter "attachment"

    .prologue
    .line 202
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 205
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->hasClientCachePath()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    const/4 v1, 0x1

    .line 210
    :goto_0
    return v1

    .line 209
    :cond_0
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    .line 210
    .local v0, cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;
    sget-object v1, Lcom/google/glass/util/CachedFilesManager$Type;->ATTACHMENT:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/CachedFilesManager;->contains(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public decodeAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;ZLcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "attachment"
    .parameter "lookupOnly"
    .parameter "isCancelled"

    .prologue
    .line 108
    if-nez p2, :cond_0

    .line 109
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 112
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/util/CachedBitmapFactory;->getCachedAttachmentPath(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Z)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, path:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    const/4 v1, 0x0

    .line 116
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0, v0, p2, p3}, Lcom/google/glass/util/CachedBitmapFactory;->decodeFile(Ljava/lang/String;ZLcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public decodeFile(Ljava/lang/String;ZLcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "path"
    .parameter "lookupOnly"
    .parameter "isCancelled"

    .prologue
    .line 230
    if-eqz p2, :cond_0

    .line 231
    const/4 v0, 0x0

    .line 234
    :goto_0
    return-object v0

    .line 233
    :cond_0
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 234
    iget v0, p0, Lcom/google/glass/util/CachedBitmapFactory;->minWidth:I

    iget v1, p0, Lcom/google/glass/util/CachedBitmapFactory;->minHeight:I

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/google/glass/util/CachedBitmapFactory;->loadBitmap(Ljava/lang/String;IILcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public final getCachedAttachmentPath(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Z)Ljava/lang/String;
    .locals 10
    .parameter "attachment"
    .parameter "lookupOnly"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 130
    if-nez p2, :cond_0

    .line 131
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 135
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->hasClientCachePath()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 136
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, path:Ljava/lang/String;
    sget-object v4, Lcom/google/glass/app/GlassApplication;->DCIM_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 190
    .end local v3           #path:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v3

    .line 144
    .restart local v3       #path:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/google/glass/util/CachedBitmapFactory;->dcimTracker:Lcom/google/glass/fs/DirectoryTracker;

    if-nez v4, :cond_3

    .line 145
    sget-object v4, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "DirectoryTracker is not available for queries! Falling back to old behavior and blindly returning client_cache_path!"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 150
    :cond_3
    iget-object v4, p0, Lcom/google/glass/util/CachedBitmapFactory;->dcimTracker:Lcom/google/glass/fs/DirectoryTracker;

    invoke-virtual {v4}, Lcom/google/glass/fs/DirectoryTracker;->isTracking()Z

    move-result v4

    if-nez v4, :cond_4

    .line 151
    sget-object v4, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "DirectoryTracker is not ready for queries! Falling back to old behavior and blindly returning client_cache_path!"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 159
    :cond_4
    iget-object v4, p0, Lcom/google/glass/util/CachedBitmapFactory;->dcimTracker:Lcom/google/glass/fs/DirectoryTracker;

    invoke-virtual {v4, v3}, Lcom/google/glass/fs/DirectoryTracker;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 169
    .end local v3           #path:Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    .line 170
    .local v0, cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;
    if-nez p2, :cond_6

    .line 172
    sget-object v4, Lcom/google/glass/util/CachedFilesManager$Type;->ATTACHMENT:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/glass/util/CachedFilesManager;->contains(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 173
    const/4 v1, 0x0

    .line 176
    .local v1, content:[B
    :try_start_0
    iget-object v4, p0, Lcom/google/glass/util/CachedBitmapFactory;->attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/glass/timeline/AttachmentHelper;->getAttachmentFromServer(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 181
    :goto_1
    if-eqz v1, :cond_7

    array-length v4, v1

    if-lez v4, :cond_7

    .line 182
    sget-object v4, Lcom/google/glass/util/CachedFilesManager$Type;->ATTACHMENT:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Lcom/google/glass/util/FileSaver;->newSaver([B)Lcom/google/glass/util/FileSaver$Saver;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    .line 190
    .end local v1           #content:[B
    :cond_6
    :goto_2
    sget-object v4, Lcom/google/glass/util/CachedFilesManager$Type;->ATTACHMENT:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 177
    .restart local v1       #content:[B
    :catch_0
    move-exception v2

    .line 178
    .local v2, e:Ljava/lang/InterruptedException;
    sget-object v4, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Interrupted while fetching attachment from server: %s"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-interface {v4, v2, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 185
    .end local v2           #e:Ljava/lang/InterruptedException;
    :cond_7
    sget-object v4, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Failed to get attachment from server: %s"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method protected final loadBitmap(Ljava/lang/String;IILcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "path"
    .parameter "minWidth"
    .parameter "minHeight"
    .parameter "isCancelled"

    .prologue
    .line 240
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 242
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/util/CachedFilesManager;->getType(Ljava/lang/String;)Lcom/google/glass/util/CachedFilesManager$Type;

    move-result-object v0

    .line 245
    .local v0, type:Lcom/google/glass/util/CachedFilesManager$Type;
    sget-object v1, Lcom/google/glass/util/CachedFilesManager$Type;->NONE:Lcom/google/glass/util/CachedFilesManager$Type;

    if-eq v0, v1, :cond_0

    .line 246
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v1

    new-instance v2, Lcom/google/glass/util/CachedBitmapFactory$1;

    invoke-direct {v2, p0, p2, p3, p4}, Lcom/google/glass/util/CachedBitmapFactory$1;-><init>(Lcom/google/glass/util/CachedBitmapFactory;IILcom/google/glass/util/Condition;)V

    invoke-virtual {v1, p1, v2}, Lcom/google/glass/util/CachedFilesManager;->load(Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Loader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 254
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/google/glass/util/CachedBitmapFactory;->loadBitmapFile(Ljava/lang/String;IILcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method
