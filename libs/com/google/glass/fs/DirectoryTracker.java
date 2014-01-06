package com.google.glass.fs;

import android.os.FileObserver;
import com.google.glass.async.AsyncThreadExecutorManager;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.predicates.Assert;
import com.google.glass.util.Stopwatch;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedList;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;

public class DirectoryTracker extends FileObserver
{
  private static final int IN_EVENT_IGNORED = 32768;
  private static final int OBSERVER_MASK = 4032;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final Set<String> direntCache;
  private FutureTask<Void> precacheTask;
  private File trackedDir;
  private boolean tracking = false;

  public DirectoryTracker(String paramString)
    throws IOException
  {
    super(paramString, 4032);
    this.trackedDir = new File(paramString);
    if ((!this.trackedDir.exists()) || (!this.trackedDir.isDirectory()))
      throw new IOException("Path [" + paramString + "] does not exist or is not a directory!");
    this.direntCache = Collections.newSetFromMap(new ConcurrentHashMap());
    start();
  }

  private void cacheNestedDirents(File paramFile)
  {
    Assert.assertNotUiThread();
    LinkedList localLinkedList = new LinkedList();
    localLinkedList.add(paramFile);
    while (localLinkedList.size() > 0)
    {
      File localFile = (File)localLinkedList.removeFirst();
      if (localFile.isDirectory())
        localLinkedList.addAll(Arrays.asList(localFile.listFiles()));
      synchronized (this.direntCache)
      {
        this.direntCache.add(localFile.getAbsolutePath());
      }
    }
  }

  public void blockUntilReady()
    throws InterruptedException, ExecutionException, CancellationException
  {
    Assert.assertNotUiThread();
    if (this.precacheTask == null)
    {
      logger.e("precacheTask is null! BUG!", new Object[0]);
      return;
    }
    Stopwatch localStopwatch = new Stopwatch();
    localStopwatch.start();
    this.precacheTask.get();
    localStopwatch.stop();
    FormattingLogger localFormattingLogger = logger;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = this.trackedDir.getAbsolutePath();
    arrayOfObject[1] = Long.valueOf(localStopwatch.getTotalElapsedMilliseconds());
    localFormattingLogger.i("DirectoryTracker for [%s] ready to go after blocking for %dms", arrayOfObject);
  }

  public boolean contains(String paramString)
  {
    if (!this.tracking)
    {
      FormattingLogger localFormattingLogger2 = logger;
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = this.trackedDir.getAbsolutePath();
      arrayOfObject2[1] = paramString;
      localFormattingLogger2.w("Querying stopped instance on [%s] for filename [%s] -- results will be stale!", arrayOfObject2);
    }
    synchronized (this.direntCache)
    {
      do
      {
        boolean bool = this.direntCache.contains(paramString);
        return bool;
      }
      while ((this.precacheTask == null) || (this.precacheTask.isDone()));
      FormattingLogger localFormattingLogger1 = logger;
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = this.trackedDir.getAbsolutePath();
      arrayOfObject1[1] = paramString;
      localFormattingLogger1.w("Querying instance without complete precache on [%s] for filename [%s] -- results may be inconsistent -- use blockUntilReady!", arrayOfObject1);
    }
  }

  public boolean isTracking()
  {
    return this.tracking;
  }

