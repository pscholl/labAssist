.class public Lcom/google/glass/app/GlassApplication;
.super Landroid/app/Application;
.source "GlassApplication.java"


# static fields
.field private static final CACHED_FILES_DIRECTORY:Ljava/lang/String; = null

.field public static final DCIM_DIRECTORY:Ljava/lang/String; = null

.field private static final MAX_NUM_SDCARD_ATTACHMENTS:I = 0x7d0

.field private static final MAX_SIZE_SDCARD_FILES:J = 0x200000000L

.field private static final MAX_URL_CACHE_SIZE:I = 0x40

.field private static final TAG:Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field protected audioManager:Landroid/media/AudioManager;

.field private connectionState:Lcom/google/glass/util/InetConnectionState;

.field private profileImageUrlCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

.field private requestDispatcherPool:Lcom/google/glass/net/ProtoRequestDispatcherPool;

.field private screenHeightPixels:I

.field private screenWidthPixels:I

.field private secondaryRequestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

.field private soundManager:Lcom/google/glass/sound/SoundManager;

.field protected ttsHelper:Lcom/google/glass/util/TtsHelper;

.field protected userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const-class v0, Lcom/google/glass/app/GlassApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/app/GlassApplication;->TAG:Ljava/lang/String;

    .line 47
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/app/GlassApplication;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "private-cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/app/GlassApplication;->CACHED_FILES_DIRECTORY:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/app/GlassApplication;->DCIM_DIRECTORY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/google/glass/app/GlassApplication;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;
    .locals 3
    .parameter "context"

    .prologue
    .line 216
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 217
    .local v0, applicationContext:Landroid/content/Context;
    instance-of v1, v0, Lcom/google/glass/app/GlassApplication;

    if-eqz v1, :cond_0

    .line 218
    check-cast v0, Lcom/google/glass/app/GlassApplication;

    .end local v0           #applicationContext:Landroid/content/Context;
    return-object v0

    .line 220
    .restart local v0       #applicationContext:Landroid/content/Context;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The context must be a child of the GlassApplication context."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getCacheDirectory()Ljava/lang/String;
    .locals 5

    .prologue
    .line 298
    invoke-static {}, Lcom/google/glass/predicates/Assert;->isTest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, testCacheFilesDirectory:Ljava/lang/String;
    sget-object v1, Lcom/google/glass/app/GlassApplication;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Using testing cache directory at %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    .end local v0           #testCacheFilesDirectory:Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/glass/app/GlassApplication;->CACHED_FILES_DIRECTORY:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getAudioManager()Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/glass/app/GlassApplication;->audioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method public getBitmapFactory()Lcom/google/glass/util/CachedBitmapFactory;
    .locals 4

    .prologue
    .line 283
    new-instance v0, Lcom/google/glass/util/CachedBitmapFactory;

    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/google/glass/app/GlassApplication;->screenWidthPixels:I

    iget v3, p0, Lcom/google/glass/app/GlassApplication;->screenHeightPixels:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/CachedBitmapFactory;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method public getConnectionState()Lcom/google/glass/util/InetConnectionState;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/glass/app/GlassApplication;->connectionState:Lcom/google/glass/util/InetConnectionState;

    return-object v0
.end method

.method public getPooledRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/glass/app/GlassApplication;->requestDispatcherPool:Lcom/google/glass/net/ProtoRequestDispatcherPool;

    invoke-virtual {v0}, Lcom/google/glass/net/ProtoRequestDispatcherPool;->getRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public getProfileImageUrlCache()Landroid/util/LruCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/glass/app/GlassApplication;->profileImageUrlCache:Landroid/util/LruCache;

    return-object v0
.end method

.method public getRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/glass/app/GlassApplication;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    return-object v0
.end method

.method public getScreenHeightPixels()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/google/glass/app/GlassApplication;->screenHeightPixels:I

    return v0
.end method

.method public getScreenWidthPixels()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lcom/google/glass/app/GlassApplication;->screenWidthPixels:I

    return v0
.end method

.method public getSecondaryRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/glass/app/GlassApplication;->secondaryRequestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    return-object v0
.end method

.method public getSoundManager()Lcom/google/glass/sound/SoundManager;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/glass/app/GlassApplication;->soundManager:Lcom/google/glass/sound/SoundManager;

    return-object v0
.end method

