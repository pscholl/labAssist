package com.google.glass.util;

import android.content.ContentResolver;
import android.content.Context;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.glass.entity.EntityHelper;
import com.google.glass.predicates.Assert;
import com.google.googlex.glass.common.proto.TimelineNano.Entity;

public class EntityImageDownloadTask extends PersonImageDownloadTask
{
  private final TimelineNano.Entity entity;

  public EntityImageDownloadTask(Context paramContext, TimelineNano.Entity paramEntity, ImageView paramImageView, TextView paramTextView, int paramInt1, int paramInt2)
  {
    super(paramContext, EntityHelper.getFirstImageUrl(paramEntity), paramImageView, paramTextView, paramInt1, paramInt2);
    if (paramEntity == null)
      throw new IllegalArgumentException("Entity cannot be null.");
    this.entity = paramEntity;
  }

  private void setImageUrlByEmail(ContentResolver paramContentResolver, String[] paramArrayOfString)
  {
    String[] arrayOfString = new String[2];
    arrayOfString[0] = this.entity.getId();
    arrayOfString[1] = this.entity.getEmail();
    int i = arrayOfString.length;
    for (int j = 0; ; j++)
      if (j < i)
      {
        String str = EntityHelper.getFirstImageUrl(EntityHelper.queryByEmail(paramContentResolver, arrayOfString[j]));
        if (!TextUtils.isEmpty(str))
          setImageUrl(str);
      }
      else
      {
        return;
      }
  }

  protected String getCacheId()
  {
    if (this.entity.hasId())
      return this.entity.getId();
    return null;
  }

  protected String getDisplayText()
  {
    return EntityHelper.getDisplayName(this.entity);
  }

  protected String getUserEventTag()
  {
    return "ei";
  }

  protected void onPreLoad()
  {
    Assert.assertNotUiThread();
    ContentResolver localContentResolver = getContext().getContentResolver();
    if ((!hasImageUrl()) && (this.entity.hasPhoneNumber()))
    {
      setImageUrl(EntityHelper.getFirstImageUrl(EntityHelper.queryByPhoneNumber(localContentResolver, this.entity.getPhoneNumber())));
      if (!hasImageUrl())
        setImageUrl(EntityHelper.getFirstImageUrl(EntityHelper.queryBySecondaryPhoneNumber(localContentResolver, this.entity.getPhoneNumber())));
    }
    if (TextUtils.isEmpty(getImageUrl()))
    {
      String[] arrayOfString = new String[2];
      arrayOfString[0] = this.entity.getId();
      arrayOfString[1] = this.entity.getEmail();
      setImageUrlByEmail(localContentResolver, arrayOfString);
    }
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.EntityImageDownloadTask
 * JD-Core Version:    0.6.2
 */