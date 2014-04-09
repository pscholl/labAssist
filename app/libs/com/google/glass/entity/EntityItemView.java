package com.google.glass.entity;

import android.content.Context;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.widget.TextView;
import com.google.glass.common.R.color;
import com.google.glass.common.R.id;
import com.google.glass.common.R.layout;
import com.google.glass.util.ArrayUtils;
import com.google.glass.util.PersonImageDownloadTask.LabelVisibility;
import com.google.glass.widget.GlasswareIconBinder;
import com.google.glass.widget.ImageLoaders;
import com.google.glass.widget.MosaicView;
import com.google.glass.widget.horizontalscroll.FrameLayoutCard;
import com.google.googlex.glass.common.proto.TimelineNano.Entity;
import java.util.Arrays;

public class EntityItemView extends FrameLayoutCard
{
  private String displayName;
  private TimelineNano.Entity entity;
  private GlasswareIconBinder glasswareIconBinder;
  private MosaicView image;
  private final int imageHeight;
  private final int imageWidth;
  private TextView label;
  private OnConfirmListener onConfirmListener;
  private AsyncTask<Void, Void, TimelineNano.Entity> parseProtoTask;
  private byte[] protobuf;

  public EntityItemView(Context paramContext)
  {
    this(paramContext, null);
  }

  public EntityItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    inflate(getContext(), R.layout.entity_item_view_contents, this);
    this.image = ((MosaicView)findViewById(R.id.image));
    this.label = ((TextView)findViewById(R.id.label));
    DisplayMetrics localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
    this.imageWidth = localDisplayMetrics.widthPixels;
    this.imageHeight = localDisplayMetrics.heightPixels;
    setBackgroundColor(getResources().getColor(R.color.background_dark_gray));
  }

  public void bind(String paramString, final byte[] paramArrayOfByte)
  {
    this.entity = null;
    this.protobuf = paramArrayOfByte;
    this.displayName = paramString;
    this.label.setText(paramString);
    this.parseProtoTask = new AsyncTask()
    {
      protected TimelineNano.Entity doInBackground(Void[] paramAnonymousArrayOfVoid)
      {
        return EntityHelper.fromProtoByteArray(paramArrayOfByte);
      }

      protected void onPostExecute(TimelineNano.Entity paramAnonymousEntity)
      {
        EntityItemView.access$002(EntityItemView.this, paramAnonymousEntity);
        if (!ArrayUtils.isEmpty(EntityItemView.this.getEntity().imageUrl))
          EntityItemView.this.image.loadImages(ImageLoaders.forImageUrls(Arrays.asList(EntityItemView.this.getEntity().imageUrl), PersonImageDownloadTask.LabelVisibility.ALWAYS_HIDDEN, EntityItemView.this.imageWidth, EntityItemView.this.imageHeight));
        if (EntityItemView.this.glasswareIconBinder != null)
          EntityItemView.this.glasswareIconBinder.bind(EntityItemView.this.getEntity(), EntityItemView.this);
      }
    };
    this.parseProtoTask.execute(new Void[0]);
  }

  protected String getDisplayName()
  {
    return this.displayName;
  }

  protected TimelineNano.Entity getEntity()
  {
    if (this.entity == null)
      this.entity = EntityHelper.fromProtoByteArray(this.protobuf);
    return this.entity;
  }

  public boolean onConfirm()
  {
    if (this.onConfirmListener != null)
    {
      this.onConfirmListener.onConfirm(getEntity());
      return true;
    }
    return super.onConfirm();
  }

  public void recycle()
  {
    this.image.clearSubtasks();
    this.image.cancelImageDownloads();
    this.image.clearImages();
    if (this.glasswareIconBinder != null)
      this.glasswareIconBinder.recycle(this);
    if (this.parseProtoTask != null)
    {
      this.parseProtoTask.cancel(true);
      this.parseProtoTask = null;
    }
  }

  public void setGlasswareIconBinder(GlasswareIconBinder paramGlasswareIconBinder)
  {
    this.glasswareIconBinder = paramGlasswareIconBinder;
  }

  public void setOnConfirmListener(OnConfirmListener paramOnConfirmListener)
  {
    this.onConfirmListener = paramOnConfirmListener;
  }

  public boolean shouldSuppressSingleTapSound()
  {
    return true;
  }

  public static abstract interface OnConfirmListener
  {
    public abstract void onConfirm(TimelineNano.Entity paramEntity);
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.entity.EntityItemView
 * JD-Core Version:    0.6.2
 */