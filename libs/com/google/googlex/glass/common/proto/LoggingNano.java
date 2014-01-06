package com.google.googlex.glass.common.proto;

import com.google.common.logging.GlassExtensionsNano.GlassUserEventProto;
import com.google.protobuf.nano.CodedInputByteBufferNano;
import com.google.protobuf.nano.CodedOutputByteBufferNano;
import com.google.protobuf.nano.InvalidProtocolBufferNanoException;
import com.google.protobuf.nano.MessageNano;
import com.google.protobuf.nano.WireFormatNano;
import java.io.IOException;
import java.util.Arrays;

public abstract interface LoggingNano
{
  public static final class GetSessionIdRequest extends MessageNano
  {
    public static final GetSessionIdRequest[] EMPTY_ARRAY = new GetSessionIdRequest[0];
    private int bitField0_;
    private boolean unusedField_ = false;

    public static GetSessionIdRequest parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new GetSessionIdRequest().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static GetSessionIdRequest parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (GetSessionIdRequest)MessageNano.mergeFrom(new GetSessionIdRequest(), paramArrayOfByte);
    }

    public GetSessionIdRequest clearUnusedField()
    {
      this.unusedField_ = false;
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      GetSessionIdRequest localGetSessionIdRequest;
      do
      {
        return true;
        if (!(paramObject instanceof GetSessionIdRequest))
          return false;
        localGetSessionIdRequest = (GetSessionIdRequest)paramObject;
      }
      while (this.unusedField_ == localGetSessionIdRequest.unusedField_);
      return false;
    }

    public int getSerializedSize()
    {
      int i = 0x1 & this.bitField0_;
      int j = 0;
      if (i != 0)
        j = 0 + CodedOutputByteBufferNano.computeBoolSize(1, this.unusedField_);
      this.cachedSize = j;
      return j;
    }

    public boolean getUnusedField()
    {
      return this.unusedField_;
    }

    public boolean hasUnusedField()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public int hashCode()
    {
      if (this.unusedField_);
      for (int i = 1; ; i = 2)
        return i + 527;
    }

