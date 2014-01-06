package com.google.glass.util;

import android.os.Environment;
import android.os.StatFs;
import android.os.SystemClock;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.io.Files;
import com.google.glass.async.AsyncThreadExecutorManager;
import com.google.glass.fs.Filesystem;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.predicates.Assert;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;

public class CachedFilesManager
{
  private static final long DELETION_BUDGET_MS = 1000L;
  private static final int MODE_AID_PRIVATE = 432;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private static CachedFilesManager sharedInstance;
  private final File dir;
  public final int dirPathLength;
  private final Map<String, Integer> filePathToUsageCount;
  private final FileSaver fileSaver;
  private final long limitInByte;
  private final int limitInCount;
  private int numOfFiles;
  private int pendingTrimmings;
  private long sizeInBytes;
  private final long targetLimitInByte;
  private final int targetLimitInCount;

  public CachedFilesManager(String paramString, long paramLong, int paramInt)
  {
    this.dir = new File(paramString);
    this.filePathToUsageCount = new HashMap();
    this.fileSaver = new FileSaver(paramString);
    this.dirPathLength = this.dir.getAbsolutePath().length();
    this.limitInByte = paramLong;
    this.targetLimitInByte = (paramLong >> 1);
    this.limitInCount = paramInt;
    this.targetLimitInCount = (paramInt >> 1);
    this.numOfFiles = -1;
    this.sizeInBytes = -1L;
    this.pendingTrimmings = 0;
    AsyncThreadExecutorManager.getThreadPoolExecutor().execute(new Runnable()
    {
      public void run()
      {
        CachedFilesManager.this.setupFileBookkeeping();
      }
    });
  }

  private long getAvailableExternalStorageSpaceInByte()
  {
    try
    {
      StatFs localStatFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
      long l = localStatFs.getBlockSize();
      int i = localStatFs.getAvailableBlocks();
      return l * i;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
    }
    return 0L;
  }

  public static CachedFilesManager getSharedInstance()
  {
    return sharedInstance;
  }

  public static void setSharedInstance(CachedFilesManager paramCachedFilesManager)
  {
    sharedInstance = paramCachedFilesManager;
  }

  private void setupFileBookkeeping()
  {
    while (true)
    {
      int j;
      synchronized (this.filePathToUsageCount)
      {
        if ((this.numOfFiles < 0) || (this.sizeInBytes < 0L))
        {
          FormattingLogger localFormattingLogger = logger;
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = this.dir;
          localFormattingLogger.i("Scanning %s for the amount of files and the total size of files ...", arrayOfObject);
          this.numOfFiles = 0;
          this.sizeInBytes = 0L;
          File[] arrayOfFile = this.dir.listFiles();
          if (arrayOfFile != null)
          {
            int i = arrayOfFile.length;
            j = 0;
            if (j < i)
            {
              File localFile = arrayOfFile[j];
              if (!localFile.isFile())
                break label140;
              this.numOfFiles = (1 + this.numOfFiles);
              this.sizeInBytes += localFile.length();
              break label140;
            }
          }
        }
        return;
      }
      label140: j++;
    }
  }

  private void trimCachedFilesIfNeeded()
  {
    synchronized (this.filePathToUsageCount)
    {
      if ((this.sizeInBytes > this.limitInByte) || (this.numOfFiles > this.limitInCount))
        trimTo(this.targetLimitInByte, this.targetLimitInCount);
      this.pendingTrimmings = (-1 + this.pendingTrimmings);
      return;
    }
  }

  private void trimTo(long paramLong, int paramInt)
  {
    trimTo(paramLong, paramInt, true);
  }

