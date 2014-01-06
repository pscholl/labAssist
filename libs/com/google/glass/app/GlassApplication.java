package com.google.glass.app;

import android.app.Application;
import android.content.Context;
import android.content.res.Resources;
import android.media.AudioManager;
import android.os.AsyncTask;
import android.os.Environment;
import android.util.DisplayMetrics;
import android.util.LruCache;
import com.google.android.glass.hidden.HiddenAsyncTask;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.async.AsyncThreadExecutorManager;
import com.google.glass.entity.EntityCache;
import com.google.glass.entity.EntityHelper;
import com.google.glass.entity.MosaicHelper;
import com.google.glass.location.GlassLocationManager;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.maps.MapHelper;
import com.google.glass.net.AndroidHttpRequestDispatcher;
import com.google.glass.net.ProtoRequestDispatcher;
import com.google.glass.net.ProtoRequestDispatcherPool;
import com.google.glass.predicates.Assert;
import com.google.glass.sound.SoundManager;
import com.google.glass.userevent.UserEventHelper;
import com.google.glass.util.CachedBitmapFactory;
import com.google.glass.util.CachedFilesManager;
import com.google.glass.util.FileSaver;
import com.google.glass.util.InetConnectionState;
import com.google.glass.util.MainThreadExecutorManager;
import com.google.glass.util.TtsHelper;
import com.google.glass.widget.RobotoTypefaces;
import java.io.File;
import java.util.concurrent.Executor;

public class GlassApplication extends Application
{
  private static final String CACHED_FILES_DIRECTORY = Environment.getDataDirectory().getAbsolutePath() + File.separator + "private-cache";
  public static final String DCIM_DIRECTORY = Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + Environment.DIRECTORY_DCIM + File.separator + "Camera";
  private static final int MAX_NUM_SDCARD_ATTACHMENTS = 2000;
  private static final long MAX_SIZE_SDCARD_FILES = 8589934592L;
  private static final int MAX_URL_CACHE_SIZE = 64;
  private static final String TAG = GlassApplication.class.getSimpleName();
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  protected AudioManager audioManager;
  private InetConnectionState connectionState;
  private LruCache<String, String> profileImageUrlCache;
  private ProtoRequestDispatcher requestDispatcher;
  private ProtoRequestDispatcherPool requestDispatcherPool;
  private int screenHeightPixels;
  private int screenWidthPixels;
  private ProtoRequestDispatcher secondaryRequestDispatcher;
  private SoundManager soundManager;
  protected TtsHelper ttsHelper;
  protected UserEventHelper userEventHelper;

  public static GlassApplication from(Context paramContext)
  {
    Context localContext = paramContext.getApplicationContext();
    if ((localContext instanceof GlassApplication))
      return (GlassApplication)localContext;
    throw new IllegalArgumentException("The context must be a child of the GlassApplication context.");
  }

  private String getCacheDirectory()
  {
    if (Assert.isTest())
    {
      String str = getCacheDir().getAbsolutePath();
      logger.i("Using testing cache directory at %s", new Object[] { str });
      return str;
    }
    return CACHED_FILES_DIRECTORY;
  }

  public AudioManager getAudioManager()
  {
    return this.audioManager;
  }

  public CachedBitmapFactory getBitmapFactory()
  {
    return new CachedBitmapFactory(getApplicationContext(), this.screenWidthPixels, this.screenHeightPixels);
  }

  public InetConnectionState getConnectionState()
  {
    return this.connectionState;
  }

  public ProtoRequestDispatcher getPooledRequestDispatcher()
  {
    return this.requestDispatcherPool.getRequestDispatcher();
  }

  public LruCache<String, String> getProfileImageUrlCache()
  {
    return this.profileImageUrlCache;
  }

  public ProtoRequestDispatcher getRequestDispatcher()
  {
    return this.requestDispatcher;
  }

  public int getScreenHeightPixels()
  {
    return this.screenHeightPixels;
  }

  public int getScreenWidthPixels()
  {
    return this.screenWidthPixels;
  }

  public ProtoRequestDispatcher getSecondaryRequestDispatcher()
  {
    return this.secondaryRequestDispatcher;
  }

