package com.google.glass.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.LruCache;
import android.widget.ImageView;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.app.GlassApplication;
import com.google.glass.async.AsyncThreadExecutorManager;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.net.ProtoRequestDispatcher;
import java.util.concurrent.Executor;

public class GlasswareIconLoadingTask extends GlasswareResourceLoadingTask<Bitmap>
{
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final ImageView iconView;

  @VisibleForTesting
  GlasswareIconLoadingTask(Context paramContext, CachedFilesManager paramCachedFilesManager, ProtoRequestDispatcher paramProtoRequestDispatcher, LruCache<String, GlasswareResourceLoadingTask.CacheEntry<?>> paramLruCache, Clock paramClock, Executor paramExecutor, String paramString, IconSize paramIconSize, ImageView paramImageView)
  {
    super(paramContext, paramCachedFilesManager, paramProtoRequestDispatcher, paramLruCache, paramClock, paramExecutor, paramString, paramIconSize.resourceType);
    this.iconView = paramImageView;
  }

  public GlasswareIconLoadingTask(Context paramContext, String paramString, IconSize paramIconSize, ImageView paramImageView)
  {
    this(paramContext, CachedFilesManager.getSharedInstance(), GlassApplication.from(paramContext).getRequestDispatcher(), SHARED_CACHE, new Clock.Impl(), AsyncThreadExecutorManager.getThreadPoolExecutor(), paramString, paramIconSize, paramImageView);
  }

  protected void bindContent(Bitmap paramBitmap)
  {
    if (paramBitmap == null)
    {
      logger.v("Bitmap null in bindContent()", new Object[0]);
      return;
    }
    logger.v("Bitmap not null, setting in bindContent(), showing view", new Object[0]);
    this.iconView.setImageBitmap(paramBitmap);
    showView(this.iconView, true);
  }

  protected String getUserEventTag()
  {
    return "gi";
  }

  protected GlasswareResourceLoadingTask.CacheEntry<Bitmap> newCacheEntry()
  {
    return new BitmapCacheEntry();
  }

  protected void prepareContent()
  {
    Bitmap localBitmap = (Bitmap)loadContentFromCache();
    if (localBitmap != null)
    {
      logger.v("Bitmap not null, setting in prepareContent()", new Object[0]);
      this.iconView.setImageBitmap(localBitmap);
      showView(this.iconView, false);
      cancel(false);
      return;
    }
    logger.v("Bitmap is null in prepareContent(), waiting for it to load.", new Object[0]);
    hideView(this.iconView, false, false);
  }

  static class BitmapCacheEntry extends GlasswareResourceLoadingTask.CacheEntry<Bitmap>
  {
    Bitmap decode(byte[] paramArrayOfByte)
    {
      return BitmapFactory.decodeByteArray(paramArrayOfByte, 0, paramArrayOfByte.length);
    }
  }

  public static enum IconSize
  {
    private int resourceType;

    static
    {
      MEDIUM = new IconSize("MEDIUM", 1, 3);
      IconSize[] arrayOfIconSize = new IconSize[2];
      arrayOfIconSize[0] = SMALL;
      arrayOfIconSize[1] = MEDIUM;
    }

    private IconSize(int paramInt)
    {
      this.resourceType = paramInt;
    }
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.GlasswareIconLoadingTask
 * JD-Core Version:    0.6.2
 */