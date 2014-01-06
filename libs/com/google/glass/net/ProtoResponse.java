package com.google.glass.net;

import com.google.protobuf.nano.MessageNano;
import junit.framework.Assert;

public class ProtoResponse<T extends MessageNano>
{
  private static final int ERROR_CODE_UNSET = -1;
  private final int errorCode;
  private final T responseProto;

  private ProtoResponse(int paramInt, T paramT)
  {
    if ((paramInt == -1) || (paramT == null));
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      this.errorCode = paramInt;
      this.responseProto = paramT;
      return;
    }
  }

  public static <T extends MessageNano> ProtoResponse<T> cancel()
  {
    return new ProtoResponse(-1, null);
  }

  public static <T extends MessageNano> ProtoResponse<T> error(int paramInt)
  {
    Assert.assertNotNull(Integer.valueOf(paramInt));
    return new ProtoResponse(paramInt, null);
  }

  public static <T extends MessageNano> ProtoResponse<T> success(T paramT)
  {
    Assert.assertNotNull(paramT);
    return new ProtoResponse(-1, paramT);
  }

  public int getErrorCode()
  {
    if (isError())
      return this.errorCode;
    return -2147483648;
  }

  public T getResponseProto()
  {
    return this.responseProto;
  }

  public boolean isCancelled()
  {
    return (this.errorCode == -1) && (this.responseProto == null);
  }

  public boolean isError()
  {
    return this.errorCode != -1;
  }

  public boolean isSuccess()
  {
    return this.responseProto != null;
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.net.ProtoResponse
 * JD-Core Version:    0.6.2
 */