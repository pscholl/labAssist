package com.google.googlex.glass.common.proto;

import com.google.protobuf.nano.CodedInputByteBufferNano;
import com.google.protobuf.nano.CodedOutputByteBufferNano;
import com.google.protobuf.nano.InvalidProtocolBufferNanoException;
import com.google.protobuf.nano.MessageNano;
import com.google.protobuf.nano.WireFormatNano;
import java.io.IOException;
import java.util.Arrays;

public abstract interface SyncNano
{
  public static final class AttachmentGetRequest extends MessageNano
  {
    public static final AttachmentGetRequest[] EMPTY_ARRAY = new AttachmentGetRequest[0];
    private String attachmentId_ = "";
    private int bitField0_;
    private ScreenDimensions screenDimensions_;

    public static AttachmentGetRequest parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new AttachmentGetRequest().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static AttachmentGetRequest parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (AttachmentGetRequest)MessageNano.mergeFrom(new AttachmentGetRequest(), paramArrayOfByte);
    }

    public AttachmentGetRequest clearAttachmentId()
    {
      this.attachmentId_ = "";
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public AttachmentGetRequest clearScreenDimensions()
    {
      this.screenDimensions_ = null;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      AttachmentGetRequest localAttachmentGetRequest;
      do
      {
        return true;
        if (!(paramObject instanceof AttachmentGetRequest))
          return false;
        localAttachmentGetRequest = (AttachmentGetRequest)paramObject;
        if (this.attachmentId_ != null)
          break label51;
        if (localAttachmentGetRequest.attachmentId_ != null)
          break;
        if (this.screenDimensions_ != null)
          break label68;
      }
      while (localAttachmentGetRequest.screenDimensions_ == null);
      label51: label68: 
      while (!this.screenDimensions_.equals(localAttachmentGetRequest.screenDimensions_))
      {
        do
          return false;
        while (!this.attachmentId_.equals(localAttachmentGetRequest.attachmentId_));
        break;
      }
      return true;
    }

    public String getAttachmentId()
    {
      return this.attachmentId_;
    }

    public ScreenDimensions getScreenDimensions()
    {
      return this.screenDimensions_;
    }

    public int getSerializedSize()
    {
      int i = 0x1 & this.bitField0_;
      int j = 0;
      if (i != 0)
        j = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.attachmentId_);
      if (this.screenDimensions_ != null)
        j += CodedOutputByteBufferNano.computeMessageSize(2, this.screenDimensions_);
      this.cachedSize = j;
      return j;
    }

    public boolean hasAttachmentId()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public boolean hasScreenDimensions()
    {
      return this.screenDimensions_ != null;
    }

    public int hashCode()
    {
      int i;
      int j;
      int k;
      if (this.attachmentId_ == null)
      {
        i = 0;
        j = 31 * (i + 527);
        ScreenDimensions localScreenDimensions = this.screenDimensions_;
        k = 0;
        if (localScreenDimensions != null)
          break label46;
      }
      while (true)
      {
        return j + k;
        i = this.attachmentId_.hashCode();
        break;
        label46: k = this.screenDimensions_.hashCode();
      }
    }