  public void onEvent(int paramInt, String paramString)
  {
    Assert.assertNotUiThread();
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = this.trackedDir.getAbsolutePath();
    arrayOfObject1[1] = File.separator;
    arrayOfObject1[2] = paramString;
    String str = String.format("%s%s%s", arrayOfObject1);
    Set localSet = this.direntCache;
    switch (paramInt)
    {
    default:
    case 128:
    case 256:
    case 64:
    case 512:
    case 1024:
    case 2048:
    case 32768:
    }
    while (true)
    {
      try
      {
        FormattingLogger localFormattingLogger3 = logger;
        Object[] arrayOfObject4 = new Object[2];
        arrayOfObject4[0] = Integer.valueOf(paramInt);
        arrayOfObject4[1] = paramString;
        localFormattingLogger3.e("Unhandled event [0x%x] for file [%s] -- BUG!", arrayOfObject4);
        return;
        FormattingLogger localFormattingLogger2 = logger;
        Object[] arrayOfObject3 = new Object[2];
        arrayOfObject3[0] = paramString;
        arrayOfObject3[1] = this.trackedDir.getAbsolutePath();
        localFormattingLogger2.i("File [%s] ADDED to [%s]", arrayOfObject3);
        this.direntCache.add(str);
        continue;
      }
      finally
      {
      }
      FormattingLogger localFormattingLogger1 = logger;
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = paramString;
      arrayOfObject2[1] = this.trackedDir.getAbsolutePath();
      localFormattingLogger1.i("File [%s] REMOVED from [%s]", arrayOfObject2);
      this.direntCache.remove(str);
      continue;
      logger.w("Monitored directory [%s] was deleted -- monitoring stopped!", new Object[] { paramString });
      this.tracking = false;
      continue;
      logger.w("Monitored directory [%s] has moved -- file paths will be different!", new Object[] { paramString });
      this.trackedDir = new File(str);
      continue;
      logger.e("IN_IGNORED event received for dir [%s] -- monitoring stopped! Is there another DirectoryTracker monitoring this path in the same process?", new Object[] { paramString });
      stopWatching();
      this.tracking = false;
    }
  }

  public boolean start()
  {
    try
    {
      if (this.tracking)
      {
        FormattingLogger localFormattingLogger = logger;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = this.trackedDir.getAbsolutePath();
        localFormattingLogger.w("Asked to start tracking path [%s], but we've already started.", arrayOfObject);
      }
      for (boolean bool = this.tracking; ; bool = this.tracking)
      {
        return bool;
        this.precacheTask = new FutureTask(new Runnable()
        {
          public void run()
          {
            Stopwatch localStopwatch = new Stopwatch();
            localStopwatch.start();
            synchronized (DirectoryTracker.this.direntCache)
            {
              DirectoryTracker.this.direntCache.clear();
              DirectoryTracker.this.startWatching();
              DirectoryTracker.this.cacheNestedDirents(DirectoryTracker.this.trackedDir);
              localStopwatch.stop();
              FormattingLogger localFormattingLogger = DirectoryTracker.logger;
              Object[] arrayOfObject = new Object[2];
              arrayOfObject[0] = Long.valueOf(localStopwatch.getTotalElapsedMilliseconds() / 1000L);
              arrayOfObject[1] = DirectoryTracker.this.trackedDir.getAbsolutePath();
              localFormattingLogger.i("Took %ds to iterate [%s].", arrayOfObject);
              return;
            }
          }
        }
        , null);
        AsyncThreadExecutorManager.getSerialExecutor().execute(this.precacheTask);
        this.tracking = true;
      }
    }
    finally
    {
    }
  }

  public void stop()
  {
    try
    {
      if (!this.tracking)
      {
        FormattingLogger localFormattingLogger3 = logger;
        Object[] arrayOfObject3 = new Object[1];
        arrayOfObject3[0] = this.trackedDir.getAbsolutePath();
        localFormattingLogger3.w("Asked to stop tracking path [%s], but we've already stopped.", arrayOfObject3);
      }
      stopWatching();
      this.tracking = false;
      if (this.precacheTask == null)
      {
        FormattingLogger localFormattingLogger2 = logger;
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = this.trackedDir.getAbsolutePath();
        localFormattingLogger2.e("PrecacheTask is null for DirectoryTracker [%s]! BUG!", arrayOfObject2);
      }
      while (true)
      {
        FormattingLogger localFormattingLogger1 = logger;
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = this.trackedDir.getAbsolutePath();
        localFormattingLogger1.i("DirectoryTracker for [%s] stopped.", arrayOfObject1);
        return;
        if (!this.precacheTask.isDone())
          this.precacheTask.cancel(true);
      }
    }
    finally
    {
    }
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.fs.DirectoryTracker
 * JD-Core Version:    0.6.2
 */