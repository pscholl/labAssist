package com.google.googlex.glass.common.proto;

import com.google.protobuf.nano.CodedInputByteBufferNano;
import com.google.protobuf.nano.CodedOutputByteBufferNano;
import com.google.protobuf.nano.InvalidProtocolBufferNanoException;
import com.google.protobuf.nano.MessageNano;
import com.google.protobuf.nano.WireFormatNano;
import java.io.IOException;
import java.util.Arrays;

public abstract interface ResourceNano
{
  public static final class ResourceRequest extends MessageNano
  {
    public static final ResourceRequest[] EMPTY_ARRAY = new ResourceRequest[0];
    private int bitField0_;
    private long fingerprint_ = 0L;
    private String languageCode_ = "";
    private String name_ = "";
    private int type_ = 1;

    public static ResourceRequest parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new ResourceRequest().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static ResourceRequest parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (ResourceRequest)MessageNano.mergeFrom(new ResourceRequest(), paramArrayOfByte);
    }

    public ResourceRequest clearFingerprint()
    {
      this.fingerprint_ = 0L;
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      return this;
    }

    public ResourceRequest clearLanguageCode()
    {
      this.languageCode_ = "";
      this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
      return this;
    }

    public ResourceRequest clearName()
    {
      this.name_ = "";
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      return this;
    }

    public ResourceRequest clearType()
    {
      this.type_ = 1;
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      ResourceRequest localResourceRequest;
      do
      {
        return true;
        if (!(paramObject instanceof ResourceRequest))
          return false;
        localResourceRequest = (ResourceRequest)paramObject;
        if (this.type_ != localResourceRequest.type_)
          break;
        if (this.name_ != null)
          break label74;
        if (localResourceRequest.name_ != null)
          break;
        if (this.fingerprint_ != localResourceRequest.fingerprint_)
          break;
        if (this.languageCode_ != null)
          break label91;
      }
      while (localResourceRequest.languageCode_ == null);
      label74: label91: 
      while (!this.languageCode_.equals(localResourceRequest.languageCode_))
      {
        do
          return false;
        while (!this.name_.equals(localResourceRequest.name_));
        break;
      }
      return true;
    }

    public long getFingerprint()
    {
      return this.fingerprint_;
    }

    public String getLanguageCode()
    {
      return this.languageCode_;
    }

    public String getName()
    {
      return this.name_;
    }

