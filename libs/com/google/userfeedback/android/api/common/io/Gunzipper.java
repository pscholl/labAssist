package com.google.userfeedback.android.api.common.io;

import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPInputStream;

public class Gunzipper
{
  private static final Gunzipper instance = new Gunzipper();
  private GunzipInterface implementation;

  public static InputStream gunzip(InputStream paramInputStream)
    throws IOException
  {
    if (instance.implementation == null)
      setImplementation(new GunzipInterface()
      {
        public InputStream gunzip(InputStream paramAnonymousInputStream)
          throws IOException
        {
          return new GZIPInputStream(paramAnonymousInputStream);
        }
      });
    return instance.implementation.gunzip(paramInputStream);
  }

  public static void setImplementation(GunzipInterface paramGunzipInterface)
  {
    instance.implementation = paramGunzipInterface;
  }

  public static abstract interface GunzipInterface
  {
    public abstract InputStream gunzip(InputStream paramInputStream)
      throws IOException;
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.userfeedback.android.api.common.io.Gunzipper
 * JD-Core Version:    0.6.2
 */