  public SoundManager getSoundManager()
  {
    return this.soundManager;
  }

  public TtsHelper getTtsHelper()
  {
    if (this.ttsHelper == null)
      this.ttsHelper = new TtsHelper(this);
    return this.ttsHelper;
  }

  public UserEventHelper getUserEventHelper()
  {
    return this.userEventHelper;
  }

  public void onCreate()
  {
    super.onCreate();
    HiddenAsyncTask.setDefaultExecutor(AsyncTask.THREAD_POOL_EXECUTOR);
    RobotoTypefaces.warmCache(this);
    DisplayMetrics localDisplayMetrics = getResources().getDisplayMetrics();
    this.screenWidthPixels = localDisplayMetrics.widthPixels;
    this.screenHeightPixels = localDisplayMetrics.heightPixels;
    getTtsHelper();
    this.soundManager = new SoundManager(this);
    this.audioManager = ((AudioManager)getSystemService("audio"));
    this.profileImageUrlCache = new LruCache(64);
    this.userEventHelper = new UserEventHelper(this);
    AndroidHttpRequestDispatcher localAndroidHttpRequestDispatcher = new AndroidHttpRequestDispatcher(this);
    this.requestDispatcher = new ProtoRequestDispatcher(getApplicationContext(), localAndroidHttpRequestDispatcher, true, MainThreadExecutorManager.getMainThreadExecutor());
    new Thread(this.requestDispatcher)
    {
    }
    .start();
    this.secondaryRequestDispatcher = new ProtoRequestDispatcher(getApplicationContext(), localAndroidHttpRequestDispatcher, true, MainThreadExecutorManager.getMainThreadExecutor());
    new Thread(this.secondaryRequestDispatcher)
    {
    }
    .start();
    this.requestDispatcherPool = new ProtoRequestDispatcherPool(getApplicationContext());
    this.connectionState = new InetConnectionState(this);
    GlassLocationManager.init(this);
    MapHelper.initialize(this);
    MosaicHelper.initialize(this);
    setupDcimFileWriter();
    setupCachedFilesManager();
    EntityHelper.setSharedInstance(new EntityHelper());
    AsyncThreadExecutorManager.getThreadPoolExecutor().execute(new Runnable()
    {
      public void run()
      {
        EntityHelper.getSharedInstance().loadSelfEntity(GlassApplication.this.getApplicationContext());
      }
    });
    if (shouldLoadEntityCache())
    {
      EntityCache.setSharedInstance(new EntityCache(this));
      AsyncThreadExecutorManager.getThreadPoolExecutor().execute(new Runnable()
      {
        public void run()
        {
          EntityCache.getSharedInstance().loadEntityDataCache();
        }
      });
      EntityCache.getSharedInstance().registerSyncChanged();
    }
  }

  public void reinitForTest()
  {
    Assert.assertIsTest();
    setupCachedFilesManager();
  }

  @VisibleForTesting
  public void setConnectionStateForTest(InetConnectionState paramInetConnectionState)
  {
    Assert.assertIsTest();
    this.connectionState = paramInetConnectionState;
  }

  @VisibleForTesting
  public void setRequestDispatcherForTest(ProtoRequestDispatcher paramProtoRequestDispatcher)
  {
    Assert.assertIsTest();
    this.requestDispatcher = paramProtoRequestDispatcher;
  }

  @VisibleForTesting
  public void setSoundManagerForTest(SoundManager paramSoundManager)
  {
    Assert.assertIsTest();
    this.soundManager = paramSoundManager;
  }

  @VisibleForTesting
  public void setUserEventHelperForTest(UserEventHelper paramUserEventHelper)
  {
    Assert.assertIsTest();
    this.userEventHelper = paramUserEventHelper;
  }

  protected void setupCachedFilesManager()
  {
    CachedFilesManager.setSharedInstance(new CachedFilesManager(getCacheDirectory(), 8589934592L, 2000));
  }

  protected void setupDcimFileWriter()
  {
    FileSaver.setSharedInstance(new FileSaver(DCIM_DIRECTORY));
  }

  protected boolean shouldLoadEntityCache()
  {
    return false;
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.app.GlassApplication
 * JD-Core Version:    0.6.2
 */