.method public getTtsHelper()Lcom/google/glass/util/TtsHelper;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/glass/app/GlassApplication;->ttsHelper:Lcom/google/glass/util/TtsHelper;

    if-nez v0, :cond_0

    .line 337
    new-instance v0, Lcom/google/glass/util/TtsHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/util/TtsHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/app/GlassApplication;->ttsHelper:Lcom/google/glass/util/TtsHelper;

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/google/glass/app/GlassApplication;->ttsHelper:Lcom/google/glass/util/TtsHelper;

    return-object v0
.end method

.method public getUserEventHelper()Lcom/google/glass/userevent/UserEventHelper;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/glass/app/GlassApplication;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 119
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 122
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v2}, Lcom/google/android/glass/hidden/HiddenAsyncTask;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 125
    invoke-static {p0}, Lcom/google/glass/widget/RobotoTypefaces;->warmCache(Landroid/content/Context;)V

    .line 128
    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 129
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/google/glass/app/GlassApplication;->screenWidthPixels:I

    .line 130
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/google/glass/app/GlassApplication;->screenHeightPixels:I

    .line 133
    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->getTtsHelper()Lcom/google/glass/util/TtsHelper;

    .line 136
    new-instance v2, Lcom/google/glass/sound/SoundManager;

    invoke-direct {v2, p0}, Lcom/google/glass/sound/SoundManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/glass/app/GlassApplication;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 138
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/google/glass/app/GlassApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/google/glass/app/GlassApplication;->audioManager:Landroid/media/AudioManager;

    .line 140
    new-instance v2, Landroid/util/LruCache;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Landroid/util/LruCache;-><init>(I)V

    iput-object v2, p0, Lcom/google/glass/app/GlassApplication;->profileImageUrlCache:Landroid/util/LruCache;

    .line 142
    new-instance v2, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v2, p0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/glass/app/GlassApplication;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 146
    new-instance v1, Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    invoke-direct {v1, p0}, Lcom/google/glass/net/AndroidHttpRequestDispatcher;-><init>(Landroid/content/Context;)V

    .line 147
    .local v1, httpRequestDispatcher:Lcom/google/glass/net/AndroidHttpRequestDispatcher;
    new-instance v2, Lcom/google/glass/net/ProtoRequestDispatcher;

    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/google/glass/util/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-direct {v2, v3, v1, v5, v4}, Lcom/google/glass/net/ProtoRequestDispatcher;-><init>(Landroid/content/Context;Lcom/google/glass/net/HttpRequestDispatcher;ZLjava/util/concurrent/Executor;)V

    iput-object v2, p0, Lcom/google/glass/app/GlassApplication;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    .line 149
    new-instance v2, Lcom/google/glass/app/GlassApplication$1;

    iget-object v3, p0, Lcom/google/glass/app/GlassApplication;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    invoke-direct {v2, p0, v3}, Lcom/google/glass/app/GlassApplication$1;-><init>(Lcom/google/glass/app/GlassApplication;Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Lcom/google/glass/app/GlassApplication$1;->start()V

    .line 152
    new-instance v2, Lcom/google/glass/net/ProtoRequestDispatcher;

    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/google/glass/util/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-direct {v2, v3, v1, v5, v4}, Lcom/google/glass/net/ProtoRequestDispatcher;-><init>(Landroid/content/Context;Lcom/google/glass/net/HttpRequestDispatcher;ZLjava/util/concurrent/Executor;)V

    iput-object v2, p0, Lcom/google/glass/app/GlassApplication;->secondaryRequestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    .line 154
    new-instance v2, Lcom/google/glass/app/GlassApplication$2;

    iget-object v3, p0, Lcom/google/glass/app/GlassApplication;->secondaryRequestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    invoke-direct {v2, p0, v3}, Lcom/google/glass/app/GlassApplication$2;-><init>(Lcom/google/glass/app/GlassApplication;Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Lcom/google/glass/app/GlassApplication$2;->start()V

    .line 158
    new-instance v2, Lcom/google/glass/net/ProtoRequestDispatcherPool;

    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/glass/net/ProtoRequestDispatcherPool;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/glass/app/GlassApplication;->requestDispatcherPool:Lcom/google/glass/net/ProtoRequestDispatcherPool;

    .line 161
    new-instance v2, Lcom/google/glass/util/InetConnectionState;

    invoke-direct {v2, p0}, Lcom/google/glass/util/InetConnectionState;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/glass/app/GlassApplication;->connectionState:Lcom/google/glass/util/InetConnectionState;

    .line 164
    invoke-static {p0}, Lcom/google/glass/location/GlassLocationManager;->init(Landroid/content/Context;)V

    .line 167
    invoke-static {p0}, Lcom/google/glass/maps/MapHelper;->initialize(Landroid/content/Context;)V

    .line 170
    invoke-static {p0}, Lcom/google/glass/entity/MosaicHelper;->initialize(Landroid/content/Context;)V

    .line 173
    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->setupDcimFileWriter()V

    .line 176
    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->setupCachedFilesManager()V

    .line 179
    new-instance v2, Lcom/google/glass/entity/EntityHelper;

    invoke-direct {v2}, Lcom/google/glass/entity/EntityHelper;-><init>()V

    invoke-static {v2}, Lcom/google/glass/entity/EntityHelper;->setSharedInstance(Lcom/google/glass/entity/EntityHelper;)V

    .line 180
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/glass/app/GlassApplication$3;

    invoke-direct {v3, p0}, Lcom/google/glass/app/GlassApplication$3;-><init>(Lcom/google/glass/app/GlassApplication;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 187
    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->shouldLoadEntityCache()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    new-instance v2, Lcom/google/glass/entity/EntityCache;

    invoke-direct {v2, p0}, Lcom/google/glass/entity/EntityCache;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, Lcom/google/glass/entity/EntityCache;->setSharedInstance(Lcom/google/glass/entity/EntityCache;)V

    .line 189
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/glass/app/GlassApplication$4;

    invoke-direct {v3, p0}, Lcom/google/glass/app/GlassApplication$4;-><init>(Lcom/google/glass/app/GlassApplication;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 198
    invoke-static {}, Lcom/google/glass/entity/EntityCache;->getSharedInstance()Lcom/google/glass/entity/EntityCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/entity/EntityCache;->registerSyncChanged()V

    .line 200
    :cond_0
    return-void
.end method

.method public reinitForTest()V
    .locals 0

    .prologue
    .line 317
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 318
    invoke-virtual {p0}, Lcom/google/glass/app/GlassApplication;->setupCachedFilesManager()V

    .line 319
    return-void
.end method

.method public setConnectionStateForTest(Lcom/google/glass/util/InetConnectionState;)V
    .locals 0
    .parameter "connectionState"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 266
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 267
    iput-object p1, p0, Lcom/google/glass/app/GlassApplication;->connectionState:Lcom/google/glass/util/InetConnectionState;

    .line 268
    return-void
.end method

.method public setRequestDispatcherForTest(Lcom/google/glass/net/ProtoRequestDispatcher;)V
    .locals 0
    .parameter "protoRequestDispatcher"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 344
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 345
    iput-object p1, p0, Lcom/google/glass/app/GlassApplication;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    .line 346
    return-void
.end method

.method public setSoundManagerForTest(Lcom/google/glass/sound/SoundManager;)V
    .locals 0
    .parameter "soundManager"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 272
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 273
    iput-object p1, p0, Lcom/google/glass/app/GlassApplication;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 274
    return-void
.end method

.method public setUserEventHelperForTest(Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 0
    .parameter "userEventHelper"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 350
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 351
    iput-object p1, p0, Lcom/google/glass/app/GlassApplication;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 352
    return-void
.end method

.method protected setupCachedFilesManager()V
    .locals 5

    .prologue
    .line 324
    new-instance v0, Lcom/google/glass/util/CachedFilesManager;

    invoke-direct {p0}, Lcom/google/glass/app/GlassApplication;->getCacheDirectory()Ljava/lang/String;

    move-result-object v1

    const-wide v2, 0x200000000L

    const/16 v4, 0x7d0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/glass/util/CachedFilesManager;-><init>(Ljava/lang/String;JI)V

    invoke-static {v0}, Lcom/google/glass/util/CachedFilesManager;->setSharedInstance(Lcom/google/glass/util/CachedFilesManager;)V

    .line 326
    return-void
.end method

.method protected setupDcimFileWriter()V
    .locals 2

    .prologue
    .line 331
    new-instance v0, Lcom/google/glass/util/FileSaver;

    sget-object v1, Lcom/google/glass/app/GlassApplication;->DCIM_DIRECTORY:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/glass/util/FileSaver;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/glass/util/FileSaver;->setSharedInstance(Lcom/google/glass/util/FileSaver;)V

    .line 332
    return-void
.end method

.method protected shouldLoadEntityCache()Z
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method