  private void trimTo(long paramLong, int paramInt, boolean paramBoolean)
  {
    Assert.assertTrue(Thread.holdsLock(this.filePathToUsageCount));
    List localList = Arrays.asList(this.dir.listFiles());
    Collections.sort(localList, new Comparator()
    {
      public int compare(File paramAnonymousFile1, File paramAnonymousFile2)
      {
        if (paramAnonymousFile1.lastModified() < paramAnonymousFile2.lastModified())
          return -1;
        if (paramAnonymousFile1.lastModified() > paramAnonymousFile2.lastModified())
          return 1;
        return paramAnonymousFile1.compareTo(paramAnonymousFile2);
      }
    });
    long l = SystemClock.uptimeMillis();
    Iterator localIterator = localList.iterator();
    label247: 
    do
    {
      while (localIterator.hasNext())
      {
        File localFile = (File)localIterator.next();
        if (localFile.isFile())
          if (this.filePathToUsageCount.containsKey(localFile.getAbsolutePath()))
          {
            FormattingLogger localFormattingLogger3 = logger;
            Object[] arrayOfObject3 = new Object[1];
            arrayOfObject3[0] = localFile.getAbsolutePath();
            localFormattingLogger3.v("Can't delete file %s which is still in use", arrayOfObject3);
          }
          else
          {
            this.sizeInBytes -= localFile.length();
            this.numOfFiles = (-1 + this.numOfFiles);
            localFile.delete();
            FormattingLogger localFormattingLogger1 = logger;
            Object[] arrayOfObject1 = new Object[5];
            arrayOfObject1[0] = localFile.getName();
            arrayOfObject1[1] = Long.valueOf(this.sizeInBytes);
            arrayOfObject1[2] = Integer.valueOf(this.numOfFiles);
            arrayOfObject1[3] = Long.valueOf(paramLong);
            arrayOfObject1[4] = Integer.valueOf(paramInt);
            localFormattingLogger1.v("delete file %s, sizeInBytes=%s, numOfFiles=%s, targetSize=%s, targetCount=%s", arrayOfObject1);
            if ((this.sizeInBytes > paramLong) || (this.numOfFiles > paramInt))
              break label247;
          }
      }
      return;
    }
    while ((!paramBoolean) || (1000L + l >= SystemClock.uptimeMillis()) || (this.sizeInBytes > this.limitInByte) || (this.numOfFiles > this.limitInCount));
    FormattingLogger localFormattingLogger2 = logger;
    Object[] arrayOfObject2 = new Object[3];
    arrayOfObject2[0] = Long.valueOf(System.currentTimeMillis() - l);
    arrayOfObject2[1] = Long.valueOf(this.sizeInBytes);
    arrayOfObject2[2] = Integer.valueOf(this.numOfFiles);
    localFormattingLogger2.v("Exit trimming due to timeout: %sms, size = %s, count = %s ", arrayOfObject2);
  }

  private void updateFileBookkeeping(int paramInt1, long paramLong, int paramInt2)
  {
    synchronized (this.filePathToUsageCount)
    {
      this.numOfFiles = (paramInt1 + this.numOfFiles);
      this.sizeInBytes = (paramLong + this.sizeInBytes);
      this.pendingTrimmings = (paramInt2 + this.pendingTrimmings);
      if ((this.numOfFiles < 0) || (this.sizeInBytes < 0L))
      {
        FormattingLogger localFormattingLogger = logger;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = this.dir;
        localFormattingLogger.i("Bookkeeping %s has become corrupt", arrayOfObject);
      }
      return;
    }
  }

  public void clearCache(Type paramType)
  {
    while (true)
    {
      File localFile;
      synchronized (this.filePathToUsageCount)
      {
        logger.v("clearCache", new Object[0]);
        Iterator localIterator = Arrays.asList(this.dir.listFiles()).iterator();
        if (!localIterator.hasNext())
          break;
        localFile = (File)localIterator.next();
        if ((!localFile.isFile()) || (Type.get(localFile.getName()) != paramType))
          continue;
        if (this.filePathToUsageCount.containsKey(localFile.getAbsolutePath()))
        {
          FormattingLogger localFormattingLogger2 = logger;
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = localFile.getAbsolutePath();
          localFormattingLogger2.v("Can't delete file %s which is still in use", arrayOfObject2);
        }
      }
      this.sizeInBytes -= localFile.length();
      this.numOfFiles = (-1 + this.numOfFiles);
      localFile.delete();
      FormattingLogger localFormattingLogger1 = logger;
      Object[] arrayOfObject1 = new Object[3];
      arrayOfObject1[0] = localFile.getName();
      arrayOfObject1[1] = Long.valueOf(this.sizeInBytes);
      arrayOfObject1[2] = Integer.valueOf(this.numOfFiles);
      localFormattingLogger1.v("delete file %s, sizeInBytes=%s, numOfFiles=%s", arrayOfObject1);
    }
  }

  public boolean contains(Type paramType, String paramString)
  {
    Assert.assertNotUiThread();
    String str = getPath(paramType, paramString);
    if (str == null)
      return false;
    try
    {
      increaseUsage(str);
      File localFile = new File(str);
      if (localFile.exists())
      {
        long l = localFile.length();
        if (l != 0L);
      }
      else
      {
        return false;
      }
      localFile.setLastModified(this.fileSaver.getModifiedTime());
      return true;
    }
    finally
    {
      releaseUsage(str);
    }
  }

  public void disableMockModifiedTimeForTest()
  {
    this.fileSaver.disableMockModifiedTimeForTest();
  }