    public AttachmentGetRequest mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.attachmentId_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x1 | this.bitField0_);
          break;
        case 18:
        }
        if (this.screenDimensions_ == null)
          this.screenDimensions_ = new ScreenDimensions();
        paramCodedInputByteBufferNano.readMessage(this.screenDimensions_);
      }
    }

    public AttachmentGetRequest setAttachmentId(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.attachmentId_ = paramString;
      this.bitField0_ = (0x1 | this.bitField0_);
      return this;
    }

    public AttachmentGetRequest setScreenDimensions(ScreenDimensions paramScreenDimensions)
    {
      if (paramScreenDimensions == null)
        throw new NullPointerException();
      this.screenDimensions_ = paramScreenDimensions;
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if ((0x1 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(1, this.attachmentId_);
      if (this.screenDimensions_ != null)
        paramCodedOutputByteBufferNano.writeMessage(2, this.screenDimensions_);
    }

    public static final class ScreenDimensions extends MessageNano
    {
      public static final ScreenDimensions[] EMPTY_ARRAY = new ScreenDimensions[0];
      private int bitField0_;
      private int heightPixels_ = 0;
      private int widthPixels_ = 0;

      public ScreenDimensions clearHeightPixels()
      {
        this.heightPixels_ = 0;
        this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        return this;
      }

      public ScreenDimensions clearWidthPixels()
      {
        this.widthPixels_ = 0;
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        return this;
      }

      public final boolean equals(Object paramObject)
      {
        if (paramObject == this);
        ScreenDimensions localScreenDimensions;
        do
        {
          return true;
          if (!(paramObject instanceof ScreenDimensions))
            return false;
          localScreenDimensions = (ScreenDimensions)paramObject;
        }
        while ((this.widthPixels_ == localScreenDimensions.widthPixels_) && (this.heightPixels_ == localScreenDimensions.heightPixels_));
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

      public ScreenDimensions mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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

      public ScreenDimensions parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
        throws IOException
      {
        return new ScreenDimensions().mergeFrom(paramCodedInputByteBufferNano);
      }

      public ScreenDimensions parseFrom(byte[] paramArrayOfByte)
        throws InvalidProtocolBufferNanoException
      {
        return (ScreenDimensions)MessageNano.mergeFrom(new ScreenDimensions(), paramArrayOfByte);
      }

      public ScreenDimensions setHeightPixels(int paramInt)
      {
        this.heightPixels_ = paramInt;
        this.bitField0_ = (0x2 | this.bitField0_);
        return this;
      }

      public ScreenDimensions setWidthPixels(int paramInt)
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

  public static final class AttachmentGetResponse extends MessageNano
  {
    public static final AttachmentGetResponse[] EMPTY_ARRAY = new AttachmentGetResponse[0];
    private int bitField0_;
    private byte[] content_ = WireFormatNano.EMPTY_BYTES;
    private String mimeType_ = "";
    private int responseCode_ = 0;

    public static AttachmentGetResponse parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new AttachmentGetResponse().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static AttachmentGetResponse parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (AttachmentGetResponse)MessageNano.mergeFrom(new AttachmentGetResponse(), paramArrayOfByte);
    }

    public AttachmentGetResponse clearContent()
    {
      this.content_ = WireFormatNano.EMPTY_BYTES;
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      return this;
    }

    public AttachmentGetResponse clearMimeType()
    {
      this.mimeType_ = "";
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      return this;
    }

    public AttachmentGetResponse clearResponseCode()
    {
      this.responseCode_ = 0;
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      while (true)
      {
        return true;
        if (!(paramObject instanceof AttachmentGetResponse))
          return false;
        AttachmentGetResponse localAttachmentGetResponse = (AttachmentGetResponse)paramObject;
        if (this.responseCode_ == localAttachmentGetResponse.responseCode_)
        {
          if (this.mimeType_ != null)
            break label62;
          if (localAttachmentGetResponse.mimeType_ != null);
        }
        while (!Arrays.equals(this.content_, localAttachmentGetResponse.content_))
          label62: 
          do
            return false;
          while (!this.mimeType_.equals(localAttachmentGetResponse.mimeType_));
      }
    }

    public byte[] getContent()
    {
      return this.content_;
    }

    public String getMimeType()
    {
      return this.mimeType_;
    }

    public int getResponseCode()
    {
      return this.responseCode_;
    }

    public int getSerializedSize()
    {
      int i = 0x1 & this.bitField0_;
      int j = 0;
      if (i != 0)
        j = 0 + CodedOutputByteBufferNano.computeInt32Size(1, this.responseCode_);
      if ((0x2 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(2, this.mimeType_);
      if ((0x4 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeBytesSize(3, this.content_);
      this.cachedSize = j;
      return j;
    }

    public boolean hasContent()
    {
      return (0x4 & this.bitField0_) != 0;
    }

    public boolean hasMimeType()
    {
      return (0x2 & this.bitField0_) != 0;
    }

    public boolean hasResponseCode()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public int hashCode()
    {
      int i = 31 * (527 + this.responseCode_);
      int j;
      int k;
      if (this.mimeType_ == null)
      {
        j = 0;
        k = i + j;
        if (this.content_ != null)
          break label50;
        k *= 31;
      }
      while (true)
      {
        return k;
        j = this.mimeType_.hashCode();
        break;
        label50: for (int m = 0; m < this.content_.length; m++)
          k = k * 31 + this.content_[m];
      }
    }

    public AttachmentGetResponse mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          if ((j == 0) || (j == 1));
          for (this.responseCode_ = j; ; this.responseCode_ = 0)
          {
            this.bitField0_ = (0x1 | this.bitField0_);
            break;
          }
        case 18:
          this.mimeType_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x2 | this.bitField0_);
          break;
        case 26:
        }
        this.content_ = paramCodedInputByteBufferNano.readBytes();
        this.bitField0_ = (0x4 | this.bitField0_);
      }
    }

    public AttachmentGetResponse setContent(byte[] paramArrayOfByte)
    {
      if (paramArrayOfByte == null)
        throw new NullPointerException();
      this.content_ = paramArrayOfByte;
      this.bitField0_ = (0x4 | this.bitField0_);
      return this;
    }

    public AttachmentGetResponse setMimeType(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.mimeType_ = paramString;
      this.bitField0_ = (0x2 | this.bitField0_);
      return this;
    }

    public AttachmentGetResponse setResponseCode(int paramInt)
    {
      this.responseCode_ = paramInt;
      this.bitField0_ = (0x1 | this.bitField0_);
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if ((0x1 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt32(1, this.responseCode_);
      if ((0x2 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(2, this.mimeType_);
      if ((0x4 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeBytes(3, this.content_);
    }

    public static abstract interface ResponseCode
    {
      public static final int FAIL = 1;
      public static final int SUCCESS;
    }
  }

  public static final class AttachmentInsertRequest extends MessageNano
  {
    public static final AttachmentInsertRequest[] EMPTY_ARRAY = new AttachmentInsertRequest[0];
    private int bitField0_;
    private byte[] content_ = WireFormatNano.EMPTY_BYTES;
    private long creationTime_ = 0L;
    private String description_ = "";
    private String deviceId_ = "";
    private String mimeType_ = "";
    private String name_ = "";
    private String source_ = "";

    public static AttachmentInsertRequest parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new AttachmentInsertRequest().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static AttachmentInsertRequest parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (AttachmentInsertRequest)MessageNano.mergeFrom(new AttachmentInsertRequest(), paramArrayOfByte);
    }

    public AttachmentInsertRequest clearContent()
    {
      this.content_ = WireFormatNano.EMPTY_BYTES;
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      return this;
    }

    public AttachmentInsertRequest clearCreationTime()
    {
      this.creationTime_ = 0L;
      this.bitField0_ = (0xFFFFFFDF & this.bitField0_);
      return this;
    }

    public AttachmentInsertRequest clearDescription()
    {
      this.description_ = "";
      this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
      return this;
    }

    public AttachmentInsertRequest clearDeviceId()
    {
      this.deviceId_ = "";
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public AttachmentInsertRequest clearMimeType()
    {
      this.mimeType_ = "";
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      return this;
    }

    public AttachmentInsertRequest clearName()
    {
      this.name_ = "";
      this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
      return this;
    }

    public AttachmentInsertRequest clearSource()
    {
      this.source_ = "";
      this.bitField0_ = (0xFFFFFFBF & this.bitField0_);
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      AttachmentInsertRequest localAttachmentInsertRequest;
      label49: label77: label91: 
      do
      {
        return true;
        if (!(paramObject instanceof AttachmentInsertRequest))
          return false;
        localAttachmentInsertRequest = (AttachmentInsertRequest)paramObject;
        if (this.deviceId_ != null)
          break label119;
        if (localAttachmentInsertRequest.deviceId_ != null)
          break;
        if (this.mimeType_ != null)
          break label136;
        if (localAttachmentInsertRequest.mimeType_ != null)
          break;
        if (!Arrays.equals(this.content_, localAttachmentInsertRequest.content_))
          break;
        if (this.description_ != null)
          break label153;
        if (localAttachmentInsertRequest.description_ != null)
          break;
        if (this.name_ != null)
          break label170;
        if (localAttachmentInsertRequest.name_ != null)
          break;
        if (this.creationTime_ != localAttachmentInsertRequest.creationTime_)
          break;
        if (this.source_ != null)
          break label187;
      }
      while (localAttachmentInsertRequest.source_ == null);
      label119: 
      while (!this.source_.equals(localAttachmentInsertRequest.source_))
      {
        do
        {
          do
          {
            do
            {
              do
                return false;
              while (!this.deviceId_.equals(localAttachmentInsertRequest.deviceId_));
              break;
            }
            while (!this.mimeType_.equals(localAttachmentInsertRequest.mimeType_));
            break label49;
          }
          while (!this.description_.equals(localAttachmentInsertRequest.description_));
          break label77;
        }
        while (!this.name_.equals(localAttachmentInsertRequest.name_));
        break label91;
      }
      label136: label153: label170: label187: return true;
    }

    public byte[] getContent()
    {
      return this.content_;
    }

    public long getCreationTime()
    {
      return this.creationTime_;
    }

    public String getDescription()
    {
      return this.description_;
    }

    public String getDeviceId()
    {
      return this.deviceId_;
    }

    public String getMimeType()
    {
      return this.mimeType_;
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
        j = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.deviceId_);
      if ((0x2 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(2, this.mimeType_);
      if ((0x4 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeBytesSize(3, this.content_);
      if ((0x8 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(4, this.description_);
      if ((0x10 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(5, this.name_);
      if ((0x20 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeUInt64Size(6, this.creationTime_);
      if ((0x40 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(7, this.source_);
      this.cachedSize = j;
      return j;
    }

    public String getSource()
    {
      return this.source_;
    }

    public boolean hasContent()
    {
      return (0x4 & this.bitField0_) != 0;
    }

    public boolean hasCreationTime()
    {
      return (0x20 & this.bitField0_) != 0;
    }

    public boolean hasDescription()
    {
      return (0x8 & this.bitField0_) != 0;
    }

    public boolean hasDeviceId()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public boolean hasMimeType()
    {
      return (0x2 & this.bitField0_) != 0;
    }

    public boolean hasName()
    {
      return (0x10 & this.bitField0_) != 0;
    }

    public boolean hasSource()
    {
      return (0x40 & this.bitField0_) != 0;
    }

    public int hashCode()
    {
      int i;
      int k;
      label27: int m;
      label46: int i2;
      label63: int i4;
      label83: int i5;
      int i6;
      if (this.deviceId_ == null)
      {
        i = 0;
        int j = 31 * (i + 527);
        if (this.mimeType_ != null)
          break label141;
        k = 0;
        m = j + k;
        if (this.content_ != null)
          break label152;
        m *= 31;
        int i1 = m * 31;
        if (this.description_ != null)
          break label186;
        i2 = 0;
        int i3 = 31 * (i1 + i2);
        if (this.name_ != null)
          break label198;
        i4 = 0;
        i5 = 31 * (31 * (i3 + i4) + (int)(this.creationTime_ ^ this.creationTime_ >>> 32));
        String str = this.source_;
        i6 = 0;
        if (str != null)
          break label210;
      }
      while (true)
      {
        return i5 + i6;
        i = this.deviceId_.hashCode();
        break;
        label141: k = this.mimeType_.hashCode();
        break label27;
        label152: for (int n = 0; n < this.content_.length; n++)
          m = m * 31 + this.content_[n];
        break label46;
        label186: i2 = this.description_.hashCode();
        break label63;
        label198: i4 = this.name_.hashCode();
        break label83;
        label210: i6 = this.source_.hashCode();
      }
    }

    public AttachmentInsertRequest mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.deviceId_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x1 | this.bitField0_);
          break;
        case 18:
          this.mimeType_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x2 | this.bitField0_);
          break;
        case 26:
          this.content_ = paramCodedInputByteBufferNano.readBytes();
          this.bitField0_ = (0x4 | this.bitField0_);
          break;
        case 34:
          this.description_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x8 | this.bitField0_);
          break;
        case 42:
          this.name_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x10 | this.bitField0_);
          break;
        case 48:
          this.creationTime_ = paramCodedInputByteBufferNano.readUInt64();
          this.bitField0_ = (0x20 | this.bitField0_);
          break;
        case 58:
        }
        this.source_ = paramCodedInputByteBufferNano.readString();
        this.bitField0_ = (0x40 | this.bitField0_);
      }
    }

    public AttachmentInsertRequest setContent(byte[] paramArrayOfByte)
    {
      if (paramArrayOfByte == null)
        throw new NullPointerException();
      this.content_ = paramArrayOfByte;
      this.bitField0_ = (0x4 | this.bitField0_);
      return this;
    }

    public AttachmentInsertRequest setCreationTime(long paramLong)
    {
      this.creationTime_ = paramLong;
      this.bitField0_ = (0x20 | this.bitField0_);
      return this;
    }

    public AttachmentInsertRequest setDescription(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.description_ = paramString;
      this.bitField0_ = (0x8 | this.bitField0_);
      return this;
    }

    public AttachmentInsertRequest setDeviceId(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.deviceId_ = paramString;
      this.bitField0_ = (0x1 | this.bitField0_);
      return this;
    }

    public AttachmentInsertRequest setMimeType(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.mimeType_ = paramString;
      this.bitField0_ = (0x2 | this.bitField0_);
      return this;
    }

    public AttachmentInsertRequest setName(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.name_ = paramString;
      this.bitField0_ = (0x10 | this.bitField0_);
      return this;
    }

    public AttachmentInsertRequest setSource(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.source_ = paramString;
      this.bitField0_ = (0x40 | this.bitField0_);
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if ((0x1 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(1, this.deviceId_);
      if ((0x2 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(2, this.mimeType_);
      if ((0x4 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeBytes(3, this.content_);
      if ((0x8 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(4, this.description_);
      if ((0x10 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(5, this.name_);
      if ((0x20 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeUInt64(6, this.creationTime_);
      if ((0x40 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(7, this.source_);
    }
  }

  public static final class AttachmentInsertResponse extends MessageNano
  {
    public static final AttachmentInsertResponse[] EMPTY_ARRAY = new AttachmentInsertResponse[0];
    private String attachmentId_ = "";
    private int bitField0_;
    private int responseCode_ = 0;

    public static AttachmentInsertResponse parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new AttachmentInsertResponse().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static AttachmentInsertResponse parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (AttachmentInsertResponse)MessageNano.mergeFrom(new AttachmentInsertResponse(), paramArrayOfByte);
    }

    public AttachmentInsertResponse clearAttachmentId()
    {
      this.attachmentId_ = "";
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      return this;
    }

    public AttachmentInsertResponse clearResponseCode()
    {
      this.responseCode_ = 0;
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      AttachmentInsertResponse localAttachmentInsertResponse;
      do
      {
        return true;
        if (!(paramObject instanceof AttachmentInsertResponse))
          return false;
        localAttachmentInsertResponse = (AttachmentInsertResponse)paramObject;
        if (this.responseCode_ != localAttachmentInsertResponse.responseCode_)
          break;
        if (this.attachmentId_ != null)
          break label48;
      }
      while (localAttachmentInsertResponse.attachmentId_ == null);
      label48: 
      while (!this.attachmentId_.equals(localAttachmentInsertResponse.attachmentId_))
        return false;
      return true;
    }

    public String getAttachmentId()
    {
      return this.attachmentId_;
    }

    public int getResponseCode()
    {
      return this.responseCode_;
    }

    public int getSerializedSize()
    {
      int i = 0x1 & this.bitField0_;
      int j = 0;
      if (i != 0)
        j = 0 + CodedOutputByteBufferNano.computeInt32Size(1, this.responseCode_);
      if ((0x2 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(2, this.attachmentId_);
      this.cachedSize = j;
      return j;
    }

    public boolean hasAttachmentId()
    {
      return (0x2 & this.bitField0_) != 0;
    }

    public boolean hasResponseCode()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public int hashCode()
    {
      int i = 31 * (527 + this.responseCode_);
      if (this.attachmentId_ == null);
      for (int j = 0; ; j = this.attachmentId_.hashCode())
        return i + j;
    }

    public AttachmentInsertResponse mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          if ((j == 0) || (j == 1));
          for (this.responseCode_ = j; ; this.responseCode_ = 0)
          {
            this.bitField0_ = (0x1 | this.bitField0_);
            break;
          }
        case 18:
        }
        this.attachmentId_ = paramCodedInputByteBufferNano.readString();
        this.bitField0_ = (0x2 | this.bitField0_);
      }
    }

    public AttachmentInsertResponse setAttachmentId(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.attachmentId_ = paramString;
      this.bitField0_ = (0x2 | this.bitField0_);
      return this;
    }

    public AttachmentInsertResponse setResponseCode(int paramInt)
    {
      this.responseCode_ = paramInt;
      this.bitField0_ = (0x1 | this.bitField0_);
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if ((0x1 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt32(1, this.responseCode_);
      if ((0x2 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(2, this.attachmentId_);
    }

    public static abstract interface ResponseCode
    {
      public static final int FAIL = 1;
      public static final int SUCCESS;
    }
  }

  public static final class Delete extends MessageNano
  {
    public static final Delete[] EMPTY_ARRAY = new Delete[0];
    private int bitField0_;
    private String timelineItemId_ = "";
    public TimelineNano.UserAction[] userAction = TimelineNano.UserAction.EMPTY_ARRAY;

    public static Delete parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new Delete().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static Delete parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (Delete)MessageNano.mergeFrom(new Delete(), paramArrayOfByte);
    }

    public Delete clearTimelineItemId()
    {
      this.timelineItemId_ = "";
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      while (true)
      {
        return true;
        if (!(paramObject instanceof Delete))
          return false;
        Delete localDelete = (Delete)paramObject;
        if (this.timelineItemId_ == null)
          if (localDelete.timelineItemId_ != null);
        while (!Arrays.equals(this.userAction, localDelete.userAction))
          do
            return false;
          while (!this.timelineItemId_.equals(localDelete.timelineItemId_));
      }
    }

    public int getSerializedSize()
    {
      int i = 0x1 & this.bitField0_;
      int j = 0;
      if (i != 0)
        j = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.timelineItemId_);
      if (this.userAction != null)
      {
        TimelineNano.UserAction[] arrayOfUserAction = this.userAction;
        int k = arrayOfUserAction.length;
        for (int m = 0; m < k; m++)
          j += CodedOutputByteBufferNano.computeMessageSize(2, arrayOfUserAction[m]);
      }
      this.cachedSize = j;
      return j;
    }

    public String getTimelineItemId()
    {
      return this.timelineItemId_;
    }

    public boolean hasTimelineItemId()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public int hashCode()
    {
      if (this.timelineItemId_ == null);
      int j;
      for (int i = 0; ; i = this.timelineItemId_.hashCode())
      {
        j = i + 527;
        if (this.userAction != null)
          break;
        j *= 31;
        return j;
      }
      int k = 0;
      label42: int m;
      if (k < this.userAction.length)
      {
        m = j * 31;
        if (this.userAction[k] != null)
          break label81;
      }
      label81: for (int n = 0; ; n = this.userAction[k].hashCode())
      {
        j = m + n;
        k++;
        break label42;
        break;
      }
    }

    public Delete mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.timelineItemId_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x1 | this.bitField0_);
          break;
        case 18:
        }
        int j = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 18);
        if (this.userAction == null);
        for (int k = 0; ; k = this.userAction.length)
        {
          TimelineNano.UserAction[] arrayOfUserAction = new TimelineNano.UserAction[k + j];
          if (this.userAction != null)
            System.arraycopy(this.userAction, 0, arrayOfUserAction, 0, k);
          this.userAction = arrayOfUserAction;
          while (k < -1 + this.userAction.length)
          {
            this.userAction[k] = new TimelineNano.UserAction();
            paramCodedInputByteBufferNano.readMessage(this.userAction[k]);
            paramCodedInputByteBufferNano.readTag();
            k++;
          }
        }
        this.userAction[k] = new TimelineNano.UserAction();
        paramCodedInputByteBufferNano.readMessage(this.userAction[k]);
      }
    }

    public Delete setTimelineItemId(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.timelineItemId_ = paramString;
      this.bitField0_ = (0x1 | this.bitField0_);
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if ((0x1 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(1, this.timelineItemId_);
      if (this.userAction != null)
      {
        TimelineNano.UserAction[] arrayOfUserAction = this.userAction;
        int i = arrayOfUserAction.length;
        for (int j = 0; j < i; j++)
          paramCodedOutputByteBufferNano.writeMessage(2, arrayOfUserAction[j]);
      }
    }
  }

  public static final class InsertReplaceOnConflict extends MessageNano
  {
    public static final InsertReplaceOnConflict[] EMPTY_ARRAY = new InsertReplaceOnConflict[0];
    private TimelineNano.TimelineItem timelineItem_;
    public TimelineNano.UserAction[] userAction = TimelineNano.UserAction.EMPTY_ARRAY;

    public static InsertReplaceOnConflict parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new InsertReplaceOnConflict().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static InsertReplaceOnConflict parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (InsertReplaceOnConflict)MessageNano.mergeFrom(new InsertReplaceOnConflict(), paramArrayOfByte);
    }

    public InsertReplaceOnConflict clearTimelineItem()
    {
      this.timelineItem_ = null;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      while (true)
      {
        return true;
        if (!(paramObject instanceof InsertReplaceOnConflict))
          return false;
        InsertReplaceOnConflict localInsertReplaceOnConflict = (InsertReplaceOnConflict)paramObject;
        if (this.timelineItem_ == null)
          if (localInsertReplaceOnConflict.timelineItem_ != null);
        while (!Arrays.equals(this.userAction, localInsertReplaceOnConflict.userAction))
          do
            return false;
          while (!this.timelineItem_.equals(localInsertReplaceOnConflict.timelineItem_));
      }
    }

    public int getSerializedSize()
    {
      TimelineNano.TimelineItem localTimelineItem = this.timelineItem_;
      int i = 0;
      if (localTimelineItem != null)
        i = 0 + CodedOutputByteBufferNano.computeMessageSize(1, this.timelineItem_);
      if (this.userAction != null)
      {
        TimelineNano.UserAction[] arrayOfUserAction = this.userAction;
        int j = arrayOfUserAction.length;
        for (int k = 0; k < j; k++)
          i += CodedOutputByteBufferNano.computeMessageSize(2, arrayOfUserAction[k]);
      }
      this.cachedSize = i;
      return i;
    }

    public TimelineNano.TimelineItem getTimelineItem()
    {
      return this.timelineItem_;
    }

    public boolean hasTimelineItem()
    {
      return this.timelineItem_ != null;
    }

    public int hashCode()
    {
      if (this.timelineItem_ == null);
      int j;
      for (int i = 0; ; i = this.timelineItem_.hashCode())
      {
        j = i + 527;
        if (this.userAction != null)
          break;
        j *= 31;
        return j;
      }
      int k = 0;
      label42: int m;
      if (k < this.userAction.length)
      {
        m = j * 31;
        if (this.userAction[k] != null)
          break label81;
      }
      label81: for (int n = 0; ; n = this.userAction[k].hashCode())
      {
        j = m + n;
        k++;
        break label42;
        break;
      }
    }

    public InsertReplaceOnConflict mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          if (this.timelineItem_ == null)
            this.timelineItem_ = new TimelineNano.TimelineItem();
          paramCodedInputByteBufferNano.readMessage(this.timelineItem_);
          break;
        case 18:
        }
        int j = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 18);
        if (this.userAction == null);
        for (int k = 0; ; k = this.userAction.length)
        {
          TimelineNano.UserAction[] arrayOfUserAction = new TimelineNano.UserAction[k + j];
          if (this.userAction != null)
            System.arraycopy(this.userAction, 0, arrayOfUserAction, 0, k);
          this.userAction = arrayOfUserAction;
          while (k < -1 + this.userAction.length)
          {
            this.userAction[k] = new TimelineNano.UserAction();
            paramCodedInputByteBufferNano.readMessage(this.userAction[k]);
            paramCodedInputByteBufferNano.readTag();
            k++;
          }
        }
        this.userAction[k] = new TimelineNano.UserAction();
        paramCodedInputByteBufferNano.readMessage(this.userAction[k]);
      }
    }

    public InsertReplaceOnConflict setTimelineItem(TimelineNano.TimelineItem paramTimelineItem)
    {
      if (paramTimelineItem == null)
        throw new NullPointerException();
      this.timelineItem_ = paramTimelineItem;
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.timelineItem_ != null)
        paramCodedOutputByteBufferNano.writeMessage(1, this.timelineItem_);
      if (this.userAction != null)
      {
        TimelineNano.UserAction[] arrayOfUserAction = this.userAction;
        int i = arrayOfUserAction.length;
        for (int j = 0; j < i; j++)
          paramCodedOutputByteBufferNano.writeMessage(2, arrayOfUserAction[j]);
      }
    }
  }

  public static final class Select extends MessageNano
  {
    public static final Select[] EMPTY_ARRAY = new Select[0];
    private int bitField0_;
    private byte[] continuationToken_ = WireFormatNano.EMPTY_BYTES;
    private int maxItems_ = 10;
    private long modifiedAfterTime_ = 0L;
    private long modifiedBeforeTime_ = 0L;
    private long startTime_ = 0L;
    private long writeAfterTime_ = 0L;
    private long writeBeforeTime_ = 0L;

    public static Select parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new Select().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static Select parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (Select)MessageNano.mergeFrom(new Select(), paramArrayOfByte);
    }

    public Select clearContinuationToken()
    {
      this.continuationToken_ = WireFormatNano.EMPTY_BYTES;
      this.bitField0_ = (0xFFFFFFBF & this.bitField0_);
      return this;
    }

    public Select clearMaxItems()
    {
      this.maxItems_ = 10;
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public Select clearModifiedAfterTime()
    {
      this.modifiedAfterTime_ = 0L;
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      return this;
    }

    public Select clearModifiedBeforeTime()
    {
      this.modifiedBeforeTime_ = 0L;
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      return this;
    }

    public Select clearStartTime()
    {
      this.startTime_ = 0L;
      this.bitField0_ = (0xFFFFFFDF & this.bitField0_);
      return this;
    }

    public Select clearWriteAfterTime()
    {
      this.writeAfterTime_ = 0L;
      this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
      return this;
    }

    public Select clearWriteBeforeTime()
    {
      this.writeBeforeTime_ = 0L;
      this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      Select localSelect;
      do
      {
        return true;
        if (!(paramObject instanceof Select))
          return false;
        localSelect = (Select)paramObject;
      }
      while ((this.maxItems_ == localSelect.maxItems_) && (this.modifiedAfterTime_ == localSelect.modifiedAfterTime_) && (this.modifiedBeforeTime_ == localSelect.modifiedBeforeTime_) && (this.writeAfterTime_ == localSelect.writeAfterTime_) && (this.writeBeforeTime_ == localSelect.writeBeforeTime_) && (this.startTime_ == localSelect.startTime_) && (Arrays.equals(this.continuationToken_, localSelect.continuationToken_)));
      return false;
    }

    public byte[] getContinuationToken()
    {
      return this.continuationToken_;
    }

    public int getMaxItems()
    {
      return this.maxItems_;
    }

    public long getModifiedAfterTime()
    {
      return this.modifiedAfterTime_;
    }

    public long getModifiedBeforeTime()
    {
      return this.modifiedBeforeTime_;
    }

    public int getSerializedSize()
    {
      int i = 0x1 & this.bitField0_;
      int j = 0;
      if (i != 0)
        j = 0 + CodedOutputByteBufferNano.computeUInt32Size(1, this.maxItems_);
      if ((0x8 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeUInt64Size(2, this.writeAfterTime_);
      if ((0x10 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeUInt64Size(3, this.writeBeforeTime_);
      if ((0x40 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeBytesSize(4, this.continuationToken_);
      if ((0x2 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeUInt64Size(7, this.modifiedAfterTime_);
      if ((0x4 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeUInt64Size(8, this.modifiedBeforeTime_);
      if ((0x20 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeUInt64Size(9, this.startTime_);
      this.cachedSize = j;
      return j;
    }

    public long getStartTime()
    {
      return this.startTime_;
    }

    public long getWriteAfterTime()
    {
      return this.writeAfterTime_;
    }

    public long getWriteBeforeTime()
    {
      return this.writeBeforeTime_;
    }

    public boolean hasContinuationToken()
    {
      return (0x40 & this.bitField0_) != 0;
    }

    public boolean hasMaxItems()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public boolean hasModifiedAfterTime()
    {
      return (0x2 & this.bitField0_) != 0;
    }

    public boolean hasModifiedBeforeTime()
    {
      return (0x4 & this.bitField0_) != 0;
    }

    public boolean hasStartTime()
    {
      return (0x20 & this.bitField0_) != 0;
    }

    public boolean hasWriteAfterTime()
    {
      return (0x8 & this.bitField0_) != 0;
    }

    public boolean hasWriteBeforeTime()
    {
      return (0x10 & this.bitField0_) != 0;
    }

    public int hashCode()
    {
      int i = 31 * (31 * (31 * (31 * (31 * (527 + this.maxItems_) + (int)(this.modifiedAfterTime_ ^ this.modifiedAfterTime_ >>> 32)) + (int)(this.modifiedBeforeTime_ ^ this.modifiedBeforeTime_ >>> 32)) + (int)(this.writeAfterTime_ ^ this.writeAfterTime_ >>> 32)) + (int)(this.writeBeforeTime_ ^ this.writeBeforeTime_ >>> 32)) + (int)(this.startTime_ ^ this.startTime_ >>> 32);
      if (this.continuationToken_ == null)
        i *= 31;
      while (true)
      {
        return i;
        for (int j = 0; j < this.continuationToken_.length; j++)
          i = i * 31 + this.continuationToken_[j];
      }
    }

    public Select mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.maxItems_ = paramCodedInputByteBufferNano.readUInt32();
          this.bitField0_ = (0x1 | this.bitField0_);
          break;
        case 16:
          this.writeAfterTime_ = paramCodedInputByteBufferNano.readUInt64();
          this.bitField0_ = (0x8 | this.bitField0_);
          break;
        case 24:
          this.writeBeforeTime_ = paramCodedInputByteBufferNano.readUInt64();
          this.bitField0_ = (0x10 | this.bitField0_);
          break;
        case 34:
          this.continuationToken_ = paramCodedInputByteBufferNano.readBytes();
          this.bitField0_ = (0x40 | this.bitField0_);
          break;
        case 56:
          this.modifiedAfterTime_ = paramCodedInputByteBufferNano.readUInt64();
          this.bitField0_ = (0x2 | this.bitField0_);
          break;
        case 64:
          this.modifiedBeforeTime_ = paramCodedInputByteBufferNano.readUInt64();
          this.bitField0_ = (0x4 | this.bitField0_);
          break;
        case 72:
        }
        this.startTime_ = paramCodedInputByteBufferNano.readUInt64();
        this.bitField0_ = (0x20 | this.bitField0_);
      }
    }

    public Select setContinuationToken(byte[] paramArrayOfByte)
    {
      if (paramArrayOfByte == null)
        throw new NullPointerException();
      this.continuationToken_ = paramArrayOfByte;
      this.bitField0_ = (0x40 | this.bitField0_);
      return this;
    }

    public Select setMaxItems(int paramInt)
    {
      this.maxItems_ = paramInt;
      this.bitField0_ = (0x1 | this.bitField0_);
      return this;
    }

    public Select setModifiedAfterTime(long paramLong)
    {
      this.modifiedAfterTime_ = paramLong;
      this.bitField0_ = (0x2 | this.bitField0_);
      return this;
    }

    public Select setModifiedBeforeTime(long paramLong)
    {
      this.modifiedBeforeTime_ = paramLong;
      this.bitField0_ = (0x4 | this.bitField0_);
      return this;
    }

    public Select setStartTime(long paramLong)
    {
      this.startTime_ = paramLong;
      this.bitField0_ = (0x20 | this.bitField0_);
      return this;
    }

    public Select setWriteAfterTime(long paramLong)
    {
      this.writeAfterTime_ = paramLong;
      this.bitField0_ = (0x8 | this.bitField0_);
      return this;
    }

    public Select setWriteBeforeTime(long paramLong)
    {
      this.writeBeforeTime_ = paramLong;
      this.bitField0_ = (0x10 | this.bitField0_);
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if ((0x1 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeUInt32(1, this.maxItems_);
      if ((0x8 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeUInt64(2, this.writeAfterTime_);
      if ((0x10 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeUInt64(3, this.writeBeforeTime_);
      if ((0x40 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeBytes(4, this.continuationToken_);
      if ((0x2 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeUInt64(7, this.modifiedAfterTime_);
      if ((0x4 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeUInt64(8, this.modifiedBeforeTime_);
      if ((0x20 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeUInt64(9, this.startTime_);
    }
  }

  public static final class SyncRequest extends MessageNano
  {
    public static final SyncRequest[] EMPTY_ARRAY = new SyncRequest[0];
    public SyncNano.Delete[] delete = SyncNano.Delete.EMPTY_ARRAY;
    public String deviceId = "";
    public SyncNano.InsertReplaceOnConflict[] insertReplaceOnConflict = SyncNano.InsertReplaceOnConflict.EMPTY_ARRAY;
    private SyncNano.Select select_;
    public SyncNano.Update[] update = SyncNano.Update.EMPTY_ARRAY;

    public static SyncRequest parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new SyncRequest().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static SyncRequest parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (SyncRequest)MessageNano.mergeFrom(new SyncRequest(), paramArrayOfByte);
    }

    public SyncRequest clearSelect()
    {
      this.select_ = null;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      SyncRequest localSyncRequest;
      do
      {
        return true;
        if (!(paramObject instanceof SyncRequest))
          return false;
        localSyncRequest = (SyncRequest)paramObject;
        if (this.select_ != null)
          break label93;
        if (localSyncRequest.select_ != null)
          break;
        if ((!Arrays.equals(this.insertReplaceOnConflict, localSyncRequest.insertReplaceOnConflict)) || (!Arrays.equals(this.update, localSyncRequest.update)) || (!Arrays.equals(this.delete, localSyncRequest.delete)))
          break;
        if (this.deviceId != null)
          break label110;
      }
      while (localSyncRequest.deviceId == null);
      label93: label110: 
      while (!this.deviceId.equals(localSyncRequest.deviceId))
      {
        do
          return false;
        while (!this.select_.equals(localSyncRequest.select_));
        break;
      }
      return true;
    }

    public SyncNano.Select getSelect()
    {
      return this.select_;
    }

    public int getSerializedSize()
    {
      SyncNano.Select localSelect = this.select_;
      int i = 0;
      if (localSelect != null)
        i = 0 + CodedOutputByteBufferNano.computeMessageSize(1, this.select_);
      if (this.insertReplaceOnConflict != null)
      {
        SyncNano.InsertReplaceOnConflict[] arrayOfInsertReplaceOnConflict = this.insertReplaceOnConflict;
        int i2 = arrayOfInsertReplaceOnConflict.length;
        for (int i3 = 0; i3 < i2; i3++)
          i += CodedOutputByteBufferNano.computeMessageSize(2, arrayOfInsertReplaceOnConflict[i3]);
      }
      if (this.update != null)
      {
        SyncNano.Update[] arrayOfUpdate = this.update;
        int n = arrayOfUpdate.length;
        for (int i1 = 0; i1 < n; i1++)
          i += CodedOutputByteBufferNano.computeMessageSize(3, arrayOfUpdate[i1]);
      }
      if (this.delete != null)
      {
        SyncNano.Delete[] arrayOfDelete = this.delete;
        int k = arrayOfDelete.length;
        for (int m = 0; m < k; m++)
          i += CodedOutputByteBufferNano.computeMessageSize(4, arrayOfDelete[m]);
      }
      int j = i + CodedOutputByteBufferNano.computeStringSize(5, this.deviceId);
      this.cachedSize = j;
      return j;
    }

    public boolean hasSelect()
    {
      return this.select_ != null;
    }

    public int hashCode()
    {
      int i;
      int j;
      int i7;
      int i8;
      if (this.select_ == null)
      {
        i = 0;
        j = i + 527;
        if (this.insertReplaceOnConflict != null)
          break label88;
        j *= 31;
        if (this.update != null)
          break label143;
        j *= 31;
        if (this.delete != null)
          break label202;
        j *= 31;
        i7 = j * 31;
        String str = this.deviceId;
        i8 = 0;
        if (str != null)
          break label261;
      }
      while (true)
      {
        return i7 + i8;
        i = this.select_.hashCode();
        break;
        label88: int k = 0;
        label90: int m;
        if (k < this.insertReplaceOnConflict.length)
        {
          m = j * 31;
          if (this.insertReplaceOnConflict[k] != null)
            break label129;
        }
        label129: for (int n = 0; ; n = this.insertReplaceOnConflict[k].hashCode())
        {
          j = m + n;
          k++;
          break label90;
          break;
        }
        label143: int i1 = 0;
        label146: int i2;
        if (i1 < this.update.length)
        {
          i2 = j * 31;
          if (this.update[i1] != null)
            break label187;
        }
        label187: for (int i3 = 0; ; i3 = this.update[i1].hashCode())
        {
          j = i2 + i3;
          i1++;
          break label146;
          break;
        }
        label202: int i4 = 0;
        label205: int i5;
        if (i4 < this.delete.length)
        {
          i5 = j * 31;
          if (this.delete[i4] != null)
            break label246;
        }
        label246: for (int i6 = 0; ; i6 = this.delete[i4].hashCode())
        {
          j = i5 + i6;
          i4++;
          break label205;
          break;
        }
        label261: i8 = this.deviceId.hashCode();
      }
    }

    public SyncRequest mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          if (this.select_ == null)
            this.select_ = new SyncNano.Select();
          paramCodedInputByteBufferNano.readMessage(this.select_);
          break;
        case 18:
          int i1 = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 18);
          if (this.insertReplaceOnConflict == null);
          for (int i2 = 0; ; i2 = this.insertReplaceOnConflict.length)
          {
            SyncNano.InsertReplaceOnConflict[] arrayOfInsertReplaceOnConflict = new SyncNano.InsertReplaceOnConflict[i2 + i1];
            if (this.insertReplaceOnConflict != null)
              System.arraycopy(this.insertReplaceOnConflict, 0, arrayOfInsertReplaceOnConflict, 0, i2);
            this.insertReplaceOnConflict = arrayOfInsertReplaceOnConflict;
            while (i2 < -1 + this.insertReplaceOnConflict.length)
            {
              this.insertReplaceOnConflict[i2] = new SyncNano.InsertReplaceOnConflict();
              paramCodedInputByteBufferNano.readMessage(this.insertReplaceOnConflict[i2]);
              paramCodedInputByteBufferNano.readTag();
              i2++;
            }
          }
          this.insertReplaceOnConflict[i2] = new SyncNano.InsertReplaceOnConflict();
          paramCodedInputByteBufferNano.readMessage(this.insertReplaceOnConflict[i2]);
          break;
        case 26:
          int m = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 26);
          if (this.update == null);
          for (int n = 0; ; n = this.update.length)
          {
            SyncNano.Update[] arrayOfUpdate = new SyncNano.Update[n + m];
            if (this.update != null)
              System.arraycopy(this.update, 0, arrayOfUpdate, 0, n);
            this.update = arrayOfUpdate;
            while (n < -1 + this.update.length)
            {
              this.update[n] = new SyncNano.Update();
              paramCodedInputByteBufferNano.readMessage(this.update[n]);
              paramCodedInputByteBufferNano.readTag();
              n++;
            }
          }
          this.update[n] = new SyncNano.Update();
          paramCodedInputByteBufferNano.readMessage(this.update[n]);
          break;
        case 34:
          int j = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 34);
          if (this.delete == null);
          for (int k = 0; ; k = this.delete.length)
          {
            SyncNano.Delete[] arrayOfDelete = new SyncNano.Delete[k + j];
            if (this.delete != null)
              System.arraycopy(this.delete, 0, arrayOfDelete, 0, k);
            this.delete = arrayOfDelete;
            while (k < -1 + this.delete.length)
            {
              this.delete[k] = new SyncNano.Delete();
              paramCodedInputByteBufferNano.readMessage(this.delete[k]);
              paramCodedInputByteBufferNano.readTag();
              k++;
            }
          }
          this.delete[k] = new SyncNano.Delete();
          paramCodedInputByteBufferNano.readMessage(this.delete[k]);
          break;
        case 42:
        }
        this.deviceId = paramCodedInputByteBufferNano.readString();
      }
    }

    public SyncRequest setSelect(SyncNano.Select paramSelect)
    {
      if (paramSelect == null)
        throw new NullPointerException();
      this.select_ = paramSelect;
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.select_ != null)
        paramCodedOutputByteBufferNano.writeMessage(1, this.select_);
      if (this.insertReplaceOnConflict != null)
      {
        SyncNano.InsertReplaceOnConflict[] arrayOfInsertReplaceOnConflict = this.insertReplaceOnConflict;
        int n = arrayOfInsertReplaceOnConflict.length;
        for (int i1 = 0; i1 < n; i1++)
          paramCodedOutputByteBufferNano.writeMessage(2, arrayOfInsertReplaceOnConflict[i1]);
      }
      if (this.update != null)
      {
        SyncNano.Update[] arrayOfUpdate = this.update;
        int k = arrayOfUpdate.length;
        for (int m = 0; m < k; m++)
          paramCodedOutputByteBufferNano.writeMessage(3, arrayOfUpdate[m]);
      }
      if (this.delete != null)
      {
        SyncNano.Delete[] arrayOfDelete = this.delete;
        int i = arrayOfDelete.length;
        for (int j = 0; j < i; j++)
          paramCodedOutputByteBufferNano.writeMessage(4, arrayOfDelete[j]);
      }
      paramCodedOutputByteBufferNano.writeString(5, this.deviceId);
    }
  }

  public static final class SyncResponse extends MessageNano
  {
    public static final SyncResponse[] EMPTY_ARRAY = new SyncResponse[0];
    private int bitField0_;
    public String[] deleteFailedItemIds = WireFormatNano.EMPTY_STRING_ARRAY;
    public String[] insertFailedItemIds = WireFormatNano.EMPTY_STRING_ARRAY;
    public int responseCode = 0;
    private byte[] selectContinuationToken_ = WireFormatNano.EMPTY_BYTES;
    private long selectMaxWriteTimestamp_ = 0L;
    private long selectStartTime_ = 0L;
    public TimelineNano.TimelineItem[] selectedItems = TimelineNano.TimelineItem.EMPTY_ARRAY;
    private byte[] syncContinuationToken_ = WireFormatNano.EMPTY_BYTES;
    private long syncEndTime_ = 0L;
    private long syncStartTime_ = 0L;
    public String[] updateFailedItemIds = WireFormatNano.EMPTY_STRING_ARRAY;

    public static SyncResponse parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new SyncResponse().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static SyncResponse parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (SyncResponse)MessageNano.mergeFrom(new SyncResponse(), paramArrayOfByte);
    }

    public SyncResponse clearSelectContinuationToken()
    {
      this.selectContinuationToken_ = WireFormatNano.EMPTY_BYTES;
      this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
      return this;
    }

    public SyncResponse clearSelectMaxWriteTimestamp()
    {
      this.selectMaxWriteTimestamp_ = 0L;
      this.bitField0_ = (0xFFFFFFDF & this.bitField0_);
      return this;
    }

    public SyncResponse clearSelectStartTime()
    {
      this.selectStartTime_ = 0L;
      this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
      return this;
    }

    public SyncResponse clearSyncContinuationToken()
    {
      this.syncContinuationToken_ = WireFormatNano.EMPTY_BYTES;
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      return this;
    }

    public SyncResponse clearSyncEndTime()
    {
      this.syncEndTime_ = 0L;
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      return this;
    }

    public SyncResponse clearSyncStartTime()
    {
      this.syncStartTime_ = 0L;
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      SyncResponse localSyncResponse;
      do
      {
        return true;
        if (!(paramObject instanceof SyncResponse))
          return false;
        localSyncResponse = (SyncResponse)paramObject;
      }
      while ((this.responseCode == localSyncResponse.responseCode) && (Arrays.equals(this.selectedItems, localSyncResponse.selectedItems)) && (Arrays.equals(this.insertFailedItemIds, localSyncResponse.insertFailedItemIds)) && (Arrays.equals(this.updateFailedItemIds, localSyncResponse.updateFailedItemIds)) && (Arrays.equals(this.deleteFailedItemIds, localSyncResponse.deleteFailedItemIds)) && (this.syncStartTime_ == localSyncResponse.syncStartTime_) && (this.syncEndTime_ == localSyncResponse.syncEndTime_) && (Arrays.equals(this.syncContinuationToken_, localSyncResponse.syncContinuationToken_)) && (this.selectStartTime_ == localSyncResponse.selectStartTime_) && (Arrays.equals(this.selectContinuationToken_, localSyncResponse.selectContinuationToken_)) && (this.selectMaxWriteTimestamp_ == localSyncResponse.selectMaxWriteTimestamp_));
      return false;
    }

    public byte[] getSelectContinuationToken()
    {
      return this.selectContinuationToken_;
    }

    public long getSelectMaxWriteTimestamp()
    {
      return this.selectMaxWriteTimestamp_;
    }

    public long getSelectStartTime()
    {
      return this.selectStartTime_;
    }

    public int getSerializedSize()
    {
      int i = 0 + CodedOutputByteBufferNano.computeInt32Size(1, this.responseCode);
      if (this.selectedItems != null)
      {
        TimelineNano.TimelineItem[] arrayOfTimelineItem = this.selectedItems;
        int i6 = arrayOfTimelineItem.length;
        for (int i7 = 0; i7 < i6; i7++)
          i += CodedOutputByteBufferNano.computeMessageSize(2, arrayOfTimelineItem[i7]);
      }
      if ((this.insertFailedItemIds != null) && (this.insertFailedItemIds.length > 0))
      {
        int i3 = 0;
        String[] arrayOfString3 = this.insertFailedItemIds;
        int i4 = arrayOfString3.length;
        for (int i5 = 0; i5 < i4; i5++)
          i3 += CodedOutputByteBufferNano.computeStringSizeNoTag(arrayOfString3[i5]);
        i = i + i3 + 1 * this.insertFailedItemIds.length;
      }
      if ((this.updateFailedItemIds != null) && (this.updateFailedItemIds.length > 0))
      {
        int n = 0;
        String[] arrayOfString2 = this.updateFailedItemIds;
        int i1 = arrayOfString2.length;
        for (int i2 = 0; i2 < i1; i2++)
          n += CodedOutputByteBufferNano.computeStringSizeNoTag(arrayOfString2[i2]);
        i = i + n + 1 * this.updateFailedItemIds.length;
      }
      if ((this.deleteFailedItemIds != null) && (this.deleteFailedItemIds.length > 0))
      {
        int j = 0;
        String[] arrayOfString1 = this.deleteFailedItemIds;
        int k = arrayOfString1.length;
        for (int m = 0; m < k; m++)
          j += CodedOutputByteBufferNano.computeStringSizeNoTag(arrayOfString1[m]);
        i = i + j + 1 * this.deleteFailedItemIds.length;
      }
      if ((0x1 & this.bitField0_) != 0)
        i += CodedOutputByteBufferNano.computeUInt64Size(6, this.syncStartTime_);
      if ((0x2 & this.bitField0_) != 0)
        i += CodedOutputByteBufferNano.computeUInt64Size(7, this.syncEndTime_);
      if ((0x4 & this.bitField0_) != 0)
        i += CodedOutputByteBufferNano.computeBytesSize(8, this.syncContinuationToken_);
      if ((0x8 & this.bitField0_) != 0)
        i += CodedOutputByteBufferNano.computeUInt64Size(9, this.selectStartTime_);
      if ((0x10 & this.bitField0_) != 0)
        i += CodedOutputByteBufferNano.computeBytesSize(10, this.selectContinuationToken_);
      if ((0x20 & this.bitField0_) != 0)
        i += CodedOutputByteBufferNano.computeUInt64Size(11, this.selectMaxWriteTimestamp_);
      this.cachedSize = i;
      return i;
    }

    public byte[] getSyncContinuationToken()
    {
      return this.syncContinuationToken_;
    }

    public long getSyncEndTime()
    {
      return this.syncEndTime_;
    }

    public long getSyncStartTime()
    {
      return this.syncStartTime_;
    }

    public boolean hasSelectContinuationToken()
    {
      return (0x10 & this.bitField0_) != 0;
    }

    public boolean hasSelectMaxWriteTimestamp()
    {
      return (0x20 & this.bitField0_) != 0;
    }

    public boolean hasSelectStartTime()
    {
      return (0x8 & this.bitField0_) != 0;
    }

    public boolean hasSyncContinuationToken()
    {
      return (0x4 & this.bitField0_) != 0;
    }

    public boolean hasSyncEndTime()
    {
      return (0x2 & this.bitField0_) != 0;
    }

    public boolean hasSyncStartTime()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public int hashCode()
    {
      int i = 527 + this.responseCode;
      int i9;
      label108: int i11;
      if (this.selectedItems == null)
      {
        i *= 31;
        if (this.insertFailedItemIds != null)
          break label216;
        i *= 31;
        if (this.updateFailedItemIds != null)
          break label275;
        i *= 31;
        if (this.deleteFailedItemIds != null)
          break label334;
        i *= 31;
        i9 = 31 * (i * 31 + (int)(this.syncStartTime_ ^ this.syncStartTime_ >>> 32)) + (int)(this.syncEndTime_ ^ this.syncEndTime_ >>> 32);
        if (this.syncContinuationToken_ != null)
          break label393;
        i9 *= 31;
        i11 = i9 * 31 + (int)(this.selectStartTime_ ^ this.selectStartTime_ >>> 32);
        if (this.selectContinuationToken_ != null)
          break label427;
        i11 *= 31;
      }
      while (true)
      {
        return i11 * 31 + (int)(this.selectMaxWriteTimestamp_ ^ this.selectMaxWriteTimestamp_ >>> 32);
        int j = 0;
        label165: int k;
        if (j < this.selectedItems.length)
        {
          k = i * 31;
          if (this.selectedItems[j] != null)
            break label202;
        }
        label202: for (int m = 0; ; m = this.selectedItems[j].hashCode())
        {
          i = k + m;
          j++;
          break label165;
          break;
        }
        label216: int n = 0;
        label219: int i1;
        if (n < this.insertFailedItemIds.length)
        {
          i1 = i * 31;
          if (this.insertFailedItemIds[n] != null)
            break label260;
        }
        label260: for (int i2 = 0; ; i2 = this.insertFailedItemIds[n].hashCode())
        {
          i = i1 + i2;
          n++;
          break label219;
          break;
        }
        label275: int i3 = 0;
        label278: int i4;
        if (i3 < this.updateFailedItemIds.length)
        {
          i4 = i * 31;
          if (this.updateFailedItemIds[i3] != null)
            break label319;
        }
        label319: for (int i5 = 0; ; i5 = this.updateFailedItemIds[i3].hashCode())
        {
          i = i4 + i5;
          i3++;
          break label278;
          break;
        }
        label334: int i6 = 0;
        label337: int i7;
        if (i6 < this.deleteFailedItemIds.length)
        {
          i7 = i * 31;
          if (this.deleteFailedItemIds[i6] != null)
            break label378;
        }
        label378: for (int i8 = 0; ; i8 = this.deleteFailedItemIds[i6].hashCode())
        {
          i = i7 + i8;
          i6++;
          break label337;
          break;
        }
        label393: for (int i10 = 0; i10 < this.syncContinuationToken_.length; i10++)
          i9 = i9 * 31 + this.syncContinuationToken_[i10];
        break label108;
        label427: for (int i12 = 0; i12 < this.selectContinuationToken_.length; i12++)
          i11 = i11 * 31 + this.selectContinuationToken_[i12];
      }
    }

    public SyncResponse mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          int i5 = paramCodedInputByteBufferNano.readInt32();
          if (i5 == 0)
          {
            this.responseCode = i5;
            continue;
          }
          this.responseCode = 0;
          break;
        case 18:
          int i3 = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 18);
          if (this.selectedItems == null);
          for (int i4 = 0; ; i4 = this.selectedItems.length)
          {
            TimelineNano.TimelineItem[] arrayOfTimelineItem = new TimelineNano.TimelineItem[i4 + i3];
            if (this.selectedItems != null)
              System.arraycopy(this.selectedItems, 0, arrayOfTimelineItem, 0, i4);
            this.selectedItems = arrayOfTimelineItem;
            while (i4 < -1 + this.selectedItems.length)
            {
              this.selectedItems[i4] = new TimelineNano.TimelineItem();
              paramCodedInputByteBufferNano.readMessage(this.selectedItems[i4]);
              paramCodedInputByteBufferNano.readTag();
              i4++;
            }
          }
          this.selectedItems[i4] = new TimelineNano.TimelineItem();
          paramCodedInputByteBufferNano.readMessage(this.selectedItems[i4]);
          break;
        case 26:
          int i1 = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 26);
          int i2 = this.insertFailedItemIds.length;
          String[] arrayOfString3 = new String[i2 + i1];
          System.arraycopy(this.insertFailedItemIds, 0, arrayOfString3, 0, i2);
          this.insertFailedItemIds = arrayOfString3;
          while (i2 < -1 + this.insertFailedItemIds.length)
          {
            this.insertFailedItemIds[i2] = paramCodedInputByteBufferNano.readString();
            paramCodedInputByteBufferNano.readTag();
            i2++;
          }
          this.insertFailedItemIds[i2] = paramCodedInputByteBufferNano.readString();
          break;
        case 34:
          int m = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 34);
          int n = this.updateFailedItemIds.length;
          String[] arrayOfString2 = new String[n + m];
          System.arraycopy(this.updateFailedItemIds, 0, arrayOfString2, 0, n);
          this.updateFailedItemIds = arrayOfString2;
          while (n < -1 + this.updateFailedItemIds.length)
          {
            this.updateFailedItemIds[n] = paramCodedInputByteBufferNano.readString();
            paramCodedInputByteBufferNano.readTag();
            n++;
          }
          this.updateFailedItemIds[n] = paramCodedInputByteBufferNano.readString();
          break;
        case 42:
          int j = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 42);
          int k = this.deleteFailedItemIds.length;
          String[] arrayOfString1 = new String[k + j];
          System.arraycopy(this.deleteFailedItemIds, 0, arrayOfString1, 0, k);
          this.deleteFailedItemIds = arrayOfString1;
          while (k < -1 + this.deleteFailedItemIds.length)
          {
            this.deleteFailedItemIds[k] = paramCodedInputByteBufferNano.readString();
            paramCodedInputByteBufferNano.readTag();
            k++;
          }
          this.deleteFailedItemIds[k] = paramCodedInputByteBufferNano.readString();
          break;
        case 48:
          this.syncStartTime_ = paramCodedInputByteBufferNano.readUInt64();
          this.bitField0_ = (0x1 | this.bitField0_);
          break;
        case 56:
          this.syncEndTime_ = paramCodedInputByteBufferNano.readUInt64();
          this.bitField0_ = (0x2 | this.bitField0_);
          break;
        case 66:
          this.syncContinuationToken_ = paramCodedInputByteBufferNano.readBytes();
          this.bitField0_ = (0x4 | this.bitField0_);
          break;
        case 72:
          this.selectStartTime_ = paramCodedInputByteBufferNano.readUInt64();
          this.bitField0_ = (0x8 | this.bitField0_);
          break;
        case 82:
          this.selectContinuationToken_ = paramCodedInputByteBufferNano.readBytes();
          this.bitField0_ = (0x10 | this.bitField0_);
          break;
        case 88:
        }
        this.selectMaxWriteTimestamp_ = paramCodedInputByteBufferNano.readUInt64();
        this.bitField0_ = (0x20 | this.bitField0_);
      }
    }

    public SyncResponse setSelectContinuationToken(byte[] paramArrayOfByte)
    {
      if (paramArrayOfByte == null)
        throw new NullPointerException();
      this.selectContinuationToken_ = paramArrayOfByte;
      this.bitField0_ = (0x10 | this.bitField0_);
      return this;
    }

    public SyncResponse setSelectMaxWriteTimestamp(long paramLong)
    {
      this.selectMaxWriteTimestamp_ = paramLong;
      this.bitField0_ = (0x20 | this.bitField0_);
      return this;
    }

    public SyncResponse setSelectStartTime(long paramLong)
    {
      this.selectStartTime_ = paramLong;
      this.bitField0_ = (0x8 | this.bitField0_);
      return this;
    }

    public SyncResponse setSyncContinuationToken(byte[] paramArrayOfByte)
    {
      if (paramArrayOfByte == null)
        throw new NullPointerException();
      this.syncContinuationToken_ = paramArrayOfByte;
      this.bitField0_ = (0x4 | this.bitField0_);
      return this;
    }

    public SyncResponse setSyncEndTime(long paramLong)
    {
      this.syncEndTime_ = paramLong;
      this.bitField0_ = (0x2 | this.bitField0_);
      return this;
    }

    public SyncResponse setSyncStartTime(long paramLong)
    {
      this.syncStartTime_ = paramLong;
      this.bitField0_ = (0x1 | this.bitField0_);
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      paramCodedOutputByteBufferNano.writeInt32(1, this.responseCode);
      if (this.selectedItems != null)
      {
        TimelineNano.TimelineItem[] arrayOfTimelineItem = this.selectedItems;
        int i2 = arrayOfTimelineItem.length;
        for (int i3 = 0; i3 < i2; i3++)
          paramCodedOutputByteBufferNano.writeMessage(2, arrayOfTimelineItem[i3]);
      }
      if (this.insertFailedItemIds != null)
      {
        String[] arrayOfString3 = this.insertFailedItemIds;
        int n = arrayOfString3.length;
        for (int i1 = 0; i1 < n; i1++)
          paramCodedOutputByteBufferNano.writeString(3, arrayOfString3[i1]);
      }
      if (this.updateFailedItemIds != null)
      {
        String[] arrayOfString2 = this.updateFailedItemIds;
        int k = arrayOfString2.length;
        for (int m = 0; m < k; m++)
          paramCodedOutputByteBufferNano.writeString(4, arrayOfString2[m]);
      }
      if (this.deleteFailedItemIds != null)
      {
        String[] arrayOfString1 = this.deleteFailedItemIds;
        int i = arrayOfString1.length;
        for (int j = 0; j < i; j++)
          paramCodedOutputByteBufferNano.writeString(5, arrayOfString1[j]);
      }
      if ((0x1 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeUInt64(6, this.syncStartTime_);
      if ((0x2 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeUInt64(7, this.syncEndTime_);
      if ((0x4 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeBytes(8, this.syncContinuationToken_);
      if ((0x8 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeUInt64(9, this.selectStartTime_);
      if ((0x10 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeBytes(10, this.selectContinuationToken_);
      if ((0x20 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeUInt64(11, this.selectMaxWriteTimestamp_);
    }

    public static abstract interface ResponseCode
    {
      public static final int SUCCESS;
    }
  }

  public static final class Update extends MessageNano
  {
    public static final Update[] EMPTY_ARRAY = new Update[0];
    private int bitField0_;
    private Mutations mutations_;
    private String timelineItemId_ = "";
    public TimelineNano.UserAction[] userAction = TimelineNano.UserAction.EMPTY_ARRAY;

    public static Update parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new Update().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static Update parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (Update)MessageNano.mergeFrom(new Update(), paramArrayOfByte);
    }

    public Update clearMutations()
    {
      this.mutations_ = null;
      return this;
    }

    public Update clearTimelineItemId()
    {
      this.timelineItemId_ = "";
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      label82: label97: 
      while (true)
      {
        return true;
        if (!(paramObject instanceof Update))
          return false;
        Update localUpdate = (Update)paramObject;
        if (this.mutations_ == null)
          if (localUpdate.mutations_ == null)
          {
            if (this.timelineItemId_ != null)
              break label82;
            if (localUpdate.timelineItemId_ != null);
          }
        while (true)
        {
          if (Arrays.equals(this.userAction, localUpdate.userAction))
            break label97;
          do
          {
            do
              return false;
            while (!this.mutations_.equals(localUpdate.mutations_));
            break;
          }
          while (!this.timelineItemId_.equals(localUpdate.timelineItemId_));
        }
      }
    }

    public Mutations getMutations()
    {
      return this.mutations_;
    }

    public int getSerializedSize()
    {
      Mutations localMutations = this.mutations_;
      int i = 0;
      if (localMutations != null)
        i = 0 + CodedOutputByteBufferNano.computeMessageSize(1, this.mutations_);
      if ((0x1 & this.bitField0_) != 0)
        i += CodedOutputByteBufferNano.computeStringSize(2, this.timelineItemId_);
      if (this.userAction != null)
      {
        TimelineNano.UserAction[] arrayOfUserAction = this.userAction;
        int j = arrayOfUserAction.length;
        for (int k = 0; k < j; k++)
          i += CodedOutputByteBufferNano.computeMessageSize(3, arrayOfUserAction[k]);
      }
      this.cachedSize = i;
      return i;
    }

    public String getTimelineItemId()
    {
      return this.timelineItemId_;
    }

    public boolean hasMutations()
    {
      return this.mutations_ != null;
    }

    public boolean hasTimelineItemId()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public int hashCode()
    {
      int i;
      int j;
      if (this.mutations_ == null)
      {
        i = 0;
        j = 31 * (i + 527);
        if (this.timelineItemId_ != null)
          break label60;
      }
      int m;
      label60: for (int k = 0; ; k = this.timelineItemId_.hashCode())
      {
        m = j + k;
        if (this.userAction != null)
          break label71;
        m *= 31;
        return m;
        i = this.mutations_.hashCode();
        break;
      }
      label71: int n = 0;
      label74: int i1;
      if (n < this.userAction.length)
      {
        i1 = m * 31;
        if (this.userAction[n] != null)
          break label117;
      }
      label117: for (int i2 = 0; ; i2 = this.userAction[n].hashCode())
      {
        m = i1 + i2;
        n++;
        break label74;
        break;
      }
    }

    public Update mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          if (this.mutations_ == null)
            this.mutations_ = new Mutations();
          paramCodedInputByteBufferNano.readMessage(this.mutations_);
          break;
        case 18:
          this.timelineItemId_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x1 | this.bitField0_);
          break;
        case 26:
        }
        int j = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 26);
        if (this.userAction == null);
        for (int k = 0; ; k = this.userAction.length)
        {
          TimelineNano.UserAction[] arrayOfUserAction = new TimelineNano.UserAction[k + j];
          if (this.userAction != null)
            System.arraycopy(this.userAction, 0, arrayOfUserAction, 0, k);
          this.userAction = arrayOfUserAction;
          while (k < -1 + this.userAction.length)
          {
            this.userAction[k] = new TimelineNano.UserAction();
            paramCodedInputByteBufferNano.readMessage(this.userAction[k]);
            paramCodedInputByteBufferNano.readTag();
            k++;
          }
        }
        this.userAction[k] = new TimelineNano.UserAction();
        paramCodedInputByteBufferNano.readMessage(this.userAction[k]);
      }
    }

    public Update setMutations(Mutations paramMutations)
    {
      if (paramMutations == null)
        throw new NullPointerException();
      this.mutations_ = paramMutations;
      return this;
    }

    public Update setTimelineItemId(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.timelineItemId_ = paramString;
      this.bitField0_ = (0x1 | this.bitField0_);
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.mutations_ != null)
        paramCodedOutputByteBufferNano.writeMessage(1, this.mutations_);
      if ((0x1 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(2, this.timelineItemId_);
      if (this.userAction != null)
      {
        TimelineNano.UserAction[] arrayOfUserAction = this.userAction;
        int i = arrayOfUserAction.length;
        for (int j = 0; j < i; j++)
          paramCodedOutputByteBufferNano.writeMessage(3, arrayOfUserAction[j]);
      }
    }

    public static final class Mutations extends MessageNano
    {
      public static final Mutations[] EMPTY_ARRAY = new Mutations[0];
      public String[] attachmentDeletions = WireFormatNano.EMPTY_STRING_ARRAY;
      public TimelineNano.TimelineItem item = null;
      public int[] itemFieldDeletions = WireFormatNano.EMPTY_INT_ARRAY;

      public final boolean equals(Object paramObject)
      {
        if (paramObject == this);
        while (true)
        {
          return true;
          if (!(paramObject instanceof Mutations))
            return false;
          Mutations localMutations = (Mutations)paramObject;
          if (this.item == null)
            if (localMutations.item != null);
          while ((!Arrays.equals(this.itemFieldDeletions, localMutations.itemFieldDeletions)) || (!Arrays.equals(this.attachmentDeletions, localMutations.attachmentDeletions)))
            do
              return false;
            while (!this.item.equals(localMutations.item));
        }
      }

      public int getSerializedSize()
      {
        TimelineNano.TimelineItem localTimelineItem = this.item;
        int i = 0;
        if (localTimelineItem != null)
          i = 0 + CodedOutputByteBufferNano.computeMessageSize(1, this.item);
        if ((this.itemFieldDeletions != null) && (this.itemFieldDeletions.length > 0))
        {
          int n = 0;
          int[] arrayOfInt = this.itemFieldDeletions;
          int i1 = arrayOfInt.length;
          for (int i2 = 0; i2 < i1; i2++)
            n += CodedOutputByteBufferNano.computeUInt32SizeNoTag(arrayOfInt[i2]);
          i = i + n + 1 * this.itemFieldDeletions.length;
        }
        if ((this.attachmentDeletions != null) && (this.attachmentDeletions.length > 0))
        {
          int j = 0;
          String[] arrayOfString = this.attachmentDeletions;
          int k = arrayOfString.length;
          for (int m = 0; m < k; m++)
            j += CodedOutputByteBufferNano.computeStringSizeNoTag(arrayOfString[m]);
          i = i + j + 1 * this.attachmentDeletions.length;
        }
        this.cachedSize = i;
        return i;
      }

      public int hashCode()
      {
        int i;
        int j;
        if (this.item == null)
        {
          i = 0;
          j = i + 527;
          if (this.itemFieldDeletions != null)
            break label52;
          j *= 31;
        }
        while (true)
        {
          if (this.attachmentDeletions != null)
            break label81;
          j *= 31;
          return j;
          i = this.item.hashCode();
          break;
          label52: for (int k = 0; k < this.itemFieldDeletions.length; k++)
            j = j * 31 + this.itemFieldDeletions[k];
        }
        label81: int m = 0;
        label84: int n;
        if (m < this.attachmentDeletions.length)
        {
          n = j * 31;
          if (this.attachmentDeletions[m] != null)
            break label125;
        }
        label125: for (int i1 = 0; ; i1 = this.attachmentDeletions[m].hashCode())
        {
          j = n + i1;
          m++;
          break label84;
          break;
        }
      }

      public Mutations mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
            this.item = new TimelineNano.TimelineItem();
            paramCodedInputByteBufferNano.readMessage(this.item);
            break;
          case 16:
            int m = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 16);
            int n = this.itemFieldDeletions.length;
            int[] arrayOfInt = new int[n + m];
            System.arraycopy(this.itemFieldDeletions, 0, arrayOfInt, 0, n);
            this.itemFieldDeletions = arrayOfInt;
            while (n < -1 + this.itemFieldDeletions.length)
            {
              this.itemFieldDeletions[n] = paramCodedInputByteBufferNano.readUInt32();
              paramCodedInputByteBufferNano.readTag();
              n++;
            }
            this.itemFieldDeletions[n] = paramCodedInputByteBufferNano.readUInt32();
            break;
          case 26:
          }
          int j = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 26);
          int k = this.attachmentDeletions.length;
          String[] arrayOfString = new String[k + j];
          System.arraycopy(this.attachmentDeletions, 0, arrayOfString, 0, k);
          this.attachmentDeletions = arrayOfString;
          while (k < -1 + this.attachmentDeletions.length)
          {
            this.attachmentDeletions[k] = paramCodedInputByteBufferNano.readString();
            paramCodedInputByteBufferNano.readTag();
            k++;
          }
          this.attachmentDeletions[k] = paramCodedInputByteBufferNano.readString();
        }
      }

      public Mutations parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
        throws IOException
      {
        return new Mutations().mergeFrom(paramCodedInputByteBufferNano);
      }

      public Mutations parseFrom(byte[] paramArrayOfByte)
        throws InvalidProtocolBufferNanoException
      {
        return (Mutations)MessageNano.mergeFrom(new Mutations(), paramArrayOfByte);
      }

      public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
        throws IOException
      {
        if (this.item != null)
          paramCodedOutputByteBufferNano.writeMessage(1, this.item);
        if (this.itemFieldDeletions != null)
        {
          int[] arrayOfInt = this.itemFieldDeletions;
          int k = arrayOfInt.length;
          for (int m = 0; m < k; m++)
            paramCodedOutputByteBufferNano.writeUInt32(2, arrayOfInt[m]);
        }
        if (this.attachmentDeletions != null)
        {
          String[] arrayOfString = this.attachmentDeletions;
          int i = arrayOfString.length;
          for (int j = 0; j < i; j++)
            paramCodedOutputByteBufferNano.writeString(3, arrayOfString[j]);
        }
      }
    }
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.SyncNano
 * JD-Core Version:    0.6.2
 */