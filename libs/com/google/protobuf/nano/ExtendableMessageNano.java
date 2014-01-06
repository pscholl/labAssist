package com.google.protobuf.nano;

import java.util.ArrayList;
import java.util.List;

public abstract class ExtendableMessageNano extends MessageNano
{
  protected List<UnknownFieldData> unknownFieldData;

  public <T> T getExtension(Extension<T> paramExtension)
  {
    return WireFormatNano.getExtension(paramExtension, this.unknownFieldData);
  }

  public int getSerializedSize()
  {
    int i = WireFormatNano.computeWireSize(this.unknownFieldData);
    this.cachedSize = i;
    return i;
  }

  public <T> void setExtension(Extension<T> paramExtension, T paramT)
  {
    if (this.unknownFieldData == null)
      this.unknownFieldData = new ArrayList();
    WireFormatNano.setExtension(paramExtension, paramT, this.unknownFieldData);
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.protobuf.nano.ExtendableMessageNano
 * JD-Core Version:    0.6.2
 */