  public void enableMockModifiedTimeForTest()
  {
    this.fileSaver.enableMockModifiedTimeForTest();
  }

  public String getPath(Type paramType, String paramString)
  {
    File localFile = this.dir;
    if (!localFile.exists())
      return null;
    return localFile.getAbsolutePath() + File.separator + paramType.prefix + paramString;
  }

  public Type getType(String paramString)
  {
    if (!paramString.startsWith(this.dir.getAbsolutePath()))
      return Type.NONE;
    return Type.get(paramString.substring(1 + this.dirPathLength));
  }

  public void increaseUsage(String paramString)
  {
    Assert.assertNotUiThread();
    if (paramString == null)
    {
      logger.w("increaseUsage with null filePath", new Object[0]);
      return;
    }
    while (true)
    {
      Integer localInteger1;
      synchronized (this.filePathToUsageCount)
      {
        localInteger1 = (Integer)this.filePathToUsageCount.get(paramString);
        if (localInteger1 == null)
        {
          localObject2 = Integer.valueOf(1);
          this.filePathToUsageCount.put(paramString, localObject2);
          return;
        }
      }
      Integer localInteger2 = Integer.valueOf(1 + localInteger1.intValue());
      Object localObject2 = localInteger2;
    }
  }

  public <T> T load(Type paramType, String paramString, Loader<T> paramLoader)
  {
    try
    {
      Assert.assertNotUiThread();
      Object localObject2 = load(getPath(paramType, paramString), paramLoader);
      return localObject2;
    }
    finally
    {
      localObject1 = finally;
      throw localObject1;
    }
  }

  public <T> T load(String paramString, Loader<T> paramLoader)
  {
    if (paramString == null)
    {
      logger.e("load with null filePath", new Object[0]);
      return null;
    }
    try
    {
      increaseUsage(paramString);
      Object localObject2 = paramLoader.load(paramString);
      if (localObject2 != null)
        new File(paramString).setLastModified(this.fileSaver.getModifiedTime());
      while (true)
      {
        return localObject2;
        logger.e("Failed to load [%s]", new Object[] { paramString });
      }
    }
    finally
    {
      releaseUsage(paramString);
    }
  }

