package com.google.glass.voice;

import com.google.glass.async.PriorityThreadFactory;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.util.CircularByteBuffer;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

public class BufferingStreamRecorder extends InputStream
{
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final CircularByteBuffer circularBuffer;
  private final AtomicBoolean isRecording = new AtomicBoolean();
  private final Object readMonitor = new Object();
  private final ExecutorService recordExecutor = Executors.newSingleThreadExecutor(new PriorityThreadFactory(10, "recordThread"));
  private final Runnable recordRunnable;
  private final InputStream underlyingStream;

  public BufferingStreamRecorder(InputStream paramInputStream, int paramInt1, int paramInt2)
  {
    this.underlyingStream = paramInputStream;
    this.circularBuffer = new CircularByteBuffer(ByteBuffer.allocateDirect(paramInt1));
    this.recordRunnable = createRecordThreadRunnable(this.recordExecutor, this.isRecording, paramInputStream, this.readMonitor, this.circularBuffer, paramInt2);
  }

  private static final Runnable createRecordThreadRunnable(final ExecutorService paramExecutorService, final AtomicBoolean paramAtomicBoolean, final InputStream paramInputStream, final Object paramObject, final CircularByteBuffer paramCircularByteBuffer, int paramInt)
  {
    return new Runnable()
    {
      private final byte[] buffer = new byte[this.val$bytesPerRead];
      private boolean overflowLogged = false;
      private final FormattingLogger recordThreadLogger = FormattingLoggers.getLogger(BufferingStreamRecorder.logger, "recordThread");

      private void notifyReadMonitor()
      {
        synchronized (paramObject)
        {
          paramObject.notifyAll();
          return;
        }
      }

      public void run()
      {
        if (paramAtomicBoolean.get())
          try
          {
            int i = paramInputStream.read(this.buffer);
            if (i <= 0)
            {
              this.recordThreadLogger.e("Stopping recording because read returned: " + i, new Object[0]);
              paramAtomicBoolean.set(false);
              return;
            }
            if (paramCircularByteBuffer.put(ByteBuffer.wrap(this.buffer, 0, i)))
              if (!this.overflowLogged)
                this.recordThreadLogger.w("Buffer overflow!", new Object[0]);
            for (this.overflowLogged = true; ; this.overflowLogged = false)
            {
              paramExecutorService.execute(this);
              return;
            }
          }
          catch (IOException localIOException)
          {
            this.recordThreadLogger.e(localIOException, "IOException from underlying stream.", new Object[0]);
            return;
          }
          finally
          {
            notifyReadMonitor();
          }
        this.recordThreadLogger.d("Stopped recording", new Object[0]);
        notifyReadMonitor();
      }
    };
  }

  public void close()
    throws IOException
  {
    try
    {
      if (this.isRecording.compareAndSet(true, false))
        logger.d("Stopping recording.", new Object[0]);
      while (true)
      {
        this.underlyingStream.close();
        return;
        logger.i("Recording has already been stopped.", new Object[0]);
      }
    }
    finally
    {
    }
  }

  public int read()
    throws IOException
  {
    throw new UnsupportedOperationException();
  }

  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = 0;
    while (true)
    {
      if (i < paramInt2);
      try
      {
        if (!this.isRecording.get())
        {
          logger.e("No longer recording from underlying input stream; returning -1.", new Object[0]);
          i = -1;
          return i;
        }
        int j = this.circularBuffer.read(ByteBuffer.wrap(paramArrayOfByte, paramInt1 + i, paramInt2 - i));
        i += j;
        if (i >= paramInt2)
          continue;
        try
        {
          synchronized (this.readMonitor)
          {
            this.readMonitor.wait();
          }
        }
        catch (InterruptedException localInterruptedException)
        {
          Thread.currentThread().interrupt();
        }
      }
      finally
      {
      }
    }
  }

  public void startRecording()
  {
    try
    {
      if (!this.isRecording.compareAndSet(false, true))
        throw new IllegalStateException("Already started.");
    }
    finally
    {
    }
    logger.d("Starting recording.", new Object[0]);
    this.recordExecutor.execute(this.recordRunnable);
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.BufferingStreamRecorder
 * JD-Core Version:    0.6.2
 */