    public int getSerializedSize()
    {
      int i = 0x1 & this.bitField0_;
      int j = 0;
      if (i != 0)
        j = 0 + CodedOutputByteBufferNano.computeInt32Size(1, this.type_);
      if ((0x2 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(2, this.name_);
      if ((0x4 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeFixed64Size(3, this.fingerprint_);
      if ((0x8 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(4, this.languageCode_);
      this.cachedSize = j;
      return j;
    }

    public int getType()
    {
      return this.type_;
    }

    public boolean hasFingerprint()
    {
      return (0x4 & this.bitField0_) != 0;
    }

    public boolean hasLanguageCode()
    {
      return (0x8 & this.bitField0_) != 0;
    }

    public boolean hasName()
    {
      return (0x2 & this.bitField0_) != 0;
    }

    public boolean hasType()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public int hashCode()
    {
      int i = 31 * (527 + this.type_);
      int j;
      int k;
      int m;
      if (this.name_ == null)
      {
        j = 0;
        k = 31 * (31 * (i + j) + (int)(this.fingerprint_ ^ this.fingerprint_ >>> 32));
        String str = this.languageCode_;
        m = 0;
        if (str != null)
          break label75;
      }
      while (true)
      {
        return k + m;
        j = this.name_.hashCode();
        break;
        label75: m = this.languageCode_.hashCode();
      }
    }

    public ResourceRequest mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      while (true)
      {
        int i = paramCodedInputByteBufferNano.readTag();
        switch (i)
        {
        default:
          if (WireFormatNano.parseUnknownField(paramCodedInputByteBufferNano, i))
            continue;
        case 0:
          return this;
        case 8:
          int j = paramCodedInputByteBufferNano.readInt32();
          if ((j == 1) || (j == 2) || (j == 3) || (j == 5) || (j == 4));
          for (this.type_ = j; ; this.type_ = 1)
          {
            this.bitField0_ = (0x1 | this.bitField0_);
            break;
          }
        case 18:
          this.name_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x2 | this.bitField0_);
          break;
        case 25:
          this.fingerprint_ = paramCodedInputByteBufferNano.readFixed64();
          this.bitField0_ = (0x4 | this.bitField0_);
          break;
        case 34:
        }
        this.languageCode_ = paramCodedInputByteBufferNano.readString();
        this.bitField0_ = (0x8 | this.bitField0_);
      }
    }

    public ResourceRequest setFingerprint(long paramLong)
    {
      this.fingerprint_ = paramLong;
      this.bitField0_ = (0x4 | this.bitField0_);
      return this;
    }

    public ResourceRequest setLanguageCode(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.languageCode_ = paramString;
      this.bitField0_ = (0x8 | this.bitField0_);
      return this;
    }

    public ResourceRequest setName(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.name_ = paramString;
      this.bitField0_ = (0x2 | this.bitField0_);
      return this;
    }

    public ResourceRequest setType(int paramInt)
    {
      this.type_ = paramInt;
      this.bitField0_ = (0x1 | this.bitField0_);
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if ((0x1 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt32(1, this.type_);
      if ((0x2 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(2, this.name_);
      if ((0x4 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeFixed64(3, this.fingerprint_);
      if ((0x8 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(4, this.languageCode_);
    }

    public static abstract interface ResourceType
    {
      public static final int GLASSWARE_ICON_LARGE = 5;
      public static final int GLASSWARE_ICON_MEDIUM = 3;
      public static final int GLASSWARE_ICON_SMALL = 2;
      public static final int GLASSWARE_MESSAGES = 4;
      public static final int STYLESHEET = 1;
    }
  }

  public static final class ResourceResponse extends MessageNano
  {
    public static final ResourceResponse[] EMPTY_ARRAY = new ResourceResponse[0];
    private int bitField0_;
    private byte[] data_ = WireFormatNano.EMPTY_BYTES;
    private long fingerprint_ = 0L;
    private int status_ = 0;

    public static ResourceResponse parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new ResourceResponse().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static ResourceResponse parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (ResourceResponse)MessageNano.mergeFrom(new ResourceResponse(), paramArrayOfByte);
    }

    public ResourceResponse clearData()
    {
      this.data_ = WireFormatNano.EMPTY_BYTES;
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      return this;
    }

    public ResourceResponse clearFingerprint()
    {
      this.fingerprint_ = 0L;
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      return this;
    }

    public ResourceResponse clearStatus()
    {
      this.status_ = 0;
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      ResourceResponse localResourceResponse;
      do
      {
        return true;
        if (!(paramObject instanceof ResourceResponse))
          return false;
        localResourceResponse = (ResourceResponse)paramObject;
      }
      while ((this.status_ == localResourceResponse.status_) && (Arrays.equals(this.data_, localResourceResponse.data_)) && (this.fingerprint_ == localResourceResponse.fingerprint_));
      return false;
    }

    public byte[] getData()
    {
      return this.data_;
    }

    public long getFingerprint()
    {
      return this.fingerprint_;
    }

    public int getSerializedSize()
    {
      int i = 0x1 & this.bitField0_;
      int j = 0;
      if (i != 0)
        j = 0 + CodedOutputByteBufferNano.computeInt32Size(1, this.status_);
      if ((0x2 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeBytesSize(2, this.data_);
      if ((0x4 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeFixed64Size(3, this.fingerprint_);
      this.cachedSize = j;
      return j;
    }

    public int getStatus()
    {
      return this.status_;
    }

    public boolean hasData()
    {
      return (0x2 & this.bitField0_) != 0;
    }

    public boolean hasFingerprint()
    {
      return (0x4 & this.bitField0_) != 0;
    }

    public boolean hasStatus()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public int hashCode()
    {
      int i = 527 + this.status_;
      if (this.data_ == null)
        i *= 31;
      while (true)
      {
        return i * 31 + (int)(this.fingerprint_ ^ this.fingerprint_ >>> 32);
        for (int j = 0; j < this.data_.length; j++)
          i = i * 31 + this.data_[j];
      }
    }

    public ResourceResponse mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      while (true)
      {
        int i = paramCodedInputByteBufferNano.readTag();
        switch (i)
        {
        default:
          if (WireFormatNano.parseUnknownField(paramCodedInputByteBufferNano, i))
            continue;
        case 0:
          return this;
        case 8:
          int j = paramCodedInputByteBufferNano.readInt32();
          if ((j == 0) || (j == 1) || (j == 2));
          for (this.status_ = j; ; this.status_ = 0)
          {
            this.bitField0_ = (0x1 | this.bitField0_);
            break;
          }
        case 18:
          this.data_ = paramCodedInputByteBufferNano.readBytes();
          this.bitField0_ = (0x2 | this.bitField0_);
          break;
        case 25:
        }
        this.fingerprint_ = paramCodedInputByteBufferNano.readFixed64();
        this.bitField0_ = (0x4 | this.bitField0_);
      }
    }

    public ResourceResponse setData(byte[] paramArrayOfByte)
    {
      if (paramArrayOfByte == null)
        throw new NullPointerException();
      this.data_ = paramArrayOfByte;
      this.bitField0_ = (0x2 | this.bitField0_);
      return this;
    }

    public ResourceResponse setFingerprint(long paramLong)
    {
      this.fingerprint_ = paramLong;
      this.bitField0_ = (0x4 | this.bitField0_);
      return this;
    }

    public ResourceResponse setStatus(int paramInt)
    {
      this.status_ = paramInt;
      this.bitField0_ = (0x1 | this.bitField0_);
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if ((0x1 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt32(1, this.status_);
      if ((0x2 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeBytes(2, this.data_);
      if ((0x4 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeFixed64(3, this.fingerprint_);
    }

    public static abstract interface Status
    {
      public static final int BAD_REQUEST = 1;
      public static final int NOT_FOUND = 2;
      public static final int SUCCESS;
    }
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.ResourceNano
 * JD-Core Version:    0.6.2
 */