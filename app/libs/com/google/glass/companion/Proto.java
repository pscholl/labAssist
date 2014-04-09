package com.google.glass.companion;

import com.google.googlex.glass.common.proto.TimelineNano.TimelineItem;
import com.google.googlex.glass.common.proto.TimelineNano.UserAction;
import com.google.protobuf.nano.CodedInputByteBufferNano;
import com.google.protobuf.nano.CodedOutputByteBufferNano;
import com.google.protobuf.nano.InvalidProtocolBufferNanoException;
import com.google.protobuf.nano.MessageNano;
import com.google.protobuf.nano.WireFormatNano;
import java.io.IOException;
import java.util.Arrays;

public abstract interface Proto
{
  public static final class ApiRequest extends MessageNano
  {
    public static final ApiRequest[] EMPTY_ARRAY = new ApiRequest[0];
    public byte[][] attachmentContent = WireFormatNano.EMPTY_BYTES_ARRAY;
    private int bitField0_;
    private String projectId_ = "";
    private TimelineNano.TimelineItem timelineItem_;
    private String token_ = "";
    private int type_ = 0;

    public static ApiRequest parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new ApiRequest().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static ApiRequest parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (ApiRequest)MessageNano.mergeFrom(new ApiRequest(), paramArrayOfByte);
    }

    public final ApiRequest clear()
    {
      this.bitField0_ = 0;
      this.projectId_ = "";
      this.token_ = "";
      this.type_ = 0;
      this.timelineItem_ = null;
      this.attachmentContent = WireFormatNano.EMPTY_BYTES_ARRAY;
      this.cachedSize = -1;
      return this;
    }

