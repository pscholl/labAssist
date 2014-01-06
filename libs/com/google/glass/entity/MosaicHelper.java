package com.google.glass.entity;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.LruCache;
import android.view.View.MeasureSpec;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.util.concurrent.AbstractFuture;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.predicates.Assert;
import com.google.glass.util.MainThreadExecutorManager;
import com.google.glass.util.Stopwatch;
import com.google.glass.widget.ImageLoader;
import com.google.glass.widget.ImageLoaders;
import com.google.glass.widget.MosaicView;
import com.google.glass.widget.MosaicView.CellsLoadedListener;
import com.google.googlex.glass.common.proto.TimelineNano.TimelineItem;
import java.io.ByteArrayOutputStream;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

public class MosaicHelper
{
  private static final String ALL_PATH = "/all";
  private static final String CONTACT_IMAGE_AUTHORITY = "contact-image";
  private static final String CREATOR_PATH = "/creator";
  private static final int MAX_MOSAIC_HEIGHT = 360;
  private static final int MAX_MOSAIC_WIDTH = 640;
  private static final int MOSAIC_CACHE_MAX_BYTES = 4194304;
  private static final String SCHEME = "glass";
  private static MosaicHelper instance;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final Context context;
  private final MosaicImageLoaderFactory imageLoaderFactory;
  private final LruCache<String, byte[]> mosaicCache = new LruCache(4194304)
  {
    protected int sizeOf(String paramAnonymousString, byte[] paramAnonymousArrayOfByte)
    {
      return paramAnonymousArrayOfByte.length;
    }
  };

  @VisibleForTesting
  MosaicHelper(Context paramContext, MosaicImageLoaderFactory paramMosaicImageLoaderFactory)
  {
    this.context = paramContext;
    this.imageLoaderFactory = paramMosaicImageLoaderFactory;
  }

  public static MosaicHelper getInstance()
  {
    return instance;
  }

  public static void initialize(Context paramContext)
  {
    Assert.assertUiThread();
    if (instance == null)
      instance = new MosaicHelper(paramContext.getApplicationContext(), new MosaicImageLoaderFactory(null));
  }

  public static boolean isGlassMosaicUri(Uri paramUri)
  {
    return (paramUri.isHierarchical()) && ("glass".equals(paramUri.getScheme())) && ("contact-image".equals(paramUri.getAuthority()));
  }

  private byte[] mosaicViewToJpeg(MosaicView paramMosaicView)
  {
    Assert.assertNotUiThread();
    paramMosaicView.setDrawingCacheEnabled(true);
    paramMosaicView.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
    paramMosaicView.layout(0, 0, paramMosaicView.getMeasuredWidth(), paramMosaicView.getMeasuredHeight());
    paramMosaicView.buildDrawingCache(true);
    Bitmap localBitmap = paramMosaicView.getDrawingCache();
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    localBitmap.compress(Bitmap.CompressFormat.JPEG, 90, localByteArrayOutputStream);
    paramMosaicView.setDrawingCacheEnabled(false);
    return localByteArrayOutputStream.toByteArray();
  }

  public byte[] getCachedMosaicImage(ImageLoader paramImageLoader)
  {
    synchronized (this.mosaicCache)
    {
      byte[] arrayOfByte = (byte[])this.mosaicCache.get(paramImageLoader.getKey());
      return arrayOfByte;
    }
  }

  public ImageLoader getImageLoader(TimelineNano.TimelineItem paramTimelineItem, Uri paramUri)
  {
    if (!isGlassMosaicUri(paramUri))
    {
      logger.d("Cannot handle URI: %s", new Object[] { paramUri });
      return null;
    }
    int i;
    int k;
    try
    {
      i = Integer.parseInt(paramUri.getQueryParameter("w"));
      int j = Integer.parseInt(paramUri.getQueryParameter("h"));
      k = j;
      if ((i <= 0) || (k <= 0))
      {
        FormattingLogger localFormattingLogger1 = logger;
        Object[] arrayOfObject1 = new Object[3];
        arrayOfObject1[0] = Integer.valueOf(i);
        arrayOfObject1[1] = Integer.valueOf(k);
        arrayOfObject1[2] = paramUri;
        localFormattingLogger1.d("Invalid mosaic dimensions: %dx%d for %s", arrayOfObject1);
        return null;
      }
    }
    catch (NumberFormatException localNumberFormatException)
    {
      logger.d("Unable to extract dimensions: %s", new Object[] { paramUri });
      return null;
    }
    if ((i > 640) || (k > 360))
    {
      float f = Math.min(640.0F / i, 360.0F / k);
      i = (int)(f * i);
      k = (int)(f * k);
      FormattingLogger localFormattingLogger2 = logger;
      Object[] arrayOfObject2 = new Object[3];
      arrayOfObject2[0] = Integer.valueOf(i);
      arrayOfObject2[1] = Integer.valueOf(k);
      arrayOfObject2[2] = paramUri;
      localFormattingLogger2.d("Reducing mosaic dimensions to %dx%d for %s", arrayOfObject2);
    }
    String str = paramUri.getPath();
    if ("/all".equals(str))
      return this.imageLoaderFactory.createImageLoader(paramTimelineItem, false, i, k);
    if ("/creator".equals(str))
      return this.imageLoaderFactory.createImageLoader(paramTimelineItem, true, i, k);
    logger.d("Unknown mosaic type: %s", new Object[] { paramUri });
    return null;
  }

