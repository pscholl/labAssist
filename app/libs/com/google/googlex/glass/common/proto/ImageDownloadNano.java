package com.google.googlex.glass.common.proto;

import com.google.protobuf.nano.CodedInputByteBufferNano;
import com.google.protobuf.nano.CodedOutputByteBufferNano;
import com.google.protobuf.nano.InvalidProtocolBufferNanoException;
import com.google.protobuf.nano.MessageNano;
import com.google.protobuf.nano.WireFormatNano;
import java.io.IOException;
import java.util.Arrays;

public abstract interface ImageDownloadNano
{
  public static final class ImageDownloadRequest extends MessageNano
  {
    public static final ImageDownloadRequest[] EMPTY_ARRAY = new ImageDownloadRequest[0];
    private int bitField0_;
    private boolean clientSupportsWebp_ = false;
    private int cropType_ = 0;
    private RequestedDimensions requestedDimensions_;
    private String url_ = "";

    public static ImageDownloadRequest parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new ImageDownloadRequest().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static ImageDownloadRequest parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (ImageDownloadRequest)MessageNano.mergeFrom(new ImageDownloadRequest(), paramArrayOfByte);
    }

    public ImageDownloadRequest clearClientSupportsWebp()
    {
      this.clientSupportsWebp_ = false;
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      return this;
    }

    public ImageDownloadRequest clearCropType()
    {
      this.cropType_ = 0;
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      return this;
    }

    public ImageDownloadRequest clearRequestedDimensions()
    {
      this.requestedDimensions_ = null;
      return this;
    }

    public ImageDownloadRequest clearUrl()
    {
      this.url_ = "";
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      label90: label105: 
      while (true)
      {
        return true;
        if (!(paramObject instanceof ImageDownloadRequest))
          return false;
        ImageDownloadRequest localImageDownloadRequest = (ImageDownloadRequest)paramObject;
        if (this.url_ == null)
          if (localImageDownloadRequest.url_ == null)
          {
            if (this.requestedDimensions_ != null)
              break label90;
            if (localImageDownloadRequest.requestedDimensions_ != null);
          }
        while (true)
        {
          if ((this.cropType_ == localImageDownloadRequest.cropType_) && (this.clientSupportsWebp_ == localImageDownloadRequest.clientSupportsWebp_))
            break label105;
          do
          {
            do
              return false;
            while (!this.url_.equals(localImageDownloadRequest.url_));
            break;
          }
          while (!this.requestedDimensions_.equals(localImageDownloadRequest.requestedDimensions_));
        }
      }
    }

    public boolean getClientSupportsWebp()
    {
      return this.clientSupportsWebp_;
    }

    public int getCropType()
    {
      return this.cropType_;
    }

    public RequestedDimensions getRequestedDimensions()
    {
      return this.requestedDimensions_;
    }

