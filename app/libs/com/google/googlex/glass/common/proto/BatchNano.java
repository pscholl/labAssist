package com.google.googlex.glass.common.proto;

import com.google.protobuf.nano.CodedInputByteBufferNano;
import com.google.protobuf.nano.CodedOutputByteBufferNano;
import com.google.protobuf.nano.InvalidProtocolBufferNanoException;
import com.google.protobuf.nano.MessageNano;
import com.google.protobuf.nano.WireFormatNano;
import java.io.IOException;
import java.util.Arrays;

public abstract interface BatchNano
{
  public static final class AuthToken extends MessageNano
  {
    public static final AuthToken[] EMPTY_ARRAY = new AuthToken[0];
    private int bitField0_;
    private int type_ = 1;
    private String value_ = "";

    public static AuthToken parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new AuthToken().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static AuthToken parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (AuthToken)MessageNano.mergeFrom(new AuthToken(), paramArrayOfByte);
    }

    public AuthToken clearType()
    {
      this.type_ = 1;
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public AuthToken clearValue()
    {
      this.value_ = "";
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      AuthToken localAuthToken;
      do
      {
        return true;
        if (!(paramObject instanceof AuthToken))
          return false;
        localAuthToken = (AuthToken)paramObject;
        if (this.type_ != localAuthToken.type_)
          break;
        if (this.value_ != null)
          break label48;
      }
      while (localAuthToken.value_ == null);
      label48: 
      while (!this.value_.equals(localAuthToken.value_))
        return false;
      return true;
    }

    public int getSerializedSize()
    {
      int i = 0x1 & this.bitField0_;
      int j = 0;
      if (i != 0)
        j = 0 + CodedOutputByteBufferNano.computeInt32Size(1, this.type_);
      if ((0x2 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(2, this.value_);
      this.cachedSize = j;
      return j;
    }

    public int getType()
    {
      return this.type_;
    }

    public String getValue()
    {
      return this.value_;
    }

    public boolean hasType()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public boolean hasValue()
    {
      return (0x2 & this.bitField0_) != 0;
    }

    public int hashCode()
    {
      int i = 31 * (527 + this.type_);
      if (this.value_ == null);
      for (int j = 0; ; j = this.value_.hashCode())
        return i + j;
    }

    public AuthToken mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          if (j == 1);
          for (this.type_ = j; ; this.type_ = 1)
          {
            this.bitField0_ = (0x1 | this.bitField0_);
            break;
          }
        case 18:
        }
        this.value_ = paramCodedInputByteBufferNano.readString();
        this.bitField0_ = (0x2 | this.bitField0_);
      }
    }

    public AuthToken setType(int paramInt)
    {
      this.type_ = paramInt;
      this.bitField0_ = (0x1 | this.bitField0_);
      return this;
    }