    public GetSessionIdRequest mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
        }
        this.unusedField_ = paramCodedInputByteBufferNano.readBool();
        this.bitField0_ = (0x1 | this.bitField0_);
      }
    }

    public GetSessionIdRequest setUnusedField(boolean paramBoolean)
    {
      this.unusedField_ = paramBoolean;
      this.bitField0_ = (0x1 | this.bitField0_);
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if ((0x1 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeBool(1, this.unusedField_);
    }
  }

  public static final class GetSessionIdResponse extends MessageNano
  {
    public static final GetSessionIdResponse[] EMPTY_ARRAY = new GetSessionIdResponse[0];
    private int bitField0_;
    private String sessionId_ = "";

    public static GetSessionIdResponse parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new GetSessionIdResponse().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static GetSessionIdResponse parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (GetSessionIdResponse)MessageNano.mergeFrom(new GetSessionIdResponse(), paramArrayOfByte);
    }

    public GetSessionIdResponse clearSessionId()
    {
      this.sessionId_ = "";
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      GetSessionIdResponse localGetSessionIdResponse;
      do
      {
        return true;
        if (!(paramObject instanceof GetSessionIdResponse))
          return false;
        localGetSessionIdResponse = (GetSessionIdResponse)paramObject;
        if (this.sessionId_ != null)
          break;
      }
      while (localGetSessionIdResponse.sessionId_ == null);
      return false;
      return this.sessionId_.equals(localGetSessionIdResponse.sessionId_);
    }

    public int getSerializedSize()
    {
      int i = 0x1 & this.bitField0_;
      int j = 0;
      if (i != 0)
        j = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.sessionId_);
      this.cachedSize = j;
      return j;
    }

    public String getSessionId()
    {
      return this.sessionId_;
    }

    public boolean hasSessionId()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public int hashCode()
    {
      if (this.sessionId_ == null);
      for (int i = 0; ; i = this.sessionId_.hashCode())
        return i + 527;
    }

    public GetSessionIdResponse mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
        }
        this.sessionId_ = paramCodedInputByteBufferNano.readString();
        this.bitField0_ = (0x1 | this.bitField0_);
      }
    }

    public GetSessionIdResponse setSessionId(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.sessionId_ = paramString;
      this.bitField0_ = (0x1 | this.bitField0_);
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if ((0x1 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(1, this.sessionId_);
    }
  }

  public static final class ReportUserEventRequest extends MessageNano
  {
    public static final ReportUserEventRequest[] EMPTY_ARRAY = new ReportUserEventRequest[0];
    private String action_ = "";
    private int bitField0_;
    private String data_ = "";
    private String hardwareVersion_ = "";
    private String sessionId_ = "";
    private String softwareVersion_ = "";
    private long timestamp_ = 0L;
    public GlassExtensionsNano.GlassUserEventProto[] userEventProto = GlassExtensionsNano.GlassUserEventProto.EMPTY_ARRAY;
    private int userEventSource_ = 1;

    public static ReportUserEventRequest parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new ReportUserEventRequest().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static ReportUserEventRequest parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (ReportUserEventRequest)MessageNano.mergeFrom(new ReportUserEventRequest(), paramArrayOfByte);
    }

    public ReportUserEventRequest clearAction()
    {
      this.action_ = "";
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      return this;
    }

    public ReportUserEventRequest clearData()
    {
      this.data_ = "";
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      return this;
    }

    public ReportUserEventRequest clearHardwareVersion()
    {
      this.hardwareVersion_ = "";
      this.bitField0_ = (0xFFFFFFBF & this.bitField0_);
      return this;
    }

    public ReportUserEventRequest clearSessionId()
    {
      this.sessionId_ = "";
      this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
      return this;
    }

    public ReportUserEventRequest clearSoftwareVersion()
    {
      this.softwareVersion_ = "";
      this.bitField0_ = (0xFFFFFFDF & this.bitField0_);
      return this;
    }

    public ReportUserEventRequest clearTimestamp()
    {
      this.timestamp_ = 0L;
      this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
      return this;
    }

    public ReportUserEventRequest clearUserEventSource()
    {
      this.userEventSource_ = 1;
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      label60: label74: label213: 
      while (true)
      {
        return true;
        if (!(paramObject instanceof ReportUserEventRequest))
          return false;
        ReportUserEventRequest localReportUserEventRequest = (ReportUserEventRequest)paramObject;
        if (this.userEventSource_ == localReportUserEventRequest.userEventSource_)
        {
          if (this.action_ != null)
            break label130;
          if (localReportUserEventRequest.action_ == null)
          {
            if (this.data_ != null)
              break label147;
            if (localReportUserEventRequest.data_ == null)
            {
              if (this.sessionId_ != null)
                break label164;
              if (localReportUserEventRequest.sessionId_ == null)
                if (this.timestamp_ == localReportUserEventRequest.timestamp_)
                {
                  if (this.softwareVersion_ != null)
                    break label181;
                  if (localReportUserEventRequest.softwareVersion_ == null)
                  {
                    label100: if (this.hardwareVersion_ != null)
                      break label198;
                    if (localReportUserEventRequest.hardwareVersion_ != null);
                  }
                }
            }
          }
        }
        while (true)
        {
          if (Arrays.equals(this.userEventProto, localReportUserEventRequest.userEventProto))
            break label213;
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
                  while (!this.action_.equals(localReportUserEventRequest.action_));
                  break;
                }
                while (!this.data_.equals(localReportUserEventRequest.data_));
                break label60;
              }
              while (!this.sessionId_.equals(localReportUserEventRequest.sessionId_));
              break label74;
            }
            while (!this.softwareVersion_.equals(localReportUserEventRequest.softwareVersion_));
            break label100;
          }
          while (!this.hardwareVersion_.equals(localReportUserEventRequest.hardwareVersion_));
        }
      }
    }

    public String getAction()
    {
      return this.action_;
    }

    public String getData()
    {
      return this.data_;
    }

    public String getHardwareVersion()
    {
      return this.hardwareVersion_;
    }

    public int getSerializedSize()
    {
      int i = 0x2 & this.bitField0_;
      int j = 0;
      if (i != 0)
        j = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.action_);
      if ((0x4 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(2, this.data_);
      if ((0x8 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(3, this.sessionId_);
      if ((0x10 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeInt64Size(4, this.timestamp_);
      if ((0x20 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(5, this.softwareVersion_);
      if ((0x40 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(6, this.hardwareVersion_);
      if (this.userEventProto != null)
      {
        GlassExtensionsNano.GlassUserEventProto[] arrayOfGlassUserEventProto = this.userEventProto;
        int k = arrayOfGlassUserEventProto.length;
        for (int m = 0; m < k; m++)
          j += CodedOutputByteBufferNano.computeMessageSize(7, arrayOfGlassUserEventProto[m]);
      }
      if ((0x1 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeInt32Size(8, this.userEventSource_);
      this.cachedSize = j;
      return j;
    }

    public String getSessionId()
    {
      return this.sessionId_;
    }

    public String getSoftwareVersion()
    {
      return this.softwareVersion_;
    }

    public long getTimestamp()
    {
      return this.timestamp_;
    }

    public int getUserEventSource()
    {
      return this.userEventSource_;
    }

    public boolean hasAction()
    {
      return (0x2 & this.bitField0_) != 0;
    }

    public boolean hasData()
    {
      return (0x4 & this.bitField0_) != 0;
    }

    public boolean hasHardwareVersion()
    {
      return (0x40 & this.bitField0_) != 0;
    }

    public boolean hasSessionId()
    {
      return (0x8 & this.bitField0_) != 0;
    }

    public boolean hasSoftwareVersion()
    {
      return (0x20 & this.bitField0_) != 0;
    }

    public boolean hasTimestamp()
    {
      return (0x10 & this.bitField0_) != 0;
    }

    public boolean hasUserEventSource()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public int hashCode()
    {
      int i = 31 * (527 + this.userEventSource_);
      int j;
      int m;
      label38: int i1;
      label57: int i3;
      label94: int i4;
      if (this.action_ == null)
      {
        j = 0;
        int k = 31 * (i + j);
        if (this.data_ != null)
          break label149;
        m = 0;
        int n = 31 * (k + m);
        if (this.sessionId_ != null)
          break label161;
        i1 = 0;
        int i2 = 31 * (31 * (n + i1) + (int)(this.timestamp_ ^ this.timestamp_ >>> 32));
        if (this.softwareVersion_ != null)
          break label173;
        i3 = 0;
        i4 = 31 * (i2 + i3);
        if (this.hardwareVersion_ != null)
          break label185;
      }
      int i6;
      label149: label161: label173: label185: for (int i5 = 0; ; i5 = this.hardwareVersion_.hashCode())
      {
        i6 = i4 + i5;
        if (this.userEventProto != null)
          break label197;
        i6 *= 31;
        return i6;
        j = this.action_.hashCode();
        break;
        m = this.data_.hashCode();
        break label38;
        i1 = this.sessionId_.hashCode();
        break label57;
        i3 = this.softwareVersion_.hashCode();
        break label94;
      }
      label197: int i7 = 0;
      label200: int i8;
      if (i7 < this.userEventProto.length)
      {
        i8 = i6 * 31;
        if (this.userEventProto[i7] != null)
          break label243;
      }
      label243: for (int i9 = 0; ; i9 = this.userEventProto[i7].hashCode())
      {
        i6 = i8 + i9;
        i7++;
        break label200;
        break;
      }
    }

    public ReportUserEventRequest mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.action_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x2 | this.bitField0_);
          break;
        case 18:
          this.data_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x4 | this.bitField0_);
          break;
        case 26:
          this.sessionId_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x8 | this.bitField0_);
          break;
        case 32:
          this.timestamp_ = paramCodedInputByteBufferNano.readInt64();
          this.bitField0_ = (0x10 | this.bitField0_);
          break;
        case 42:
          this.softwareVersion_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x20 | this.bitField0_);
          break;
        case 50:
          this.hardwareVersion_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x40 | this.bitField0_);
          break;
        case 58:
          int k = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 58);
          if (this.userEventProto == null);
          for (int m = 0; ; m = this.userEventProto.length)
          {
            GlassExtensionsNano.GlassUserEventProto[] arrayOfGlassUserEventProto = new GlassExtensionsNano.GlassUserEventProto[m + k];
            if (this.userEventProto != null)
              System.arraycopy(this.userEventProto, 0, arrayOfGlassUserEventProto, 0, m);
            this.userEventProto = arrayOfGlassUserEventProto;
            while (m < -1 + this.userEventProto.length)
            {
              this.userEventProto[m] = new GlassExtensionsNano.GlassUserEventProto();
              paramCodedInputByteBufferNano.readMessage(this.userEventProto[m]);
              paramCodedInputByteBufferNano.readTag();
              m++;
            }
          }
          this.userEventProto[m] = new GlassExtensionsNano.GlassUserEventProto();
          paramCodedInputByteBufferNano.readMessage(this.userEventProto[m]);
        case 64:
        }
      }
      int j = paramCodedInputByteBufferNano.readInt32();
      if ((j == 1) || (j == 2));
      for (this.userEventSource_ = j; ; this.userEventSource_ = 1)
      {
        this.bitField0_ = (0x1 | this.bitField0_);
        break;
      }
    }

    public ReportUserEventRequest setAction(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.action_ = paramString;
      this.bitField0_ = (0x2 | this.bitField0_);
      return this;
    }

    public ReportUserEventRequest setData(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.data_ = paramString;
      this.bitField0_ = (0x4 | this.bitField0_);
      return this;
    }

    public ReportUserEventRequest setHardwareVersion(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.hardwareVersion_ = paramString;
      this.bitField0_ = (0x40 | this.bitField0_);
      return this;
    }

    public ReportUserEventRequest setSessionId(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.sessionId_ = paramString;
      this.bitField0_ = (0x8 | this.bitField0_);
      return this;
    }

    public ReportUserEventRequest setSoftwareVersion(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.softwareVersion_ = paramString;
      this.bitField0_ = (0x20 | this.bitField0_);
      return this;
    }

    public ReportUserEventRequest setTimestamp(long paramLong)
    {
      this.timestamp_ = paramLong;
      this.bitField0_ = (0x10 | this.bitField0_);
      return this;
    }

    public ReportUserEventRequest setUserEventSource(int paramInt)
    {
      this.userEventSource_ = paramInt;
      this.bitField0_ = (0x1 | this.bitField0_);
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if ((0x2 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(1, this.action_);
      if ((0x4 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(2, this.data_);
      if ((0x8 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(3, this.sessionId_);
      if ((0x10 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt64(4, this.timestamp_);
      if ((0x20 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(5, this.softwareVersion_);
      if ((0x40 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(6, this.hardwareVersion_);
      if (this.userEventProto != null)
      {
        GlassExtensionsNano.GlassUserEventProto[] arrayOfGlassUserEventProto = this.userEventProto;
        int i = arrayOfGlassUserEventProto.length;
        for (int j = 0; j < i; j++)
          paramCodedOutputByteBufferNano.writeMessage(7, arrayOfGlassUserEventProto[j]);
      }
      if ((0x1 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt32(8, this.userEventSource_);
    }

    public static abstract interface UserEventSource
    {
      public static final int COMPANION = 2;
      public static final int GLASS = 1;
    }
  }

  public static final class ReportUserEventResponse extends MessageNano
  {
    public static final ReportUserEventResponse[] EMPTY_ARRAY = new ReportUserEventResponse[0];
    private int bitField0_;
    private int responseCode_ = 0;

    public static ReportUserEventResponse parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new ReportUserEventResponse().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static ReportUserEventResponse parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (ReportUserEventResponse)MessageNano.mergeFrom(new ReportUserEventResponse(), paramArrayOfByte);
    }

    public ReportUserEventResponse clearResponseCode()
    {
      this.responseCode_ = 0;
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      ReportUserEventResponse localReportUserEventResponse;
      do
      {
        return true;
        if (!(paramObject instanceof ReportUserEventResponse))
          return false;
        localReportUserEventResponse = (ReportUserEventResponse)paramObject;
      }
      while (this.responseCode_ == localReportUserEventResponse.responseCode_);
      return false;
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
      this.cachedSize = j;
      return j;
    }

    public boolean hasResponseCode()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public int hashCode()
    {
      return 527 + this.responseCode_;
    }

    public ReportUserEventResponse mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      int i;
      do
      {
        i = paramCodedInputByteBufferNano.readTag();
        switch (i)
        {
        default:
        case 0:
        case 8:
        }
      }
      while (WireFormatNano.parseUnknownField(paramCodedInputByteBufferNano, i));
      return this;
      int j = paramCodedInputByteBufferNano.readInt32();
      if ((j == 0) || (j == 1) || (j == 2));
      for (this.responseCode_ = j; ; this.responseCode_ = 0)
      {
        this.bitField0_ = (0x1 | this.bitField0_);
        break;
      }
    }

    public ReportUserEventResponse setResponseCode(int paramInt)
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
    }

    public static abstract interface ResponseCode
    {
      public static final int ERROR_MISSING_SESSION_ID = 1;
      public static final int ERROR_MISSING_SOFTWARE_VERSION = 2;
      public static final int SUCCESS;
    }
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.LoggingNano
 * JD-Core Version:    0.6.2
 */