    public ApiRequest clearProjectId()
    {
      this.projectId_ = "";
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public ApiRequest clearTimelineItem()
    {
      this.timelineItem_ = null;
      return this;
    }

    public ApiRequest clearToken()
    {
      this.token_ = "";
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      return this;
    }

    public ApiRequest clearType()
    {
      this.type_ = 0;
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      label139: 
      while (true)
      {
        return true;
        if (!(paramObject instanceof ApiRequest))
          return false;
        ApiRequest localApiRequest = (ApiRequest)paramObject;
        if (this.projectId_ == null)
          if (localApiRequest.projectId_ == null)
          {
            if (this.token_ != null)
              break label107;
            if (localApiRequest.token_ == null)
              label49: if (this.type_ == localApiRequest.type_)
              {
                if (this.timelineItem_ != null)
                  break label124;
                if (localApiRequest.timelineItem_ != null);
              }
          }
        while (true)
        {
          if (Arrays.equals(this.attachmentContent, localApiRequest.attachmentContent))
            break label139;
          label107: label124: 
          do
          {
            do
            {
              do
                return false;
              while (!this.projectId_.equals(localApiRequest.projectId_));
              break;
            }
            while (!this.token_.equals(localApiRequest.token_));
            break label49;
          }
          while (!this.timelineItem_.equals(localApiRequest.timelineItem_));
        }
      }
    }

    public String getProjectId()
    {
      return this.projectId_;
    }

    public int getSerializedSize()
    {
      int i = 0x1 & this.bitField0_;
      int j = 0;
      if (i != 0)
        j = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.projectId_);
      if ((0x2 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(2, this.token_);
      if ((0x4 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeInt32Size(3, this.type_);
      if (this.timelineItem_ != null)
        j += CodedOutputByteBufferNano.computeMessageSize(4, this.timelineItem_);
      if ((this.attachmentContent != null) && (this.attachmentContent.length > 0))
      {
        int k = 0;
        byte[][] arrayOfByte = this.attachmentContent;
        int m = arrayOfByte.length;
        for (int n = 0; n < m; n++)
          k += CodedOutputByteBufferNano.computeBytesSizeNoTag(arrayOfByte[n]);
        j = j + k + 1 * this.attachmentContent.length;
      }
      this.cachedSize = j;
      return j;
    }

    public TimelineNano.TimelineItem getTimelineItem()
    {
      return this.timelineItem_;
    }

    public String getToken()
    {
      return this.token_;
    }

    public int getType()
    {
      return this.type_;
    }

    public boolean hasProjectId()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public boolean hasTimelineItem()
    {
      return this.timelineItem_ != null;
    }

    public boolean hasToken()
    {
      return (0x2 & this.bitField0_) != 0;
    }

    public boolean hasType()
    {
      return (0x4 & this.bitField0_) != 0;
    }

    public int hashCode()
    {
      int i;
      int k;
      label27: int n;
      label57: int i1;
      if (this.projectId_ == null)
      {
        i = 0;
        int j = 31 * (i + 527);
        if (this.token_ != null)
          break label92;
        k = 0;
        int m = 31 * (31 * (j + k) + this.type_);
        TimelineNano.TimelineItem localTimelineItem = this.timelineItem_;
        n = 0;
        if (localTimelineItem != null)
          break label103;
        i1 = m + n;
        if (this.attachmentContent != null)
          break label115;
        i1 *= 31;
      }
      while (true)
      {
        return i1;
        i = this.projectId_.hashCode();
        break;
        label92: k = this.token_.hashCode();
        break label27;
        label103: n = this.timelineItem_.hashCode();
        break label57;
        label115: for (int i2 = 0; i2 < this.attachmentContent.length; i2++)
          for (int i3 = 0; i3 < this.attachmentContent[i2].length; i3++)
            i1 = i1 * 31 + this.attachmentContent[i2][i3];
      }
    }

    public ApiRequest mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.projectId_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x1 | this.bitField0_);
          break;
        case 18:
          this.token_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x2 | this.bitField0_);
          break;
        case 24:
          int m = paramCodedInputByteBufferNano.readInt32();
          if ((m == 0) || (m == 1));
          for (this.type_ = m; ; this.type_ = 0)
          {
            this.bitField0_ = (0x4 | this.bitField0_);
            break;
          }
        case 34:
          if (this.timelineItem_ == null)
            this.timelineItem_ = new TimelineNano.TimelineItem();
          paramCodedInputByteBufferNano.readMessage(this.timelineItem_);
          break;
        case 42:
        }
        int j = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 42);
        int k = this.attachmentContent.length;
        byte[][] arrayOfByte = new byte[k + j][];
        System.arraycopy(this.attachmentContent, 0, arrayOfByte, 0, k);
        this.attachmentContent = arrayOfByte;
        while (k < -1 + this.attachmentContent.length)
        {
          this.attachmentContent[k] = paramCodedInputByteBufferNano.readBytes();
          paramCodedInputByteBufferNano.readTag();
          k++;
        }
        this.attachmentContent[k] = paramCodedInputByteBufferNano.readBytes();
      }
    }

    public ApiRequest setProjectId(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.projectId_ = paramString;
      this.bitField0_ = (0x1 | this.bitField0_);
      return this;
    }

    public ApiRequest setTimelineItem(TimelineNano.TimelineItem paramTimelineItem)
    {
      if (paramTimelineItem == null)
        throw new NullPointerException();
      this.timelineItem_ = paramTimelineItem;
      return this;
    }

    public ApiRequest setToken(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.token_ = paramString;
      this.bitField0_ = (0x2 | this.bitField0_);
      return this;
    }

    public ApiRequest setType(int paramInt)
    {
      this.type_ = paramInt;
      this.bitField0_ = (0x4 | this.bitField0_);
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if ((0x1 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(1, this.projectId_);
      if ((0x2 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(2, this.token_);
      if ((0x4 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt32(3, this.type_);
      if (this.timelineItem_ != null)
        paramCodedOutputByteBufferNano.writeMessage(4, this.timelineItem_);
      if (this.attachmentContent != null)
      {
        byte[][] arrayOfByte = this.attachmentContent;
        int i = arrayOfByte.length;
        for (int j = 0; j < i; j++)
          paramCodedOutputByteBufferNano.writeBytes(5, arrayOfByte[j]);
      }
    }

    public static abstract interface RequestType
    {
      public static final int DELETE_TIMELINE_ITEM = 1;
      public static final int INSERT_OR_UPDATE_TIMELINE_ITEM;
    }
  }

  public static final class ApiResponse extends MessageNano
  {
    public static final ApiResponse[] EMPTY_ARRAY = new ApiResponse[0];
    private int bitField0_;
    private TimelineNano.TimelineItem timelineItem_;
    private int type_ = 0;
    private TimelineNano.UserAction userAction_;

    public static ApiResponse parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new ApiResponse().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static ApiResponse parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (ApiResponse)MessageNano.mergeFrom(new ApiResponse(), paramArrayOfByte);
    }

    public final ApiResponse clear()
    {
      this.bitField0_ = 0;
      this.type_ = 0;
      this.timelineItem_ = null;
      this.userAction_ = null;
      this.cachedSize = -1;
      return this;
    }

    public ApiResponse clearTimelineItem()
    {
      this.timelineItem_ = null;
      return this;
    }

    public ApiResponse clearType()
    {
      this.type_ = 0;
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public ApiResponse clearUserAction()
    {
      this.userAction_ = null;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      ApiResponse localApiResponse;
      do
      {
        return true;
        if (!(paramObject instanceof ApiResponse))
          return false;
        localApiResponse = (ApiResponse)paramObject;
        if (this.type_ != localApiResponse.type_)
          break;
        if (this.timelineItem_ != null)
          break label62;
        if (localApiResponse.timelineItem_ != null)
          break;
        if (this.userAction_ != null)
          break label79;
      }
      while (localApiResponse.userAction_ == null);
      label62: label79: 
      while (!this.userAction_.equals(localApiResponse.userAction_))
      {
        do
          return false;
        while (!this.timelineItem_.equals(localApiResponse.timelineItem_));
        break;
      }
      return true;
    }

    public int getSerializedSize()
    {
      int i = 0x1 & this.bitField0_;
      int j = 0;
      if (i != 0)
        j = 0 + CodedOutputByteBufferNano.computeInt32Size(1, this.type_);
      if (this.timelineItem_ != null)
        j += CodedOutputByteBufferNano.computeMessageSize(2, this.timelineItem_);
      if (this.userAction_ != null)
        j += CodedOutputByteBufferNano.computeMessageSize(3, this.userAction_);
      this.cachedSize = j;
      return j;
    }

    public TimelineNano.TimelineItem getTimelineItem()
    {
      return this.timelineItem_;
    }

    public int getType()
    {
      return this.type_;
    }

    public TimelineNano.UserAction getUserAction()
    {
      return this.userAction_;
    }

    public boolean hasTimelineItem()
    {
      return this.timelineItem_ != null;
    }

    public boolean hasType()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public boolean hasUserAction()
    {
      return this.userAction_ != null;
    }

    public int hashCode()
    {
      int i = 31 * (527 + this.type_);
      int j;
      int k;
      int m;
      if (this.timelineItem_ == null)
      {
        j = 0;
        k = 31 * (i + j);
        TimelineNano.UserAction localUserAction = this.userAction_;
        m = 0;
        if (localUserAction != null)
          break label58;
      }
      while (true)
      {
        return k + m;
        j = this.timelineItem_.hashCode();
        break;
        label58: m = this.userAction_.hashCode();
      }
    }

    public ApiResponse mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          if (j == 0);
          for (this.type_ = j; ; this.type_ = 0)
          {
            this.bitField0_ = (0x1 | this.bitField0_);
            break;
          }
        case 18:
          if (this.timelineItem_ == null)
            this.timelineItem_ = new TimelineNano.TimelineItem();
          paramCodedInputByteBufferNano.readMessage(this.timelineItem_);
          break;
        case 26:
        }
        if (this.userAction_ == null)
          this.userAction_ = new TimelineNano.UserAction();
        paramCodedInputByteBufferNano.readMessage(this.userAction_);
      }
    }

    public ApiResponse setTimelineItem(TimelineNano.TimelineItem paramTimelineItem)
    {
      if (paramTimelineItem == null)
        throw new NullPointerException();
      this.timelineItem_ = paramTimelineItem;
      return this;
    }

    public ApiResponse setType(int paramInt)
    {
      this.type_ = paramInt;
      this.bitField0_ = (0x1 | this.bitField0_);
      return this;
    }

    public ApiResponse setUserAction(TimelineNano.UserAction paramUserAction)
    {
      if (paramUserAction == null)
        throw new NullPointerException();
      this.userAction_ = paramUserAction;
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if ((0x1 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt32(1, this.type_);
      if (this.timelineItem_ != null)
        paramCodedOutputByteBufferNano.writeMessage(2, this.timelineItem_);
      if (this.userAction_ != null)
        paramCodedOutputByteBufferNano.writeMessage(3, this.userAction_);
    }

    public static abstract interface ResponseType
    {
      public static final int USER_ACTION;
    }
  }

  public static final class Command extends MessageNano
  {
    public static final Command[] EMPTY_ARRAY = new Command[0];
    public int command = 0;

    public static Command parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new Command().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static Command parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (Command)MessageNano.mergeFrom(new Command(), paramArrayOfByte);
    }

    public final Command clear()
    {
      this.command = 0;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      Command localCommand;
      do
      {
        return true;
        if (!(paramObject instanceof Command))
          return false;
        localCommand = (Command)paramObject;
      }
      while (this.command == localCommand.command);
      return false;
    }

    public int getSerializedSize()
    {
      int i = 0 + CodedOutputByteBufferNano.computeInt32Size(1, this.command);
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      return 527 + this.command;
    }

    public Command mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
        int j = paramCodedInputByteBufferNano.readInt32();
        if ((j == 0) || (j == 1) || (j == 2))
          this.command = j;
        else
          this.command = 0;
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      paramCodedOutputByteBufferNano.writeInt32(1, this.command);
    }

    public static abstract interface CommandType
    {
      public static final int START_DEBUG = 1;
      public static final int STOP_DEBUG = 2;
      public static final int UNPAIR;
    }
  }

  public static final class CompanionInfo extends MessageNano
  {
    public static final CompanionInfo[] EMPTY_ARRAY = new CompanionInfo[0];
    private int bitField0_;
    public long id = 0L;
    private boolean requestLog_ = false;
    private boolean requestNetwork_ = false;
    private int responseAndroidVersion_ = 0;
    private boolean responseIsNetworkOk_ = false;
    private String responseLog_ = "";

    public static CompanionInfo parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new CompanionInfo().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static CompanionInfo parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (CompanionInfo)MessageNano.mergeFrom(new CompanionInfo(), paramArrayOfByte);
    }

    public final CompanionInfo clear()
    {
      this.bitField0_ = 0;
      this.id = 0L;
      this.requestNetwork_ = false;
      this.responseIsNetworkOk_ = false;
      this.responseAndroidVersion_ = 0;
      this.requestLog_ = false;
      this.responseLog_ = "";
      this.cachedSize = -1;
      return this;
    }

    public CompanionInfo clearRequestLog()
    {
      this.requestLog_ = false;
      this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
      return this;
    }

    public CompanionInfo clearRequestNetwork()
    {
      this.requestNetwork_ = false;
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public CompanionInfo clearResponseAndroidVersion()
    {
      this.responseAndroidVersion_ = 0;
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      return this;
    }

    public CompanionInfo clearResponseIsNetworkOk()
    {
      this.responseIsNetworkOk_ = false;
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      return this;
    }

    public CompanionInfo clearResponseLog()
    {
      this.responseLog_ = "";
      this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      CompanionInfo localCompanionInfo;
      do
      {
        return true;
        if (!(paramObject instanceof CompanionInfo))
          return false;
        localCompanionInfo = (CompanionInfo)paramObject;
        if ((this.id != localCompanionInfo.id) || (this.requestNetwork_ != localCompanionInfo.requestNetwork_) || (this.responseIsNetworkOk_ != localCompanionInfo.responseIsNetworkOk_) || (this.responseAndroidVersion_ != localCompanionInfo.responseAndroidVersion_) || (this.requestLog_ != localCompanionInfo.requestLog_))
          break;
        if (this.responseLog_ != null)
          break label93;
      }
      while (localCompanionInfo.responseLog_ == null);
      label93: 
      while (!this.responseLog_.equals(localCompanionInfo.responseLog_))
        return false;
      return true;
    }

    public boolean getRequestLog()
    {
      return this.requestLog_;
    }

    public boolean getRequestNetwork()
    {
      return this.requestNetwork_;
    }

    public int getResponseAndroidVersion()
    {
      return this.responseAndroidVersion_;
    }

    public boolean getResponseIsNetworkOk()
    {
      return this.responseIsNetworkOk_;
    }

    public String getResponseLog()
    {
      return this.responseLog_;
    }

    public int getSerializedSize()
    {
      int i = 0 + CodedOutputByteBufferNano.computeInt64Size(1, this.id);
      if ((0x1 & this.bitField0_) != 0)
        i += CodedOutputByteBufferNano.computeBoolSize(2, this.requestNetwork_);
      if ((0x2 & this.bitField0_) != 0)
        i += CodedOutputByteBufferNano.computeBoolSize(3, this.responseIsNetworkOk_);
      if ((0x4 & this.bitField0_) != 0)
        i += CodedOutputByteBufferNano.computeInt32Size(4, this.responseAndroidVersion_);
      if ((0x8 & this.bitField0_) != 0)
        i += CodedOutputByteBufferNano.computeBoolSize(5, this.requestLog_);
      if ((0x10 & this.bitField0_) != 0)
        i += CodedOutputByteBufferNano.computeStringSize(6, this.responseLog_);
      this.cachedSize = i;
      return i;
    }

    public boolean hasRequestLog()
    {
      return (0x8 & this.bitField0_) != 0;
    }

    public boolean hasRequestNetwork()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public boolean hasResponseAndroidVersion()
    {
      return (0x4 & this.bitField0_) != 0;
    }

    public boolean hasResponseIsNetworkOk()
    {
      return (0x2 & this.bitField0_) != 0;
    }

    public boolean hasResponseLog()
    {
      return (0x10 & this.bitField0_) != 0;
    }

    public int hashCode()
    {
      int i = 1;
      int j = 31 * (527 + (int)(this.id ^ this.id >>> 32));
      int k;
      int n;
      label50: label75: int i2;
      if (this.requestNetwork_)
      {
        k = i;
        int m = 31 * (j + k);
        if (!this.responseIsNetworkOk_)
          break label105;
        n = i;
        int i1 = 31 * (31 * (m + n) + this.responseAndroidVersion_);
        if (!this.requestLog_)
          break label111;
        i2 = 31 * (i1 + i);
        if (this.responseLog_ != null)
          break label116;
      }
      label105: label111: label116: for (int i3 = 0; ; i3 = this.responseLog_.hashCode())
      {
        return i2 + i3;
        k = 2;
        break;
        n = 2;
        break label50;
        i = 2;
        break label75;
      }
    }

    public CompanionInfo mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.id = paramCodedInputByteBufferNano.readInt64();
          break;
        case 16:
          this.requestNetwork_ = paramCodedInputByteBufferNano.readBool();
          this.bitField0_ = (0x1 | this.bitField0_);
          break;
        case 24:
          this.responseIsNetworkOk_ = paramCodedInputByteBufferNano.readBool();
          this.bitField0_ = (0x2 | this.bitField0_);
          break;
        case 32:
          this.responseAndroidVersion_ = paramCodedInputByteBufferNano.readInt32();
          this.bitField0_ = (0x4 | this.bitField0_);
          break;
        case 40:
          this.requestLog_ = paramCodedInputByteBufferNano.readBool();
          this.bitField0_ = (0x8 | this.bitField0_);
          break;
        case 50:
        }
        this.responseLog_ = paramCodedInputByteBufferNano.readString();
        this.bitField0_ = (0x10 | this.bitField0_);
      }
    }

    public CompanionInfo setRequestLog(boolean paramBoolean)
    {
      this.requestLog_ = paramBoolean;
      this.bitField0_ = (0x8 | this.bitField0_);
      return this;
    }

    public CompanionInfo setRequestNetwork(boolean paramBoolean)
    {
      this.requestNetwork_ = paramBoolean;
      this.bitField0_ = (0x1 | this.bitField0_);
      return this;
    }

    public CompanionInfo setResponseAndroidVersion(int paramInt)
    {
      this.responseAndroidVersion_ = paramInt;
      this.bitField0_ = (0x4 | this.bitField0_);
      return this;
    }

    public CompanionInfo setResponseIsNetworkOk(boolean paramBoolean)
    {
      this.responseIsNetworkOk_ = paramBoolean;
      this.bitField0_ = (0x2 | this.bitField0_);
      return this;
    }

    public CompanionInfo setResponseLog(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.responseLog_ = paramString;
      this.bitField0_ = (0x10 | this.bitField0_);
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      paramCodedOutputByteBufferNano.writeInt64(1, this.id);
      if ((0x1 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeBool(2, this.requestNetwork_);
      if ((0x2 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeBool(3, this.responseIsNetworkOk_);
      if ((0x4 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt32(4, this.responseAndroidVersion_);
      if ((0x8 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeBool(5, this.requestLog_);
      if ((0x10 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(6, this.responseLog_);
    }
  }

  public static final class Envelope extends MessageNano
  {
    public static final Envelope[] EMPTY_ARRAY = new Envelope[0];
    private Proto.ApiRequest apiRequestC2G_;
    private Proto.ApiResponse apiResponseG2C_;
    private int bitField0_;
    private Proto.Command command_;
    private Proto.CompanionInfo companionInfo_;
    private Proto.Error error_;
    private Proto.GlassInfoRequest glassInfoRequestC2G_;
    private Proto.GlassInfoResponse glassInfoResponseG2C_;
    private Proto.GlassSetupRequest glassSetupRequestC2G_;
    private Proto.GlassSetupResponse glassSetupResponseG2C_;
    private Proto.InputBoxRequest inputBoxRequestG2C_;
    private Proto.InputBoxResponse inputBoxResponseC2G_;
    private Proto.LocationMessage locationMessageC2G_;
    private Proto.LocationRequest locationRequestG2C_;
    private String messageC2G_ = "";
    private Proto.MotionEvent motionC2G_;
    private Proto.NavigationRequest navigationRequestC2G_;
    private Proto.ScreenShot screenshot_;
    private int serialNumber_ = 0;
    private String setupWifiC2G_ = "";
    private long timeMillis_ = 0L;
    public TimelineNano.TimelineItem[] timelineItem = TimelineNano.TimelineItem.EMPTY_ARRAY;
    public Proto.TimelineItemResponse[] timelineItemResponseC2G = Proto.TimelineItemResponse.EMPTY_ARRAY;
    private String timezoneC2G_ = "";
    private long uptimeMillis_ = 0L;
    private String urlG2C_ = "";
    public int version = 0;

    public static Envelope parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new Envelope().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static Envelope parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (Envelope)MessageNano.mergeFrom(new Envelope(), paramArrayOfByte);
    }

    public final Envelope clear()
    {
      this.bitField0_ = 0;
      this.version = 0;
      this.serialNumber_ = 0;
      this.timeMillis_ = 0L;
      this.uptimeMillis_ = 0L;
      this.timelineItem = TimelineNano.TimelineItem.EMPTY_ARRAY;
      this.timelineItemResponseC2G = Proto.TimelineItemResponse.EMPTY_ARRAY;
      this.locationRequestG2C_ = null;
      this.locationMessageC2G_ = null;
      this.messageC2G_ = "";
      this.timezoneC2G_ = "";
      this.navigationRequestC2G_ = null;
      this.urlG2C_ = "";
      this.setupWifiC2G_ = "";
      this.companionInfo_ = null;
      this.error_ = null;
      this.screenshot_ = null;
      this.command_ = null;
      this.apiRequestC2G_ = null;
      this.apiResponseG2C_ = null;
      this.motionC2G_ = null;
      this.glassInfoRequestC2G_ = null;
      this.glassInfoResponseG2C_ = null;
      this.inputBoxRequestG2C_ = null;
      this.inputBoxResponseC2G_ = null;
      this.glassSetupRequestC2G_ = null;
      this.glassSetupResponseG2C_ = null;
      this.cachedSize = -1;
      return this;
    }

    public Envelope clearApiRequestC2G()
    {
      this.apiRequestC2G_ = null;
      return this;
    }

    public Envelope clearApiResponseG2C()
    {
      this.apiResponseG2C_ = null;
      return this;
    }

    public Envelope clearCommand()
    {
      this.command_ = null;
      return this;
    }

    public Envelope clearCompanionInfo()
    {
      this.companionInfo_ = null;
      return this;
    }

    public Envelope clearError()
    {
      this.error_ = null;
      return this;
    }

    public Envelope clearGlassInfoRequestC2G()
    {
      this.glassInfoRequestC2G_ = null;
      return this;
    }

    public Envelope clearGlassInfoResponseG2C()
    {
      this.glassInfoResponseG2C_ = null;
      return this;
    }

    public Envelope clearGlassSetupRequestC2G()
    {
      this.glassSetupRequestC2G_ = null;
      return this;
    }

    public Envelope clearGlassSetupResponseG2C()
    {
      this.glassSetupResponseG2C_ = null;
      return this;
    }

    public Envelope clearInputBoxRequestG2C()
    {
      this.inputBoxRequestG2C_ = null;
      return this;
    }

    public Envelope clearInputBoxResponseC2G()
    {
      this.inputBoxResponseC2G_ = null;
      return this;
    }

    public Envelope clearLocationMessageC2G()
    {
      this.locationMessageC2G_ = null;
      return this;
    }

    public Envelope clearLocationRequestG2C()
    {
      this.locationRequestG2C_ = null;
      return this;
    }

    public Envelope clearMessageC2G()
    {
      this.messageC2G_ = "";
      this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
      return this;
    }

    public Envelope clearMotionC2G()
    {
      this.motionC2G_ = null;
      return this;
    }

    public Envelope clearNavigationRequestC2G()
    {
      this.navigationRequestC2G_ = null;
      return this;
    }

    public Envelope clearScreenshot()
    {
      this.screenshot_ = null;
      return this;
    }

    public Envelope clearSerialNumber()
    {
      this.serialNumber_ = 0;
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public Envelope clearSetupWifiC2G()
    {
      this.setupWifiC2G_ = "";
      this.bitField0_ = (0xFFFFFFBF & this.bitField0_);
      return this;
    }

    public Envelope clearTimeMillis()
    {
      this.timeMillis_ = 0L;
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      return this;
    }

    public Envelope clearTimezoneC2G()
    {
      this.timezoneC2G_ = "";
      this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
      return this;
    }

    public Envelope clearUptimeMillis()
    {
      this.uptimeMillis_ = 0L;
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      return this;
    }

    public Envelope clearUrlG2C()
    {
      this.urlG2C_ = "";
      this.bitField0_ = (0xFFFFFFDF & this.bitField0_);
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      Envelope localEnvelope;
      label123: 
      do
      {
        return true;
        if (!(paramObject instanceof Envelope))
          return false;
        localEnvelope = (Envelope)paramObject;
        if ((this.version != localEnvelope.version) || (this.serialNumber_ != localEnvelope.serialNumber_) || (this.timeMillis_ != localEnvelope.timeMillis_) || (this.uptimeMillis_ != localEnvelope.uptimeMillis_) || (!Arrays.equals(this.timelineItem, localEnvelope.timelineItem)) || (!Arrays.equals(this.timelineItemResponseC2G, localEnvelope.timelineItemResponseC2G)))
          break;
        if (this.locationRequestG2C_ != null)
          break label377;
        if (localEnvelope.locationRequestG2C_ != null)
          break;
        if (this.locationMessageC2G_ != null)
          break label394;
        if (localEnvelope.locationMessageC2G_ != null)
          break;
        if (this.messageC2G_ != null)
          break label411;
        if (localEnvelope.messageC2G_ != null)
          break;
        if (this.timezoneC2G_ != null)
          break label428;
        if (localEnvelope.timezoneC2G_ != null)
          break;
        if (this.navigationRequestC2G_ != null)
          break label445;
        if (localEnvelope.navigationRequestC2G_ != null)
          break;
        if (this.urlG2C_ != null)
          break label462;
        if (localEnvelope.urlG2C_ != null)
          break;
        if (this.setupWifiC2G_ != null)
          break label479;
        if (localEnvelope.setupWifiC2G_ != null)
          break;
        if (this.companionInfo_ != null)
          break label496;
        if (localEnvelope.companionInfo_ != null)
          break;
        if (this.error_ != null)
          break label513;
        if (localEnvelope.error_ != null)
          break;
        if (this.screenshot_ != null)
          break label530;
        if (localEnvelope.screenshot_ != null)
          break;
        if (this.command_ != null)
          break label547;
        if (localEnvelope.command_ != null)
          break;
        if (this.apiRequestC2G_ != null)
          break label564;
        if (localEnvelope.apiRequestC2G_ != null)
          break;
        if (this.apiResponseG2C_ != null)
          break label581;
        if (localEnvelope.apiResponseG2C_ != null)
          break;
        if (this.motionC2G_ != null)
          break label598;
        if (localEnvelope.motionC2G_ != null)
          break;
        if (this.glassInfoRequestC2G_ != null)
          break label615;
        if (localEnvelope.glassInfoRequestC2G_ != null)
          break;
        if (this.glassInfoResponseG2C_ != null)
          break label632;
        if (localEnvelope.glassInfoResponseG2C_ != null)
          break;
        if (this.inputBoxRequestG2C_ != null)
          break label649;
        if (localEnvelope.inputBoxRequestG2C_ != null)
          break;
        if (this.inputBoxResponseC2G_ != null)
          break label666;
        if (localEnvelope.inputBoxResponseC2G_ != null)
          break;
        if (this.glassSetupRequestC2G_ != null)
          break label683;
        if (localEnvelope.glassSetupRequestC2G_ != null)
          break;
        if (this.glassSetupResponseG2C_ != null)
          break label700;
      }
      while (localEnvelope.glassSetupResponseG2C_ == null);
      label137: label151: label165: label179: label193: label207: label221: label235: label249: 
      while (!this.glassSetupResponseG2C_.equals(localEnvelope.glassSetupResponseG2C_))
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
                                          {
                                            do
                                              return false;
                                            while (!this.locationRequestG2C_.equals(localEnvelope.locationRequestG2C_));
                                            break;
                                          }
                                          while (!this.locationMessageC2G_.equals(localEnvelope.locationMessageC2G_));
                                          break label123;
                                        }
                                        while (!this.messageC2G_.equals(localEnvelope.messageC2G_));
                                        break label137;
                                      }
                                      while (!this.timezoneC2G_.equals(localEnvelope.timezoneC2G_));
                                      break label151;
                                    }
                                    while (!this.navigationRequestC2G_.equals(localEnvelope.navigationRequestC2G_));
                                    break label165;
                                  }
                                  while (!this.urlG2C_.equals(localEnvelope.urlG2C_));
                                  break label179;
                                }
                                while (!this.setupWifiC2G_.equals(localEnvelope.setupWifiC2G_));
                                break label193;
                              }
                              while (!this.companionInfo_.equals(localEnvelope.companionInfo_));
                              break label207;
                            }
                            while (!this.error_.equals(localEnvelope.error_));
                            break label221;
                          }
                          while (!this.screenshot_.equals(localEnvelope.screenshot_));
                          break label235;
                        }
                        while (!this.command_.equals(localEnvelope.command_));
                        break label249;
                      }
                      while (!this.apiRequestC2G_.equals(localEnvelope.apiRequestC2G_));
                      break label263;
                    }
                    while (!this.apiResponseG2C_.equals(localEnvelope.apiResponseG2C_));
                    break label277;
                  }
                  while (!this.motionC2G_.equals(localEnvelope.motionC2G_));
                  break label291;
                }
                while (!this.glassInfoRequestC2G_.equals(localEnvelope.glassInfoRequestC2G_));
                break label305;
              }
              while (!this.glassInfoResponseG2C_.equals(localEnvelope.glassInfoResponseG2C_));
              break label319;
            }
            while (!this.inputBoxRequestG2C_.equals(localEnvelope.inputBoxRequestG2C_));
            break label333;
          }
          while (!this.inputBoxResponseC2G_.equals(localEnvelope.inputBoxResponseC2G_));
          break label347;
        }
        while (!this.glassSetupRequestC2G_.equals(localEnvelope.glassSetupRequestC2G_));
        break label361;
      }
      label263: label277: label291: label305: label319: label333: label347: label361: label377: return true;
    }

    public Proto.ApiRequest getApiRequestC2G()
    {
      return this.apiRequestC2G_;
    }

    public Proto.ApiResponse getApiResponseG2C()
    {
      return this.apiResponseG2C_;
    }

    public Proto.Command getCommand()
    {
      return this.command_;
    }

    public Proto.CompanionInfo getCompanionInfo()
    {
      return this.companionInfo_;
    }

    public Proto.Error getError()
    {
      return this.error_;
    }

    public Proto.GlassInfoRequest getGlassInfoRequestC2G()
    {
      return this.glassInfoRequestC2G_;
    }

    public Proto.GlassInfoResponse getGlassInfoResponseG2C()
    {
      return this.glassInfoResponseG2C_;
    }

    public Proto.GlassSetupRequest getGlassSetupRequestC2G()
    {
      return this.glassSetupRequestC2G_;
    }

    public Proto.GlassSetupResponse getGlassSetupResponseG2C()
    {
      return this.glassSetupResponseG2C_;
    }

    public Proto.InputBoxRequest getInputBoxRequestG2C()
    {
      return this.inputBoxRequestG2C_;
    }

    public Proto.InputBoxResponse getInputBoxResponseC2G()
    {
      return this.inputBoxResponseC2G_;
    }

    public Proto.LocationMessage getLocationMessageC2G()
    {
      return this.locationMessageC2G_;
    }

    public Proto.LocationRequest getLocationRequestG2C()
    {
      return this.locationRequestG2C_;
    }

    public String getMessageC2G()
    {
      return this.messageC2G_;
    }

    public Proto.MotionEvent getMotionC2G()
    {
      return this.motionC2G_;
    }

    public Proto.NavigationRequest getNavigationRequestC2G()
    {
      return this.navigationRequestC2G_;
    }

    public Proto.ScreenShot getScreenshot()
    {
      return this.screenshot_;
    }

    public int getSerialNumber()
    {
      return this.serialNumber_;
    }

    public int getSerializedSize()
    {
      int i = 0 + CodedOutputByteBufferNano.computeUInt32Size(1, this.version);
      if ((0x1 & this.bitField0_) != 0)
        i += CodedOutputByteBufferNano.computeUInt32Size(2, this.serialNumber_);
      if ((0x2 & this.bitField0_) != 0)
        i += CodedOutputByteBufferNano.computeUInt64Size(3, this.timeMillis_);
      if ((0x4 & this.bitField0_) != 0)
        i += CodedOutputByteBufferNano.computeUInt64Size(4, this.uptimeMillis_);
      if (this.timelineItem != null)
      {
        TimelineNano.TimelineItem[] arrayOfTimelineItem = this.timelineItem;
        int m = arrayOfTimelineItem.length;
        for (int n = 0; n < m; n++)
          i += CodedOutputByteBufferNano.computeMessageSize(5, arrayOfTimelineItem[n]);
      }
      if (this.locationRequestG2C_ != null)
        i += CodedOutputByteBufferNano.computeMessageSize(6, this.locationRequestG2C_);
      if (this.locationMessageC2G_ != null)
        i += CodedOutputByteBufferNano.computeMessageSize(7, this.locationMessageC2G_);
      if ((0x8 & this.bitField0_) != 0)
        i += CodedOutputByteBufferNano.computeStringSize(8, this.messageC2G_);
      if ((0x10 & this.bitField0_) != 0)
        i += CodedOutputByteBufferNano.computeStringSize(9, this.timezoneC2G_);
      if (this.navigationRequestC2G_ != null)
        i += CodedOutputByteBufferNano.computeMessageSize(10, this.navigationRequestC2G_);
      if ((0x20 & this.bitField0_) != 0)
        i += CodedOutputByteBufferNano.computeStringSize(11, this.urlG2C_);
      if ((0x40 & this.bitField0_) != 0)
        i += CodedOutputByteBufferNano.computeStringSize(12, this.setupWifiC2G_);
      if (this.companionInfo_ != null)
        i += CodedOutputByteBufferNano.computeMessageSize(13, this.companionInfo_);
      if (this.error_ != null)
        i += CodedOutputByteBufferNano.computeMessageSize(14, this.error_);
      if (this.screenshot_ != null)
        i += CodedOutputByteBufferNano.computeMessageSize(15, this.screenshot_);
      if (this.command_ != null)
        i += CodedOutputByteBufferNano.computeMessageSize(16, this.command_);
      if (this.timelineItemResponseC2G != null)
      {
        Proto.TimelineItemResponse[] arrayOfTimelineItemResponse = this.timelineItemResponseC2G;
        int j = arrayOfTimelineItemResponse.length;
        for (int k = 0; k < j; k++)
          i += CodedOutputByteBufferNano.computeMessageSize(17, arrayOfTimelineItemResponse[k]);
      }
      if (this.apiRequestC2G_ != null)
        i += CodedOutputByteBufferNano.computeMessageSize(18, this.apiRequestC2G_);
      if (this.apiResponseG2C_ != null)
        i += CodedOutputByteBufferNano.computeMessageSize(19, this.apiResponseG2C_);
      if (this.motionC2G_ != null)
        i += CodedOutputByteBufferNano.computeMessageSize(20, this.motionC2G_);
      if (this.glassInfoRequestC2G_ != null)
        i += CodedOutputByteBufferNano.computeMessageSize(21, this.glassInfoRequestC2G_);
      if (this.glassInfoResponseG2C_ != null)
        i += CodedOutputByteBufferNano.computeMessageSize(22, this.glassInfoResponseG2C_);
      if (this.inputBoxRequestG2C_ != null)
        i += CodedOutputByteBufferNano.computeMessageSize(23, this.inputBoxRequestG2C_);
      if (this.inputBoxResponseC2G_ != null)
        i += CodedOutputByteBufferNano.computeMessageSize(24, this.inputBoxResponseC2G_);
      if (this.glassSetupRequestC2G_ != null)
        i += CodedOutputByteBufferNano.computeMessageSize(25, this.glassSetupRequestC2G_);
      if (this.glassSetupResponseG2C_ != null)
        i += CodedOutputByteBufferNano.computeMessageSize(26, this.glassSetupResponseG2C_);
      this.cachedSize = i;
      return i;
    }

    public String getSetupWifiC2G()
    {
      return this.setupWifiC2G_;
    }

    public long getTimeMillis()
    {
      return this.timeMillis_;
    }

    public String getTimezoneC2G()
    {
      return this.timezoneC2G_;
    }

    public long getUptimeMillis()
    {
      return this.uptimeMillis_;
    }

    public String getUrlG2C()
    {
      return this.urlG2C_;
    }

    public boolean hasApiRequestC2G()
    {
      return this.apiRequestC2G_ != null;
    }

    public boolean hasApiResponseG2C()
    {
      return this.apiResponseG2C_ != null;
    }

    public boolean hasCommand()
    {
      return this.command_ != null;
    }

    public boolean hasCompanionInfo()
    {
      return this.companionInfo_ != null;
    }

    public boolean hasError()
    {
      return this.error_ != null;
    }

    public boolean hasGlassInfoRequestC2G()
    {
      return this.glassInfoRequestC2G_ != null;
    }

    public boolean hasGlassInfoResponseG2C()
    {
      return this.glassInfoResponseG2C_ != null;
    }

    public boolean hasGlassSetupRequestC2G()
    {
      return this.glassSetupRequestC2G_ != null;
    }

    public boolean hasGlassSetupResponseG2C()
    {
      return this.glassSetupResponseG2C_ != null;
    }

    public boolean hasInputBoxRequestG2C()
    {
      return this.inputBoxRequestG2C_ != null;
    }

    public boolean hasInputBoxResponseC2G()
    {
      return this.inputBoxResponseC2G_ != null;
    }

    public boolean hasLocationMessageC2G()
    {
      return this.locationMessageC2G_ != null;
    }

    public boolean hasLocationRequestG2C()
    {
      return this.locationRequestG2C_ != null;
    }

    public boolean hasMessageC2G()
    {
      return (0x8 & this.bitField0_) != 0;
    }

    public boolean hasMotionC2G()
    {
      return this.motionC2G_ != null;
    }

    public boolean hasNavigationRequestC2G()
    {
      return this.navigationRequestC2G_ != null;
    }

    public boolean hasScreenshot()
    {
      return this.screenshot_ != null;
    }

    public boolean hasSerialNumber()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public boolean hasSetupWifiC2G()
    {
      return (0x40 & this.bitField0_) != 0;
    }

    public boolean hasTimeMillis()
    {
      return (0x2 & this.bitField0_) != 0;
    }

    public boolean hasTimezoneC2G()
    {
      return (0x10 & this.bitField0_) != 0;
    }

    public boolean hasUptimeMillis()
    {
      return (0x4 & this.bitField0_) != 0;
    }

    public boolean hasUrlG2C()
    {
      return (0x20 & this.bitField0_) != 0;
    }

    public int hashCode()
    {
      int i = 31 * (31 * (31 * (527 + this.version) + this.serialNumber_) + (int)(this.timeMillis_ ^ this.timeMillis_ >>> 32)) + (int)(this.uptimeMillis_ ^ this.uptimeMillis_ >>> 32);
      int i4;
      label91: int i6;
      label111: int i8;
      label131: int i10;
      label151: int i12;
      label171: int i14;
      label191: int i16;
      label211: int i18;
      label231: int i20;
      label251: int i22;
      label271: int i24;
      label291: int i26;
      label311: int i28;
      label331: int i30;
      label351: int i32;
      label371: int i34;
      label391: int i36;
      label411: int i38;
      label431: int i40;
      label451: int i41;
      int i42;
      if (this.timelineItem == null)
      {
        i *= 31;
        if (this.timelineItemResponseC2G != null)
          break label534;
        i *= 31;
        int i3 = i * 31;
        if (this.locationRequestG2C_ != null)
          break label593;
        i4 = 0;
        int i5 = 31 * (i3 + i4);
        if (this.locationMessageC2G_ != null)
          break label605;
        i6 = 0;
        int i7 = 31 * (i5 + i6);
        if (this.messageC2G_ != null)
          break label617;
        i8 = 0;
        int i9 = 31 * (i7 + i8);
        if (this.timezoneC2G_ != null)
          break label629;
        i10 = 0;
        int i11 = 31 * (i9 + i10);
        if (this.navigationRequestC2G_ != null)
          break label641;
        i12 = 0;
        int i13 = 31 * (i11 + i12);
        if (this.urlG2C_ != null)
          break label653;
        i14 = 0;
        int i15 = 31 * (i13 + i14);
        if (this.setupWifiC2G_ != null)
          break label665;
        i16 = 0;
        int i17 = 31 * (i15 + i16);
        if (this.companionInfo_ != null)
          break label677;
        i18 = 0;
        int i19 = 31 * (i17 + i18);
        if (this.error_ != null)
          break label689;
        i20 = 0;
        int i21 = 31 * (i19 + i20);
        if (this.screenshot_ != null)
          break label701;
        i22 = 0;
        int i23 = 31 * (i21 + i22);
        if (this.command_ != null)
          break label713;
        i24 = 0;
        int i25 = 31 * (i23 + i24);
        if (this.apiRequestC2G_ != null)
          break label725;
        i26 = 0;
        int i27 = 31 * (i25 + i26);
        if (this.apiResponseG2C_ != null)
          break label737;
        i28 = 0;
        int i29 = 31 * (i27 + i28);
        if (this.motionC2G_ != null)
          break label749;
        i30 = 0;
        int i31 = 31 * (i29 + i30);
        if (this.glassInfoRequestC2G_ != null)
          break label761;
        i32 = 0;
        int i33 = 31 * (i31 + i32);
        if (this.glassInfoResponseG2C_ != null)
          break label773;
        i34 = 0;
        int i35 = 31 * (i33 + i34);
        if (this.inputBoxRequestG2C_ != null)
          break label785;
        i36 = 0;
        int i37 = 31 * (i35 + i36);
        if (this.inputBoxResponseC2G_ != null)
          break label797;
        i38 = 0;
        int i39 = 31 * (i37 + i38);
        if (this.glassSetupRequestC2G_ != null)
          break label809;
        i40 = 0;
        i41 = 31 * (i39 + i40);
        Proto.GlassSetupResponse localGlassSetupResponse = this.glassSetupResponseG2C_;
        i42 = 0;
        if (localGlassSetupResponse != null)
          break label821;
      }
      while (true)
      {
        return i41 + i42;
        int j = 0;
        label483: int k;
        if (j < this.timelineItem.length)
        {
          k = i * 31;
          if (this.timelineItem[j] != null)
            break label520;
        }
        label520: for (int m = 0; ; m = this.timelineItem[j].hashCode())
        {
          i = k + m;
          j++;
          break label483;
          break;
        }
        label534: int n = 0;
        label537: int i1;
        if (n < this.timelineItemResponseC2G.length)
        {
          i1 = i * 31;
          if (this.timelineItemResponseC2G[n] != null)
            break label578;
        }
        label578: for (int i2 = 0; ; i2 = this.timelineItemResponseC2G[n].hashCode())
        {
          i = i1 + i2;
          n++;
          break label537;
          break;
        }
        label593: i4 = this.locationRequestG2C_.hashCode();
        break label91;
        label605: i6 = this.locationMessageC2G_.hashCode();
        break label111;
        label617: i8 = this.messageC2G_.hashCode();
        break label131;
        label629: i10 = this.timezoneC2G_.hashCode();
        break label151;
        label641: i12 = this.navigationRequestC2G_.hashCode();
        break label171;
        label653: i14 = this.urlG2C_.hashCode();
        break label191;
        label665: i16 = this.setupWifiC2G_.hashCode();
        break label211;
        label677: i18 = this.companionInfo_.hashCode();
        break label231;
        label689: i20 = this.error_.hashCode();
        break label251;
        label701: i22 = this.screenshot_.hashCode();
        break label271;
        label713: i24 = this.command_.hashCode();
        break label291;
        label725: i26 = this.apiRequestC2G_.hashCode();
        break label311;
        label737: i28 = this.apiResponseG2C_.hashCode();
        break label331;
        label749: i30 = this.motionC2G_.hashCode();
        break label351;
        label761: i32 = this.glassInfoRequestC2G_.hashCode();
        break label371;
        label773: i34 = this.glassInfoResponseG2C_.hashCode();
        break label391;
        label785: i36 = this.inputBoxRequestG2C_.hashCode();
        break label411;
        label797: i38 = this.inputBoxResponseC2G_.hashCode();
        break label431;
        label809: i40 = this.glassSetupRequestC2G_.hashCode();
        break label451;
        label821: i42 = this.glassSetupResponseG2C_.hashCode();
      }
    }

    public Envelope mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.version = paramCodedInputByteBufferNano.readUInt32();
          break;
        case 16:
          this.serialNumber_ = paramCodedInputByteBufferNano.readUInt32();
          this.bitField0_ = (0x1 | this.bitField0_);
          break;
        case 24:
          this.timeMillis_ = paramCodedInputByteBufferNano.readUInt64();
          this.bitField0_ = (0x2 | this.bitField0_);
          break;
        case 32:
          this.uptimeMillis_ = paramCodedInputByteBufferNano.readUInt64();
          this.bitField0_ = (0x4 | this.bitField0_);
          break;
        case 42:
          int m = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 42);
          if (this.timelineItem == null);
          for (int n = 0; ; n = this.timelineItem.length)
          {
            TimelineNano.TimelineItem[] arrayOfTimelineItem = new TimelineNano.TimelineItem[n + m];
            if (this.timelineItem != null)
              System.arraycopy(this.timelineItem, 0, arrayOfTimelineItem, 0, n);
            this.timelineItem = arrayOfTimelineItem;
            while (n < -1 + this.timelineItem.length)
            {
              this.timelineItem[n] = new TimelineNano.TimelineItem();
              paramCodedInputByteBufferNano.readMessage(this.timelineItem[n]);
              paramCodedInputByteBufferNano.readTag();
              n++;
            }
          }
          this.timelineItem[n] = new TimelineNano.TimelineItem();
          paramCodedInputByteBufferNano.readMessage(this.timelineItem[n]);
          break;
        case 50:
          if (this.locationRequestG2C_ == null)
            this.locationRequestG2C_ = new Proto.LocationRequest();
          paramCodedInputByteBufferNano.readMessage(this.locationRequestG2C_);
          break;
        case 58:
          if (this.locationMessageC2G_ == null)
            this.locationMessageC2G_ = new Proto.LocationMessage();
          paramCodedInputByteBufferNano.readMessage(this.locationMessageC2G_);
          break;
        case 66:
          this.messageC2G_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x8 | this.bitField0_);
          break;
        case 74:
          this.timezoneC2G_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x10 | this.bitField0_);
          break;
        case 82:
          if (this.navigationRequestC2G_ == null)
            this.navigationRequestC2G_ = new Proto.NavigationRequest();
          paramCodedInputByteBufferNano.readMessage(this.navigationRequestC2G_);
          break;
        case 90:
          this.urlG2C_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x20 | this.bitField0_);
          break;
        case 98:
          this.setupWifiC2G_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x40 | this.bitField0_);
          break;
        case 106:
          if (this.companionInfo_ == null)
            this.companionInfo_ = new Proto.CompanionInfo();
          paramCodedInputByteBufferNano.readMessage(this.companionInfo_);
          break;
        case 114:
          if (this.error_ == null)
            this.error_ = new Proto.Error();
          paramCodedInputByteBufferNano.readMessage(this.error_);
          break;
        case 122:
          if (this.screenshot_ == null)
            this.screenshot_ = new Proto.ScreenShot();
          paramCodedInputByteBufferNano.readMessage(this.screenshot_);
          break;
        case 130:
          if (this.command_ == null)
            this.command_ = new Proto.Command();
          paramCodedInputByteBufferNano.readMessage(this.command_);
          break;
        case 138:
          int j = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 138);
          if (this.timelineItemResponseC2G == null);
          for (int k = 0; ; k = this.timelineItemResponseC2G.length)
          {
            Proto.TimelineItemResponse[] arrayOfTimelineItemResponse = new Proto.TimelineItemResponse[k + j];
            if (this.timelineItemResponseC2G != null)
              System.arraycopy(this.timelineItemResponseC2G, 0, arrayOfTimelineItemResponse, 0, k);
            this.timelineItemResponseC2G = arrayOfTimelineItemResponse;
            while (k < -1 + this.timelineItemResponseC2G.length)
            {
              this.timelineItemResponseC2G[k] = new Proto.TimelineItemResponse();
              paramCodedInputByteBufferNano.readMessage(this.timelineItemResponseC2G[k]);
              paramCodedInputByteBufferNano.readTag();
              k++;
            }
          }
          this.timelineItemResponseC2G[k] = new Proto.TimelineItemResponse();
          paramCodedInputByteBufferNano.readMessage(this.timelineItemResponseC2G[k]);
          break;
        case 146:
          if (this.apiRequestC2G_ == null)
            this.apiRequestC2G_ = new Proto.ApiRequest();
          paramCodedInputByteBufferNano.readMessage(this.apiRequestC2G_);
          break;
        case 154:
          if (this.apiResponseG2C_ == null)
            this.apiResponseG2C_ = new Proto.ApiResponse();
          paramCodedInputByteBufferNano.readMessage(this.apiResponseG2C_);
          break;
        case 162:
          if (this.motionC2G_ == null)
            this.motionC2G_ = new Proto.MotionEvent();
          paramCodedInputByteBufferNano.readMessage(this.motionC2G_);
          break;
        case 170:
          if (this.glassInfoRequestC2G_ == null)
            this.glassInfoRequestC2G_ = new Proto.GlassInfoRequest();
          paramCodedInputByteBufferNano.readMessage(this.glassInfoRequestC2G_);
          break;
        case 178:
          if (this.glassInfoResponseG2C_ == null)
            this.glassInfoResponseG2C_ = new Proto.GlassInfoResponse();
          paramCodedInputByteBufferNano.readMessage(this.glassInfoResponseG2C_);
          break;
        case 186:
          if (this.inputBoxRequestG2C_ == null)
            this.inputBoxRequestG2C_ = new Proto.InputBoxRequest();
          paramCodedInputByteBufferNano.readMessage(this.inputBoxRequestG2C_);
          break;
        case 194:
          if (this.inputBoxResponseC2G_ == null)
            this.inputBoxResponseC2G_ = new Proto.InputBoxResponse();
          paramCodedInputByteBufferNano.readMessage(this.inputBoxResponseC2G_);
          break;
        case 202:
          if (this.glassSetupRequestC2G_ == null)
            this.glassSetupRequestC2G_ = new Proto.GlassSetupRequest();
          paramCodedInputByteBufferNano.readMessage(this.glassSetupRequestC2G_);
          break;
        case 210:
        }
        if (this.glassSetupResponseG2C_ == null)
          this.glassSetupResponseG2C_ = new Proto.GlassSetupResponse();
        paramCodedInputByteBufferNano.readMessage(this.glassSetupResponseG2C_);
      }
    }

    public Envelope setApiRequestC2G(Proto.ApiRequest paramApiRequest)
    {
      if (paramApiRequest == null)
        throw new NullPointerException();
      this.apiRequestC2G_ = paramApiRequest;
      return this;
    }

    public Envelope setApiResponseG2C(Proto.ApiResponse paramApiResponse)
    {
      if (paramApiResponse == null)
        throw new NullPointerException();
      this.apiResponseG2C_ = paramApiResponse;
      return this;
    }

    public Envelope setCommand(Proto.Command paramCommand)
    {
      if (paramCommand == null)
        throw new NullPointerException();
      this.command_ = paramCommand;
      return this;
    }

    public Envelope setCompanionInfo(Proto.CompanionInfo paramCompanionInfo)
    {
      if (paramCompanionInfo == null)
        throw new NullPointerException();
      this.companionInfo_ = paramCompanionInfo;
      return this;
    }

    public Envelope setError(Proto.Error paramError)
    {
      if (paramError == null)
        throw new NullPointerException();
      this.error_ = paramError;
      return this;
    }

    public Envelope setGlassInfoRequestC2G(Proto.GlassInfoRequest paramGlassInfoRequest)
    {
      if (paramGlassInfoRequest == null)
        throw new NullPointerException();
      this.glassInfoRequestC2G_ = paramGlassInfoRequest;
      return this;
    }

    public Envelope setGlassInfoResponseG2C(Proto.GlassInfoResponse paramGlassInfoResponse)
    {
      if (paramGlassInfoResponse == null)
        throw new NullPointerException();
      this.glassInfoResponseG2C_ = paramGlassInfoResponse;
      return this;
    }

    public Envelope setGlassSetupRequestC2G(Proto.GlassSetupRequest paramGlassSetupRequest)
    {
      if (paramGlassSetupRequest == null)
        throw new NullPointerException();
      this.glassSetupRequestC2G_ = paramGlassSetupRequest;
      return this;
    }

    public Envelope setGlassSetupResponseG2C(Proto.GlassSetupResponse paramGlassSetupResponse)
    {
      if (paramGlassSetupResponse == null)
        throw new NullPointerException();
      this.glassSetupResponseG2C_ = paramGlassSetupResponse;
      return this;
    }

    public Envelope setInputBoxRequestG2C(Proto.InputBoxRequest paramInputBoxRequest)
    {
      if (paramInputBoxRequest == null)
        throw new NullPointerException();
      this.inputBoxRequestG2C_ = paramInputBoxRequest;
      return this;
    }

    public Envelope setInputBoxResponseC2G(Proto.InputBoxResponse paramInputBoxResponse)
    {
      if (paramInputBoxResponse == null)
        throw new NullPointerException();
      this.inputBoxResponseC2G_ = paramInputBoxResponse;
      return this;
    }

    public Envelope setLocationMessageC2G(Proto.LocationMessage paramLocationMessage)
    {
      if (paramLocationMessage == null)
        throw new NullPointerException();
      this.locationMessageC2G_ = paramLocationMessage;
      return this;
    }

    public Envelope setLocationRequestG2C(Proto.LocationRequest paramLocationRequest)
    {
      if (paramLocationRequest == null)
        throw new NullPointerException();
      this.locationRequestG2C_ = paramLocationRequest;
      return this;
    }

    public Envelope setMessageC2G(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.messageC2G_ = paramString;
      this.bitField0_ = (0x8 | this.bitField0_);
      return this;
    }

    public Envelope setMotionC2G(Proto.MotionEvent paramMotionEvent)
    {
      if (paramMotionEvent == null)
        throw new NullPointerException();
      this.motionC2G_ = paramMotionEvent;
      return this;
    }

    public Envelope setNavigationRequestC2G(Proto.NavigationRequest paramNavigationRequest)
    {
      if (paramNavigationRequest == null)
        throw new NullPointerException();
      this.navigationRequestC2G_ = paramNavigationRequest;
      return this;
    }

    public Envelope setScreenshot(Proto.ScreenShot paramScreenShot)
    {
      if (paramScreenShot == null)
        throw new NullPointerException();
      this.screenshot_ = paramScreenShot;
      return this;
    }

    public Envelope setSerialNumber(int paramInt)
    {
      this.serialNumber_ = paramInt;
      this.bitField0_ = (0x1 | this.bitField0_);
      return this;
    }

    public Envelope setSetupWifiC2G(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.setupWifiC2G_ = paramString;
      this.bitField0_ = (0x40 | this.bitField0_);
      return this;
    }

    public Envelope setTimeMillis(long paramLong)
    {
      this.timeMillis_ = paramLong;
      this.bitField0_ = (0x2 | this.bitField0_);
      return this;
    }

    public Envelope setTimezoneC2G(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.timezoneC2G_ = paramString;
      this.bitField0_ = (0x10 | this.bitField0_);
      return this;
    }

    public Envelope setUptimeMillis(long paramLong)
    {
      this.uptimeMillis_ = paramLong;
      this.bitField0_ = (0x4 | this.bitField0_);
      return this;
    }

    public Envelope setUrlG2C(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.urlG2C_ = paramString;
      this.bitField0_ = (0x20 | this.bitField0_);
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      paramCodedOutputByteBufferNano.writeUInt32(1, this.version);
      if ((0x1 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeUInt32(2, this.serialNumber_);
      if ((0x2 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeUInt64(3, this.timeMillis_);
      if ((0x4 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeUInt64(4, this.uptimeMillis_);
      if (this.timelineItem != null)
      {
        TimelineNano.TimelineItem[] arrayOfTimelineItem = this.timelineItem;
        int k = arrayOfTimelineItem.length;
        for (int m = 0; m < k; m++)
          paramCodedOutputByteBufferNano.writeMessage(5, arrayOfTimelineItem[m]);
      }
      if (this.locationRequestG2C_ != null)
        paramCodedOutputByteBufferNano.writeMessage(6, this.locationRequestG2C_);
      if (this.locationMessageC2G_ != null)
        paramCodedOutputByteBufferNano.writeMessage(7, this.locationMessageC2G_);
      if ((0x8 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(8, this.messageC2G_);
      if ((0x10 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(9, this.timezoneC2G_);
      if (this.navigationRequestC2G_ != null)
        paramCodedOutputByteBufferNano.writeMessage(10, this.navigationRequestC2G_);
      if ((0x20 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(11, this.urlG2C_);
      if ((0x40 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(12, this.setupWifiC2G_);
      if (this.companionInfo_ != null)
        paramCodedOutputByteBufferNano.writeMessage(13, this.companionInfo_);
      if (this.error_ != null)
        paramCodedOutputByteBufferNano.writeMessage(14, this.error_);
      if (this.screenshot_ != null)
        paramCodedOutputByteBufferNano.writeMessage(15, this.screenshot_);
      if (this.command_ != null)
        paramCodedOutputByteBufferNano.writeMessage(16, this.command_);
      if (this.timelineItemResponseC2G != null)
      {
        Proto.TimelineItemResponse[] arrayOfTimelineItemResponse = this.timelineItemResponseC2G;
        int i = arrayOfTimelineItemResponse.length;
        for (int j = 0; j < i; j++)
          paramCodedOutputByteBufferNano.writeMessage(17, arrayOfTimelineItemResponse[j]);
      }
      if (this.apiRequestC2G_ != null)
        paramCodedOutputByteBufferNano.writeMessage(18, this.apiRequestC2G_);
      if (this.apiResponseG2C_ != null)
        paramCodedOutputByteBufferNano.writeMessage(19, this.apiResponseG2C_);
      if (this.motionC2G_ != null)
        paramCodedOutputByteBufferNano.writeMessage(20, this.motionC2G_);
      if (this.glassInfoRequestC2G_ != null)
        paramCodedOutputByteBufferNano.writeMessage(21, this.glassInfoRequestC2G_);
      if (this.glassInfoResponseG2C_ != null)
        paramCodedOutputByteBufferNano.writeMessage(22, this.glassInfoResponseG2C_);
      if (this.inputBoxRequestG2C_ != null)
        paramCodedOutputByteBufferNano.writeMessage(23, this.inputBoxRequestG2C_);
      if (this.inputBoxResponseC2G_ != null)
        paramCodedOutputByteBufferNano.writeMessage(24, this.inputBoxResponseC2G_);
      if (this.glassSetupRequestC2G_ != null)
        paramCodedOutputByteBufferNano.writeMessage(25, this.glassSetupRequestC2G_);
      if (this.glassSetupResponseG2C_ != null)
        paramCodedOutputByteBufferNano.writeMessage(26, this.glassSetupResponseG2C_);
    }
  }

  public static final class Error extends MessageNano
  {
    public static final Error[] EMPTY_ARRAY = new Error[0];
    public int type = 0;

    public static Error parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new Error().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static Error parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (Error)MessageNano.mergeFrom(new Error(), paramArrayOfByte);
    }

    public final Error clear()
    {
      this.type = 0;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      Error localError;
      do
      {
        return true;
        if (!(paramObject instanceof Error))
          return false;
        localError = (Error)paramObject;
      }
      while (this.type == localError.type);
      return false;
    }

    public int getSerializedSize()
    {
      int i = 0 + CodedOutputByteBufferNano.computeInt32Size(1, this.type);
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      return 527 + this.type;
    }

    public Error mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
        int j = paramCodedInputByteBufferNano.readInt32();
        if ((j == 0) || (j == 1) || (j == 2))
          this.type = j;
        else
          this.type = 0;
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      paramCodedOutputByteBufferNano.writeInt32(1, this.type);
    }

    public static abstract interface ErrorType
    {
      public static final int SMS_GOOGLE_VOICE_NEEDS_UPDATE = 2;
      public static final int SMS_GOOGLE_VOICE_NOT_INSTALLED = 1;
      public static final int TETHERING_ERROR_ON_GLASS;
    }
  }

  public static final class GlassInfoRequest extends MessageNano
  {
    public static final GlassInfoRequest[] EMPTY_ARRAY = new GlassInfoRequest[0];
    private int bitField0_;
    private boolean requestBatteryLevel_ = false;
    private boolean requestDeviceName_ = false;
    private boolean requestNeedSetup_ = false;
    private boolean requestSoftwareVersion_ = false;
    private boolean requestStorageInfo_ = false;

    public static GlassInfoRequest parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new GlassInfoRequest().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static GlassInfoRequest parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (GlassInfoRequest)MessageNano.mergeFrom(new GlassInfoRequest(), paramArrayOfByte);
    }

    public final GlassInfoRequest clear()
    {
      this.bitField0_ = 0;
      this.requestBatteryLevel_ = false;
      this.requestStorageInfo_ = false;
      this.requestDeviceName_ = false;
      this.requestSoftwareVersion_ = false;
      this.requestNeedSetup_ = false;
      this.cachedSize = -1;
      return this;
    }

    public GlassInfoRequest clearRequestBatteryLevel()
    {
      this.requestBatteryLevel_ = false;
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public GlassInfoRequest clearRequestDeviceName()
    {
      this.requestDeviceName_ = false;
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      return this;
    }

    public GlassInfoRequest clearRequestNeedSetup()
    {
      this.requestNeedSetup_ = false;
      this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
      return this;
    }

    public GlassInfoRequest clearRequestSoftwareVersion()
    {
      this.requestSoftwareVersion_ = false;
      this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
      return this;
    }

    public GlassInfoRequest clearRequestStorageInfo()
    {
      this.requestStorageInfo_ = false;
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      GlassInfoRequest localGlassInfoRequest;
      do
      {
        return true;
        if (!(paramObject instanceof GlassInfoRequest))
          return false;
        localGlassInfoRequest = (GlassInfoRequest)paramObject;
      }
      while ((this.requestBatteryLevel_ == localGlassInfoRequest.requestBatteryLevel_) && (this.requestStorageInfo_ == localGlassInfoRequest.requestStorageInfo_) && (this.requestDeviceName_ == localGlassInfoRequest.requestDeviceName_) && (this.requestSoftwareVersion_ == localGlassInfoRequest.requestSoftwareVersion_) && (this.requestNeedSetup_ == localGlassInfoRequest.requestNeedSetup_));
      return false;
    }

    public boolean getRequestBatteryLevel()
    {
      return this.requestBatteryLevel_;
    }

    public boolean getRequestDeviceName()
    {
      return this.requestDeviceName_;
    }

    public boolean getRequestNeedSetup()
    {
      return this.requestNeedSetup_;
    }

    public boolean getRequestSoftwareVersion()
    {
      return this.requestSoftwareVersion_;
    }

    public boolean getRequestStorageInfo()
    {
      return this.requestStorageInfo_;
    }

    public int getSerializedSize()
    {
      int i = 0x1 & this.bitField0_;
      int j = 0;
      if (i != 0)
        j = 0 + CodedOutputByteBufferNano.computeBoolSize(1, this.requestBatteryLevel_);
      if ((0x2 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeBoolSize(2, this.requestStorageInfo_);
      if ((0x4 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeBoolSize(3, this.requestDeviceName_);
      if ((0x8 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeBoolSize(4, this.requestSoftwareVersion_);
      if ((0x10 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeBoolSize(5, this.requestNeedSetup_);
      this.cachedSize = j;
      return j;
    }

    public boolean hasRequestBatteryLevel()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public boolean hasRequestDeviceName()
    {
      return (0x4 & this.bitField0_) != 0;
    }

    public boolean hasRequestNeedSetup()
    {
      return (0x10 & this.bitField0_) != 0;
    }

    public boolean hasRequestSoftwareVersion()
    {
      return (0x8 & this.bitField0_) != 0;
    }

    public boolean hasRequestStorageInfo()
    {
      return (0x2 & this.bitField0_) != 0;
    }

    public int hashCode()
    {
      int i = 1;
      int j;
      int m;
      label30: int i1;
      label49: int i3;
      label69: int i4;
      if (this.requestBatteryLevel_)
      {
        j = i;
        int k = 31 * (j + 527);
        if (!this.requestStorageInfo_)
          break label96;
        m = i;
        int n = 31 * (k + m);
        if (!this.requestDeviceName_)
          break label102;
        i1 = i;
        int i2 = 31 * (n + i1);
        if (!this.requestSoftwareVersion_)
          break label108;
        i3 = i;
        i4 = 31 * (i2 + i3);
        if (!this.requestNeedSetup_)
          break label114;
      }
      while (true)
      {
        return i4 + i;
        j = 2;
        break;
        label96: m = 2;
        break label30;
        label102: i1 = 2;
        break label49;
        label108: i3 = 2;
        break label69;
        label114: i = 2;
      }
    }

    public GlassInfoRequest mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.requestBatteryLevel_ = paramCodedInputByteBufferNano.readBool();
          this.bitField0_ = (0x1 | this.bitField0_);
          break;
        case 16:
          this.requestStorageInfo_ = paramCodedInputByteBufferNano.readBool();
          this.bitField0_ = (0x2 | this.bitField0_);
          break;
        case 24:
          this.requestDeviceName_ = paramCodedInputByteBufferNano.readBool();
          this.bitField0_ = (0x4 | this.bitField0_);
          break;
        case 32:
          this.requestSoftwareVersion_ = paramCodedInputByteBufferNano.readBool();
          this.bitField0_ = (0x8 | this.bitField0_);
          break;
        case 40:
        }
        this.requestNeedSetup_ = paramCodedInputByteBufferNano.readBool();
        this.bitField0_ = (0x10 | this.bitField0_);
      }
    }

    public GlassInfoRequest setRequestBatteryLevel(boolean paramBoolean)
    {
      this.requestBatteryLevel_ = paramBoolean;
      this.bitField0_ = (0x1 | this.bitField0_);
      return this;
    }

    public GlassInfoRequest setRequestDeviceName(boolean paramBoolean)
    {
      this.requestDeviceName_ = paramBoolean;
      this.bitField0_ = (0x4 | this.bitField0_);
      return this;
    }

    public GlassInfoRequest setRequestNeedSetup(boolean paramBoolean)
    {
      this.requestNeedSetup_ = paramBoolean;
      this.bitField0_ = (0x10 | this.bitField0_);
      return this;
    }

    public GlassInfoRequest setRequestSoftwareVersion(boolean paramBoolean)
    {
      this.requestSoftwareVersion_ = paramBoolean;
      this.bitField0_ = (0x8 | this.bitField0_);
      return this;
    }

    public GlassInfoRequest setRequestStorageInfo(boolean paramBoolean)
    {
      this.requestStorageInfo_ = paramBoolean;
      this.bitField0_ = (0x2 | this.bitField0_);
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if ((0x1 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeBool(1, this.requestBatteryLevel_);
      if ((0x2 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeBool(2, this.requestStorageInfo_);
      if ((0x4 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeBool(3, this.requestDeviceName_);
      if ((0x8 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeBool(4, this.requestSoftwareVersion_);
      if ((0x10 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeBool(5, this.requestNeedSetup_);
    }
  }

  public static final class GlassInfoResponse extends MessageNano
  {
    public static final GlassInfoResponse[] EMPTY_ARRAY = new GlassInfoResponse[0];
    private int batteryLevel_ = 0;
    private int bitField0_;
    private String deviceName_ = "";
    private long externalStorageAvailableBytes_ = 0L;
    private long externalStorageTotalBytes_ = 0L;
    private boolean needSetup_ = false;
    private String softwareVersion_ = "";

    public static GlassInfoResponse parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new GlassInfoResponse().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static GlassInfoResponse parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (GlassInfoResponse)MessageNano.mergeFrom(new GlassInfoResponse(), paramArrayOfByte);
    }

    public final GlassInfoResponse clear()
    {
      this.bitField0_ = 0;
      this.batteryLevel_ = 0;
      this.externalStorageTotalBytes_ = 0L;
      this.externalStorageAvailableBytes_ = 0L;
      this.deviceName_ = "";
      this.softwareVersion_ = "";
      this.needSetup_ = false;
      this.cachedSize = -1;
      return this;
    }

    public GlassInfoResponse clearBatteryLevel()
    {
      this.batteryLevel_ = 0;
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public GlassInfoResponse clearDeviceName()
    {
      this.deviceName_ = "";
      this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
      return this;
    }

    public GlassInfoResponse clearExternalStorageAvailableBytes()
    {
      this.externalStorageAvailableBytes_ = 0L;
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      return this;
    }

    public GlassInfoResponse clearExternalStorageTotalBytes()
    {
      this.externalStorageTotalBytes_ = 0L;
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      return this;
    }

    public GlassInfoResponse clearNeedSetup()
    {
      this.needSetup_ = false;
      this.bitField0_ = (0xFFFFFFDF & this.bitField0_);
      return this;
    }

    public GlassInfoResponse clearSoftwareVersion()
    {
      this.softwareVersion_ = "";
      this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      label129: 
      while (true)
      {
        return true;
        if (!(paramObject instanceof GlassInfoResponse))
          return false;
        GlassInfoResponse localGlassInfoResponse = (GlassInfoResponse)paramObject;
        if ((this.batteryLevel_ == localGlassInfoResponse.batteryLevel_) && (this.externalStorageTotalBytes_ == localGlassInfoResponse.externalStorageTotalBytes_) && (this.externalStorageAvailableBytes_ == localGlassInfoResponse.externalStorageAvailableBytes_))
        {
          if (this.deviceName_ != null)
            break label97;
          if (localGlassInfoResponse.deviceName_ == null)
          {
            if (this.softwareVersion_ != null)
              break label114;
            if (localGlassInfoResponse.softwareVersion_ != null);
          }
        }
        while (true)
        {
          if (this.needSetup_ == localGlassInfoResponse.needSetup_)
            break label129;
          label97: label114: 
          do
          {
            do
              return false;
            while (!this.deviceName_.equals(localGlassInfoResponse.deviceName_));
            break;
          }
          while (!this.softwareVersion_.equals(localGlassInfoResponse.softwareVersion_));
        }
      }
    }

    public int getBatteryLevel()
    {
      return this.batteryLevel_;
    }

    public String getDeviceName()
    {
      return this.deviceName_;
    }

    public long getExternalStorageAvailableBytes()
    {
      return this.externalStorageAvailableBytes_;
    }

    public long getExternalStorageTotalBytes()
    {
      return this.externalStorageTotalBytes_;
    }

    public boolean getNeedSetup()
    {
      return this.needSetup_;
    }

    public int getSerializedSize()
    {
      int i = 0x1 & this.bitField0_;
      int j = 0;
      if (i != 0)
        j = 0 + CodedOutputByteBufferNano.computeInt32Size(1, this.batteryLevel_);
      if ((0x2 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeInt64Size(2, this.externalStorageTotalBytes_);
      if ((0x4 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeInt64Size(3, this.externalStorageAvailableBytes_);
      if ((0x8 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(4, this.deviceName_);
      if ((0x10 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(5, this.softwareVersion_);
      if ((0x20 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeBoolSize(6, this.needSetup_);
      this.cachedSize = j;
      return j;
    }

    public String getSoftwareVersion()
    {
      return this.softwareVersion_;
    }

    public boolean hasBatteryLevel()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public boolean hasDeviceName()
    {
      return (0x8 & this.bitField0_) != 0;
    }

    public boolean hasExternalStorageAvailableBytes()
    {
      return (0x4 & this.bitField0_) != 0;
    }

    public boolean hasExternalStorageTotalBytes()
    {
      return (0x2 & this.bitField0_) != 0;
    }

    public boolean hasNeedSetup()
    {
      return (0x20 & this.bitField0_) != 0;
    }

    public boolean hasSoftwareVersion()
    {
      return (0x10 & this.bitField0_) != 0;
    }

    public int hashCode()
    {
      int i = 31 * (31 * (31 * (527 + this.batteryLevel_) + (int)(this.externalStorageTotalBytes_ ^ this.externalStorageTotalBytes_ >>> 32)) + (int)(this.externalStorageAvailableBytes_ ^ this.externalStorageAvailableBytes_ >>> 32));
      int j;
      int m;
      label76: int n;
      if (this.deviceName_ == null)
      {
        j = 0;
        int k = 31 * (i + j);
        String str = this.softwareVersion_;
        m = 0;
        if (str != null)
          break label112;
        n = 31 * (k + m);
        if (!this.needSetup_)
          break label124;
      }
      label112: label124: for (int i1 = 1; ; i1 = 2)
      {
        return n + i1;
        j = this.deviceName_.hashCode();
        break;
        m = this.softwareVersion_.hashCode();
        break label76;
      }
    }

    public GlassInfoResponse mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.batteryLevel_ = paramCodedInputByteBufferNano.readInt32();
          this.bitField0_ = (0x1 | this.bitField0_);
          break;
        case 16:
          this.externalStorageTotalBytes_ = paramCodedInputByteBufferNano.readInt64();
          this.bitField0_ = (0x2 | this.bitField0_);
          break;
        case 24:
          this.externalStorageAvailableBytes_ = paramCodedInputByteBufferNano.readInt64();
          this.bitField0_ = (0x4 | this.bitField0_);
          break;
        case 34:
          this.deviceName_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x8 | this.bitField0_);
          break;
        case 42:
          this.softwareVersion_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x10 | this.bitField0_);
          break;
        case 48:
        }
        this.needSetup_ = paramCodedInputByteBufferNano.readBool();
        this.bitField0_ = (0x20 | this.bitField0_);
      }
    }

    public GlassInfoResponse setBatteryLevel(int paramInt)
    {
      this.batteryLevel_ = paramInt;
      this.bitField0_ = (0x1 | this.bitField0_);
      return this;
    }

    public GlassInfoResponse setDeviceName(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.deviceName_ = paramString;
      this.bitField0_ = (0x8 | this.bitField0_);
      return this;
    }

    public GlassInfoResponse setExternalStorageAvailableBytes(long paramLong)
    {
      this.externalStorageAvailableBytes_ = paramLong;
      this.bitField0_ = (0x4 | this.bitField0_);
      return this;
    }

    public GlassInfoResponse setExternalStorageTotalBytes(long paramLong)
    {
      this.externalStorageTotalBytes_ = paramLong;
      this.bitField0_ = (0x2 | this.bitField0_);
      return this;
    }

    public GlassInfoResponse setNeedSetup(boolean paramBoolean)
    {
      this.needSetup_ = paramBoolean;
      this.bitField0_ = (0x20 | this.bitField0_);
      return this;
    }

    public GlassInfoResponse setSoftwareVersion(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.softwareVersion_ = paramString;
      this.bitField0_ = (0x10 | this.bitField0_);
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if ((0x1 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt32(1, this.batteryLevel_);
      if ((0x2 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt64(2, this.externalStorageTotalBytes_);
      if ((0x4 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt64(3, this.externalStorageAvailableBytes_);
      if ((0x8 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(4, this.deviceName_);
      if ((0x10 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(5, this.softwareVersion_);
      if ((0x20 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeBool(6, this.needSetup_);
    }
  }

  public static final class GlassSetupRequest extends MessageNano
  {
    public static final GlassSetupRequest[] EMPTY_ARRAY = new GlassSetupRequest[0];
    private int bitField0_;
    private String setupString_ = "";

    public static GlassSetupRequest parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new GlassSetupRequest().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static GlassSetupRequest parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (GlassSetupRequest)MessageNano.mergeFrom(new GlassSetupRequest(), paramArrayOfByte);
    }

    public final GlassSetupRequest clear()
    {
      this.bitField0_ = 0;
      this.setupString_ = "";
      this.cachedSize = -1;
      return this;
    }

    public GlassSetupRequest clearSetupString()
    {
      this.setupString_ = "";
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      GlassSetupRequest localGlassSetupRequest;
      do
      {
        return true;
        if (!(paramObject instanceof GlassSetupRequest))
          return false;
        localGlassSetupRequest = (GlassSetupRequest)paramObject;
        if (this.setupString_ != null)
          break;
      }
      while (localGlassSetupRequest.setupString_ == null);
      return false;
      return this.setupString_.equals(localGlassSetupRequest.setupString_);
    }

    public int getSerializedSize()
    {
      int i = 0x1 & this.bitField0_;
      int j = 0;
      if (i != 0)
        j = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.setupString_);
      this.cachedSize = j;
      return j;
    }

    public String getSetupString()
    {
      return this.setupString_;
    }

    public boolean hasSetupString()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public int hashCode()
    {
      if (this.setupString_ == null);
      for (int i = 0; ; i = this.setupString_.hashCode())
        return i + 527;
    }

    public GlassSetupRequest mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
        this.setupString_ = paramCodedInputByteBufferNano.readString();
        this.bitField0_ = (0x1 | this.bitField0_);
      }
    }

    public GlassSetupRequest setSetupString(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.setupString_ = paramString;
      this.bitField0_ = (0x1 | this.bitField0_);
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if ((0x1 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(1, this.setupString_);
    }
  }

  public static final class GlassSetupResponse extends MessageNano
  {
    public static final GlassSetupResponse[] EMPTY_ARRAY = new GlassSetupResponse[0];
    private int bitField0_;
    private int setupStatus_ = 1;

    public static GlassSetupResponse parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new GlassSetupResponse().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static GlassSetupResponse parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (GlassSetupResponse)MessageNano.mergeFrom(new GlassSetupResponse(), paramArrayOfByte);
    }

    public final GlassSetupResponse clear()
    {
      this.bitField0_ = 0;
      this.setupStatus_ = 1;
      this.cachedSize = -1;
      return this;
    }

    public GlassSetupResponse clearSetupStatus()
    {
      this.setupStatus_ = 1;
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      GlassSetupResponse localGlassSetupResponse;
      do
      {
        return true;
        if (!(paramObject instanceof GlassSetupResponse))
          return false;
        localGlassSetupResponse = (GlassSetupResponse)paramObject;
      }
      while (this.setupStatus_ == localGlassSetupResponse.setupStatus_);
      return false;
    }

    public int getSerializedSize()
    {
      int i = 0x1 & this.bitField0_;
      int j = 0;
      if (i != 0)
        j = 0 + CodedOutputByteBufferNano.computeInt32Size(1, this.setupStatus_);
      this.cachedSize = j;
      return j;
    }

    public int getSetupStatus()
    {
      return this.setupStatus_;
    }

    public boolean hasSetupStatus()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public int hashCode()
    {
      return 527 + this.setupStatus_;
    }

    public GlassSetupResponse mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
      if ((j == 1) || (j == 2));
      for (this.setupStatus_ = j; ; this.setupStatus_ = 1)
      {
        this.bitField0_ = (0x1 | this.bitField0_);
        break;
      }
    }

    public GlassSetupResponse setSetupStatus(int paramInt)
    {
      this.setupStatus_ = paramInt;
      this.bitField0_ = (0x1 | this.bitField0_);
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if ((0x1 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt32(1, this.setupStatus_);
    }

    public static abstract interface SetupStatus
    {
      public static final int FAILED = 2;
      public static final int OK = 1;
    }
  }

  public static final class InputBoxRequest extends MessageNano
  {
    public static final InputBoxRequest[] EMPTY_ARRAY = new InputBoxRequest[0];
    private int bitField0_;
    private boolean dismissInputBox_ = false;
    private byte[] handlerObject_ = WireFormatNano.EMPTY_BYTES;
    private String hintText_ = "";
    private int inputType_ = 0;
    private String summaryText_ = "";

    public static InputBoxRequest parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new InputBoxRequest().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static InputBoxRequest parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (InputBoxRequest)MessageNano.mergeFrom(new InputBoxRequest(), paramArrayOfByte);
    }

    public final InputBoxRequest clear()
    {
      this.bitField0_ = 0;
      this.dismissInputBox_ = false;
      this.inputType_ = 0;
      this.summaryText_ = "";
      this.hintText_ = "";
      this.handlerObject_ = WireFormatNano.EMPTY_BYTES;
      this.cachedSize = -1;
      return this;
    }

    public InputBoxRequest clearDismissInputBox()
    {
      this.dismissInputBox_ = false;
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public InputBoxRequest clearHandlerObject()
    {
      this.handlerObject_ = WireFormatNano.EMPTY_BYTES;
      this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
      return this;
    }

    public InputBoxRequest clearHintText()
    {
      this.hintText_ = "";
      this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
      return this;
    }

    public InputBoxRequest clearInputType()
    {
      this.inputType_ = 0;
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      return this;
    }

    public InputBoxRequest clearSummaryText()
    {
      this.summaryText_ = "";
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      label87: label104: label119: 
      while (true)
      {
        return true;
        if (!(paramObject instanceof InputBoxRequest))
          return false;
        InputBoxRequest localInputBoxRequest = (InputBoxRequest)paramObject;
        if ((this.dismissInputBox_ == localInputBoxRequest.dismissInputBox_) && (this.inputType_ == localInputBoxRequest.inputType_))
        {
          if (this.summaryText_ != null)
            break label87;
          if (localInputBoxRequest.summaryText_ == null)
          {
            if (this.hintText_ != null)
              break label104;
            if (localInputBoxRequest.hintText_ != null);
          }
        }
        while (true)
        {
          if (Arrays.equals(this.handlerObject_, localInputBoxRequest.handlerObject_))
            break label119;
          do
          {
            do
              return false;
            while (!this.summaryText_.equals(localInputBoxRequest.summaryText_));
            break;
          }
          while (!this.hintText_.equals(localInputBoxRequest.hintText_));
        }
      }
    }

    public boolean getDismissInputBox()
    {
      return this.dismissInputBox_;
    }

    public byte[] getHandlerObject()
    {
      return this.handlerObject_;
    }

    public String getHintText()
    {
      return this.hintText_;
    }

    public int getInputType()
    {
      return this.inputType_;
    }

    public int getSerializedSize()
    {
      int i = 0x1 & this.bitField0_;
      int j = 0;
      if (i != 0)
        j = 0 + CodedOutputByteBufferNano.computeBoolSize(1, this.dismissInputBox_);
      if ((0x2 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeInt32Size(2, this.inputType_);
      if ((0x4 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(3, this.summaryText_);
      if ((0x8 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(4, this.hintText_);
      if ((0x10 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeBytesSize(5, this.handlerObject_);
      this.cachedSize = j;
      return j;
    }

    public String getSummaryText()
    {
      return this.summaryText_;
    }

    public boolean hasDismissInputBox()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public boolean hasHandlerObject()
    {
      return (0x10 & this.bitField0_) != 0;
    }

    public boolean hasHintText()
    {
      return (0x8 & this.bitField0_) != 0;
    }

    public boolean hasInputType()
    {
      return (0x2 & this.bitField0_) != 0;
    }

    public boolean hasSummaryText()
    {
      return (0x4 & this.bitField0_) != 0;
    }

    public int hashCode()
    {
      int i;
      int k;
      label35: int n;
      label57: int i1;
      if (this.dismissInputBox_)
      {
        i = 1;
        int j = 31 * (31 * (i + 527) + this.inputType_);
        if (this.summaryText_ != null)
          break label86;
        k = 0;
        int m = 31 * (j + k);
        String str = this.hintText_;
        n = 0;
        if (str != null)
          break label97;
        i1 = m + n;
        if (this.handlerObject_ != null)
          break label109;
        i1 *= 31;
      }
      while (true)
      {
        return i1;
        i = 2;
        break;
        label86: k = this.summaryText_.hashCode();
        break label35;
        label97: n = this.hintText_.hashCode();
        break label57;
        label109: for (int i2 = 0; i2 < this.handlerObject_.length; i2++)
          i1 = i1 * 31 + this.handlerObject_[i2];
      }
    }

    public InputBoxRequest mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.dismissInputBox_ = paramCodedInputByteBufferNano.readBool();
          this.bitField0_ = (0x1 | this.bitField0_);
          break;
        case 16:
          this.inputType_ = paramCodedInputByteBufferNano.readInt32();
          this.bitField0_ = (0x2 | this.bitField0_);
          break;
        case 26:
          this.summaryText_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x4 | this.bitField0_);
          break;
        case 34:
          this.hintText_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x8 | this.bitField0_);
          break;
        case 42:
        }
        this.handlerObject_ = paramCodedInputByteBufferNano.readBytes();
        this.bitField0_ = (0x10 | this.bitField0_);
      }
    }

    public InputBoxRequest setDismissInputBox(boolean paramBoolean)
    {
      this.dismissInputBox_ = paramBoolean;
      this.bitField0_ = (0x1 | this.bitField0_);
      return this;
    }

    public InputBoxRequest setHandlerObject(byte[] paramArrayOfByte)
    {
      if (paramArrayOfByte == null)
        throw new NullPointerException();
      this.handlerObject_ = paramArrayOfByte;
      this.bitField0_ = (0x10 | this.bitField0_);
      return this;
    }

    public InputBoxRequest setHintText(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.hintText_ = paramString;
      this.bitField0_ = (0x8 | this.bitField0_);
      return this;
    }

    public InputBoxRequest setInputType(int paramInt)
    {
      this.inputType_ = paramInt;
      this.bitField0_ = (0x2 | this.bitField0_);
      return this;
    }

    public InputBoxRequest setSummaryText(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.summaryText_ = paramString;
      this.bitField0_ = (0x4 | this.bitField0_);
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if ((0x1 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeBool(1, this.dismissInputBox_);
      if ((0x2 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt32(2, this.inputType_);
      if ((0x4 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(3, this.summaryText_);
      if ((0x8 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(4, this.hintText_);
      if ((0x10 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeBytes(5, this.handlerObject_);
    }
  }

  public static final class InputBoxResponse extends MessageNano
  {
    public static final InputBoxResponse[] EMPTY_ARRAY = new InputBoxResponse[0];
    private int bitField0_;
    private byte[] handlerObject_ = WireFormatNano.EMPTY_BYTES;
    private String response_ = "";

    public static InputBoxResponse parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new InputBoxResponse().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static InputBoxResponse parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (InputBoxResponse)MessageNano.mergeFrom(new InputBoxResponse(), paramArrayOfByte);
    }

    public final InputBoxResponse clear()
    {
      this.bitField0_ = 0;
      this.response_ = "";
      this.handlerObject_ = WireFormatNano.EMPTY_BYTES;
      this.cachedSize = -1;
      return this;
    }

    public InputBoxResponse clearHandlerObject()
    {
      this.handlerObject_ = WireFormatNano.EMPTY_BYTES;
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      return this;
    }

    public InputBoxResponse clearResponse()
    {
      this.response_ = "";
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      while (true)
      {
        return true;
        if (!(paramObject instanceof InputBoxResponse))
          return false;
        InputBoxResponse localInputBoxResponse = (InputBoxResponse)paramObject;
        if (this.response_ == null)
          if (localInputBoxResponse.response_ != null);
        while (!Arrays.equals(this.handlerObject_, localInputBoxResponse.handlerObject_))
          do
            return false;
          while (!this.response_.equals(localInputBoxResponse.response_));
      }
    }

    public byte[] getHandlerObject()
    {
      return this.handlerObject_;
    }

    public String getResponse()
    {
      return this.response_;
    }

    public int getSerializedSize()
    {
      int i = 0x1 & this.bitField0_;
      int j = 0;
      if (i != 0)
        j = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.response_);
      if ((0x2 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeBytesSize(2, this.handlerObject_);
      this.cachedSize = j;
      return j;
    }

    public boolean hasHandlerObject()
    {
      return (0x2 & this.bitField0_) != 0;
    }

    public boolean hasResponse()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public int hashCode()
    {
      int i;
      int j;
      if (this.response_ == null)
      {
        i = 0;
        j = i + 527;
        if (this.handlerObject_ != null)
          break label40;
        j *= 31;
      }
      while (true)
      {
        return j;
        i = this.response_.hashCode();
        break;
        label40: for (int k = 0; k < this.handlerObject_.length; k++)
          j = j * 31 + this.handlerObject_[k];
      }
    }

    public InputBoxResponse mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.response_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x1 | this.bitField0_);
          break;
        case 18:
        }
        this.handlerObject_ = paramCodedInputByteBufferNano.readBytes();
        this.bitField0_ = (0x2 | this.bitField0_);
      }
    }

    public InputBoxResponse setHandlerObject(byte[] paramArrayOfByte)
    {
      if (paramArrayOfByte == null)
        throw new NullPointerException();
      this.handlerObject_ = paramArrayOfByte;
      this.bitField0_ = (0x2 | this.bitField0_);
      return this;
    }

    public InputBoxResponse setResponse(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.response_ = paramString;
      this.bitField0_ = (0x1 | this.bitField0_);
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if ((0x1 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(1, this.response_);
      if ((0x2 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeBytes(2, this.handlerObject_);
    }
  }

  public static final class Location extends MessageNano
  {
    public static final Location[] EMPTY_ARRAY = new Location[0];
    private float accuracy_ = 0.0F;
    private double altitude_ = 0.0D;
    private float bearing_ = 0.0F;
    private int bitField0_;
    private double latitude_ = 0.0D;
    private String levelId_ = "";
    private int levelNumberE3_ = 0;
    private double longitude_ = 0.0D;
    private int satellitesUsedInFix_ = 0;
    private float speed_ = 0.0F;
    private long time_ = 0L;
    private int visibleSatellites_ = 0;

    public static Location parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new Location().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static Location parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (Location)MessageNano.mergeFrom(new Location(), paramArrayOfByte);
    }

    public final Location clear()
    {
      this.bitField0_ = 0;
      this.latitude_ = 0.0D;
      this.longitude_ = 0.0D;
      this.accuracy_ = 0.0F;
      this.altitude_ = 0.0D;
      this.bearing_ = 0.0F;
      this.speed_ = 0.0F;
      this.time_ = 0L;
      this.satellitesUsedInFix_ = 0;
      this.visibleSatellites_ = 0;
      this.levelId_ = "";
      this.levelNumberE3_ = 0;
      this.cachedSize = -1;
      return this;
    }

    public Location clearAccuracy()
    {
      this.accuracy_ = 0.0F;
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      return this;
    }

    public Location clearAltitude()
    {
      this.altitude_ = 0.0D;
      this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
      return this;
    }

    public Location clearBearing()
    {
      this.bearing_ = 0.0F;
      this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
      return this;
    }

    public Location clearLatitude()
    {
      this.latitude_ = 0.0D;
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public Location clearLevelId()
    {
      this.levelId_ = "";
      this.bitField0_ = (0xFFFFFDFF & this.bitField0_);
      return this;
    }

    public Location clearLevelNumberE3()
    {
      this.levelNumberE3_ = 0;
      this.bitField0_ = (0xFFFFFBFF & this.bitField0_);
      return this;
    }

    public Location clearLongitude()
    {
      this.longitude_ = 0.0D;
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      return this;
    }

    public Location clearSatellitesUsedInFix()
    {
      this.satellitesUsedInFix_ = 0;
      this.bitField0_ = (0xFFFFFF7F & this.bitField0_);
      return this;
    }

    public Location clearSpeed()
    {
      this.speed_ = 0.0F;
      this.bitField0_ = (0xFFFFFFDF & this.bitField0_);
      return this;
    }

    public Location clearTime()
    {
      this.time_ = 0L;
      this.bitField0_ = (0xFFFFFFBF & this.bitField0_);
      return this;
    }

    public Location clearVisibleSatellites()
    {
      this.visibleSatellites_ = 0;
      this.bitField0_ = (0xFFFFFEFF & this.bitField0_);
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      while (true)
      {
        return true;
        if (!(paramObject instanceof Location))
          return false;
        Location localLocation = (Location)paramObject;
        if ((this.latitude_ == localLocation.latitude_) && (this.longitude_ == localLocation.longitude_) && (this.accuracy_ == localLocation.accuracy_) && (this.altitude_ == localLocation.altitude_) && (this.bearing_ == localLocation.bearing_) && (this.speed_ == localLocation.speed_) && (this.time_ == localLocation.time_) && (this.satellitesUsedInFix_ == localLocation.satellitesUsedInFix_) && (this.visibleSatellites_ == localLocation.visibleSatellites_))
        {
          if (this.levelId_ != null)
            break label154;
          if (localLocation.levelId_ != null);
        }
        while (this.levelNumberE3_ != localLocation.levelNumberE3_)
          label154: 
          do
            return false;
          while (!this.levelId_.equals(localLocation.levelId_));
      }
    }

    public float getAccuracy()
    {
      return this.accuracy_;
    }

    public double getAltitude()
    {
      return this.altitude_;
    }

    public float getBearing()
    {
      return this.bearing_;
    }

    public double getLatitude()
    {
      return this.latitude_;
    }

    public String getLevelId()
    {
      return this.levelId_;
    }

    public int getLevelNumberE3()
    {
      return this.levelNumberE3_;
    }

    public double getLongitude()
    {
      return this.longitude_;
    }

    public int getSatellitesUsedInFix()
    {
      return this.satellitesUsedInFix_;
    }

    public int getSerializedSize()
    {
      int i = 0x1 & this.bitField0_;
      int j = 0;
      if (i != 0)
        j = 0 + CodedOutputByteBufferNano.computeDoubleSize(1, this.latitude_);
      if ((0x2 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeDoubleSize(2, this.longitude_);
      if ((0x4 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeFloatSize(3, this.accuracy_);
      if ((0x8 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeDoubleSize(4, this.altitude_);
      if ((0x10 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeFloatSize(5, this.bearing_);
      if ((0x20 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeFloatSize(6, this.speed_);
      if ((0x40 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeUInt64Size(7, this.time_);
      if ((0x80 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeInt32Size(8, this.satellitesUsedInFix_);
      if ((0x100 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeInt32Size(9, this.visibleSatellites_);
      if ((0x200 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(10, this.levelId_);
      if ((0x400 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeInt32Size(11, this.levelNumberE3_);
      this.cachedSize = j;
      return j;
    }

    public float getSpeed()
    {
      return this.speed_;
    }

    public long getTime()
    {
      return this.time_;
    }

    public int getVisibleSatellites()
    {
      return this.visibleSatellites_;
    }

    public boolean hasAccuracy()
    {
      return (0x4 & this.bitField0_) != 0;
    }

    public boolean hasAltitude()
    {
      return (0x8 & this.bitField0_) != 0;
    }

    public boolean hasBearing()
    {
      return (0x10 & this.bitField0_) != 0;
    }

    public boolean hasLatitude()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public boolean hasLevelId()
    {
      return (0x200 & this.bitField0_) != 0;
    }

    public boolean hasLevelNumberE3()
    {
      return (0x400 & this.bitField0_) != 0;
    }

    public boolean hasLongitude()
    {
      return (0x2 & this.bitField0_) != 0;
    }

    public boolean hasSatellitesUsedInFix()
    {
      return (0x80 & this.bitField0_) != 0;
    }

    public boolean hasSpeed()
    {
      return (0x20 & this.bitField0_) != 0;
    }

    public boolean hasTime()
    {
      return (0x40 & this.bitField0_) != 0;
    }

    public boolean hasVisibleSatellites()
    {
      return (0x100 & this.bitField0_) != 0;
    }

    public int hashCode()
    {
      int i = 31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (527 + (int)(Double.doubleToLongBits(this.latitude_) ^ Double.doubleToLongBits(this.latitude_) >>> 32)) + (int)(Double.doubleToLongBits(this.longitude_) ^ Double.doubleToLongBits(this.longitude_) >>> 32)) + Float.floatToIntBits(this.accuracy_)) + (int)(Double.doubleToLongBits(this.altitude_) ^ Double.doubleToLongBits(this.altitude_) >>> 32)) + Float.floatToIntBits(this.bearing_)) + Float.floatToIntBits(this.speed_)) + (int)(this.time_ ^ this.time_ >>> 32)) + this.satellitesUsedInFix_) + this.visibleSatellites_);
      if (this.levelId_ == null);
      for (int j = 0; ; j = this.levelId_.hashCode())
        return 31 * (i + j) + this.levelNumberE3_;
    }

    public Location mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
        case 9:
          this.latitude_ = paramCodedInputByteBufferNano.readDouble();
          this.bitField0_ = (0x1 | this.bitField0_);
          break;
        case 17:
          this.longitude_ = paramCodedInputByteBufferNano.readDouble();
          this.bitField0_ = (0x2 | this.bitField0_);
          break;
        case 29:
          this.accuracy_ = paramCodedInputByteBufferNano.readFloat();
          this.bitField0_ = (0x4 | this.bitField0_);
          break;
        case 33:
          this.altitude_ = paramCodedInputByteBufferNano.readDouble();
          this.bitField0_ = (0x8 | this.bitField0_);
          break;
        case 45:
          this.bearing_ = paramCodedInputByteBufferNano.readFloat();
          this.bitField0_ = (0x10 | this.bitField0_);
          break;
        case 53:
          this.speed_ = paramCodedInputByteBufferNano.readFloat();
          this.bitField0_ = (0x20 | this.bitField0_);
          break;
        case 56:
          this.time_ = paramCodedInputByteBufferNano.readUInt64();
          this.bitField0_ = (0x40 | this.bitField0_);
          break;
        case 64:
          this.satellitesUsedInFix_ = paramCodedInputByteBufferNano.readInt32();
          this.bitField0_ = (0x80 | this.bitField0_);
          break;
        case 72:
          this.visibleSatellites_ = paramCodedInputByteBufferNano.readInt32();
          this.bitField0_ = (0x100 | this.bitField0_);
          break;
        case 82:
          this.levelId_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x200 | this.bitField0_);
          break;
        case 88:
        }
        this.levelNumberE3_ = paramCodedInputByteBufferNano.readInt32();
        this.bitField0_ = (0x400 | this.bitField0_);
      }
    }

    public Location setAccuracy(float paramFloat)
    {
      this.accuracy_ = paramFloat;
      this.bitField0_ = (0x4 | this.bitField0_);
      return this;
    }

    public Location setAltitude(double paramDouble)
    {
      this.altitude_ = paramDouble;
      this.bitField0_ = (0x8 | this.bitField0_);
      return this;
    }

    public Location setBearing(float paramFloat)
    {
      this.bearing_ = paramFloat;
      this.bitField0_ = (0x10 | this.bitField0_);
      return this;
    }

    public Location setLatitude(double paramDouble)
    {
      this.latitude_ = paramDouble;
      this.bitField0_ = (0x1 | this.bitField0_);
      return this;
    }

    public Location setLevelId(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.levelId_ = paramString;
      this.bitField0_ = (0x200 | this.bitField0_);
      return this;
    }

    public Location setLevelNumberE3(int paramInt)
    {
      this.levelNumberE3_ = paramInt;
      this.bitField0_ = (0x400 | this.bitField0_);
      return this;
    }

    public Location setLongitude(double paramDouble)
    {
      this.longitude_ = paramDouble;
      this.bitField0_ = (0x2 | this.bitField0_);
      return this;
    }

    public Location setSatellitesUsedInFix(int paramInt)
    {
      this.satellitesUsedInFix_ = paramInt;
      this.bitField0_ = (0x80 | this.bitField0_);
      return this;
    }

    public Location setSpeed(float paramFloat)
    {
      this.speed_ = paramFloat;
      this.bitField0_ = (0x20 | this.bitField0_);
      return this;
    }

    public Location setTime(long paramLong)
    {
      this.time_ = paramLong;
      this.bitField0_ = (0x40 | this.bitField0_);
      return this;
    }

    public Location setVisibleSatellites(int paramInt)
    {
      this.visibleSatellites_ = paramInt;
      this.bitField0_ = (0x100 | this.bitField0_);
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if ((0x1 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeDouble(1, this.latitude_);
      if ((0x2 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeDouble(2, this.longitude_);
      if ((0x4 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeFloat(3, this.accuracy_);
      if ((0x8 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeDouble(4, this.altitude_);
      if ((0x10 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeFloat(5, this.bearing_);
      if ((0x20 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeFloat(6, this.speed_);
      if ((0x40 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeUInt64(7, this.time_);
      if ((0x80 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt32(8, this.satellitesUsedInFix_);
      if ((0x100 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt32(9, this.visibleSatellites_);
      if ((0x200 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(10, this.levelId_);
      if ((0x400 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt32(11, this.levelNumberE3_);
    }
  }

  public static final class LocationMessage extends MessageNano
  {
    public static final LocationMessage[] EMPTY_ARRAY = new LocationMessage[0];
    private int bitField0_;
    private Proto.Location location_;
    public String provider = "";
    private String receiver_ = "";
    private int status_ = 0;
    public int type = 0;

    public static LocationMessage parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new LocationMessage().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static LocationMessage parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (LocationMessage)MessageNano.mergeFrom(new LocationMessage(), paramArrayOfByte);
    }

    public final LocationMessage clear()
    {
      this.bitField0_ = 0;
      this.type = 0;
      this.provider = "";
      this.location_ = null;
      this.status_ = 0;
      this.receiver_ = "";
      this.cachedSize = -1;
      return this;
    }

    public LocationMessage clearLocation()
    {
      this.location_ = null;
      return this;
    }

    public LocationMessage clearReceiver()
    {
      this.receiver_ = "";
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      return this;
    }

    public LocationMessage clearStatus()
    {
      this.status_ = 0;
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      LocationMessage localLocationMessage;
      label60: 
      do
      {
        return true;
        if (!(paramObject instanceof LocationMessage))
          return false;
        localLocationMessage = (LocationMessage)paramObject;
        if (this.type != localLocationMessage.type)
          break;
        if (this.provider != null)
          break label87;
        if (localLocationMessage.provider != null)
          break;
        if (this.location_ != null)
          break label104;
        if (localLocationMessage.location_ != null)
          break;
        if (this.status_ != localLocationMessage.status_)
          break;
        if (this.receiver_ != null)
          break label121;
      }
      while (localLocationMessage.receiver_ == null);
      label87: label104: label121: 
      while (!this.receiver_.equals(localLocationMessage.receiver_))
      {
        do
        {
          do
            return false;
          while (!this.provider.equals(localLocationMessage.provider));
          break;
        }
        while (!this.location_.equals(localLocationMessage.location_));
        break label60;
      }
      return true;
    }

    public Proto.Location getLocation()
    {
      return this.location_;
    }

    public String getReceiver()
    {
      return this.receiver_;
    }

    public int getSerializedSize()
    {
      int i = 0 + CodedOutputByteBufferNano.computeInt32Size(1, this.type) + CodedOutputByteBufferNano.computeStringSize(2, this.provider);
      if (this.location_ != null)
        i += CodedOutputByteBufferNano.computeMessageSize(3, this.location_);
      if ((0x1 & this.bitField0_) != 0)
        i += CodedOutputByteBufferNano.computeInt32Size(4, this.status_);
      if ((0x2 & this.bitField0_) != 0)
        i += CodedOutputByteBufferNano.computeStringSize(5, this.receiver_);
      this.cachedSize = i;
      return i;
    }

    public int getStatus()
    {
      return this.status_;
    }

    public boolean hasLocation()
    {
      return this.location_ != null;
    }

    public boolean hasReceiver()
    {
      return (0x2 & this.bitField0_) != 0;
    }

    public boolean hasStatus()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public int hashCode()
    {
      int i = 31 * (527 + this.type);
      int j;
      int m;
      label38: int n;
      int i1;
      if (this.provider == null)
      {
        j = 0;
        int k = 31 * (i + j);
        if (this.location_ != null)
          break label86;
        m = 0;
        n = 31 * (31 * (k + m) + this.status_);
        String str = this.receiver_;
        i1 = 0;
        if (str != null)
          break label98;
      }
      while (true)
      {
        return n + i1;
        j = this.provider.hashCode();
        break;
        label86: m = this.location_.hashCode();
        break label38;
        label98: i1 = this.receiver_.hashCode();
      }
    }

    public LocationMessage mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          if ((j == 0) || (j == 1) || (j == 2) || (j == 3))
          {
            this.type = j;
            continue;
          }
          this.type = 0;
          break;
        case 18:
          this.provider = paramCodedInputByteBufferNano.readString();
          break;
        case 26:
          if (this.location_ == null)
            this.location_ = new Proto.Location();
          paramCodedInputByteBufferNano.readMessage(this.location_);
          break;
        case 32:
          this.status_ = paramCodedInputByteBufferNano.readInt32();
          this.bitField0_ = (0x1 | this.bitField0_);
          break;
        case 42:
        }
        this.receiver_ = paramCodedInputByteBufferNano.readString();
        this.bitField0_ = (0x2 | this.bitField0_);
      }
    }

    public LocationMessage setLocation(Proto.Location paramLocation)
    {
      if (paramLocation == null)
        throw new NullPointerException();
      this.location_ = paramLocation;
      return this;
    }

    public LocationMessage setReceiver(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.receiver_ = paramString;
      this.bitField0_ = (0x2 | this.bitField0_);
      return this;
    }

    public LocationMessage setStatus(int paramInt)
    {
      this.status_ = paramInt;
      this.bitField0_ = (0x1 | this.bitField0_);
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      paramCodedOutputByteBufferNano.writeInt32(1, this.type);
      paramCodedOutputByteBufferNano.writeString(2, this.provider);
      if (this.location_ != null)
        paramCodedOutputByteBufferNano.writeMessage(3, this.location_);
      if ((0x1 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt32(4, this.status_);
      if ((0x2 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(5, this.receiver_);
    }

    public static abstract interface MessageType
    {
      public static final int LOCATION_CHANGED = 0;
      public static final int PROVIDER_DISABLED = 1;
      public static final int PROVIDER_ENABLED = 2;
      public static final int STATUS_CHANGED = 3;
    }
  }

  public static final class LocationRequest extends MessageNano
  {
    public static final LocationRequest[] EMPTY_ARRAY = new LocationRequest[0];
    private int bitField0_;
    private long fastestInterval_ = 0L;
    private float minDistance_ = 0.0F;
    private long minTime_ = 0L;
    private int priority_ = 0;
    public String provider = "";
    private boolean sendLastKnownLocation_ = false;
    public int type = 0;

    public static LocationRequest parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new LocationRequest().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static LocationRequest parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (LocationRequest)MessageNano.mergeFrom(new LocationRequest(), paramArrayOfByte);
    }

    public final LocationRequest clear()
    {
      this.bitField0_ = 0;
      this.type = 0;
      this.provider = "";
      this.minTime_ = 0L;
      this.minDistance_ = 0.0F;
      this.sendLastKnownLocation_ = false;
      this.priority_ = 0;
      this.fastestInterval_ = 0L;
      this.cachedSize = -1;
      return this;
    }

    public LocationRequest clearFastestInterval()
    {
      this.fastestInterval_ = 0L;
      this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
      return this;
    }

    public LocationRequest clearMinDistance()
    {
      this.minDistance_ = 0.0F;
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      return this;
    }

    public LocationRequest clearMinTime()
    {
      this.minTime_ = 0L;
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public LocationRequest clearPriority()
    {
      this.priority_ = 0;
      this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
      return this;
    }

    public LocationRequest clearSendLastKnownLocation()
    {
      this.sendLastKnownLocation_ = false;
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      while (true)
      {
        return true;
        if (!(paramObject instanceof LocationRequest))
          return false;
        LocationRequest localLocationRequest = (LocationRequest)paramObject;
        if (this.type == localLocationRequest.type)
        {
          if (this.provider != null)
            break label106;
          if (localLocationRequest.provider != null);
        }
        while ((this.minTime_ != localLocationRequest.minTime_) || (this.minDistance_ != localLocationRequest.minDistance_) || (this.sendLastKnownLocation_ != localLocationRequest.sendLastKnownLocation_) || (this.priority_ != localLocationRequest.priority_) || (this.fastestInterval_ != localLocationRequest.fastestInterval_))
          label106: 
          do
            return false;
          while (!this.provider.equals(localLocationRequest.provider));
      }
    }

    public long getFastestInterval()
    {
      return this.fastestInterval_;
    }

    public float getMinDistance()
    {
      return this.minDistance_;
    }

    public long getMinTime()
    {
      return this.minTime_;
    }

    public int getPriority()
    {
      return this.priority_;
    }

    public boolean getSendLastKnownLocation()
    {
      return this.sendLastKnownLocation_;
    }

    public int getSerializedSize()
    {
      int i = 0 + CodedOutputByteBufferNano.computeInt32Size(1, this.type) + CodedOutputByteBufferNano.computeStringSize(2, this.provider);
      if ((0x1 & this.bitField0_) != 0)
        i += CodedOutputByteBufferNano.computeInt64Size(3, this.minTime_);
      if ((0x2 & this.bitField0_) != 0)
        i += CodedOutputByteBufferNano.computeFloatSize(4, this.minDistance_);
      if ((0x4 & this.bitField0_) != 0)
        i += CodedOutputByteBufferNano.computeBoolSize(5, this.sendLastKnownLocation_);
      if ((0x8 & this.bitField0_) != 0)
        i += CodedOutputByteBufferNano.computeInt32Size(6, this.priority_);
      if ((0x10 & this.bitField0_) != 0)
        i += CodedOutputByteBufferNano.computeInt64Size(7, this.fastestInterval_);
      this.cachedSize = i;
      return i;
    }

    public boolean hasFastestInterval()
    {
      return (0x10 & this.bitField0_) != 0;
    }

    public boolean hasMinDistance()
    {
      return (0x2 & this.bitField0_) != 0;
    }

    public boolean hasMinTime()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public boolean hasPriority()
    {
      return (0x8 & this.bitField0_) != 0;
    }

    public boolean hasSendLastKnownLocation()
    {
      return (0x4 & this.bitField0_) != 0;
    }

    public int hashCode()
    {
      int i = 31 * (527 + this.type);
      int j;
      int k;
      if (this.provider == null)
      {
        j = 0;
        k = 31 * (31 * (31 * (i + j) + (int)(this.minTime_ ^ this.minTime_ >>> 32)) + Float.floatToIntBits(this.minDistance_));
        if (!this.sendLastKnownLocation_)
          break label107;
      }
      label107: for (int m = 1; ; m = 2)
      {
        return 31 * (31 * (k + m) + this.priority_) + (int)(this.fastestInterval_ ^ this.fastestInterval_ >>> 32);
        j = this.provider.hashCode();
        break;
      }
    }

    public LocationRequest mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          int k = paramCodedInputByteBufferNano.readInt32();
          if ((k == 0) || (k == 1))
          {
            this.type = k;
            continue;
          }
          this.type = 0;
          break;
        case 18:
          this.provider = paramCodedInputByteBufferNano.readString();
          break;
        case 24:
          this.minTime_ = paramCodedInputByteBufferNano.readInt64();
          this.bitField0_ = (0x1 | this.bitField0_);
          break;
        case 37:
          this.minDistance_ = paramCodedInputByteBufferNano.readFloat();
          this.bitField0_ = (0x2 | this.bitField0_);
          break;
        case 40:
          this.sendLastKnownLocation_ = paramCodedInputByteBufferNano.readBool();
          this.bitField0_ = (0x4 | this.bitField0_);
          break;
        case 48:
          int j = paramCodedInputByteBufferNano.readInt32();
          if ((j == 0) || (j == 1) || (j == 2));
          for (this.priority_ = j; ; this.priority_ = 0)
          {
            this.bitField0_ = (0x8 | this.bitField0_);
            break;
          }
        case 56:
        }
        this.fastestInterval_ = paramCodedInputByteBufferNano.readInt64();
        this.bitField0_ = (0x10 | this.bitField0_);
      }
    }

    public LocationRequest setFastestInterval(long paramLong)
    {
      this.fastestInterval_ = paramLong;
      this.bitField0_ = (0x10 | this.bitField0_);
      return this;
    }

    public LocationRequest setMinDistance(float paramFloat)
    {
      this.minDistance_ = paramFloat;
      this.bitField0_ = (0x2 | this.bitField0_);
      return this;
    }

    public LocationRequest setMinTime(long paramLong)
    {
      this.minTime_ = paramLong;
      this.bitField0_ = (0x1 | this.bitField0_);
      return this;
    }

    public LocationRequest setPriority(int paramInt)
    {
      this.priority_ = paramInt;
      this.bitField0_ = (0x8 | this.bitField0_);
      return this;
    }

    public LocationRequest setSendLastKnownLocation(boolean paramBoolean)
    {
      this.sendLastKnownLocation_ = paramBoolean;
      this.bitField0_ = (0x4 | this.bitField0_);
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      paramCodedOutputByteBufferNano.writeInt32(1, this.type);
      paramCodedOutputByteBufferNano.writeString(2, this.provider);
      if ((0x1 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt64(3, this.minTime_);
      if ((0x2 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeFloat(4, this.minDistance_);
      if ((0x4 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeBool(5, this.sendLastKnownLocation_);
      if ((0x8 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt32(6, this.priority_);
      if ((0x10 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt64(7, this.fastestInterval_);
    }

    public static abstract interface Priority
    {
      public static final int PRIORITY_BALANCED_POWER_ACCURACY = 2;
      public static final int PRIORITY_HIGH_ACCURACY = 1;
      public static final int PRIORITY_UNKNOWN;
    }

    public static abstract interface RequestType
    {
      public static final int START_LISTENING = 0;
      public static final int STOP_LISTENING = 1;
    }
  }

  public static final class MotionEvent extends MessageNano
  {
    public static final MotionEvent[] EMPTY_ARRAY = new MotionEvent[0];
    private int action_ = 0;
    private int bitField0_;
    private int buttonState_ = 0;
    private int deviceId_ = 0;
    private long downTime_ = 0L;
    private int edgeFlags_ = 0;
    private long eventTime_ = 0L;
    private int flags_ = 0;
    private int metaState_ = 0;
    public PointerCoords[] pointerCoords = PointerCoords.EMPTY_ARRAY;
    private int pointerCount_ = 0;
    public PointerProperties[] pointerProperties = PointerProperties.EMPTY_ARRAY;
    private int source_ = 0;
    private float xPrecision_ = 0.0F;
    private float yPrecision_ = 0.0F;

    public static MotionEvent parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new MotionEvent().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static MotionEvent parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (MotionEvent)MessageNano.mergeFrom(new MotionEvent(), paramArrayOfByte);
    }

    public final MotionEvent clear()
    {
      this.bitField0_ = 0;
      this.downTime_ = 0L;
      this.eventTime_ = 0L;
      this.action_ = 0;
      this.pointerCount_ = 0;
      this.pointerProperties = PointerProperties.EMPTY_ARRAY;
      this.pointerCoords = PointerCoords.EMPTY_ARRAY;
      this.metaState_ = 0;
      this.buttonState_ = 0;
      this.xPrecision_ = 0.0F;
      this.yPrecision_ = 0.0F;
      this.deviceId_ = 0;
      this.edgeFlags_ = 0;
      this.source_ = 0;
      this.flags_ = 0;
      this.cachedSize = -1;
      return this;
    }

    public MotionEvent clearAction()
    {
      this.action_ = 0;
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      return this;
    }

    public MotionEvent clearButtonState()
    {
      this.buttonState_ = 0;
      this.bitField0_ = (0xFFFFFFDF & this.bitField0_);
      return this;
    }

    public MotionEvent clearDeviceId()
    {
      this.deviceId_ = 0;
      this.bitField0_ = (0xFFFFFEFF & this.bitField0_);
      return this;
    }

    public MotionEvent clearDownTime()
    {
      this.downTime_ = 0L;
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public MotionEvent clearEdgeFlags()
    {
      this.edgeFlags_ = 0;
      this.bitField0_ = (0xFFFFFDFF & this.bitField0_);
      return this;
    }

    public MotionEvent clearEventTime()
    {
      this.eventTime_ = 0L;
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      return this;
    }

    public MotionEvent clearFlags()
    {
      this.flags_ = 0;
      this.bitField0_ = (0xFFFFF7FF & this.bitField0_);
      return this;
    }

    public MotionEvent clearMetaState()
    {
      this.metaState_ = 0;
      this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
      return this;
    }

    public MotionEvent clearPointerCount()
    {
      this.pointerCount_ = 0;
      this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
      return this;
    }

    public MotionEvent clearSource()
    {
      this.source_ = 0;
      this.bitField0_ = (0xFFFFFBFF & this.bitField0_);
      return this;
    }

    public MotionEvent clearXPrecision()
    {
      this.xPrecision_ = 0.0F;
      this.bitField0_ = (0xFFFFFFBF & this.bitField0_);
      return this;
    }

    public MotionEvent clearYPrecision()
    {
      this.yPrecision_ = 0.0F;
      this.bitField0_ = (0xFFFFFF7F & this.bitField0_);
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      MotionEvent localMotionEvent;
      do
      {
        return true;
        if (!(paramObject instanceof MotionEvent))
          return false;
        localMotionEvent = (MotionEvent)paramObject;
      }
      while ((this.downTime_ == localMotionEvent.downTime_) && (this.eventTime_ == localMotionEvent.eventTime_) && (this.action_ == localMotionEvent.action_) && (this.pointerCount_ == localMotionEvent.pointerCount_) && (Arrays.equals(this.pointerProperties, localMotionEvent.pointerProperties)) && (Arrays.equals(this.pointerCoords, localMotionEvent.pointerCoords)) && (this.metaState_ == localMotionEvent.metaState_) && (this.buttonState_ == localMotionEvent.buttonState_) && (this.xPrecision_ == localMotionEvent.xPrecision_) && (this.yPrecision_ == localMotionEvent.yPrecision_) && (this.deviceId_ == localMotionEvent.deviceId_) && (this.edgeFlags_ == localMotionEvent.edgeFlags_) && (this.source_ == localMotionEvent.source_) && (this.flags_ == localMotionEvent.flags_));
      return false;
    }

    public int getAction()
    {
      return this.action_;
    }

    public int getButtonState()
    {
      return this.buttonState_;
    }

    public int getDeviceId()
    {
      return this.deviceId_;
    }

    public long getDownTime()
    {
      return this.downTime_;
    }

    public int getEdgeFlags()
    {
      return this.edgeFlags_;
    }

    public long getEventTime()
    {
      return this.eventTime_;
    }

    public int getFlags()
    {
      return this.flags_;
    }

    public int getMetaState()
    {
      return this.metaState_;
    }

    public int getPointerCount()
    {
      return this.pointerCount_;
    }

    public int getSerializedSize()
    {
      int i = 0x1 & this.bitField0_;
      int j = 0;
      if (i != 0)
        j = 0 + CodedOutputByteBufferNano.computeUInt64Size(1, this.downTime_);
      if ((0x2 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeUInt64Size(2, this.eventTime_);
      if ((0x4 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeInt32Size(3, this.action_);
      if ((0x8 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeInt32Size(4, this.pointerCount_);
      if (this.pointerProperties != null)
      {
        PointerProperties[] arrayOfPointerProperties = this.pointerProperties;
        int n = arrayOfPointerProperties.length;
        for (int i1 = 0; i1 < n; i1++)
          j += CodedOutputByteBufferNano.computeMessageSize(5, arrayOfPointerProperties[i1]);
      }
      if (this.pointerCoords != null)
      {
        PointerCoords[] arrayOfPointerCoords = this.pointerCoords;
        int k = arrayOfPointerCoords.length;
        for (int m = 0; m < k; m++)
          j += CodedOutputByteBufferNano.computeMessageSize(6, arrayOfPointerCoords[m]);
      }
      if ((0x10 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeInt32Size(7, this.metaState_);
      if ((0x20 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeInt32Size(8, this.buttonState_);
      if ((0x40 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeFloatSize(9, this.xPrecision_);
      if ((0x80 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeFloatSize(10, this.yPrecision_);
      if ((0x100 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeInt32Size(11, this.deviceId_);
      if ((0x200 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeInt32Size(12, this.edgeFlags_);
      if ((0x400 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeInt32Size(13, this.source_);
      if ((0x800 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeInt32Size(14, this.flags_);
      this.cachedSize = j;
      return j;
    }

    public int getSource()
    {
      return this.source_;
    }

    public float getXPrecision()
    {
      return this.xPrecision_;
    }

    public float getYPrecision()
    {
      return this.yPrecision_;
    }

    public boolean hasAction()
    {
      return (0x4 & this.bitField0_) != 0;
    }

    public boolean hasButtonState()
    {
      return (0x20 & this.bitField0_) != 0;
    }

    public boolean hasDeviceId()
    {
      return (0x100 & this.bitField0_) != 0;
    }

    public boolean hasDownTime()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public boolean hasEdgeFlags()
    {
      return (0x200 & this.bitField0_) != 0;
    }

    public boolean hasEventTime()
    {
      return (0x2 & this.bitField0_) != 0;
    }

    public boolean hasFlags()
    {
      return (0x800 & this.bitField0_) != 0;
    }

    public boolean hasMetaState()
    {
      return (0x10 & this.bitField0_) != 0;
    }

    public boolean hasPointerCount()
    {
      return (0x8 & this.bitField0_) != 0;
    }

    public boolean hasSource()
    {
      return (0x400 & this.bitField0_) != 0;
    }

    public boolean hasXPrecision()
    {
      return (0x40 & this.bitField0_) != 0;
    }

    public boolean hasYPrecision()
    {
      return (0x80 & this.bitField0_) != 0;
    }

    public int hashCode()
    {
      int i = 31 * (31 * (31 * (527 + (int)(this.downTime_ ^ this.downTime_ >>> 32)) + (int)(this.eventTime_ ^ this.eventTime_ >>> 32)) + this.action_) + this.pointerCount_;
      if (this.pointerProperties == null)
      {
        i *= 31;
        if (this.pointerCoords == null)
        {
          i *= 31;
          return 31 * (31 * (31 * (31 * (31 * (31 * (31 * (i * 31 + this.metaState_) + this.buttonState_) + Float.floatToIntBits(this.xPrecision_)) + Float.floatToIntBits(this.yPrecision_)) + this.deviceId_) + this.edgeFlags_) + this.source_) + this.flags_;
        }
      }
      else
      {
        int j = 0;
        label149: int k;
        if (j < this.pointerProperties.length)
        {
          k = i * 31;
          if (this.pointerProperties[j] != null)
            break label186;
        }
        label186: for (int m = 0; ; m = this.pointerProperties[j].hashCode())
        {
          i = k + m;
          j++;
          break label149;
          break;
        }
      }
      int n = 0;
      label203: int i1;
      if (n < this.pointerCoords.length)
      {
        i1 = i * 31;
        if (this.pointerCoords[n] != null)
          break label244;
      }
      label244: for (int i2 = 0; ; i2 = this.pointerCoords[n].hashCode())
      {
        i = i1 + i2;
        n++;
        break label203;
        break;
      }
    }

    public MotionEvent mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.downTime_ = paramCodedInputByteBufferNano.readUInt64();
          this.bitField0_ = (0x1 | this.bitField0_);
          break;
        case 16:
          this.eventTime_ = paramCodedInputByteBufferNano.readUInt64();
          this.bitField0_ = (0x2 | this.bitField0_);
          break;
        case 24:
          this.action_ = paramCodedInputByteBufferNano.readInt32();
          this.bitField0_ = (0x4 | this.bitField0_);
          break;
        case 32:
          this.pointerCount_ = paramCodedInputByteBufferNano.readInt32();
          this.bitField0_ = (0x8 | this.bitField0_);
          break;
        case 42:
          int m = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 42);
          if (this.pointerProperties == null);
          for (int n = 0; ; n = this.pointerProperties.length)
          {
            PointerProperties[] arrayOfPointerProperties = new PointerProperties[n + m];
            if (this.pointerProperties != null)
              System.arraycopy(this.pointerProperties, 0, arrayOfPointerProperties, 0, n);
            this.pointerProperties = arrayOfPointerProperties;
            while (n < -1 + this.pointerProperties.length)
            {
              this.pointerProperties[n] = new PointerProperties();
              paramCodedInputByteBufferNano.readMessage(this.pointerProperties[n]);
              paramCodedInputByteBufferNano.readTag();
              n++;
            }
          }
          this.pointerProperties[n] = new PointerProperties();
          paramCodedInputByteBufferNano.readMessage(this.pointerProperties[n]);
          break;
        case 50:
          int j = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 50);
          if (this.pointerCoords == null);
          for (int k = 0; ; k = this.pointerCoords.length)
          {
            PointerCoords[] arrayOfPointerCoords = new PointerCoords[k + j];
            if (this.pointerCoords != null)
              System.arraycopy(this.pointerCoords, 0, arrayOfPointerCoords, 0, k);
            this.pointerCoords = arrayOfPointerCoords;
            while (k < -1 + this.pointerCoords.length)
            {
              this.pointerCoords[k] = new PointerCoords();
              paramCodedInputByteBufferNano.readMessage(this.pointerCoords[k]);
              paramCodedInputByteBufferNano.readTag();
              k++;
            }
          }
          this.pointerCoords[k] = new PointerCoords();
          paramCodedInputByteBufferNano.readMessage(this.pointerCoords[k]);
          break;
        case 56:
          this.metaState_ = paramCodedInputByteBufferNano.readInt32();
          this.bitField0_ = (0x10 | this.bitField0_);
          break;
        case 64:
          this.buttonState_ = paramCodedInputByteBufferNano.readInt32();
          this.bitField0_ = (0x20 | this.bitField0_);
          break;
        case 77:
          this.xPrecision_ = paramCodedInputByteBufferNano.readFloat();
          this.bitField0_ = (0x40 | this.bitField0_);
          break;
        case 85:
          this.yPrecision_ = paramCodedInputByteBufferNano.readFloat();
          this.bitField0_ = (0x80 | this.bitField0_);
          break;
        case 88:
          this.deviceId_ = paramCodedInputByteBufferNano.readInt32();
          this.bitField0_ = (0x100 | this.bitField0_);
          break;
        case 96:
          this.edgeFlags_ = paramCodedInputByteBufferNano.readInt32();
          this.bitField0_ = (0x200 | this.bitField0_);
          break;
        case 104:
          this.source_ = paramCodedInputByteBufferNano.readInt32();
          this.bitField0_ = (0x400 | this.bitField0_);
          break;
        case 112:
        }
        this.flags_ = paramCodedInputByteBufferNano.readInt32();
        this.bitField0_ = (0x800 | this.bitField0_);
      }
    }

    public MotionEvent setAction(int paramInt)
    {
      this.action_ = paramInt;
      this.bitField0_ = (0x4 | this.bitField0_);
      return this;
    }

    public MotionEvent setButtonState(int paramInt)
    {
      this.buttonState_ = paramInt;
      this.bitField0_ = (0x20 | this.bitField0_);
      return this;
    }

    public MotionEvent setDeviceId(int paramInt)
    {
      this.deviceId_ = paramInt;
      this.bitField0_ = (0x100 | this.bitField0_);
      return this;
    }

    public MotionEvent setDownTime(long paramLong)
    {
      this.downTime_ = paramLong;
      this.bitField0_ = (0x1 | this.bitField0_);
      return this;
    }

    public MotionEvent setEdgeFlags(int paramInt)
    {
      this.edgeFlags_ = paramInt;
      this.bitField0_ = (0x200 | this.bitField0_);
      return this;
    }

    public MotionEvent setEventTime(long paramLong)
    {
      this.eventTime_ = paramLong;
      this.bitField0_ = (0x2 | this.bitField0_);
      return this;
    }

    public MotionEvent setFlags(int paramInt)
    {
      this.flags_ = paramInt;
      this.bitField0_ = (0x800 | this.bitField0_);
      return this;
    }

    public MotionEvent setMetaState(int paramInt)
    {
      this.metaState_ = paramInt;
      this.bitField0_ = (0x10 | this.bitField0_);
      return this;
    }

    public MotionEvent setPointerCount(int paramInt)
    {
      this.pointerCount_ = paramInt;
      this.bitField0_ = (0x8 | this.bitField0_);
      return this;
    }

    public MotionEvent setSource(int paramInt)
    {
      this.source_ = paramInt;
      this.bitField0_ = (0x400 | this.bitField0_);
      return this;
    }

    public MotionEvent setXPrecision(float paramFloat)
    {
      this.xPrecision_ = paramFloat;
      this.bitField0_ = (0x40 | this.bitField0_);
      return this;
    }

    public MotionEvent setYPrecision(float paramFloat)
    {
      this.yPrecision_ = paramFloat;
      this.bitField0_ = (0x80 | this.bitField0_);
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if ((0x1 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeUInt64(1, this.downTime_);
      if ((0x2 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeUInt64(2, this.eventTime_);
      if ((0x4 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt32(3, this.action_);
      if ((0x8 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt32(4, this.pointerCount_);
      if (this.pointerProperties != null)
      {
        PointerProperties[] arrayOfPointerProperties = this.pointerProperties;
        int k = arrayOfPointerProperties.length;
        for (int m = 0; m < k; m++)
          paramCodedOutputByteBufferNano.writeMessage(5, arrayOfPointerProperties[m]);
      }
      if (this.pointerCoords != null)
      {
        PointerCoords[] arrayOfPointerCoords = this.pointerCoords;
        int i = arrayOfPointerCoords.length;
        for (int j = 0; j < i; j++)
          paramCodedOutputByteBufferNano.writeMessage(6, arrayOfPointerCoords[j]);
      }
      if ((0x10 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt32(7, this.metaState_);
      if ((0x20 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt32(8, this.buttonState_);
      if ((0x40 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeFloat(9, this.xPrecision_);
      if ((0x80 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeFloat(10, this.yPrecision_);
      if ((0x100 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt32(11, this.deviceId_);
      if ((0x200 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt32(12, this.edgeFlags_);
      if ((0x400 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt32(13, this.source_);
      if ((0x800 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt32(14, this.flags_);
    }

    public static final class PointerCoords extends MessageNano
    {
      public static final PointerCoords[] EMPTY_ARRAY = new PointerCoords[0];
      private int bitField0_;
      private float orientation_ = 0.0F;
      private float pressure_ = 0.0F;
      private float size_ = 0.0F;
      private float toolMajor_ = 0.0F;
      private float toolMinor_ = 0.0F;
      private float touchMajor_ = 0.0F;
      private float touchMinor_ = 0.0F;
      private float x_ = 0.0F;
      private float y_ = 0.0F;

      public final PointerCoords clear()
      {
        this.bitField0_ = 0;
        this.orientation_ = 0.0F;
        this.pressure_ = 0.0F;
        this.size_ = 0.0F;
        this.toolMajor_ = 0.0F;
        this.toolMinor_ = 0.0F;
        this.touchMajor_ = 0.0F;
        this.touchMinor_ = 0.0F;
        this.x_ = 0.0F;
        this.y_ = 0.0F;
        this.cachedSize = -1;
        return this;
      }

      public PointerCoords clearOrientation()
      {
        this.orientation_ = 0.0F;
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        return this;
      }

      public PointerCoords clearPressure()
      {
        this.pressure_ = 0.0F;
        this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        return this;
      }

      public PointerCoords clearSize()
      {
        this.size_ = 0.0F;
        this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
        return this;
      }

      public PointerCoords clearToolMajor()
      {
        this.toolMajor_ = 0.0F;
        this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
        return this;
      }

      public PointerCoords clearToolMinor()
      {
        this.toolMinor_ = 0.0F;
        this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
        return this;
      }

      public PointerCoords clearTouchMajor()
      {
        this.touchMajor_ = 0.0F;
        this.bitField0_ = (0xFFFFFFDF & this.bitField0_);
        return this;
      }

      public PointerCoords clearTouchMinor()
      {
        this.touchMinor_ = 0.0F;
        this.bitField0_ = (0xFFFFFFBF & this.bitField0_);
        return this;
      }

      public PointerCoords clearX()
      {
        this.x_ = 0.0F;
        this.bitField0_ = (0xFFFFFF7F & this.bitField0_);
        return this;
      }

      public PointerCoords clearY()
      {
        this.y_ = 0.0F;
        this.bitField0_ = (0xFFFFFEFF & this.bitField0_);
        return this;
      }

      public final boolean equals(Object paramObject)
      {
        if (paramObject == this);
        PointerCoords localPointerCoords;
        do
        {
          return true;
          if (!(paramObject instanceof PointerCoords))
            return false;
          localPointerCoords = (PointerCoords)paramObject;
        }
        while ((this.orientation_ == localPointerCoords.orientation_) && (this.pressure_ == localPointerCoords.pressure_) && (this.size_ == localPointerCoords.size_) && (this.toolMajor_ == localPointerCoords.toolMajor_) && (this.toolMinor_ == localPointerCoords.toolMinor_) && (this.touchMajor_ == localPointerCoords.touchMajor_) && (this.touchMinor_ == localPointerCoords.touchMinor_) && (this.x_ == localPointerCoords.x_) && (this.y_ == localPointerCoords.y_));
        return false;
      }

      public float getOrientation()
      {
        return this.orientation_;
      }

      public float getPressure()
      {
        return this.pressure_;
      }

      public int getSerializedSize()
      {
        int i = 0x1 & this.bitField0_;
        int j = 0;
        if (i != 0)
          j = 0 + CodedOutputByteBufferNano.computeFloatSize(1, this.orientation_);
        if ((0x2 & this.bitField0_) != 0)
          j += CodedOutputByteBufferNano.computeFloatSize(2, this.pressure_);
        if ((0x4 & this.bitField0_) != 0)
          j += CodedOutputByteBufferNano.computeFloatSize(3, this.size_);
        if ((0x8 & this.bitField0_) != 0)
          j += CodedOutputByteBufferNano.computeFloatSize(4, this.toolMajor_);
        if ((0x10 & this.bitField0_) != 0)
          j += CodedOutputByteBufferNano.computeFloatSize(5, this.toolMinor_);
        if ((0x20 & this.bitField0_) != 0)
          j += CodedOutputByteBufferNano.computeFloatSize(6, this.touchMajor_);
        if ((0x40 & this.bitField0_) != 0)
          j += CodedOutputByteBufferNano.computeFloatSize(7, this.touchMinor_);
        if ((0x80 & this.bitField0_) != 0)
          j += CodedOutputByteBufferNano.computeFloatSize(8, this.x_);
        if ((0x100 & this.bitField0_) != 0)
          j += CodedOutputByteBufferNano.computeFloatSize(9, this.y_);
        this.cachedSize = j;
        return j;
      }

      public float getSize()
      {
        return this.size_;
      }

      public float getToolMajor()
      {
        return this.toolMajor_;
      }

      public float getToolMinor()
      {
        return this.toolMinor_;
      }

      public float getTouchMajor()
      {
        return this.touchMajor_;
      }

      public float getTouchMinor()
      {
        return this.touchMinor_;
      }

      public float getX()
      {
        return this.x_;
      }

      public float getY()
      {
        return this.y_;
      }

      public boolean hasOrientation()
      {
        return (0x1 & this.bitField0_) != 0;
      }

      public boolean hasPressure()
      {
        return (0x2 & this.bitField0_) != 0;
      }

      public boolean hasSize()
      {
        return (0x4 & this.bitField0_) != 0;
      }

      public boolean hasToolMajor()
      {
        return (0x8 & this.bitField0_) != 0;
      }

      public boolean hasToolMinor()
      {
        return (0x10 & this.bitField0_) != 0;
      }

      public boolean hasTouchMajor()
      {
        return (0x20 & this.bitField0_) != 0;
      }

      public boolean hasTouchMinor()
      {
        return (0x40 & this.bitField0_) != 0;
      }

      public boolean hasX()
      {
        return (0x80 & this.bitField0_) != 0;
      }

      public boolean hasY()
      {
        return (0x100 & this.bitField0_) != 0;
      }

      public int hashCode()
      {
        return 31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (527 + Float.floatToIntBits(this.orientation_)) + Float.floatToIntBits(this.pressure_)) + Float.floatToIntBits(this.size_)) + Float.floatToIntBits(this.toolMajor_)) + Float.floatToIntBits(this.toolMinor_)) + Float.floatToIntBits(this.touchMajor_)) + Float.floatToIntBits(this.touchMinor_)) + Float.floatToIntBits(this.x_)) + Float.floatToIntBits(this.y_);
      }

      public PointerCoords mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          case 13:
            this.orientation_ = paramCodedInputByteBufferNano.readFloat();
            this.bitField0_ = (0x1 | this.bitField0_);
            break;
          case 21:
            this.pressure_ = paramCodedInputByteBufferNano.readFloat();
            this.bitField0_ = (0x2 | this.bitField0_);
            break;
          case 29:
            this.size_ = paramCodedInputByteBufferNano.readFloat();
            this.bitField0_ = (0x4 | this.bitField0_);
            break;
          case 37:
            this.toolMajor_ = paramCodedInputByteBufferNano.readFloat();
            this.bitField0_ = (0x8 | this.bitField0_);
            break;
          case 45:
            this.toolMinor_ = paramCodedInputByteBufferNano.readFloat();
            this.bitField0_ = (0x10 | this.bitField0_);
            break;
          case 53:
            this.touchMajor_ = paramCodedInputByteBufferNano.readFloat();
            this.bitField0_ = (0x20 | this.bitField0_);
            break;
          case 61:
            this.touchMinor_ = paramCodedInputByteBufferNano.readFloat();
            this.bitField0_ = (0x40 | this.bitField0_);
            break;
          case 69:
            this.x_ = paramCodedInputByteBufferNano.readFloat();
            this.bitField0_ = (0x80 | this.bitField0_);
            break;
          case 77:
          }
          this.y_ = paramCodedInputByteBufferNano.readFloat();
          this.bitField0_ = (0x100 | this.bitField0_);
        }
      }

      public PointerCoords parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
        throws IOException
      {
        return new PointerCoords().mergeFrom(paramCodedInputByteBufferNano);
      }

      public PointerCoords parseFrom(byte[] paramArrayOfByte)
        throws InvalidProtocolBufferNanoException
      {
        return (PointerCoords)MessageNano.mergeFrom(new PointerCoords(), paramArrayOfByte);
      }

      public PointerCoords setOrientation(float paramFloat)
      {
        this.orientation_ = paramFloat;
        this.bitField0_ = (0x1 | this.bitField0_);
        return this;
      }

      public PointerCoords setPressure(float paramFloat)
      {
        this.pressure_ = paramFloat;
        this.bitField0_ = (0x2 | this.bitField0_);
        return this;
      }

      public PointerCoords setSize(float paramFloat)
      {
        this.size_ = paramFloat;
        this.bitField0_ = (0x4 | this.bitField0_);
        return this;
      }

      public PointerCoords setToolMajor(float paramFloat)
      {
        this.toolMajor_ = paramFloat;
        this.bitField0_ = (0x8 | this.bitField0_);
        return this;
      }

      public PointerCoords setToolMinor(float paramFloat)
      {
        this.toolMinor_ = paramFloat;
        this.bitField0_ = (0x10 | this.bitField0_);
        return this;
      }

      public PointerCoords setTouchMajor(float paramFloat)
      {
        this.touchMajor_ = paramFloat;
        this.bitField0_ = (0x20 | this.bitField0_);
        return this;
      }

      public PointerCoords setTouchMinor(float paramFloat)
      {
        this.touchMinor_ = paramFloat;
        this.bitField0_ = (0x40 | this.bitField0_);
        return this;
      }

      public PointerCoords setX(float paramFloat)
      {
        this.x_ = paramFloat;
        this.bitField0_ = (0x80 | this.bitField0_);
        return this;
      }

      public PointerCoords setY(float paramFloat)
      {
        this.y_ = paramFloat;
        this.bitField0_ = (0x100 | this.bitField0_);
        return this;
      }

      public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
        throws IOException
      {
        if ((0x1 & this.bitField0_) != 0)
          paramCodedOutputByteBufferNano.writeFloat(1, this.orientation_);
        if ((0x2 & this.bitField0_) != 0)
          paramCodedOutputByteBufferNano.writeFloat(2, this.pressure_);
        if ((0x4 & this.bitField0_) != 0)
          paramCodedOutputByteBufferNano.writeFloat(3, this.size_);
        if ((0x8 & this.bitField0_) != 0)
          paramCodedOutputByteBufferNano.writeFloat(4, this.toolMajor_);
        if ((0x10 & this.bitField0_) != 0)
          paramCodedOutputByteBufferNano.writeFloat(5, this.toolMinor_);
        if ((0x20 & this.bitField0_) != 0)
          paramCodedOutputByteBufferNano.writeFloat(6, this.touchMajor_);
        if ((0x40 & this.bitField0_) != 0)
          paramCodedOutputByteBufferNano.writeFloat(7, this.touchMinor_);
        if ((0x80 & this.bitField0_) != 0)
          paramCodedOutputByteBufferNano.writeFloat(8, this.x_);
        if ((0x100 & this.bitField0_) != 0)
          paramCodedOutputByteBufferNano.writeFloat(9, this.y_);
      }
    }

    public static final class PointerProperties extends MessageNano
    {
      public static final PointerProperties[] EMPTY_ARRAY = new PointerProperties[0];
      private int bitField0_;
      private int id_ = 0;
      private int toolType_ = 0;

      public final PointerProperties clear()
      {
        this.bitField0_ = 0;
        this.id_ = 0;
        this.toolType_ = 0;
        this.cachedSize = -1;
        return this;
      }

      public PointerProperties clearId()
      {
        this.id_ = 0;
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        return this;
      }

      public PointerProperties clearToolType()
      {
        this.toolType_ = 0;
        this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        return this;
      }

      public final boolean equals(Object paramObject)
      {
        if (paramObject == this);
        PointerProperties localPointerProperties;
        do
        {
          return true;
          if (!(paramObject instanceof PointerProperties))
            return false;
          localPointerProperties = (PointerProperties)paramObject;
        }
        while ((this.id_ == localPointerProperties.id_) && (this.toolType_ == localPointerProperties.toolType_));
        return false;
      }

      public int getId()
      {
        return this.id_;
      }

      public int getSerializedSize()
      {
        int i = 0x1 & this.bitField0_;
        int j = 0;
        if (i != 0)
          j = 0 + CodedOutputByteBufferNano.computeInt32Size(1, this.id_);
        if ((0x2 & this.bitField0_) != 0)
          j += CodedOutputByteBufferNano.computeInt32Size(2, this.toolType_);
        this.cachedSize = j;
        return j;
      }

      public int getToolType()
      {
        return this.toolType_;
      }

      public boolean hasId()
      {
        return (0x1 & this.bitField0_) != 0;
      }

      public boolean hasToolType()
      {
        return (0x2 & this.bitField0_) != 0;
      }

      public int hashCode()
      {
        return 31 * (527 + this.id_) + this.toolType_;
      }

      public PointerProperties mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
            this.id_ = paramCodedInputByteBufferNano.readInt32();
            this.bitField0_ = (0x1 | this.bitField0_);
            break;
          case 16:
          }
          this.toolType_ = paramCodedInputByteBufferNano.readInt32();
          this.bitField0_ = (0x2 | this.bitField0_);
        }
      }

      public PointerProperties parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
        throws IOException
      {
        return new PointerProperties().mergeFrom(paramCodedInputByteBufferNano);
      }

      public PointerProperties parseFrom(byte[] paramArrayOfByte)
        throws InvalidProtocolBufferNanoException
      {
        return (PointerProperties)MessageNano.mergeFrom(new PointerProperties(), paramArrayOfByte);
      }

      public PointerProperties setId(int paramInt)
      {
        this.id_ = paramInt;
        this.bitField0_ = (0x1 | this.bitField0_);
        return this;
      }

      public PointerProperties setToolType(int paramInt)
      {
        this.toolType_ = paramInt;
        this.bitField0_ = (0x2 | this.bitField0_);
        return this;
      }

      public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
        throws IOException
      {
        if ((0x1 & this.bitField0_) != 0)
          paramCodedOutputByteBufferNano.writeInt32(1, this.id_);
        if ((0x2 & this.bitField0_) != 0)
          paramCodedOutputByteBufferNano.writeInt32(2, this.toolType_);
      }
    }
  }

  public static final class NavigationRequest extends MessageNano
  {
    public static final NavigationRequest[] EMPTY_ARRAY = new NavigationRequest[0];
    private int bitField0_;
    private String uri_ = "";

    public static NavigationRequest parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new NavigationRequest().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static NavigationRequest parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (NavigationRequest)MessageNano.mergeFrom(new NavigationRequest(), paramArrayOfByte);
    }

    public final NavigationRequest clear()
    {
      this.bitField0_ = 0;
      this.uri_ = "";
      this.cachedSize = -1;
      return this;
    }

    public NavigationRequest clearUri()
    {
      this.uri_ = "";
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      NavigationRequest localNavigationRequest;
      do
      {
        return true;
        if (!(paramObject instanceof NavigationRequest))
          return false;
        localNavigationRequest = (NavigationRequest)paramObject;
        if (this.uri_ != null)
          break;
      }
      while (localNavigationRequest.uri_ == null);
      return false;
      return this.uri_.equals(localNavigationRequest.uri_);
    }

    public int getSerializedSize()
    {
      int i = 0x1 & this.bitField0_;
      int j = 0;
      if (i != 0)
        j = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.uri_);
      this.cachedSize = j;
      return j;
    }

    public String getUri()
    {
      return this.uri_;
    }

    public boolean hasUri()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public int hashCode()
    {
      if (this.uri_ == null);
      for (int i = 0; ; i = this.uri_.hashCode())
        return i + 527;
    }

    public NavigationRequest mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
        this.uri_ = paramCodedInputByteBufferNano.readString();
        this.bitField0_ = (0x1 | this.bitField0_);
      }
    }

    public NavigationRequest setUri(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.uri_ = paramString;
      this.bitField0_ = (0x1 | this.bitField0_);
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if ((0x1 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(1, this.uri_);
    }
  }

  public static final class ScreenShot extends MessageNano
  {
    public static final ScreenShot[] EMPTY_ARRAY = new ScreenShot[0];
    private int bitField0_;
    private byte[] screenshotBytesG2C_ = WireFormatNano.EMPTY_BYTES;
    private boolean startScreenshotRequestC2G_ = false;
    private boolean stopScreenshotRequestC2G_ = false;

    public static ScreenShot parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new ScreenShot().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static ScreenShot parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (ScreenShot)MessageNano.mergeFrom(new ScreenShot(), paramArrayOfByte);
    }

    public final ScreenShot clear()
    {
      this.bitField0_ = 0;
      this.startScreenshotRequestC2G_ = false;
      this.stopScreenshotRequestC2G_ = false;
      this.screenshotBytesG2C_ = WireFormatNano.EMPTY_BYTES;
      this.cachedSize = -1;
      return this;
    }

    public ScreenShot clearScreenshotBytesG2C()
    {
      this.screenshotBytesG2C_ = WireFormatNano.EMPTY_BYTES;
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      return this;
    }

    public ScreenShot clearStartScreenshotRequestC2G()
    {
      this.startScreenshotRequestC2G_ = false;
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public ScreenShot clearStopScreenshotRequestC2G()
    {
      this.stopScreenshotRequestC2G_ = false;
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      ScreenShot localScreenShot;
      do
      {
        return true;
        if (!(paramObject instanceof ScreenShot))
          return false;
        localScreenShot = (ScreenShot)paramObject;
      }
      while ((this.startScreenshotRequestC2G_ == localScreenShot.startScreenshotRequestC2G_) && (this.stopScreenshotRequestC2G_ == localScreenShot.stopScreenshotRequestC2G_) && (Arrays.equals(this.screenshotBytesG2C_, localScreenShot.screenshotBytesG2C_)));
      return false;
    }

    public byte[] getScreenshotBytesG2C()
    {
      return this.screenshotBytesG2C_;
    }

    public int getSerializedSize()
    {
      int i = 0x1 & this.bitField0_;
      int j = 0;
      if (i != 0)
        j = 0 + CodedOutputByteBufferNano.computeBoolSize(1, this.startScreenshotRequestC2G_);
      if ((0x2 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeBoolSize(2, this.stopScreenshotRequestC2G_);
      if ((0x4 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeBytesSize(3, this.screenshotBytesG2C_);
      this.cachedSize = j;
      return j;
    }

    public boolean getStartScreenshotRequestC2G()
    {
      return this.startScreenshotRequestC2G_;
    }

    public boolean getStopScreenshotRequestC2G()
    {
      return this.stopScreenshotRequestC2G_;
    }

    public boolean hasScreenshotBytesG2C()
    {
      return (0x4 & this.bitField0_) != 0;
    }

    public boolean hasStartScreenshotRequestC2G()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public boolean hasStopScreenshotRequestC2G()
    {
      return (0x2 & this.bitField0_) != 0;
    }

    public int hashCode()
    {
      int i = 1;
      int j;
      label27: int m;
      if (this.startScreenshotRequestC2G_)
      {
        j = i;
        int k = 31 * (j + 527);
        if (!this.stopScreenshotRequestC2G_)
          break label54;
        m = k + i;
        if (this.screenshotBytesG2C_ != null)
          break label59;
        m *= 31;
      }
      while (true)
      {
        return m;
        j = 2;
        break;
        label54: i = 2;
        break label27;
        label59: for (int n = 0; n < this.screenshotBytesG2C_.length; n++)
          m = m * 31 + this.screenshotBytesG2C_[n];
      }
    }

    public ScreenShot mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.startScreenshotRequestC2G_ = paramCodedInputByteBufferNano.readBool();
          this.bitField0_ = (0x1 | this.bitField0_);
          break;
        case 16:
          this.stopScreenshotRequestC2G_ = paramCodedInputByteBufferNano.readBool();
          this.bitField0_ = (0x2 | this.bitField0_);
          break;
        case 26:
        }
        this.screenshotBytesG2C_ = paramCodedInputByteBufferNano.readBytes();
        this.bitField0_ = (0x4 | this.bitField0_);
      }
    }

    public ScreenShot setScreenshotBytesG2C(byte[] paramArrayOfByte)
    {
      if (paramArrayOfByte == null)
        throw new NullPointerException();
      this.screenshotBytesG2C_ = paramArrayOfByte;
      this.bitField0_ = (0x4 | this.bitField0_);
      return this;
    }

    public ScreenShot setStartScreenshotRequestC2G(boolean paramBoolean)
    {
      this.startScreenshotRequestC2G_ = paramBoolean;
      this.bitField0_ = (0x1 | this.bitField0_);
      return this;
    }

    public ScreenShot setStopScreenshotRequestC2G(boolean paramBoolean)
    {
      this.stopScreenshotRequestC2G_ = paramBoolean;
      this.bitField0_ = (0x2 | this.bitField0_);
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if ((0x1 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeBool(1, this.startScreenshotRequestC2G_);
      if ((0x2 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeBool(2, this.stopScreenshotRequestC2G_);
      if ((0x4 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeBytes(3, this.screenshotBytesG2C_);
    }
  }

  public static final class TimelineItemResponse extends MessageNano
  {
    public static final TimelineItemResponse[] EMPTY_ARRAY = new TimelineItemResponse[0];
    private int bitField0_;
    private String id_ = "";
    private int syncStatus_ = 0;

    public static TimelineItemResponse parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new TimelineItemResponse().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static TimelineItemResponse parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (TimelineItemResponse)MessageNano.mergeFrom(new TimelineItemResponse(), paramArrayOfByte);
    }

    public final TimelineItemResponse clear()
    {
      this.bitField0_ = 0;
      this.id_ = "";
      this.syncStatus_ = 0;
      this.cachedSize = -1;
      return this;
    }

    public TimelineItemResponse clearId()
    {
      this.id_ = "";
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public TimelineItemResponse clearSyncStatus()
    {
      this.syncStatus_ = 0;
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      while (true)
      {
        return true;
        if (!(paramObject instanceof TimelineItemResponse))
          return false;
        TimelineItemResponse localTimelineItemResponse = (TimelineItemResponse)paramObject;
        if (this.id_ == null)
          if (localTimelineItemResponse.id_ != null);
        while (this.syncStatus_ != localTimelineItemResponse.syncStatus_)
          do
            return false;
          while (!this.id_.equals(localTimelineItemResponse.id_));
      }
    }

    public String getId()
    {
      return this.id_;
    }

    public int getSerializedSize()
    {
      int i = 0x1 & this.bitField0_;
      int j = 0;
      if (i != 0)
        j = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.id_);
      if ((0x2 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeInt32Size(2, this.syncStatus_);
      this.cachedSize = j;
      return j;
    }

    public int getSyncStatus()
    {
      return this.syncStatus_;
    }

    public boolean hasId()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public boolean hasSyncStatus()
    {
      return (0x2 & this.bitField0_) != 0;
    }

    public int hashCode()
    {
      if (this.id_ == null);
      for (int i = 0; ; i = this.id_.hashCode())
        return 31 * (i + 527) + this.syncStatus_;
    }

    public TimelineItemResponse mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.id_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x1 | this.bitField0_);
        case 16:
        }
      }
      int j = paramCodedInputByteBufferNano.readInt32();
      if ((j == 0) || (j == 1) || (j == 2));
      for (this.syncStatus_ = j; ; this.syncStatus_ = 0)
      {
        this.bitField0_ = (0x2 | this.bitField0_);
        break;
      }
    }

    public TimelineItemResponse setId(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.id_ = paramString;
      this.bitField0_ = (0x1 | this.bitField0_);
      return this;
    }

    public TimelineItemResponse setSyncStatus(int paramInt)
    {
      this.syncStatus_ = paramInt;
      this.bitField0_ = (0x2 | this.bitField0_);
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if ((0x1 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(1, this.id_);
      if ((0x2 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt32(2, this.syncStatus_);
    }
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.companion.Proto
 * JD-Core Version:    0.6.2
 */