  public boolean noPendingTrimmings()
  {
    while (true)
    {
      synchronized (this.filePathToUsageCount)
      {
        if (this.pendingTrimmings == 0)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }

  public void releaseUsage(String paramString)
  {
    Assert.assertNotUiThread();
    if (paramString == null)
    {
      logger.w("releaseUsage with null filePath", new Object[0]);
      return;
    }
    while (true)
    {
      Integer localInteger;
      synchronized (this.filePathToUsageCount)
      {
        localInteger = (Integer)this.filePathToUsageCount.get(paramString);
        if ((localInteger == null) || (localInteger.intValue() < 0))
        {
          logger.w("Bad releasing: usageCount = %s found for %s", new Object[] { localInteger, paramString });
          this.filePathToUsageCount.remove(paramString);
          return;
        }
      }
      if (localInteger.intValue() == 1)
        this.filePathToUsageCount.remove(paramString);
      else if (localInteger.intValue() > 1)
        this.filePathToUsageCount.put(paramString, Integer.valueOf(-1 + localInteger.intValue()));
    }
  }

  public boolean save(Type paramType, String paramString, FileSaver.Saver paramSaver)
  {
    Assert.assertNotUiThread();
    setupFileBookkeeping();
    String str = getPath(paramType, paramString);
    try
    {
      increaseUsage(str);
      File localFile = new File(str);
      if (localFile.exists())
        updateFileBookkeeping(-1, -localFile.length(), 0);
      if (!this.fileSaver.write(paramSaver, localFile.getAbsolutePath()))
      {
        long l = 1024L + paramSaver.getEstimatedSizeBytes();
        if (getAvailableExternalStorageSpaceInByte() < l)
        {
          FormattingLogger localFormattingLogger2 = logger;
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = Long.valueOf(paramSaver.getEstimatedSizeBytes());
          localFormattingLogger2.w("Space may be full for content of size %s. Trim and retry.", arrayOfObject2);
          if (!trimBySize(l))
          {
            FormattingLogger localFormattingLogger3 = logger;
            Object[] arrayOfObject3 = new Object[1];
            arrayOfObject3[0] = Long.valueOf(paramSaver.getEstimatedSizeBytes());
            localFormattingLogger3.w("No space to trim for content of size %s", arrayOfObject3);
            return false;
          }
          boolean bool = this.fileSaver.write(paramSaver, localFile.getAbsolutePath());
          if (!bool)
            return false;
        }
        else
        {
          return false;
        }
      }
      try
      {
        Filesystem.changeMode(localFile.getAbsolutePath(), 432);
        updateFileBookkeeping(1, localFile.length(), 1);
        AsyncThreadExecutorManager.getThreadPoolExecutor().execute(new Runnable()
        {
          public void run()
          {
            CachedFilesManager.this.trimCachedFilesIfNeeded();
          }
        });
        return true;
      }
      catch (IOException localIOException)
      {
        while (true)
        {
          FormattingLogger localFormattingLogger1 = logger;
          Object[] arrayOfObject1 = new Object[1];
          arrayOfObject1[0] = localFile.getAbsolutePath();
          localFormattingLogger1.e(localIOException, "Failed to change mode on file %s", arrayOfObject1);
        }
      }
    }
    finally
    {
      releaseUsage(str);
    }
  }

  // ERROR //
  public boolean saveLink(Type paramType, String paramString1, String paramString2)
    throws IOException, IllegalArgumentException
  {
    // Byte code:
    //   0: invokestatic 270	com/google/glass/predicates/Assert:assertNotUiThread	()V
    //   3: aload_0
    //   4: invokespecial 111	com/google/glass/util/CachedFilesManager:setupFileBookkeeping	()V
    //   7: aload_0
    //   8: aload_1
    //   9: aload_3
    //   10: invokevirtual 273	com/google/glass/util/CachedFilesManager:getPath	(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;
    //   13: astore 4
    //   15: aload_0
    //   16: aload 4
    //   18: invokevirtual 276	com/google/glass/util/CachedFilesManager:increaseUsage	(Ljava/lang/String;)V
    //   21: aload_2
    //   22: invokestatic 411	com/google/glass/fs/Filesystem:maybeTranslatePath	(Ljava/lang/String;)Ljava/lang/String;
    //   25: astore 6
    //   27: aload 6
    //   29: aload 4
    //   31: invokestatic 415	com/google/glass/fs/Filesystem:createLink	(Ljava/lang/String;Ljava/lang/String;)V
    //   34: aload 4
    //   36: getstatic 418	com/google/glass/fs/Filesystem:EXTERNAL_STORAGE_PATH	Ljava/lang/String;
    //   39: invokevirtual 317	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   42: istore 8
    //   44: iload 8
    //   46: ifne +122 -> 168
    //   49: aload 4
    //   51: sipush 432
    //   54: invokestatic 397	com/google/glass/fs/Filesystem:changeMode	(Ljava/lang/String;I)V
    //   57: aload_0
    //   58: iconst_1
    //   59: new 46	java/io/File
    //   62: dup
    //   63: aload_2
    //   64: invokespecial 49	java/io/File:<init>	(Ljava/lang/String;)V
    //   67: invokevirtual 160	java/io/File:length	()J
    //   70: iconst_1
    //   71: invokespecial 371	com/google/glass/util/CachedFilesManager:updateFileBookkeeping	(IJI)V
    //   74: invokestatic 95	com/google/glass/async/AsyncThreadExecutorManager:getThreadPoolExecutor	()Ljava/util/concurrent/Executor;
    //   77: new 420	com/google/glass/util/CachedFilesManager$2
    //   80: dup
    //   81: aload_0
    //   82: invokespecial 421	com/google/glass/util/CachedFilesManager$2:<init>	(Lcom/google/glass/util/CachedFilesManager;)V
    //   85: invokeinterface 106 2 0
    //   90: aload_0
    //   91: aload 4
    //   93: invokevirtual 282	com/google/glass/util/CachedFilesManager:releaseUsage	(Ljava/lang/String;)V
    //   96: iconst_1
    //   97: ireturn
    //   98: astore 7
    //   100: new 369	java/io/IOException
    //   103: dup
    //   104: ldc_w 423
    //   107: iconst_2
    //   108: anewarray 4	java/lang/Object
    //   111: dup
    //   112: iconst_0
    //   113: aload 6
    //   115: aastore
    //   116: dup
    //   117: iconst_1
    //   118: aload 4
    //   120: aastore
    //   121: invokestatic 427	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   124: aload 7
    //   126: invokespecial 430	java/io/IOException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   129: athrow
    //   130: astore 5
    //   132: aload_0
    //   133: aload 4
    //   135: invokevirtual 282	com/google/glass/util/CachedFilesManager:releaseUsage	(Ljava/lang/String;)V
    //   138: aload 5
    //   140: athrow
    //   141: astore 9
    //   143: getstatic 40	com/google/glass/util/CachedFilesManager:logger	Lcom/google/glass/logging/FormattingLogger;
    //   146: aload 9
    //   148: ldc_w 432
    //   151: iconst_1
    //   152: anewarray 4	java/lang/Object
    //   155: dup
    //   156: iconst_0
    //   157: aload 4
    //   159: aastore
    //   160: invokeinterface 405 4 0
    //   165: goto -108 -> 57
    //   168: getstatic 40	com/google/glass/util/CachedFilesManager:logger	Lcom/google/glass/logging/FormattingLogger;
    //   171: ldc_w 434
    //   174: iconst_1
    //   175: anewarray 4	java/lang/Object
    //   178: dup
    //   179: iconst_0
    //   180: aload 4
    //   182: aastore
    //   183: invokeinterface 437 3 0
    //   188: goto -131 -> 57
    //
    // Exception table:
    //   from	to	target	type
    //   27	34	98	java/io/IOException
    //   15	27	130	finally
    //   27	34	130	finally
    //   34	44	130	finally
    //   49	57	130	finally
    //   57	90	130	finally
    //   100	130	130	finally
    //   143	165	130	finally
    //   168	188	130	finally
    //   49	57	141	java/io/IOException
  }

  public boolean trimBySize(long paramLong)
  {
    synchronized (this.filePathToUsageCount)
    {
      if (this.sizeInBytes >= paramLong)
      {
        trimTo(this.sizeInBytes - paramLong, this.targetLimitInCount);
        return true;
      }
      return false;
    }
  }

  public void trimToWithoutTimeout()
  {
    synchronized (this.filePathToUsageCount)
    {
      if ((this.sizeInBytes > this.limitInByte) || (this.numOfFiles > this.limitInCount))
        trimTo(this.targetLimitInByte, this.targetLimitInCount, false);
      return;
    }
  }

  public static class ByteArrayLoader
    implements CachedFilesManager.Loader<byte[]>
  {
    public byte[] load(String paramString)
    {
      if (paramString == null)
        return null;
      try
      {
        byte[] arrayOfByte = Files.toByteArray(new File(paramString));
        return arrayOfByte;
      }
      catch (IOException localIOException)
      {
        CachedFilesManager.logger.e(localIOException, "Error reading from %s", new Object[] { paramString });
      }
      return null;
    }
  }

  public static abstract interface Loader<T>
  {
    public abstract T load(String paramString);
  }

  public static enum Type
  {

    @VisibleForTesting
    public String prefix;

    static
    {
      ATTACHMENT = new Type("ATTACHMENT", 1, "a_");
      AUDIO = new Type("AUDIO", 2, "o_");
      BUG_REPORT = new Type("BUG_REPORT", 3, "b_");
      BUNDLE_STORE = new Type("BUNDLE_STORE", 4, "bs_");
      GLASSWARE_ICON = new Type("GLASSWARE_ICON", 5, "gi_");
      HTML = new Type("HTML", 6, "h_");
      ICON = new Type("ICON", 7, "i_");
      PICTURE = new Type("PICTURE", 8, "p_");
      PROTO_BUFFER = new Type("PROTO_BUFFER", 9, "pb_");
      SCREENSHOT = new Type("SCREENSHOT", 10, "ss_");
      SHARE = new Type("SHARE", 11, "s_");
      THUMBNAIL = new Type("THUMBNAIL", 12, "t_");
      VIDEO = new Type("VIDEO", 13, "v_");
      Type[] arrayOfType = new Type[14];
      arrayOfType[0] = NONE;
      arrayOfType[1] = ATTACHMENT;
      arrayOfType[2] = AUDIO;
      arrayOfType[3] = BUG_REPORT;
      arrayOfType[4] = BUNDLE_STORE;
      arrayOfType[5] = GLASSWARE_ICON;
      arrayOfType[6] = HTML;
      arrayOfType[7] = ICON;
      arrayOfType[8] = PICTURE;
      arrayOfType[9] = PROTO_BUFFER;
      arrayOfType[10] = SCREENSHOT;
      arrayOfType[11] = SHARE;
      arrayOfType[12] = THUMBNAIL;
      arrayOfType[13] = VIDEO;
    }

    private Type(String paramString)
    {
      this.prefix = paramString;
    }

    public static Type get(String paramString)
    {
      for (Type localType : values())
      {
        String str = localType.prefix;
        if ((str != null) && (paramString.startsWith(str)))
          return localType;
      }
      return NONE;
    }
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.CachedFilesManager
 * JD-Core Version:    0.6.2
 */