  @VisibleForTesting
  void handleCellsLoaded(final MosaicView paramMosaicView, final MosaicFuture paramMosaicFuture, final Stopwatch paramStopwatch, final String paramString)
  {
    if (paramMosaicFuture.isCancelled())
      return;
    paramStopwatch.stop();
    new AsyncTask()
    {
      protected Void doInBackground(Void[] paramAnonymousArrayOfVoid)
      {
        Stopwatch localStopwatch = new Stopwatch("Render time").start();
        byte[] arrayOfByte = MosaicHelper.this.mosaicViewToJpeg(paramMosaicView);
        localStopwatch.stop();
        synchronized (MosaicHelper.this.mosaicCache)
        {
          MosaicHelper.this.mosaicCache.put(paramString, arrayOfByte);
          paramMosaicFuture.set(arrayOfByte);
          FormattingLogger localFormattingLogger = MosaicHelper.logger;
          Object[] arrayOfObject = new Object[4];
          arrayOfObject[0] = Integer.valueOf(arrayOfByte.length);
          arrayOfObject[1] = paramStopwatch;
          arrayOfObject[2] = localStopwatch;
          arrayOfObject[3] = MosaicHelper.MosaicFuture.access$400(paramMosaicFuture);
          localFormattingLogger.d("Rendering succeeded: %d bytes %s %s for %s", arrayOfObject);
          return null;
        }
      }
    }
    .execute(new Void[0]);
  }

  public ListenableFuture<byte[]> renderMosaicToJpeg(Uri paramUri, final ImageLoader paramImageLoader)
  {
    final String str = paramImageLoader.getKey();
    synchronized (this.mosaicCache)
    {
      byte[] arrayOfByte = (byte[])this.mosaicCache.get(str);
      if (arrayOfByte != null)
      {
        logger.d("Returning mosaic from cache: %s", new Object[] { paramUri });
        return Futures.immediateFuture(arrayOfByte);
      }
    }
    final MosaicView localMosaicView = new MosaicView(this.context);
    final MosaicFuture localMosaicFuture = new MosaicFuture(localMosaicView, paramUri);
    localMosaicView.setCellsLoadedListener(new MosaicView.CellsLoadedListener()
    {
      public void onCellsLoaded(boolean paramAnonymousBoolean)
      {
        MosaicHelper.this.handleCellsLoaded(localMosaicView, localMosaicFuture, this.val$loadTimer, str);
      }
    });
    MainThreadExecutorManager.getMainThreadExecutor().execute(new Runnable()
    {
      public void run()
      {
        localMosaicView.loadImages(paramImageLoader);
      }
    });
    return localMosaicFuture;
  }

  @VisibleForTesting
  static class MosaicFuture extends AbstractFuture<byte[]>
  {
    private final Uri uri;
    private final AtomicReference<MosaicView> viewRef;

    MosaicFuture(MosaicView paramMosaicView, Uri paramUri)
    {
      this.viewRef = new AtomicReference(paramMosaicView);
      this.uri = paramUri;
    }

    public void interruptTask()
    {
      MosaicView localMosaicView = (MosaicView)this.viewRef.getAndSet(null);
      if (localMosaicView != null)
      {
        FormattingLogger localFormattingLogger = MosaicHelper.logger;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = this.uri;
        localFormattingLogger.v("Cancelling downloads for %s", arrayOfObject);
        localMosaicView.cancelImageDownloads();
      }
    }

    protected boolean set(byte[] paramArrayOfByte)
    {
      this.viewRef.set(null);
      return super.set(paramArrayOfByte);
    }
  }

  @VisibleForTesting
  public static class MosaicImageLoaderFactory
  {
    public ImageLoader createImageLoader(TimelineNano.TimelineItem paramTimelineItem, boolean paramBoolean, int paramInt1, int paramInt2)
    {
      return ImageLoaders.forTimelineItemStaticImage(paramTimelineItem, paramBoolean, paramInt1, paramInt2);
    }
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.entity.MosaicHelper
 * JD-Core Version:    0.6.2
 */