    public AuthToken setValue(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.value_ = paramString;
      this.bitField0_ = (0x2 | this.bitField0_);
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if ((0x1 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt32(1, this.type_);
      if ((0x2 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(2, this.value_);
    }
  }

  public static abstract interface AuthTokenType
  {
    public static final int ANDROID_SERVICE = 1;
  }

  public static final class BatchHeader extends MessageNano
  {
    public static final BatchHeader[] EMPTY_ARRAY = new BatchHeader[0];
    public BatchNano.AuthToken[] authToken = BatchNano.AuthToken.EMPTY_ARRAY;
    private int bitField0_;
    private long dispatcherId_ = 0L;

    public static BatchHeader parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new BatchHeader().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static BatchHeader parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (BatchHeader)MessageNano.mergeFrom(new BatchHeader(), paramArrayOfByte);
    }

    public BatchHeader clearDispatcherId()
    {
      this.dispatcherId_ = 0L;
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      BatchHeader localBatchHeader;
      do
      {
        return true;
        if (!(paramObject instanceof BatchHeader))
          return false;
        localBatchHeader = (BatchHeader)paramObject;
      }
      while ((Arrays.equals(this.authToken, localBatchHeader.authToken)) && (this.dispatcherId_ == localBatchHeader.dispatcherId_));
      return false;
    }

    public long getDispatcherId()
    {
      return this.dispatcherId_;
    }

    public int getSerializedSize()
    {
      BatchNano.AuthToken[] arrayOfAuthToken1 = this.authToken;
      int i = 0;
      if (arrayOfAuthToken1 != null)
      {
        BatchNano.AuthToken[] arrayOfAuthToken2 = this.authToken;
        int j = arrayOfAuthToken2.length;
        for (int k = 0; k < j; k++)
          i += CodedOutputByteBufferNano.computeMessageSize(1, arrayOfAuthToken2[k]);
      }
      if ((0x1 & this.bitField0_) != 0)
        i += CodedOutputByteBufferNano.computeInt64Size(2, this.dispatcherId_);
      this.cachedSize = i;
      return i;
    }

    public boolean hasDispatcherId()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public int hashCode()
    {
      int i = 17;
      if (this.authToken == null)
      {
        i *= 31;
        return i * 31 + (int)(this.dispatcherId_ ^ this.dispatcherId_ >>> 32);
      }
      int j = 0;
      label36: int k;
      if (j < this.authToken.length)
      {
        k = i * 31;
        if (this.authToken[j] != null)
          break label73;
      }
      label73: for (int m = 0; ; m = this.authToken[j].hashCode())
      {
        i = k + m;
        j++;
        break label36;
        break;
      }
    }

    public BatchHeader mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          int j = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 10);
          if (this.authToken == null);
          for (int k = 0; ; k = this.authToken.length)
          {
            BatchNano.AuthToken[] arrayOfAuthToken = new BatchNano.AuthToken[k + j];
            if (this.authToken != null)
              System.arraycopy(this.authToken, 0, arrayOfAuthToken, 0, k);
            this.authToken = arrayOfAuthToken;
            while (k < -1 + this.authToken.length)
            {
              this.authToken[k] = new BatchNano.AuthToken();
              paramCodedInputByteBufferNano.readMessage(this.authToken[k]);
              paramCodedInputByteBufferNano.readTag();
              k++;
            }
          }
          this.authToken[k] = new BatchNano.AuthToken();
          paramCodedInputByteBufferNano.readMessage(this.authToken[k]);
          break;
        case 16:
        }
        this.dispatcherId_ = paramCodedInputByteBufferNano.readInt64();
        this.bitField0_ = (0x1 | this.bitField0_);
      }
    }

    public BatchHeader setDispatcherId(long paramLong)
    {
      this.dispatcherId_ = paramLong;
      this.bitField0_ = (0x1 | this.bitField0_);
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.authToken != null)
      {
        BatchNano.AuthToken[] arrayOfAuthToken = this.authToken;
        int i = arrayOfAuthToken.length;
        for (int j = 0; j < i; j++)
          paramCodedOutputByteBufferNano.writeMessage(1, arrayOfAuthToken[j]);
      }
      if ((0x1 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt64(2, this.dispatcherId_);
    }
  }

  public static final class BatchRequest extends MessageNano
  {
    public static final BatchRequest[] EMPTY_ARRAY = new BatchRequest[0];
    private BatchNano.BatchHeader header_;
    public BatchNano.RequestWrapper[] request = BatchNano.RequestWrapper.EMPTY_ARRAY;

    public static BatchRequest parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new BatchRequest().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static BatchRequest parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (BatchRequest)MessageNano.mergeFrom(new BatchRequest(), paramArrayOfByte);
    }

    public BatchRequest clearHeader()
    {
      this.header_ = null;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      while (true)
      {
        return true;
        if (!(paramObject instanceof BatchRequest))
          return false;
        BatchRequest localBatchRequest = (BatchRequest)paramObject;
        if (this.header_ == null)
          if (localBatchRequest.header_ != null);
        while (!Arrays.equals(this.request, localBatchRequest.request))
          do
            return false;
          while (!this.header_.equals(localBatchRequest.header_));
      }
    }

    public BatchNano.BatchHeader getHeader()
    {
      return this.header_;
    }

    public int getSerializedSize()
    {
      BatchNano.BatchHeader localBatchHeader = this.header_;
      int i = 0;
      if (localBatchHeader != null)
        i = 0 + CodedOutputByteBufferNano.computeMessageSize(1, this.header_);
      if (this.request != null)
      {
        BatchNano.RequestWrapper[] arrayOfRequestWrapper = this.request;
        int j = arrayOfRequestWrapper.length;
        for (int k = 0; k < j; k++)
          i += CodedOutputByteBufferNano.computeMessageSize(2, arrayOfRequestWrapper[k]);
      }
      this.cachedSize = i;
      return i;
    }

    public boolean hasHeader()
    {
      return this.header_ != null;
    }

    public int hashCode()
    {
      if (this.header_ == null);
      int j;
      for (int i = 0; ; i = this.header_.hashCode())
      {
        j = i + 527;
        if (this.request != null)
          break;
        j *= 31;
        return j;
      }
      int k = 0;
      label42: int m;
      if (k < this.request.length)
      {
        m = j * 31;
        if (this.request[k] != null)
          break label81;
      }
      label81: for (int n = 0; ; n = this.request[k].hashCode())
      {
        j = m + n;
        k++;
        break label42;
        break;
      }
    }

    public BatchRequest mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          if (this.header_ == null)
            this.header_ = new BatchNano.BatchHeader();
          paramCodedInputByteBufferNano.readMessage(this.header_);
          break;
        case 18:
        }
        int j = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 18);
        if (this.request == null);
        for (int k = 0; ; k = this.request.length)
        {
          BatchNano.RequestWrapper[] arrayOfRequestWrapper = new BatchNano.RequestWrapper[k + j];
          if (this.request != null)
            System.arraycopy(this.request, 0, arrayOfRequestWrapper, 0, k);
          this.request = arrayOfRequestWrapper;
          while (k < -1 + this.request.length)
          {
            this.request[k] = new BatchNano.RequestWrapper();
            paramCodedInputByteBufferNano.readMessage(this.request[k]);
            paramCodedInputByteBufferNano.readTag();
            k++;
          }
        }
        this.request[k] = new BatchNano.RequestWrapper();
        paramCodedInputByteBufferNano.readMessage(this.request[k]);
      }
    }

    public BatchRequest setHeader(BatchNano.BatchHeader paramBatchHeader)
    {
      if (paramBatchHeader == null)
        throw new NullPointerException();
      this.header_ = paramBatchHeader;
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.header_ != null)
        paramCodedOutputByteBufferNano.writeMessage(1, this.header_);
      if (this.request != null)
      {
        BatchNano.RequestWrapper[] arrayOfRequestWrapper = this.request;
        int i = arrayOfRequestWrapper.length;
        for (int j = 0; j < i; j++)
          paramCodedOutputByteBufferNano.writeMessage(2, arrayOfRequestWrapper[j]);
      }
    }
  }

  public static final class BatchResponse extends MessageNano
  {
    public static final BatchResponse[] EMPTY_ARRAY = new BatchResponse[0];
    public BatchNano.ResponseWrapper[] response = BatchNano.ResponseWrapper.EMPTY_ARRAY;

    public static BatchResponse parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new BatchResponse().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static BatchResponse parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (BatchResponse)MessageNano.mergeFrom(new BatchResponse(), paramArrayOfByte);
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this)
        return true;
      if (!(paramObject instanceof BatchResponse))
        return false;
      BatchResponse localBatchResponse = (BatchResponse)paramObject;
      return Arrays.equals(this.response, localBatchResponse.response);
    }

    public int getSerializedSize()
    {
      BatchNano.ResponseWrapper[] arrayOfResponseWrapper1 = this.response;
      int i = 0;
      if (arrayOfResponseWrapper1 != null)
      {
        BatchNano.ResponseWrapper[] arrayOfResponseWrapper2 = this.response;
        int j = arrayOfResponseWrapper2.length;
        for (int k = 0; k < j; k++)
          i += CodedOutputByteBufferNano.computeMessageSize(1, arrayOfResponseWrapper2[k]);
      }
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      int i = 17;
      if (this.response == null)
      {
        i *= 31;
        return i;
      }
      int j = 0;
      label19: int k;
      if (j < this.response.length)
      {
        k = i * 31;
        if (this.response[j] != null)
          break label56;
      }
      label56: for (int m = 0; ; m = this.response[j].hashCode())
      {
        i = k + m;
        j++;
        break label19;
        break;
      }
    }

    public BatchResponse mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
        int j = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 10);
        if (this.response == null);
        for (int k = 0; ; k = this.response.length)
        {
          BatchNano.ResponseWrapper[] arrayOfResponseWrapper = new BatchNano.ResponseWrapper[k + j];
          if (this.response != null)
            System.arraycopy(this.response, 0, arrayOfResponseWrapper, 0, k);
          this.response = arrayOfResponseWrapper;
          while (k < -1 + this.response.length)
          {
            this.response[k] = new BatchNano.ResponseWrapper();
            paramCodedInputByteBufferNano.readMessage(this.response[k]);
            paramCodedInputByteBufferNano.readTag();
            k++;
          }
        }
        this.response[k] = new BatchNano.ResponseWrapper();
        paramCodedInputByteBufferNano.readMessage(this.response[k]);
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.response != null)
      {
        BatchNano.ResponseWrapper[] arrayOfResponseWrapper = this.response;
        int i = arrayOfResponseWrapper.length;
        for (int j = 0; j < i; j++)
          paramCodedOutputByteBufferNano.writeMessage(1, arrayOfResponseWrapper[j]);
      }
    }
  }

  public static final class RequestWrapper extends MessageNano
  {
    public static final RequestWrapper[] EMPTY_ARRAY = new RequestWrapper[0];
    private int bitField0_;
    private byte[] data_ = WireFormatNano.EMPTY_BYTES;
    private String path_ = "";

    public static RequestWrapper parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new RequestWrapper().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static RequestWrapper parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (RequestWrapper)MessageNano.mergeFrom(new RequestWrapper(), paramArrayOfByte);
    }

    public RequestWrapper clearData()
    {
      this.data_ = WireFormatNano.EMPTY_BYTES;
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      return this;
    }

    public RequestWrapper clearPath()
    {
      this.path_ = "";
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      while (true)
      {
        return true;
        if (!(paramObject instanceof RequestWrapper))
          return false;
        RequestWrapper localRequestWrapper = (RequestWrapper)paramObject;
        if (this.path_ == null)
          if (localRequestWrapper.path_ != null);
        while (!Arrays.equals(this.data_, localRequestWrapper.data_))
          do
            return false;
          while (!this.path_.equals(localRequestWrapper.path_));
      }
    }

    public byte[] getData()
    {
      return this.data_;
    }

    public String getPath()
    {
      return this.path_;
    }

    public int getSerializedSize()
    {
      int i = 0x1 & this.bitField0_;
      int j = 0;
      if (i != 0)
        j = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.path_);
      if ((0x2 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeBytesSize(2, this.data_);
      this.cachedSize = j;
      return j;
    }

    public boolean hasData()
    {
      return (0x2 & this.bitField0_) != 0;
    }

    public boolean hasPath()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public int hashCode()
    {
      int i;
      int j;
      if (this.path_ == null)
      {
        i = 0;
        j = i + 527;
        if (this.data_ != null)
          break label40;
        j *= 31;
      }
      while (true)
      {
        return j;
        i = this.path_.hashCode();
        break;
        label40: for (int k = 0; k < this.data_.length; k++)
          j = j * 31 + this.data_[k];
      }
    }

    public RequestWrapper mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.path_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x1 | this.bitField0_);
          break;
        case 18:
        }
        this.data_ = paramCodedInputByteBufferNano.readBytes();
        this.bitField0_ = (0x2 | this.bitField0_);
      }
    }

    public RequestWrapper setData(byte[] paramArrayOfByte)
    {
      if (paramArrayOfByte == null)
        throw new NullPointerException();
      this.data_ = paramArrayOfByte;
      this.bitField0_ = (0x2 | this.bitField0_);
      return this;
    }

    public RequestWrapper setPath(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.path_ = paramString;
      this.bitField0_ = (0x1 | this.bitField0_);
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if ((0x1 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(1, this.path_);
      if ((0x2 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeBytes(2, this.data_);
    }
  }

  public static final class ResponseWrapper extends MessageNano
  {
    public static final ResponseWrapper[] EMPTY_ARRAY = new ResponseWrapper[0];
    private int bitField0_;
    private byte[] data_ = WireFormatNano.EMPTY_BYTES;
    private int errorCode_ = 0;

    public static ResponseWrapper parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new ResponseWrapper().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static ResponseWrapper parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (ResponseWrapper)MessageNano.mergeFrom(new ResponseWrapper(), paramArrayOfByte);
    }

    public ResponseWrapper clearData()
    {
      this.data_ = WireFormatNano.EMPTY_BYTES;
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      return this;
    }

    public ResponseWrapper clearErrorCode()
    {
      this.errorCode_ = 0;
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      ResponseWrapper localResponseWrapper;
      do
      {
        return true;
        if (!(paramObject instanceof ResponseWrapper))
          return false;
        localResponseWrapper = (ResponseWrapper)paramObject;
      }
      while ((this.errorCode_ == localResponseWrapper.errorCode_) && (Arrays.equals(this.data_, localResponseWrapper.data_)));
      return false;
    }

    public byte[] getData()
    {
      return this.data_;
    }

    public int getErrorCode()
    {
      return this.errorCode_;
    }

    public int getSerializedSize()
    {
      int i = 0x1 & this.bitField0_;
      int j = 0;
      if (i != 0)
        j = 0 + CodedOutputByteBufferNano.computeInt32Size(1, this.errorCode_);
      if ((0x2 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeBytesSize(2, this.data_);
      this.cachedSize = j;
      return j;
    }

    public boolean hasData()
    {
      return (0x2 & this.bitField0_) != 0;
    }

    public boolean hasErrorCode()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public int hashCode()
    {
      int i = 527 + this.errorCode_;
      if (this.data_ == null)
        i *= 31;
      while (true)
      {
        return i;
        for (int j = 0; j < this.data_.length; j++)
          i = i * 31 + this.data_[j];
      }
    }

    public ResponseWrapper mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          if ((j == 0) || (j == 1) || (j == 2) || (j == 3) || (j == 4) || (j == 5));
          for (this.errorCode_ = j; ; this.errorCode_ = 0)
          {
            this.bitField0_ = (0x1 | this.bitField0_);
            break;
          }
        case 18:
        }
        this.data_ = paramCodedInputByteBufferNano.readBytes();
        this.bitField0_ = (0x2 | this.bitField0_);
      }
    }

    public ResponseWrapper setData(byte[] paramArrayOfByte)
    {
      if (paramArrayOfByte == null)
        throw new NullPointerException();
      this.data_ = paramArrayOfByte;
      this.bitField0_ = (0x2 | this.bitField0_);
      return this;
    }

    public ResponseWrapper setErrorCode(int paramInt)
    {
      this.errorCode_ = paramInt;
      this.bitField0_ = (0x1 | this.bitField0_);
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if ((0x1 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt32(1, this.errorCode_);
      if ((0x2 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeBytes(2, this.data_);
    }

    public static abstract interface ErrorCode
    {
      public static final int INTERNAL_ERROR = 4;
      public static final int INVALID_PROTO = 3;
      public static final int NETWORK_ERROR = 5;
      public static final int NONE = 0;
      public static final int NOT_AUTHORIZED = 2;
      public static final int UNKNOWN_REQUEST = 1;
    }
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.BatchNano
 * JD-Core Version:    0.6.2
 */