    public int getSerializedSize()
    {
      int i = 0x1 & this.bitField0_;
      int j = 0;
      if (i != 0)
        j = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.url_);
      if (this.requestedDimensions_ != null)
        j += CodedOutputByteBufferNano.computeMessageSize(2, this.requestedDimensions_);
      if ((0x2 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeInt32Size(3, this.cropType_);
      if ((0x4 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeBoolSize(4, this.clientSupportsWebp_);
      this.cachedSize = j;
      return j;
    }

    public String getUrl()
    {
      return this.url_;
    }

    public boolean hasClientSupportsWebp()
    {
      return (0x4 & this.bitField0_) != 0;
    }

    public boolean hasCropType()
    {
      return (0x2 & this.bitField0_) != 0;
    }

    public boolean hasRequestedDimensions()
    {
      return this.requestedDimensions_ != null;
    }

    public boolean hasUrl()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public int hashCode()
    {
      int i;
      int k;
      label30: int m;
      if (this.url_ == null)
      {
        i = 0;
        int j = 31 * (i + 527);
        RequestedDimensions localRequestedDimensions = this.requestedDimensions_;
        k = 0;
        if (localRequestedDimensions != null)
          break label74;
        m = 31 * (31 * (j + k) + this.cropType_);
        if (!this.clientSupportsWebp_)
          break label86;
      }
      label74: label86: for (int n = 1; ; n = 2)
      {
        return m + n;
        i = this.url_.hashCode();
        break;
        k = this.requestedDimensions_.hashCode();
        break label30;
      }
    }

    public ImageDownloadRequest mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
        case 10:
          this.url_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x1 | this.bitField0_);
          break;
        case 18:
          if (this.requestedDimensions_ == null)
            this.requestedDimensions_ = new RequestedDimensions();
          paramCodedInputByteBufferNano.readMessage(this.requestedDimensions_);
          break;
        case 24:
          int j = paramCodedInputByteBufferNano.readInt32();
          if ((j == 0) || (j == 1));
          for (this.cropType_ = j; ; this.cropType_ = 0)
          {
            this.bitField0_ = (0x2 | this.bitField0_);
            break;
          }
        case 32:
        }
        this.clientSupportsWebp_ = paramCodedInputByteBufferNano.readBool();
        this.bitField0_ = (0x4 | this.bitField0_);
      }
    }

    public ImageDownloadRequest setClientSupportsWebp(boolean paramBoolean)
    {
      this.clientSupportsWebp_ = paramBoolean;
      this.bitField0_ = (0x4 | this.bitField0_);
      return this;
    }

    public ImageDownloadRequest setCropType(int paramInt)
    {
      this.cropType_ = paramInt;
      this.bitField0_ = (0x2 | this.bitField0_);
      return this;
    }

    public ImageDownloadRequest setRequestedDimensions(RequestedDimensions paramRequestedDimensions)
    {
      if (paramRequestedDimensions == null)
        throw new NullPointerException();
      this.requestedDimensions_ = paramRequestedDimensions;
      return this;
    }

    public ImageDownloadRequest setUrl(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.url_ = paramString;
      this.bitField0_ = (0x1 | this.bitField0_);
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if ((0x1 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(1, this.url_);
      if (this.requestedDimensions_ != null)
        paramCodedOutputByteBufferNano.writeMessage(2, this.requestedDimensions_);
      if ((0x2 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt32(3, this.cropType_);
      if ((0x4 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeBool(4, this.clientSupportsWebp_);
    }

    public static abstract interface CropType
    {
      public static final int NO_CROP = 0;
      public static final int SMART_CROP = 1;
    }

    public static final class RequestedDimensions extends MessageNano
    {
      public static final RequestedDimensions[] EMPTY_ARRAY = new RequestedDimensions[0];
      private int bitField0_;
      private int heightPixels_ = 0;
      private int widthPixels_ = 0;

      public RequestedDimensions clearHeightPixels()
      {
        this.heightPixels_ = 0;
        this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        return this;
      }

      public RequestedDimensions clearWidthPixels()
      {
        this.widthPixels_ = 0;
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        return this;
      }

      public final boolean equals(Object paramObject)
      {
        if (paramObject == this);
        RequestedDimensions localRequestedDimensions;
        do
        {
          return true;
          if (!(paramObject instanceof RequestedDimensions))
            return false;
          localRequestedDimensions = (RequestedDimensions)paramObject;
        }
        while ((this.widthPixels_ == localRequestedDimensions.widthPixels_) && (this.heightPixels_ == localRequestedDimensions.heightPixels_));
        return false;
      }

      public int getHeightPixels()
      {
        return this.heightPixels_;
      }

      public int getSerializedSize()
      {
        int i = 0x1 & this.bitField0_;
        int j = 0;
        if (i != 0)
          j = 0 + CodedOutputByteBufferNano.computeInt32Size(1, this.widthPixels_);
        if ((0x2 & this.bitField0_) != 0)
          j += CodedOutputByteBufferNano.computeInt32Size(2, this.heightPixels_);
        this.cachedSize = j;
        return j;
      }

      public int getWidthPixels()
      {
        return this.widthPixels_;
      }

      public boolean hasHeightPixels()
      {
        return (0x2 & this.bitField0_) != 0;
      }

      public boolean hasWidthPixels()
      {
        return (0x1 & this.bitField0_) != 0;
      }

      public int hashCode()
      {
        return 31 * (527 + this.widthPixels_) + this.heightPixels_;
      }

      public RequestedDimensions mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
            this.widthPixels_ = paramCodedInputByteBufferNano.readInt32();
            this.bitField0_ = (0x1 | this.bitField0_);
            break;
          case 16:
          }
          this.heightPixels_ = paramCodedInputByteBufferNano.readInt32();
          this.bitField0_ = (0x2 | this.bitField0_);
        }
      }

      public RequestedDimensions parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
        throws IOException
      {
        return new RequestedDimensions().mergeFrom(paramCodedInputByteBufferNano);
      }

      public RequestedDimensions parseFrom(byte[] paramArrayOfByte)
        throws InvalidProtocolBufferNanoException
      {
        return (RequestedDimensions)MessageNano.mergeFrom(new RequestedDimensions(), paramArrayOfByte);
      }

      public RequestedDimensions setHeightPixels(int paramInt)
      {
        this.heightPixels_ = paramInt;
        this.bitField0_ = (0x2 | this.bitField0_);
        return this;
      }

      public RequestedDimensions setWidthPixels(int paramInt)
      {
        this.widthPixels_ = paramInt;
        this.bitField0_ = (0x1 | this.bitField0_);
        return this;
      }

      public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
        throws IOException
      {
        if ((0x1 & this.bitField0_) != 0)
          paramCodedOutputByteBufferNano.writeInt32(1, this.widthPixels_);
        if ((0x2 & this.bitField0_) != 0)
          paramCodedOutputByteBufferNano.writeInt32(2, this.heightPixels_);
      }
    }
  }

  public static final class ImageDownloadResponse extends MessageNano
  {
    public static final ImageDownloadResponse[] EMPTY_ARRAY = new ImageDownloadResponse[0];
    private int bitField0_;
    private byte[] image_ = WireFormatNano.EMPTY_BYTES;
    private int status_ = 0;

    public static ImageDownloadResponse parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new ImageDownloadResponse().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static ImageDownloadResponse parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (ImageDownloadResponse)MessageNano.mergeFrom(new ImageDownloadResponse(), paramArrayOfByte);
    }

    public ImageDownloadResponse clearImage()
    {
      this.image_ = WireFormatNano.EMPTY_BYTES;
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public ImageDownloadResponse clearStatus()
    {
      this.status_ = 0;
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      ImageDownloadResponse localImageDownloadResponse;
      do
      {
        return true;
        if (!(paramObject instanceof ImageDownloadResponse))
          return false;
        localImageDownloadResponse = (ImageDownloadResponse)paramObject;
      }
      while ((Arrays.equals(this.image_, localImageDownloadResponse.image_)) && (this.status_ == localImageDownloadResponse.status_));
      return false;
    }

    public byte[] getImage()
    {
      return this.image_;
    }

    public int getSerializedSize()
    {
      int i = 0x1 & this.bitField0_;
      int j = 0;
      if (i != 0)
        j = 0 + CodedOutputByteBufferNano.computeBytesSize(1, this.image_);
      if ((0x2 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeInt32Size(2, this.status_);
      this.cachedSize = j;
      return j;
    }

    public int getStatus()
    {
      return this.status_;
    }

    public boolean hasImage()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public boolean hasStatus()
    {
      return (0x2 & this.bitField0_) != 0;
    }

    public int hashCode()
    {
      int i = 17;
      if (this.image_ == null)
        i *= 31;
      while (true)
      {
        return i * 31 + this.status_;
        for (int j = 0; j < this.image_.length; j++)
          i = i * 31 + this.image_[j];
      }
    }

    public ImageDownloadResponse mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      while (true)
      {
        int i = paramCodedInputByteBufferNano.readTag();
        switch (i)
        {
        default:
          if (WireFormatNano.parseUnknownField(paramCodedInputByteBufferNano, i));
          break;
        case 0:
          return this;
        case 10:
          this.image_ = paramCodedInputByteBufferNano.readBytes();
          this.bitField0_ = (0x1 | this.bitField0_);
        case 16:
        }
      }
      int j = paramCodedInputByteBufferNano.readInt32();
      if ((j == 0) || (j == 1));
      for (this.status_ = j; ; this.status_ = 0)
      {
        this.bitField0_ = (0x2 | this.bitField0_);
        break;
      }
    }

    public ImageDownloadResponse setImage(byte[] paramArrayOfByte)
    {
      if (paramArrayOfByte == null)
        throw new NullPointerException();
      this.image_ = paramArrayOfByte;
      this.bitField0_ = (0x1 | this.bitField0_);
      return this;
    }

    public ImageDownloadResponse setStatus(int paramInt)
    {
      this.status_ = paramInt;
      this.bitField0_ = (0x2 | this.bitField0_);
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if ((0x1 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeBytes(1, this.image_);
      if ((0x2 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt32(2, this.status_);
    }

    public static abstract interface Status
    {
      public static final int ERROR = 1;
      public static final int SUCCESS;
    }
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.ImageDownloadNano
 * JD-Core Version:    0.6.2
 */