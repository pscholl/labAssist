package com.google.googlex.glass.common.proto;

import com.google.protobuf.nano.CodedInputByteBufferNano;
import com.google.protobuf.nano.CodedOutputByteBufferNano;
import com.google.protobuf.nano.InvalidProtocolBufferNanoException;
import com.google.protobuf.nano.MessageNano;
import com.google.protobuf.nano.WireFormatNano;
import java.io.IOException;

public abstract interface GlasswareNano
{
  public static final class GlasswareMessages extends MessageNano
  {
    public static final GlasswareMessages[] EMPTY_ARRAY = new GlasswareMessages[0];
    private static final String LOCALE_DEFAULT = "en_US";
    private int bitField0_;
    private String description_ = "";
    private String locale_ = "en_US";
    private String moreInfoTitle_ = "";
    private String name_ = "";
    private String permissions_ = "";
    private String shortDescription_ = "";
    private String speakableName_ = "";

    public static GlasswareMessages parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new GlasswareMessages().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static GlasswareMessages parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (GlasswareMessages)MessageNano.mergeFrom(new GlasswareMessages(), paramArrayOfByte);
    }

    public GlasswareMessages clearDescription()
    {
      this.description_ = "";
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      return this;
    }

    public GlasswareMessages clearLocale()
    {
      this.locale_ = "en_US";
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public GlasswareMessages clearMoreInfoTitle()
    {
      this.moreInfoTitle_ = "";
      this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
      return this;
    }

    public GlasswareMessages clearName()
    {
      this.name_ = "";
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      return this;
    }

    public GlasswareMessages clearPermissions()
    {
      this.permissions_ = "";
      this.bitField0_ = (0xFFFFFFDF & this.bitField0_);
      return this;
    }

    public GlasswareMessages clearShortDescription()
    {
      this.shortDescription_ = "";
      this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
      return this;
    }

    public GlasswareMessages clearSpeakableName()
    {
      this.speakableName_ = "";
      this.bitField0_ = (0xFFFFFFBF & this.bitField0_);
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      GlasswareMessages localGlasswareMessages;
      label49: label63: label77: label91: label105: 
      do
      {
        return true;
        if (!(paramObject instanceof GlasswareMessages))
          return false;
        localGlasswareMessages = (GlasswareMessages)paramObject;
        if (this.locale_ != null)
          break label121;
        if (localGlasswareMessages.locale_ != null)
          break;
        if (this.name_ != null)
          break label138;
        if (localGlasswareMessages.name_ != null)
          break;
        if (this.description_ != null)
          break label155;
        if (localGlasswareMessages.description_ != null)
          break;
        if (this.shortDescription_ != null)
          break label172;
        if (localGlasswareMessages.shortDescription_ != null)
          break;
        if (this.moreInfoTitle_ != null)
          break label189;
        if (localGlasswareMessages.moreInfoTitle_ != null)
          break;
        if (this.permissions_ != null)
          break label206;
        if (localGlasswareMessages.permissions_ != null)
          break;
        if (this.speakableName_ != null)
          break label223;
      }
      while (localGlasswareMessages.speakableName_ == null);
      label121: 
      while (!this.speakableName_.equals(localGlasswareMessages.speakableName_))
      {
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  do
                    return false;
                  while (!this.locale_.equals(localGlasswareMessages.locale_));
                  break;
                }
                while (!this.name_.equals(localGlasswareMessages.name_));
                break label49;
              }
              while (!this.description_.equals(localGlasswareMessages.description_));
              break label63;
            }
            while (!this.shortDescription_.equals(localGlasswareMessages.shortDescription_));
            break label77;
          }
          while (!this.moreInfoTitle_.equals(localGlasswareMessages.moreInfoTitle_));
          break label91;
        }
        while (!this.permissions_.equals(localGlasswareMessages.permissions_));
        break label105;
      }
      label138: label155: label172: label189: label206: label223: return true;
    }

    public String getDescription()
    {
      return this.description_;
    }

    public String getLocale()
    {
      return this.locale_;
    }

    public String getMoreInfoTitle()
    {
      return this.moreInfoTitle_;
    }

    public String getName()
    {
      return this.name_;
    }

    public String getPermissions()
    {
      return this.permissions_;
    }

    public int getSerializedSize()
    {
      int i = 0x1 & this.bitField0_;
      int j = 0;
      if (i != 0)
        j = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.locale_);
      if ((0x2 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(2, this.name_);
      if ((0x4 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(3, this.description_);
      if ((0x8 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(4, this.shortDescription_);
      if ((0x10 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(5, this.moreInfoTitle_);
      if ((0x20 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(6, this.permissions_);
      if ((0x40 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(7, this.speakableName_);
      this.cachedSize = j;
      return j;
    }

    public String getShortDescription()
    {
      return this.shortDescription_;
    }

    public String getSpeakableName()
    {
      return this.speakableName_;
    }

    public boolean hasDescription()
    {
      return (0x4 & this.bitField0_) != 0;
    }

    public boolean hasLocale()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public boolean hasMoreInfoTitle()
    {
      return (0x10 & this.bitField0_) != 0;
    }

    public boolean hasName()
    {
      return (0x2 & this.bitField0_) != 0;
    }

    public boolean hasPermissions()
    {
      return (0x20 & this.bitField0_) != 0;
    }

    public boolean hasShortDescription()
    {
      return (0x8 & this.bitField0_) != 0;
    }

    public boolean hasSpeakableName()
    {
      return (0x40 & this.bitField0_) != 0;
    }

    public int hashCode()
    {
      int i;
      int k;
      label27: int n;
      label45: int i2;
      label65: int i4;
      label85: int i6;
      label105: int i7;
      int i8;
      if (this.locale_ == null)
      {
        i = 0;
        int j = 31 * (i + 527);
        if (this.name_ != null)
          break label146;
        k = 0;
        int m = 31 * (j + k);
        if (this.description_ != null)
          break label157;
        n = 0;
        int i1 = 31 * (m + n);
        if (this.shortDescription_ != null)
          break label169;
        i2 = 0;
        int i3 = 31 * (i1 + i2);
        if (this.moreInfoTitle_ != null)
          break label181;
        i4 = 0;
        int i5 = 31 * (i3 + i4);
        if (this.permissions_ != null)
          break label193;
        i6 = 0;
        i7 = 31 * (i5 + i6);
        String str = this.speakableName_;
        i8 = 0;
        if (str != null)
          break label205;
      }
      while (true)
      {
        return i7 + i8;
        i = this.locale_.hashCode();
        break;
        label146: k = this.name_.hashCode();
        break label27;
        label157: n = this.description_.hashCode();
        break label45;
        label169: i2 = this.shortDescription_.hashCode();
        break label65;
        label181: i4 = this.moreInfoTitle_.hashCode();
        break label85;
        label193: i6 = this.permissions_.hashCode();
        break label105;
        label205: i8 = this.speakableName_.hashCode();
      }
    }

    public GlasswareMessages mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.locale_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x1 | this.bitField0_);
          break;
        case 18:
          this.name_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x2 | this.bitField0_);
          break;
        case 26:
          this.description_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x4 | this.bitField0_);
          break;
        case 34:
          this.shortDescription_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x8 | this.bitField0_);
          break;
        case 42:
          this.moreInfoTitle_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x10 | this.bitField0_);
          break;
        case 50:
          this.permissions_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x20 | this.bitField0_);
          break;
        case 58:
        }
        this.speakableName_ = paramCodedInputByteBufferNano.readString();
        this.bitField0_ = (0x40 | this.bitField0_);
      }
    }

    public GlasswareMessages setDescription(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.description_ = paramString;
      this.bitField0_ = (0x4 | this.bitField0_);
      return this;
    }

    public GlasswareMessages setLocale(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.locale_ = paramString;
      this.bitField0_ = (0x1 | this.bitField0_);
      return this;
    }

    public GlasswareMessages setMoreInfoTitle(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.moreInfoTitle_ = paramString;
      this.bitField0_ = (0x10 | this.bitField0_);
      return this;
    }

    public GlasswareMessages setName(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.name_ = paramString;
      this.bitField0_ = (0x2 | this.bitField0_);
      return this;
    }

    public GlasswareMessages setPermissions(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.permissions_ = paramString;
      this.bitField0_ = (0x20 | this.bitField0_);
      return this;
    }

    public GlasswareMessages setShortDescription(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.shortDescription_ = paramString;
      this.bitField0_ = (0x8 | this.bitField0_);
      return this;
    }

    public GlasswareMessages setSpeakableName(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.speakableName_ = paramString;
      this.bitField0_ = (0x40 | this.bitField0_);
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if ((0x1 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(1, this.locale_);
      if ((0x2 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(2, this.name_);
      if ((0x4 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(3, this.description_);
      if ((0x8 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(4, this.shortDescription_);
      if ((0x10 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(5, this.moreInfoTitle_);
      if ((0x20 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(6, this.permissions_);
      if ((0x40 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(7, this.speakableName_);
    }
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.GlasswareNano
 * JD-Core Version:    0.6.2
 */