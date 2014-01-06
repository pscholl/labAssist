package com.google.googlex.glass.common.proto;

import com.google.protobuf.nano.CodedInputByteBufferNano;
import com.google.protobuf.nano.CodedOutputByteBufferNano;
import com.google.protobuf.nano.InvalidProtocolBufferNanoException;
import com.google.protobuf.nano.MessageNano;
import com.google.protobuf.nano.WireFormatNano;
import java.io.IOException;
import java.util.Arrays;

public abstract interface TimelineNano
{
  public static final class Attachment extends MessageNano
  {
    public static final Attachment[] EMPTY_ARRAY = new Attachment[0];
    private int bitField0_;
    private String clientCachePath_ = "";
    private String contentType_ = "";
    private String contentUrl_ = "";
    private long creationTime_ = 0L;
    private String id_ = "";
    private boolean isProcessingContent_ = false;
    private String source_ = "";
    private String thumbnailUrl_ = "";

    public static Attachment parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new Attachment().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static Attachment parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (Attachment)MessageNano.mergeFrom(new Attachment(), paramArrayOfByte);
    }

    public final Attachment clear()
    {
      this.bitField0_ = 0;
      this.id_ = "";
      this.contentType_ = "";
      this.contentUrl_ = "";
      this.thumbnailUrl_ = "";
      this.clientCachePath_ = "";
      this.creationTime_ = 0L;
      this.isProcessingContent_ = false;
      this.source_ = "";
      this.cachedSize = -1;
      return this;
    }

    public Attachment clearClientCachePath()
    {
      this.clientCachePath_ = "";
      this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
      return this;
    }

    public Attachment clearContentType()
    {
      this.contentType_ = "";
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      return this;
    }

    public Attachment clearContentUrl()
    {
      this.contentUrl_ = "";
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      return this;
    }

    public Attachment clearCreationTime()
    {
      this.creationTime_ = 0L;
      this.bitField0_ = (0xFFFFFFDF & this.bitField0_);
      return this;
    }

    public Attachment clearId()
    {
      this.id_ = "";
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public Attachment clearIsProcessingContent()
    {
      this.isProcessingContent_ = false;
      this.bitField0_ = (0xFFFFFFBF & this.bitField0_);
      return this;
    }

    public Attachment clearSource()
    {
      this.source_ = "";
      this.bitField0_ = (0xFFFFFF7F & this.bitField0_);
      return this;
    }

    public Attachment clearThumbnailUrl()
    {
      this.thumbnailUrl_ = "";
      this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      Attachment localAttachment;
      label49: label63: label77: label91: 
      do
      {
        return true;
        if (!(paramObject instanceof Attachment))
          return false;
        localAttachment = (Attachment)paramObject;
        if (this.id_ != null)
          break label130;
        if (localAttachment.id_ != null)
          break;
        if (this.contentType_ != null)
          break label147;
        if (localAttachment.contentType_ != null)
          break;
        if (this.contentUrl_ != null)
          break label164;
        if (localAttachment.contentUrl_ != null)
          break;
        if (this.thumbnailUrl_ != null)
          break label181;
        if (localAttachment.thumbnailUrl_ != null)
          break;
        if (this.clientCachePath_ != null)
          break label198;
        if (localAttachment.clientCachePath_ != null)
          break;
        if ((this.creationTime_ != localAttachment.creationTime_) || (this.isProcessingContent_ != localAttachment.isProcessingContent_))
          break;
        if (this.source_ != null)
          break label215;
      }
      while (localAttachment.source_ == null);
      label130: label147: label164: label181: label198: label215: 
      while (!this.source_.equals(localAttachment.source_))
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
                while (!this.id_.equals(localAttachment.id_));
                break;
              }
              while (!this.contentType_.equals(localAttachment.contentType_));
              break label49;
            }
            while (!this.contentUrl_.equals(localAttachment.contentUrl_));
            break label63;
          }
          while (!this.thumbnailUrl_.equals(localAttachment.thumbnailUrl_));
          break label77;
        }
        while (!this.clientCachePath_.equals(localAttachment.clientCachePath_));
        break label91;
      }
      return true;
    }

    public String getClientCachePath()
    {
      return this.clientCachePath_;
    }

    public String getContentType()
    {
      return this.contentType_;
    }

    public String getContentUrl()
    {
      return this.contentUrl_;
    }

    public long getCreationTime()
    {
      return this.creationTime_;
    }

    public String getId()
    {
      return this.id_;
    }

    public boolean getIsProcessingContent()
    {
      return this.isProcessingContent_;
    }

    public int getSerializedSize()
    {
      int i = 0x1 & this.bitField0_;
      int j = 0;
      if (i != 0)
        j = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.id_);
      if ((0x2 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(2, this.contentType_);
      if ((0x4 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(3, this.contentUrl_);
      if ((0x8 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(4, this.thumbnailUrl_);
      if ((0x10 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(5, this.clientCachePath_);
      if ((0x20 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeUInt64Size(6, this.creationTime_);
      if ((0x40 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeBoolSize(7, this.isProcessingContent_);
      if ((0x80 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(8, this.source_);
      this.cachedSize = j;
      return j;
    }

    public String getSource()
    {
      return this.source_;
    }

    public String getThumbnailUrl()
    {
      return this.thumbnailUrl_;
    }

    public boolean hasClientCachePath()
    {
      return (0x10 & this.bitField0_) != 0;
    }

    public boolean hasContentType()
    {
      return (0x2 & this.bitField0_) != 0;
    }

    public boolean hasContentUrl()
    {
      return (0x4 & this.bitField0_) != 0;
    }

    public boolean hasCreationTime()
    {
      return (0x20 & this.bitField0_) != 0;
    }

    public boolean hasId()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public boolean hasIsProcessingContent()
    {
      return (0x40 & this.bitField0_) != 0;
    }

    public boolean hasSource()
    {
      return (0x80 & this.bitField0_) != 0;
    }

    public boolean hasThumbnailUrl()
    {
      return (0x8 & this.bitField0_) != 0;
    }

    public int hashCode()
    {
      int i;
      int k;
      label27: int n;
      label45: int i2;
      label65: int i4;
      label85: int i6;
      label122: int i7;
      int i8;
      if (this.id_ == null)
      {
        i = 0;
        int j = 31 * (i + 527);
        if (this.contentType_ != null)
          break label163;
        k = 0;
        int m = 31 * (j + k);
        if (this.contentUrl_ != null)
          break label174;
        n = 0;
        int i1 = 31 * (m + n);
        if (this.thumbnailUrl_ != null)
          break label186;
        i2 = 0;
        int i3 = 31 * (i1 + i2);
        if (this.clientCachePath_ != null)
          break label198;
        i4 = 0;
        int i5 = 31 * (31 * (i3 + i4) + (int)(this.creationTime_ ^ this.creationTime_ >>> 32));
        if (!this.isProcessingContent_)
          break label210;
        i6 = 1;
        i7 = 31 * (i5 + i6);
        String str = this.source_;
        i8 = 0;
        if (str != null)
          break label216;
      }
      while (true)
      {
        return i7 + i8;
        i = this.id_.hashCode();
        break;
        label163: k = this.contentType_.hashCode();
        break label27;
        label174: n = this.contentUrl_.hashCode();
        break label45;
        label186: i2 = this.thumbnailUrl_.hashCode();
        break label65;
        label198: i4 = this.clientCachePath_.hashCode();
        break label85;
        label210: i6 = 2;
        break label122;
        label216: i8 = this.source_.hashCode();
      }
    }

    public Attachment mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.id_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x1 | this.bitField0_);
          break;
        case 18:
          this.contentType_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x2 | this.bitField0_);
          break;
        case 26:
          this.contentUrl_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x4 | this.bitField0_);
          break;
        case 34:
          this.thumbnailUrl_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x8 | this.bitField0_);
          break;
        case 42:
          this.clientCachePath_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x10 | this.bitField0_);
          break;
        case 48:
          this.creationTime_ = paramCodedInputByteBufferNano.readUInt64();
          this.bitField0_ = (0x20 | this.bitField0_);
          break;
        case 56:
          this.isProcessingContent_ = paramCodedInputByteBufferNano.readBool();
          this.bitField0_ = (0x40 | this.bitField0_);
          break;
        case 66:
        }
        this.source_ = paramCodedInputByteBufferNano.readString();
        this.bitField0_ = (0x80 | this.bitField0_);
      }
    }

    public Attachment setClientCachePath(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.clientCachePath_ = paramString;
      this.bitField0_ = (0x10 | this.bitField0_);
      return this;
    }

    public Attachment setContentType(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.contentType_ = paramString;
      this.bitField0_ = (0x2 | this.bitField0_);
      return this;
    }

    public Attachment setContentUrl(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.contentUrl_ = paramString;
      this.bitField0_ = (0x4 | this.bitField0_);
      return this;
    }

    public Attachment setCreationTime(long paramLong)
    {
      this.creationTime_ = paramLong;
      this.bitField0_ = (0x20 | this.bitField0_);
      return this;
    }

    public Attachment setId(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.id_ = paramString;
      this.bitField0_ = (0x1 | this.bitField0_);
      return this;
    }

    public Attachment setIsProcessingContent(boolean paramBoolean)
    {
      this.isProcessingContent_ = paramBoolean;
      this.bitField0_ = (0x40 | this.bitField0_);
      return this;
    }

    public Attachment setSource(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.source_ = paramString;
      this.bitField0_ = (0x80 | this.bitField0_);
      return this;
    }

    public Attachment setThumbnailUrl(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.thumbnailUrl_ = paramString;
      this.bitField0_ = (0x8 | this.bitField0_);
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if ((0x1 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(1, this.id_);
      if ((0x2 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(2, this.contentType_);
      if ((0x4 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(3, this.contentUrl_);
      if ((0x8 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(4, this.thumbnailUrl_);
      if ((0x10 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(5, this.clientCachePath_);
      if ((0x20 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeUInt64(6, this.creationTime_);
      if ((0x40 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeBool(7, this.isProcessingContent_);
      if ((0x80 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(8, this.source_);
    }
  }

  public static final class Entity extends MessageNano
  {
    public static final Entity[] EMPTY_ARRAY = new Entity[0];
    public Command[] acceptCommand = Command.EMPTY_ARRAY;
    public String[] acceptType = WireFormatNano.EMPTY_STRING_ARRAY;
    private int bitField0_;
    public int[] contactGroup = WireFormatNano.EMPTY_INT_ARRAY;
    private long creationTime_ = 0L;
    private String displayName_ = "";
    private String email_ = "";
    private String fullName_ = "";
    private String id_ = "";
    public String[] imageUrl = WireFormatNano.EMPTY_STRING_ARRAY;
    private boolean isCommunicationTarget_ = false;
    private int messagingOption_ = 2;
    public TimelineNano.MessagingPersona[] messagingPersona = TimelineNano.MessagingPersona.EMPTY_ARRAY;
    private String nickname_ = "";
    private String obfuscatedGaiaId_ = "";
    private String phoneNumber_ = "";
    private Priority priority_;
    public String[] secondaryEmail = WireFormatNano.EMPTY_STRING_ARRAY;
    public String[] secondaryPhoneNumber = WireFormatNano.EMPTY_STRING_ARRAY;
    public int[] sharingFeature = WireFormatNano.EMPTY_INT_ARRAY;
    private boolean shouldSync_ = false;
    private String source_ = "";
    private String speakableName_ = "";
    private int type_ = 1;

    public static Entity parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new Entity().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static Entity parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (Entity)MessageNano.mergeFrom(new Entity(), paramArrayOfByte);
    }

    public final Entity clear()
    {
      this.bitField0_ = 0;
      this.source_ = "";
      this.id_ = "";
      this.obfuscatedGaiaId_ = "";
      this.messagingPersona = TimelineNano.MessagingPersona.EMPTY_ARRAY;
      this.messagingOption_ = 2;
      this.sharingFeature = WireFormatNano.EMPTY_INT_ARRAY;
      this.displayName_ = "";
      this.nickname_ = "";
      this.fullName_ = "";
      this.imageUrl = WireFormatNano.EMPTY_STRING_ARRAY;
      this.shouldSync_ = false;
      this.type_ = 1;
      this.phoneNumber_ = "";
      this.secondaryPhoneNumber = WireFormatNano.EMPTY_STRING_ARRAY;
      this.email_ = "";
      this.secondaryEmail = WireFormatNano.EMPTY_STRING_ARRAY;
      this.acceptType = WireFormatNano.EMPTY_STRING_ARRAY;
      this.isCommunicationTarget_ = false;
      this.priority_ = null;
      this.acceptCommand = Command.EMPTY_ARRAY;
      this.speakableName_ = "";
      this.contactGroup = WireFormatNano.EMPTY_INT_ARRAY;
      this.creationTime_ = 0L;
      this.cachedSize = -1;
      return this;
    }

    public Entity clearCreationTime()
    {
      this.creationTime_ = 0L;
      this.bitField0_ = (0xFFFFDFFF & this.bitField0_);
      return this;
    }

    public Entity clearDisplayName()
    {
      this.displayName_ = "";
      this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
      return this;
    }

    public Entity clearEmail()
    {
      this.email_ = "";
      this.bitField0_ = (0xFFFFFBFF & this.bitField0_);
      return this;
    }

    public Entity clearFullName()
    {
      this.fullName_ = "";
      this.bitField0_ = (0xFFFFFFBF & this.bitField0_);
      return this;
    }

    public Entity clearId()
    {
      this.id_ = "";
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      return this;
    }

    public Entity clearIsCommunicationTarget()
    {
      this.isCommunicationTarget_ = false;
      this.bitField0_ = (0xFFFFF7FF & this.bitField0_);
      return this;
    }

    public Entity clearMessagingOption()
    {
      this.messagingOption_ = 2;
      this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
      return this;
    }

    public Entity clearNickname()
    {
      this.nickname_ = "";
      this.bitField0_ = (0xFFFFFFDF & this.bitField0_);
      return this;
    }

    public Entity clearObfuscatedGaiaId()
    {
      this.obfuscatedGaiaId_ = "";
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      return this;
    }

    public Entity clearPhoneNumber()
    {
      this.phoneNumber_ = "";
      this.bitField0_ = (0xFFFFFDFF & this.bitField0_);
      return this;
    }

    public Entity clearPriority()
    {
      this.priority_ = null;
      return this;
    }

    public Entity clearShouldSync()
    {
      this.shouldSync_ = false;
      this.bitField0_ = (0xFFFFFF7F & this.bitField0_);
      return this;
    }

    public Entity clearSource()
    {
      this.source_ = "";
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public Entity clearSpeakableName()
    {
      this.speakableName_ = "";
      this.bitField0_ = (0xFFFFEFFF & this.bitField0_);
      return this;
    }

    public Entity clearType()
    {
      this.type_ = 1;
      this.bitField0_ = (0xFFFFFEFF & this.bitField0_);
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      label49: label63: label194: label222: label365: label499: 
      while (true)
      {
        return true;
        if (!(paramObject instanceof Entity))
          return false;
        Entity localEntity = (Entity)paramObject;
        if (this.source_ == null)
          if (localEntity.source_ == null)
          {
            if (this.id_ != null)
              break label348;
            if (localEntity.id_ == null)
            {
              if (this.obfuscatedGaiaId_ != null)
                break label365;
              if (localEntity.obfuscatedGaiaId_ == null)
                if ((Arrays.equals(this.messagingPersona, localEntity.messagingPersona)) && (this.messagingOption_ == localEntity.messagingOption_) && (Arrays.equals(this.sharingFeature, localEntity.sharingFeature)))
                {
                  if (this.displayName_ != null)
                    break label382;
                  if (localEntity.displayName_ == null)
                  {
                    label116: if (this.nickname_ != null)
                      break label399;
                    if (localEntity.nickname_ == null)
                    {
                      if (this.fullName_ != null)
                        break label416;
                      if (localEntity.fullName_ == null)
                        if ((Arrays.equals(this.imageUrl, localEntity.imageUrl)) && (this.shouldSync_ == localEntity.shouldSync_) && (this.type_ == localEntity.type_))
                        {
                          if (this.phoneNumber_ != null)
                            break label433;
                          if (localEntity.phoneNumber_ == null)
                            if (Arrays.equals(this.secondaryPhoneNumber, localEntity.secondaryPhoneNumber))
                            {
                              if (this.email_ != null)
                                break label450;
                              if (localEntity.email_ == null)
                                if ((Arrays.equals(this.secondaryEmail, localEntity.secondaryEmail)) && (Arrays.equals(this.acceptType, localEntity.acceptType)) && (this.isCommunicationTarget_ == localEntity.isCommunicationTarget_))
                                {
                                  if (this.priority_ != null)
                                    break label467;
                                  if (localEntity.priority_ == null)
                                    if (Arrays.equals(this.acceptCommand, localEntity.acceptCommand))
                                    {
                                      if (this.speakableName_ != null)
                                        break label484;
                                      if (localEntity.speakableName_ != null);
                                    }
                                }
                            }
                        }
                    }
                  }
                }
            }
          }
        while (true)
        {
          if ((Arrays.equals(this.contactGroup, localEntity.contactGroup)) && (this.creationTime_ == localEntity.creationTime_))
            break label499;
          label382: 
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
                            while (!this.source_.equals(localEntity.source_));
                            break;
                          }
                          while (!this.id_.equals(localEntity.id_));
                          break label49;
                        }
                        while (!this.obfuscatedGaiaId_.equals(localEntity.obfuscatedGaiaId_));
                        break label63;
                      }
                      while (!this.displayName_.equals(localEntity.displayName_));
                      break label116;
                    }
                    while (!this.nickname_.equals(localEntity.nickname_));
                    break label130;
                  }
                  while (!this.fullName_.equals(localEntity.fullName_));
                  break label144;
                }
                while (!this.phoneNumber_.equals(localEntity.phoneNumber_));
                break label194;
              }
              while (!this.email_.equals(localEntity.email_));
              break label222;
            }
            while (!this.priority_.equals(localEntity.priority_));
            break label275;
          }
          while (!this.speakableName_.equals(localEntity.speakableName_));
        }
      }
    }

    public long getCreationTime()
    {
      return this.creationTime_;
    }

    public String getDisplayName()
    {
      return this.displayName_;
    }

    public String getEmail()
    {
      return this.email_;
    }

    public String getFullName()
    {
      return this.fullName_;
    }

    public String getId()
    {
      return this.id_;
    }

    public boolean getIsCommunicationTarget()
    {
      return this.isCommunicationTarget_;
    }

    public int getMessagingOption()
    {
      return this.messagingOption_;
    }

    public String getNickname()
    {
      return this.nickname_;
    }

    public String getObfuscatedGaiaId()
    {
      return this.obfuscatedGaiaId_;
    }

    public String getPhoneNumber()
    {
      return this.phoneNumber_;
    }

    public Priority getPriority()
    {
      return this.priority_;
    }

    public int getSerializedSize()
    {
      int i = 0x1 & this.bitField0_;
      int j = 0;
      if (i != 0)
        j = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.source_);
      if ((0x2 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(2, this.id_);
      if ((0x10 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(3, this.displayName_);
      if ((0x80 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeBoolSize(5, this.shouldSync_);
      if ((0x100 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeInt32Size(6, this.type_);
      if ((0x200 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(7, this.phoneNumber_);
      if ((0x400 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(8, this.email_);
      if ((this.acceptType != null) && (this.acceptType.length > 0))
      {
        int i17 = 0;
        String[] arrayOfString4 = this.acceptType;
        int i18 = arrayOfString4.length;
        for (int i19 = 0; i19 < i18; i19++)
          i17 += CodedOutputByteBufferNano.computeStringSizeNoTag(arrayOfString4[i19]);
        j = j + i17 + 1 * this.acceptType.length;
      }
      if ((0x800 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeBoolSize(10, this.isCommunicationTarget_);
      if ((this.imageUrl != null) && (this.imageUrl.length > 0))
      {
        int i14 = 0;
        String[] arrayOfString3 = this.imageUrl;
        int i15 = arrayOfString3.length;
        for (int i16 = 0; i16 < i15; i16++)
          i14 += CodedOutputByteBufferNano.computeStringSizeNoTag(arrayOfString3[i16]);
        j = j + i14 + 1 * this.imageUrl.length;
      }
      if ((this.secondaryPhoneNumber != null) && (this.secondaryPhoneNumber.length > 0))
      {
        int i11 = 0;
        String[] arrayOfString2 = this.secondaryPhoneNumber;
        int i12 = arrayOfString2.length;
        for (int i13 = 0; i13 < i12; i13++)
          i11 += CodedOutputByteBufferNano.computeStringSizeNoTag(arrayOfString2[i13]);
        j = j + i11 + 1 * this.secondaryPhoneNumber.length;
      }
      if (this.priority_ != null)
        j += CodedOutputByteBufferNano.computeMessageSize(14, this.priority_);
      if ((this.secondaryEmail != null) && (this.secondaryEmail.length > 0))
      {
        int i8 = 0;
        String[] arrayOfString1 = this.secondaryEmail;
        int i9 = arrayOfString1.length;
        for (int i10 = 0; i10 < i9; i10++)
          i8 += CodedOutputByteBufferNano.computeStringSizeNoTag(arrayOfString1[i10]);
        j = j + i8 + 1 * this.secondaryEmail.length;
      }
      if (this.acceptCommand != null)
      {
        Command[] arrayOfCommand = this.acceptCommand;
        int i6 = arrayOfCommand.length;
        for (int i7 = 0; i7 < i6; i7++)
          j += CodedOutputByteBufferNano.computeMessageSize(16, arrayOfCommand[i7]);
      }
      if ((0x1000 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(17, this.speakableName_);
      if ((this.contactGroup != null) && (this.contactGroup.length > 0))
      {
        int i3 = 0;
        int[] arrayOfInt2 = this.contactGroup;
        int i4 = arrayOfInt2.length;
        for (int i5 = 0; i5 < i4; i5++)
          i3 += CodedOutputByteBufferNano.computeInt32SizeNoTag(arrayOfInt2[i5]);
        j = j + i3 + 2 * this.contactGroup.length;
      }
      if ((0x2000 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeUInt64Size(21, this.creationTime_);
      if (this.messagingPersona != null)
      {
        TimelineNano.MessagingPersona[] arrayOfMessagingPersona = this.messagingPersona;
        int i1 = arrayOfMessagingPersona.length;
        for (int i2 = 0; i2 < i1; i2++)
          j += CodedOutputByteBufferNano.computeMessageSize(22, arrayOfMessagingPersona[i2]);
      }
      if ((0x20 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(23, this.nickname_);
      if ((0x8 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeInt32Size(25, this.messagingOption_);
      if ((0x40 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(26, this.fullName_);
      if ((this.sharingFeature != null) && (this.sharingFeature.length > 0))
      {
        int k = 0;
        int[] arrayOfInt1 = this.sharingFeature;
        int m = arrayOfInt1.length;
        for (int n = 0; n < m; n++)
          k += CodedOutputByteBufferNano.computeInt32SizeNoTag(arrayOfInt1[n]);
        j = j + k + 2 * this.sharingFeature.length;
      }
      if ((0x4 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(28, this.obfuscatedGaiaId_);
      this.cachedSize = j;
      return j;
    }

    public boolean getShouldSync()
    {
      return this.shouldSync_;
    }

    public String getSource()
    {
      return this.source_;
    }

    public String getSpeakableName()
    {
      return this.speakableName_;
    }

    public int getType()
    {
      return this.type_;
    }

    public boolean hasCreationTime()
    {
      return (0x2000 & this.bitField0_) != 0;
    }

    public boolean hasDisplayName()
    {
      return (0x10 & this.bitField0_) != 0;
    }

    public boolean hasEmail()
    {
      return (0x400 & this.bitField0_) != 0;
    }

    public boolean hasFullName()
    {
      return (0x40 & this.bitField0_) != 0;
    }

    public boolean hasId()
    {
      return (0x2 & this.bitField0_) != 0;
    }

    public boolean hasIsCommunicationTarget()
    {
      return (0x800 & this.bitField0_) != 0;
    }

    public boolean hasMessagingOption()
    {
      return (0x8 & this.bitField0_) != 0;
    }

    public boolean hasNickname()
    {
      return (0x20 & this.bitField0_) != 0;
    }

    public boolean hasObfuscatedGaiaId()
    {
      return (0x4 & this.bitField0_) != 0;
    }

    public boolean hasPhoneNumber()
    {
      return (0x200 & this.bitField0_) != 0;
    }

    public boolean hasPriority()
    {
      return this.priority_ != null;
    }

    public boolean hasShouldSync()
    {
      return (0x80 & this.bitField0_) != 0;
    }

    public boolean hasSource()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public boolean hasSpeakableName()
    {
      return (0x1000 & this.bitField0_) != 0;
    }

    public boolean hasType()
    {
      return (0x100 & this.bitField0_) != 0;
    }

    public int hashCode()
    {
      int i = 1;
      int j;
      int m;
      label30: int i1;
      label49: int i2;
      int i6;
      label96: int i9;
      label113: int i11;
      label133: int i13;
      label153: int i14;
      int i19;
      label191: int i21;
      label219: int i22;
      int i27;
      label257: int i28;
      label306: int i37;
      label325: int i38;
      int i43;
      label367: int i44;
      if (this.source_ == null)
      {
        j = 0;
        int k = 31 * (j + 527);
        if (this.id_ != null)
          break label419;
        m = 0;
        int n = 31 * (k + m);
        if (this.obfuscatedGaiaId_ != null)
          break label431;
        i1 = 0;
        i2 = n + i1;
        if (this.messagingPersona != null)
          break label443;
        i2 *= 31;
        i6 = i2 * 31 + this.messagingOption_;
        if (this.sharingFeature != null)
          break label504;
        i6 *= 31;
        int i8 = i6 * 31;
        if (this.displayName_ != null)
          break label538;
        i9 = 0;
        int i10 = 31 * (i8 + i9);
        if (this.nickname_ != null)
          break label550;
        i11 = 0;
        int i12 = 31 * (i10 + i11);
        if (this.fullName_ != null)
          break label562;
        i13 = 0;
        i14 = i12 + i13;
        if (this.imageUrl != null)
          break label574;
        i14 *= 31;
        int i18 = i14 * 31;
        if (!this.shouldSync_)
          break label635;
        i19 = i;
        int i20 = 31 * (31 * (i18 + i19) + this.type_);
        if (this.phoneNumber_ != null)
          break label641;
        i21 = 0;
        i22 = i20 + i21;
        if (this.secondaryPhoneNumber != null)
          break label653;
        i22 *= 31;
        int i26 = i22 * 31;
        if (this.email_ != null)
          break label714;
        i27 = 0;
        i28 = i26 + i27;
        if (this.secondaryEmail != null)
          break label726;
        i28 *= 31;
        if (this.acceptType != null)
          break label787;
        i28 *= 31;
        int i35 = i28 * 31;
        if (!this.isCommunicationTarget_)
          break label848;
        int i36 = 31 * (i35 + i);
        if (this.priority_ != null)
          break label853;
        i37 = 0;
        i38 = i36 + i37;
        if (this.acceptCommand != null)
          break label865;
        i38 *= 31;
        int i42 = i38 * 31;
        String str = this.speakableName_;
        i43 = 0;
        if (str != null)
          break label926;
        i44 = i42 + i43;
        if (this.contactGroup != null)
          break label938;
        i44 *= 31;
      }
      while (true)
      {
        return i44 * 31 + (int)(this.creationTime_ ^ this.creationTime_ >>> 32);
        j = this.source_.hashCode();
        break;
        label419: m = this.id_.hashCode();
        break label30;
        label431: i1 = this.obfuscatedGaiaId_.hashCode();
        break label49;
        label443: int i3 = 0;
        label446: int i4;
        if (i3 < this.messagingPersona.length)
        {
          i4 = i2 * 31;
          if (this.messagingPersona[i3] != null)
            break label489;
        }
        label489: for (int i5 = 0; ; i5 = this.messagingPersona[i3].hashCode())
        {
          i2 = i4 + i5;
          i3++;
          break label446;
          break;
        }
        label504: for (int i7 = 0; i7 < this.sharingFeature.length; i7++)
          i6 = i6 * 31 + this.sharingFeature[i7];
        break label96;
        label538: i9 = this.displayName_.hashCode();
        break label113;
        label550: i11 = this.nickname_.hashCode();
        break label133;
        label562: i13 = this.fullName_.hashCode();
        break label153;
        label574: int i15 = 0;
        label577: int i16;
        if (i15 < this.imageUrl.length)
        {
          i16 = i14 * 31;
          if (this.imageUrl[i15] != null)
            break label620;
        }
        label620: for (int i17 = 0; ; i17 = this.imageUrl[i15].hashCode())
        {
          i14 = i16 + i17;
          i15++;
          break label577;
          break;
        }
        label635: i19 = 2;
        break label191;
        label641: i21 = this.phoneNumber_.hashCode();
        break label219;
        label653: int i23 = 0;
        label656: int i24;
        if (i23 < this.secondaryPhoneNumber.length)
        {
          i24 = i22 * 31;
          if (this.secondaryPhoneNumber[i23] != null)
            break label699;
        }
        label699: for (int i25 = 0; ; i25 = this.secondaryPhoneNumber[i23].hashCode())
        {
          i22 = i24 + i25;
          i23++;
          break label656;
          break;
        }
        label714: i27 = this.email_.hashCode();
        break label257;
        label726: int i29 = 0;
        label729: int i30;
        if (i29 < this.secondaryEmail.length)
        {
          i30 = i28 * 31;
          if (this.secondaryEmail[i29] != null)
            break label772;
        }
        label772: for (int i31 = 0; ; i31 = this.secondaryEmail[i29].hashCode())
        {
          i28 = i30 + i31;
          i29++;
          break label729;
          break;
        }
        label787: int i32 = 0;
        label790: int i33;
        if (i32 < this.acceptType.length)
        {
          i33 = i28 * 31;
          if (this.acceptType[i32] != null)
            break label833;
        }
        label833: for (int i34 = 0; ; i34 = this.acceptType[i32].hashCode())
        {
          i28 = i33 + i34;
          i32++;
          break label790;
          break;
        }
        label848: i = 2;
        break label306;
        label853: i37 = this.priority_.hashCode();
        break label325;
        label865: int i39 = 0;
        label868: int i40;
        if (i39 < this.acceptCommand.length)
        {
          i40 = i38 * 31;
          if (this.acceptCommand[i39] != null)
            break label911;
        }
        label911: for (int i41 = 0; ; i41 = this.acceptCommand[i39].hashCode())
        {
          i38 = i40 + i41;
          i39++;
          break label868;
          break;
        }
        label926: i43 = this.speakableName_.hashCode();
        break label367;
        label938: for (int i45 = 0; i45 < this.contactGroup.length; i45++)
          i44 = i44 * 31 + this.contactGroup[i45];
      }
    }

    public Entity mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.source_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x1 | this.bitField0_);
          break;
        case 18:
          this.id_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x2 | this.bitField0_);
          break;
        case 26:
          this.displayName_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x10 | this.bitField0_);
          break;
        case 40:
          this.shouldSync_ = paramCodedInputByteBufferNano.readBool();
          this.bitField0_ = (0x80 | this.bitField0_);
          break;
        case 48:
          int i14 = paramCodedInputByteBufferNano.readInt32();
          if ((i14 == 0) || (i14 == 1));
          for (this.type_ = i14; ; this.type_ = 0)
          {
            this.bitField0_ = (0x100 | this.bitField0_);
            break;
          }
        case 58:
          this.phoneNumber_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x200 | this.bitField0_);
          break;
        case 66:
          this.email_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x400 | this.bitField0_);
          break;
        case 74:
          int i12 = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 74);
          int i13 = this.acceptType.length;
          String[] arrayOfString4 = new String[i13 + i12];
          System.arraycopy(this.acceptType, 0, arrayOfString4, 0, i13);
          this.acceptType = arrayOfString4;
          while (i13 < -1 + this.acceptType.length)
          {
            this.acceptType[i13] = paramCodedInputByteBufferNano.readString();
            paramCodedInputByteBufferNano.readTag();
            i13++;
          }
          this.acceptType[i13] = paramCodedInputByteBufferNano.readString();
          break;
        case 80:
          this.isCommunicationTarget_ = paramCodedInputByteBufferNano.readBool();
          this.bitField0_ = (0x800 | this.bitField0_);
          break;
        case 98:
          int i10 = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 98);
          int i11 = this.imageUrl.length;
          String[] arrayOfString3 = new String[i11 + i10];
          System.arraycopy(this.imageUrl, 0, arrayOfString3, 0, i11);
          this.imageUrl = arrayOfString3;
          while (i11 < -1 + this.imageUrl.length)
          {
            this.imageUrl[i11] = paramCodedInputByteBufferNano.readString();
            paramCodedInputByteBufferNano.readTag();
            i11++;
          }
          this.imageUrl[i11] = paramCodedInputByteBufferNano.readString();
          break;
        case 106:
          int i8 = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 106);
          int i9 = this.secondaryPhoneNumber.length;
          String[] arrayOfString2 = new String[i9 + i8];
          System.arraycopy(this.secondaryPhoneNumber, 0, arrayOfString2, 0, i9);
          this.secondaryPhoneNumber = arrayOfString2;
          while (i9 < -1 + this.secondaryPhoneNumber.length)
          {
            this.secondaryPhoneNumber[i9] = paramCodedInputByteBufferNano.readString();
            paramCodedInputByteBufferNano.readTag();
            i9++;
          }
          this.secondaryPhoneNumber[i9] = paramCodedInputByteBufferNano.readString();
          break;
        case 114:
          if (this.priority_ == null)
            this.priority_ = new Priority();
          paramCodedInputByteBufferNano.readMessage(this.priority_);
          break;
        case 122:
          int i6 = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 122);
          int i7 = this.secondaryEmail.length;
          String[] arrayOfString1 = new String[i7 + i6];
          System.arraycopy(this.secondaryEmail, 0, arrayOfString1, 0, i7);
          this.secondaryEmail = arrayOfString1;
          while (i7 < -1 + this.secondaryEmail.length)
          {
            this.secondaryEmail[i7] = paramCodedInputByteBufferNano.readString();
            paramCodedInputByteBufferNano.readTag();
            i7++;
          }
          this.secondaryEmail[i7] = paramCodedInputByteBufferNano.readString();
          break;
        case 130:
          int i4 = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 130);
          if (this.acceptCommand == null);
          for (int i5 = 0; ; i5 = this.acceptCommand.length)
          {
            Command[] arrayOfCommand = new Command[i5 + i4];
            if (this.acceptCommand != null)
              System.arraycopy(this.acceptCommand, 0, arrayOfCommand, 0, i5);
            this.acceptCommand = arrayOfCommand;
            while (i5 < -1 + this.acceptCommand.length)
            {
              this.acceptCommand[i5] = new Command();
              paramCodedInputByteBufferNano.readMessage(this.acceptCommand[i5]);
              paramCodedInputByteBufferNano.readTag();
              i5++;
            }
          }
          this.acceptCommand[i5] = new Command();
          paramCodedInputByteBufferNano.readMessage(this.acceptCommand[i5]);
          break;
        case 138:
          this.speakableName_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x1000 | this.bitField0_);
          break;
        case 160:
          int i2 = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 160);
          int i3 = this.contactGroup.length;
          int[] arrayOfInt2 = new int[i3 + i2];
          System.arraycopy(this.contactGroup, 0, arrayOfInt2, 0, i3);
          this.contactGroup = arrayOfInt2;
          while (i3 < -1 + this.contactGroup.length)
          {
            this.contactGroup[i3] = paramCodedInputByteBufferNano.readInt32();
            paramCodedInputByteBufferNano.readTag();
            i3++;
          }
          this.contactGroup[i3] = paramCodedInputByteBufferNano.readInt32();
          break;
        case 168:
          this.creationTime_ = paramCodedInputByteBufferNano.readUInt64();
          this.bitField0_ = (0x2000 | this.bitField0_);
          break;
        case 178:
          int n = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 178);
          if (this.messagingPersona == null);
          for (int i1 = 0; ; i1 = this.messagingPersona.length)
          {
            TimelineNano.MessagingPersona[] arrayOfMessagingPersona = new TimelineNano.MessagingPersona[i1 + n];
            if (this.messagingPersona != null)
              System.arraycopy(this.messagingPersona, 0, arrayOfMessagingPersona, 0, i1);
            this.messagingPersona = arrayOfMessagingPersona;
            while (i1 < -1 + this.messagingPersona.length)
            {
              this.messagingPersona[i1] = new TimelineNano.MessagingPersona();
              paramCodedInputByteBufferNano.readMessage(this.messagingPersona[i1]);
              paramCodedInputByteBufferNano.readTag();
              i1++;
            }
          }
          this.messagingPersona[i1] = new TimelineNano.MessagingPersona();
          paramCodedInputByteBufferNano.readMessage(this.messagingPersona[i1]);
          break;
        case 186:
          this.nickname_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x20 | this.bitField0_);
          break;
        case 200:
          int m = paramCodedInputByteBufferNano.readInt32();
          if ((m == 0) || (m == 1) || (m == 2));
          for (this.messagingOption_ = m; ; this.messagingOption_ = 0)
          {
            this.bitField0_ = (0x8 | this.bitField0_);
            break;
          }
        case 210:
          this.fullName_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x40 | this.bitField0_);
          break;
        case 216:
          int j = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 216);
          int k = this.sharingFeature.length;
          int[] arrayOfInt1 = new int[k + j];
          System.arraycopy(this.sharingFeature, 0, arrayOfInt1, 0, k);
          this.sharingFeature = arrayOfInt1;
          while (k < -1 + this.sharingFeature.length)
          {
            this.sharingFeature[k] = paramCodedInputByteBufferNano.readInt32();
            paramCodedInputByteBufferNano.readTag();
            k++;
          }
          this.sharingFeature[k] = paramCodedInputByteBufferNano.readInt32();
          break;
        case 226:
        }
        this.obfuscatedGaiaId_ = paramCodedInputByteBufferNano.readString();
        this.bitField0_ = (0x4 | this.bitField0_);
      }
    }

    public Entity setCreationTime(long paramLong)
    {
      this.creationTime_ = paramLong;
      this.bitField0_ = (0x2000 | this.bitField0_);
      return this;
    }

    public Entity setDisplayName(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.displayName_ = paramString;
      this.bitField0_ = (0x10 | this.bitField0_);
      return this;
    }

    public Entity setEmail(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.email_ = paramString;
      this.bitField0_ = (0x400 | this.bitField0_);
      return this;
    }

    public Entity setFullName(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.fullName_ = paramString;
      this.bitField0_ = (0x40 | this.bitField0_);
      return this;
    }

    public Entity setId(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.id_ = paramString;
      this.bitField0_ = (0x2 | this.bitField0_);
      return this;
    }

    public Entity setIsCommunicationTarget(boolean paramBoolean)
    {
      this.isCommunicationTarget_ = paramBoolean;
      this.bitField0_ = (0x800 | this.bitField0_);
      return this;
    }

    public Entity setMessagingOption(int paramInt)
    {
      this.messagingOption_ = paramInt;
      this.bitField0_ = (0x8 | this.bitField0_);
      return this;
    }

    public Entity setNickname(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.nickname_ = paramString;
      this.bitField0_ = (0x20 | this.bitField0_);
      return this;
    }

    public Entity setObfuscatedGaiaId(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.obfuscatedGaiaId_ = paramString;
      this.bitField0_ = (0x4 | this.bitField0_);
      return this;
    }

    public Entity setPhoneNumber(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.phoneNumber_ = paramString;
      this.bitField0_ = (0x200 | this.bitField0_);
      return this;
    }

    public Entity setPriority(Priority paramPriority)
    {
      if (paramPriority == null)
        throw new NullPointerException();
      this.priority_ = paramPriority;
      return this;
    }

    public Entity setShouldSync(boolean paramBoolean)
    {
      this.shouldSync_ = paramBoolean;
      this.bitField0_ = (0x80 | this.bitField0_);
      return this;
    }

    public Entity setSource(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.source_ = paramString;
      this.bitField0_ = (0x1 | this.bitField0_);
      return this;
    }

    public Entity setSpeakableName(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.speakableName_ = paramString;
      this.bitField0_ = (0x1000 | this.bitField0_);
      return this;
    }

    public Entity setType(int paramInt)
    {
      this.type_ = paramInt;
      this.bitField0_ = (0x100 | this.bitField0_);
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if ((0x1 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(1, this.source_);
      if ((0x2 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(2, this.id_);
      if ((0x10 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(3, this.displayName_);
      if ((0x80 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeBool(5, this.shouldSync_);
      if ((0x100 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt32(6, this.type_);
      if ((0x200 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(7, this.phoneNumber_);
      if ((0x400 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(8, this.email_);
      if (this.acceptType != null)
      {
        String[] arrayOfString4 = this.acceptType;
        int i10 = arrayOfString4.length;
        for (int i11 = 0; i11 < i10; i11++)
          paramCodedOutputByteBufferNano.writeString(9, arrayOfString4[i11]);
      }
      if ((0x800 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeBool(10, this.isCommunicationTarget_);
      if (this.imageUrl != null)
      {
        String[] arrayOfString3 = this.imageUrl;
        int i8 = arrayOfString3.length;
        for (int i9 = 0; i9 < i8; i9++)
          paramCodedOutputByteBufferNano.writeString(12, arrayOfString3[i9]);
      }
      if (this.secondaryPhoneNumber != null)
      {
        String[] arrayOfString2 = this.secondaryPhoneNumber;
        int i6 = arrayOfString2.length;
        for (int i7 = 0; i7 < i6; i7++)
          paramCodedOutputByteBufferNano.writeString(13, arrayOfString2[i7]);
      }
      if (this.priority_ != null)
        paramCodedOutputByteBufferNano.writeMessage(14, this.priority_);
      if (this.secondaryEmail != null)
      {
        String[] arrayOfString1 = this.secondaryEmail;
        int i4 = arrayOfString1.length;
        for (int i5 = 0; i5 < i4; i5++)
          paramCodedOutputByteBufferNano.writeString(15, arrayOfString1[i5]);
      }
      if (this.acceptCommand != null)
      {
        Command[] arrayOfCommand = this.acceptCommand;
        int i2 = arrayOfCommand.length;
        for (int i3 = 0; i3 < i2; i3++)
          paramCodedOutputByteBufferNano.writeMessage(16, arrayOfCommand[i3]);
      }
      if ((0x1000 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(17, this.speakableName_);
      if ((this.contactGroup != null) && (this.contactGroup.length > 0))
      {
        int[] arrayOfInt2 = this.contactGroup;
        int n = arrayOfInt2.length;
        for (int i1 = 0; i1 < n; i1++)
          paramCodedOutputByteBufferNano.writeInt32(20, arrayOfInt2[i1]);
      }
      if ((0x2000 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeUInt64(21, this.creationTime_);
      if (this.messagingPersona != null)
      {
        TimelineNano.MessagingPersona[] arrayOfMessagingPersona = this.messagingPersona;
        int k = arrayOfMessagingPersona.length;
        for (int m = 0; m < k; m++)
          paramCodedOutputByteBufferNano.writeMessage(22, arrayOfMessagingPersona[m]);
      }
      if ((0x20 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(23, this.nickname_);
      if ((0x8 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt32(25, this.messagingOption_);
      if ((0x40 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(26, this.fullName_);
      if ((this.sharingFeature != null) && (this.sharingFeature.length > 0))
      {
        int[] arrayOfInt1 = this.sharingFeature;
        int i = arrayOfInt1.length;
        for (int j = 0; j < i; j++)
          paramCodedOutputByteBufferNano.writeInt32(27, arrayOfInt1[j]);
      }
      if ((0x4 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(28, this.obfuscatedGaiaId_);
    }

    public static final class Command extends MessageNano
    {
      public static final Command[] EMPTY_ARRAY = new Command[0];
      private int bitField0_;
      private String completionLabel_ = "";
      private int inputType_ = 0;
      private int invocationMode_ = 0;
      private boolean isVoiceEnabled_ = false;
      private String pendingLabel_ = "";
      private int type_ = 0;

      public final Command clear()
      {
        this.bitField0_ = 0;
        this.type_ = 0;
        this.isVoiceEnabled_ = false;
        this.inputType_ = 0;
        this.pendingLabel_ = "";
        this.completionLabel_ = "";
        this.invocationMode_ = 0;
        this.cachedSize = -1;
        return this;
      }

      public Command clearCompletionLabel()
      {
        this.completionLabel_ = "";
        this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
        return this;
      }

      public Command clearInputType()
      {
        this.inputType_ = 0;
        this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
        return this;
      }

      public Command clearInvocationMode()
      {
        this.invocationMode_ = 0;
        this.bitField0_ = (0xFFFFFFDF & this.bitField0_);
        return this;
      }

      public Command clearIsVoiceEnabled()
      {
        this.isVoiceEnabled_ = false;
        this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        return this;
      }

      public Command clearPendingLabel()
      {
        this.pendingLabel_ = "";
        this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
        return this;
      }

      public Command clearType()
      {
        this.type_ = 0;
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        return this;
      }

      public final boolean equals(Object paramObject)
      {
        if (paramObject == this);
        label95: label112: label127: 
        while (true)
        {
          return true;
          if (!(paramObject instanceof Command))
            return false;
          Command localCommand = (Command)paramObject;
          if ((this.type_ == localCommand.type_) && (this.isVoiceEnabled_ == localCommand.isVoiceEnabled_) && (this.inputType_ == localCommand.inputType_))
          {
            if (this.pendingLabel_ != null)
              break label95;
            if (localCommand.pendingLabel_ == null)
            {
              if (this.completionLabel_ != null)
                break label112;
              if (localCommand.completionLabel_ != null);
            }
          }
          while (true)
          {
            if (this.invocationMode_ == localCommand.invocationMode_)
              break label127;
            do
            {
              do
                return false;
              while (!this.pendingLabel_.equals(localCommand.pendingLabel_));
              break;
            }
            while (!this.completionLabel_.equals(localCommand.completionLabel_));
          }
        }
      }

      public String getCompletionLabel()
      {
        return this.completionLabel_;
      }

      public int getInputType()
      {
        return this.inputType_;
      }

      public int getInvocationMode()
      {
        return this.invocationMode_;
      }

      public boolean getIsVoiceEnabled()
      {
        return this.isVoiceEnabled_;
      }

      public String getPendingLabel()
      {
        return this.pendingLabel_;
      }

      public int getSerializedSize()
      {
        int i = 0x1 & this.bitField0_;
        int j = 0;
        if (i != 0)
          j = 0 + CodedOutputByteBufferNano.computeInt32Size(1, this.type_);
        if ((0x2 & this.bitField0_) != 0)
          j += CodedOutputByteBufferNano.computeBoolSize(2, this.isVoiceEnabled_);
        if ((0x4 & this.bitField0_) != 0)
          j += CodedOutputByteBufferNano.computeInt32Size(3, this.inputType_);
        if ((0x8 & this.bitField0_) != 0)
          j += CodedOutputByteBufferNano.computeStringSize(4, this.pendingLabel_);
        if ((0x10 & this.bitField0_) != 0)
          j += CodedOutputByteBufferNano.computeStringSize(5, this.completionLabel_);
        if ((0x20 & this.bitField0_) != 0)
          j += CodedOutputByteBufferNano.computeInt32Size(6, this.invocationMode_);
        this.cachedSize = j;
        return j;
      }

      public int getType()
      {
        return this.type_;
      }

      public boolean hasCompletionLabel()
      {
        return (0x10 & this.bitField0_) != 0;
      }

      public boolean hasInputType()
      {
        return (0x4 & this.bitField0_) != 0;
      }

      public boolean hasInvocationMode()
      {
        return (0x20 & this.bitField0_) != 0;
      }

      public boolean hasIsVoiceEnabled()
      {
        return (0x2 & this.bitField0_) != 0;
      }

      public boolean hasPendingLabel()
      {
        return (0x8 & this.bitField0_) != 0;
      }

      public boolean hasType()
      {
        return (0x1 & this.bitField0_) != 0;
      }

      public int hashCode()
      {
        int i = 31 * (527 + this.type_);
        int j;
        int m;
        label46: int n;
        int i1;
        if (this.isVoiceEnabled_)
        {
          j = 1;
          int k = 31 * (31 * (i + j) + this.inputType_);
          if (this.pendingLabel_ != null)
            break label88;
          m = 0;
          n = 31 * (k + m);
          String str = this.completionLabel_;
          i1 = 0;
          if (str != null)
            break label100;
        }
        while (true)
        {
          return 31 * (n + i1) + this.invocationMode_;
          j = 2;
          break;
          label88: m = this.pendingLabel_.hashCode();
          break label46;
          label100: i1 = this.completionLabel_.hashCode();
        }
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
            if (WireFormatNano.parseUnknownField(paramCodedInputByteBufferNano, i));
            break;
          case 0:
            return this;
          case 8:
            int m = paramCodedInputByteBufferNano.readInt32();
            if ((m == 0) || (m == 1) || (m == 2) || (m == 3) || (m == 4) || (m == 5) || (m == 6));
            for (this.type_ = m; ; this.type_ = 0)
            {
              this.bitField0_ = (0x1 | this.bitField0_);
              break;
            }
          case 16:
            this.isVoiceEnabled_ = paramCodedInputByteBufferNano.readBool();
            this.bitField0_ = (0x2 | this.bitField0_);
            break;
          case 24:
            int k = paramCodedInputByteBufferNano.readInt32();
            if ((k == 0) || (k == 1) || (k == 2) || (k == 3));
            for (this.inputType_ = k; ; this.inputType_ = 0)
            {
              this.bitField0_ = (0x4 | this.bitField0_);
              break;
            }
          case 34:
            this.pendingLabel_ = paramCodedInputByteBufferNano.readString();
            this.bitField0_ = (0x8 | this.bitField0_);
            break;
          case 42:
            this.completionLabel_ = paramCodedInputByteBufferNano.readString();
            this.bitField0_ = (0x10 | this.bitField0_);
          case 48:
          }
        }
        int j = paramCodedInputByteBufferNano.readInt32();
        if ((j == 0) || (j == 1) || (j == 2));
        for (this.invocationMode_ = j; ; this.invocationMode_ = 0)
        {
          this.bitField0_ = (0x20 | this.bitField0_);
          break;
        }
      }

      public Command parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
        throws IOException
      {
        return new Command().mergeFrom(paramCodedInputByteBufferNano);
      }

      public Command parseFrom(byte[] paramArrayOfByte)
        throws InvalidProtocolBufferNanoException
      {
        return (Command)MessageNano.mergeFrom(new Command(), paramArrayOfByte);
      }

      public Command setCompletionLabel(String paramString)
      {
        if (paramString == null)
          throw new NullPointerException();
        this.completionLabel_ = paramString;
        this.bitField0_ = (0x10 | this.bitField0_);
        return this;
      }

      public Command setInputType(int paramInt)
      {
        this.inputType_ = paramInt;
        this.bitField0_ = (0x4 | this.bitField0_);
        return this;
      }

      public Command setInvocationMode(int paramInt)
      {
        this.invocationMode_ = paramInt;
        this.bitField0_ = (0x20 | this.bitField0_);
        return this;
      }

      public Command setIsVoiceEnabled(boolean paramBoolean)
      {
        this.isVoiceEnabled_ = paramBoolean;
        this.bitField0_ = (0x2 | this.bitField0_);
        return this;
      }

      public Command setPendingLabel(String paramString)
      {
        if (paramString == null)
          throw new NullPointerException();
        this.pendingLabel_ = paramString;
        this.bitField0_ = (0x8 | this.bitField0_);
        return this;
      }

      public Command setType(int paramInt)
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
          paramCodedOutputByteBufferNano.writeBool(2, this.isVoiceEnabled_);
        if ((0x4 & this.bitField0_) != 0)
          paramCodedOutputByteBufferNano.writeInt32(3, this.inputType_);
        if ((0x8 & this.bitField0_) != 0)
          paramCodedOutputByteBufferNano.writeString(4, this.pendingLabel_);
        if ((0x10 & this.bitField0_) != 0)
          paramCodedOutputByteBufferNano.writeString(5, this.completionLabel_);
        if ((0x20 & this.bitField0_) != 0)
          paramCodedOutputByteBufferNano.writeInt32(6, this.invocationMode_);
      }

      public static abstract interface CommandType
      {
        public static final int ADD_A_CALENDAR_EVENT = 3;
        public static final int CHECK_ME_IN = 2;
        public static final int EXPLORE_NEARBY = 6;
        public static final int FIND_A_PLACE = 5;
        public static final int FIND_A_RECIPE = 4;
        public static final int POST_AN_UPDATE = 1;
        public static final int TAKE_A_NOTE;
      }

      public static abstract interface InputType
      {
        public static final int DICTATION = 2;
        public static final int LOCAL_SEARCH = 1;
        public static final int NO_INPUT = 3;
        public static final int WEB_SEARCH;
      }

      public static abstract interface InvocationMode
      {
        public static final int BLOCKING = 1;
        public static final int DEFAULT = 0;
        public static final int NON_BLOCKING = 2;
      }
    }

    public static abstract interface ContactGroup
    {
      public static final int MY_CONTACTS;
    }

    public static abstract interface MessagingOption
    {
      public static final int EMAIL = 1;
      public static final int PERSONA = 0;
      public static final int SMS = 2;
    }

    public static final class Priority extends MessageNano
    {
      public static final Priority[] EMPTY_ARRAY = new Priority[0];
      private int bitField0_;
      private int glasswareAffinity_ = 0;

      public final Priority clear()
      {
        this.bitField0_ = 0;
        this.glasswareAffinity_ = 0;
        this.cachedSize = -1;
        return this;
      }

      public Priority clearGlasswareAffinity()
      {
        this.glasswareAffinity_ = 0;
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        return this;
      }

      public final boolean equals(Object paramObject)
      {
        if (paramObject == this);
        Priority localPriority;
        do
        {
          return true;
          if (!(paramObject instanceof Priority))
            return false;
          localPriority = (Priority)paramObject;
        }
        while (this.glasswareAffinity_ == localPriority.glasswareAffinity_);
        return false;
      }

      public int getGlasswareAffinity()
      {
        return this.glasswareAffinity_;
      }

      public int getSerializedSize()
      {
        int i = 0x1 & this.bitField0_;
        int j = 0;
        if (i != 0)
          j = 0 + CodedOutputByteBufferNano.computeUInt32Size(1, this.glasswareAffinity_);
        this.cachedSize = j;
        return j;
      }

      public boolean hasGlasswareAffinity()
      {
        return (0x1 & this.bitField0_) != 0;
      }

      public int hashCode()
      {
        return 527 + this.glasswareAffinity_;
      }

      public Priority mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.glasswareAffinity_ = paramCodedInputByteBufferNano.readUInt32();
          this.bitField0_ = (0x1 | this.bitField0_);
        }
      }

      public Priority parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
        throws IOException
      {
        return new Priority().mergeFrom(paramCodedInputByteBufferNano);
      }

      public Priority parseFrom(byte[] paramArrayOfByte)
        throws InvalidProtocolBufferNanoException
      {
        return (Priority)MessageNano.mergeFrom(new Priority(), paramArrayOfByte);
      }

      public Priority setGlasswareAffinity(int paramInt)
      {
        this.glasswareAffinity_ = paramInt;
        this.bitField0_ = (0x1 | this.bitField0_);
        return this;
      }

      public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
        throws IOException
      {
        if ((0x1 & this.bitField0_) != 0)
          paramCodedOutputByteBufferNano.writeUInt32(1, this.glasswareAffinity_);
      }
    }

    public static abstract interface Type
    {
      public static final int GROUP = 0;
      public static final int INDIVIDUAL = 1;
    }
  }

  public static final class LinkSpec extends MessageNano
  {
    public static final LinkSpec[] EMPTY_ARRAY = new LinkSpec[0];
    private int bitField0_;
    private int end_ = 0;
    private int start_ = 0;
    private String url_ = "";

    public static LinkSpec parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new LinkSpec().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static LinkSpec parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (LinkSpec)MessageNano.mergeFrom(new LinkSpec(), paramArrayOfByte);
    }

    public final LinkSpec clear()
    {
      this.bitField0_ = 0;
      this.start_ = 0;
      this.end_ = 0;
      this.url_ = "";
      this.cachedSize = -1;
      return this;
    }

    public LinkSpec clearEnd()
    {
      this.end_ = 0;
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      return this;
    }

    public LinkSpec clearStart()
    {
      this.start_ = 0;
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public LinkSpec clearUrl()
    {
      this.url_ = "";
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      LinkSpec localLinkSpec;
      do
      {
        return true;
        if (!(paramObject instanceof LinkSpec))
          return false;
        localLinkSpec = (LinkSpec)paramObject;
        if ((this.start_ != localLinkSpec.start_) || (this.end_ != localLinkSpec.end_))
          break;
        if (this.url_ != null)
          break label59;
      }
      while (localLinkSpec.url_ == null);
      label59: 
      while (!this.url_.equals(localLinkSpec.url_))
        return false;
      return true;
    }

    public int getEnd()
    {
      return this.end_;
    }

    public int getSerializedSize()
    {
      int i = 0x1 & this.bitField0_;
      int j = 0;
      if (i != 0)
        j = 0 + CodedOutputByteBufferNano.computeUInt32Size(1, this.start_);
      if ((0x2 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeUInt32Size(2, this.end_);
      if ((0x4 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(3, this.url_);
      this.cachedSize = j;
      return j;
    }

    public int getStart()
    {
      return this.start_;
    }

    public String getUrl()
    {
      return this.url_;
    }

    public boolean hasEnd()
    {
      return (0x2 & this.bitField0_) != 0;
    }

    public boolean hasStart()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public boolean hasUrl()
    {
      return (0x4 & this.bitField0_) != 0;
    }

    public int hashCode()
    {
      int i = 31 * (31 * (527 + this.start_) + this.end_);
      if (this.url_ == null);
      for (int j = 0; ; j = this.url_.hashCode())
        return i + j;
    }

    public LinkSpec mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.start_ = paramCodedInputByteBufferNano.readUInt32();
          this.bitField0_ = (0x1 | this.bitField0_);
          break;
        case 16:
          this.end_ = paramCodedInputByteBufferNano.readUInt32();
          this.bitField0_ = (0x2 | this.bitField0_);
          break;
        case 26:
        }
        this.url_ = paramCodedInputByteBufferNano.readString();
        this.bitField0_ = (0x4 | this.bitField0_);
      }
    }

    public LinkSpec setEnd(int paramInt)
    {
      this.end_ = paramInt;
      this.bitField0_ = (0x2 | this.bitField0_);
      return this;
    }

    public LinkSpec setStart(int paramInt)
    {
      this.start_ = paramInt;
      this.bitField0_ = (0x1 | this.bitField0_);
      return this;
    }

    public LinkSpec setUrl(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.url_ = paramString;
      this.bitField0_ = (0x4 | this.bitField0_);
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if ((0x1 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeUInt32(1, this.start_);
      if ((0x2 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeUInt32(2, this.end_);
      if ((0x4 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(3, this.url_);
    }
  }

  public static final class Location extends MessageNano
  {
    public static final Location[] EMPTY_ARRAY = new Location[0];
    private double accuracy_ = 0.0D;
    private String address_ = "";
    private int bitField0_;
    private String displayName_ = "";
    private String id_ = "";
    private double latitude_ = 0.0D;
    private String levelId_ = "";
    private float levelNumber_ = 0.0F;
    private double longitude_ = 0.0D;
    private String source_ = "";
    private long timestamp_ = 0L;

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
      this.id_ = "";
      this.source_ = "";
      this.timestamp_ = 0L;
      this.latitude_ = 0.0D;
      this.longitude_ = 0.0D;
      this.accuracy_ = 0.0D;
      this.levelId_ = "";
      this.levelNumber_ = 0.0F;
      this.displayName_ = "";
      this.address_ = "";
      this.cachedSize = -1;
      return this;
    }

    public Location clearAccuracy()
    {
      this.accuracy_ = 0.0D;
      this.bitField0_ = (0xFFFFFFDF & this.bitField0_);
      return this;
    }

    public Location clearAddress()
    {
      this.address_ = "";
      this.bitField0_ = (0xFFFFFDFF & this.bitField0_);
      return this;
    }

    public Location clearDisplayName()
    {
      this.displayName_ = "";
      this.bitField0_ = (0xFFFFFEFF & this.bitField0_);
      return this;
    }

    public Location clearId()
    {
      this.id_ = "";
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public Location clearLatitude()
    {
      this.latitude_ = 0.0D;
      this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
      return this;
    }

    public Location clearLevelId()
    {
      this.levelId_ = "";
      this.bitField0_ = (0xFFFFFFBF & this.bitField0_);
      return this;
    }

    public Location clearLevelNumber()
    {
      this.levelNumber_ = 0.0F;
      this.bitField0_ = (0xFFFFFF7F & this.bitField0_);
      return this;
    }

    public Location clearLongitude()
    {
      this.longitude_ = 0.0D;
      this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
      return this;
    }

    public Location clearSource()
    {
      this.source_ = "";
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      return this;
    }

    public Location clearTimestamp()
    {
      this.timestamp_ = 0L;
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      Location localLocation;
      label49: label111: 
      do
      {
        return true;
        if (!(paramObject instanceof Location))
          return false;
        localLocation = (Location)paramObject;
        if (this.id_ != null)
          break label153;
        if (localLocation.id_ != null)
          break;
        if (this.source_ != null)
          break label170;
        if (localLocation.source_ != null)
          break;
        if ((this.timestamp_ != localLocation.timestamp_) || (this.latitude_ != localLocation.latitude_) || (this.longitude_ != localLocation.longitude_) || (this.accuracy_ != localLocation.accuracy_))
          break;
        if (this.levelId_ != null)
          break label187;
        if (localLocation.levelId_ != null)
          break;
        if (this.levelNumber_ != localLocation.levelNumber_)
          break;
        if (this.displayName_ != null)
          break label204;
        if (localLocation.displayName_ != null)
          break;
        if (this.address_ != null)
          break label221;
      }
      while (localLocation.address_ == null);
      label137: label153: label170: label187: label204: label221: 
      while (!this.address_.equals(localLocation.address_))
      {
        do
        {
          do
          {
            do
            {
              do
                return false;
              while (!this.id_.equals(localLocation.id_));
              break;
            }
            while (!this.source_.equals(localLocation.source_));
            break label49;
          }
          while (!this.levelId_.equals(localLocation.levelId_));
          break label111;
        }
        while (!this.displayName_.equals(localLocation.displayName_));
        break label137;
      }
      return true;
    }

    public double getAccuracy()
    {
      return this.accuracy_;
    }

    public String getAddress()
    {
      return this.address_;
    }

    public String getDisplayName()
    {
      return this.displayName_;
    }

    public String getId()
    {
      return this.id_;
    }

    public double getLatitude()
    {
      return this.latitude_;
    }

    public String getLevelId()
    {
      return this.levelId_;
    }

    public float getLevelNumber()
    {
      return this.levelNumber_;
    }

    public double getLongitude()
    {
      return this.longitude_;
    }

    public int getSerializedSize()
    {
      int i = 0x8 & this.bitField0_;
      int j = 0;
      if (i != 0)
        j = 0 + CodedOutputByteBufferNano.computeDoubleSize(1, this.latitude_);
      if ((0x10 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeDoubleSize(2, this.longitude_);
      if ((0x100 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(3, this.displayName_);
      if ((0x200 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(4, this.address_);
      if ((0x4 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeUInt64Size(5, this.timestamp_);
      if ((0x20 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeDoubleSize(6, this.accuracy_);
      if ((0x1 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(7, this.id_);
      if ((0x40 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(8, this.levelId_);
      if ((0x80 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeFloatSize(9, this.levelNumber_);
      if ((0x2 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(10, this.source_);
      this.cachedSize = j;
      return j;
    }

    public String getSource()
    {
      return this.source_;
    }

    public long getTimestamp()
    {
      return this.timestamp_;
    }

    public boolean hasAccuracy()
    {
      return (0x20 & this.bitField0_) != 0;
    }

    public boolean hasAddress()
    {
      return (0x200 & this.bitField0_) != 0;
    }

    public boolean hasDisplayName()
    {
      return (0x100 & this.bitField0_) != 0;
    }

    public boolean hasId()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public boolean hasLatitude()
    {
      return (0x8 & this.bitField0_) != 0;
    }

    public boolean hasLevelId()
    {
      return (0x40 & this.bitField0_) != 0;
    }

    public boolean hasLevelNumber()
    {
      return (0x80 & this.bitField0_) != 0;
    }

    public boolean hasLongitude()
    {
      return (0x10 & this.bitField0_) != 0;
    }

    public boolean hasSource()
    {
      return (0x2 & this.bitField0_) != 0;
    }

    public boolean hasTimestamp()
    {
      return (0x4 & this.bitField0_) != 0;
    }

    public int hashCode()
    {
      int i;
      int k;
      label27: int n;
      label131: int i2;
      label162: int i3;
      int i4;
      if (this.id_ == null)
      {
        i = 0;
        int j = 31 * (i + 527);
        if (this.source_ != null)
          break label203;
        k = 0;
        int m = 31 * (31 * (31 * (31 * (31 * (j + k) + (int)(this.timestamp_ ^ this.timestamp_ >>> 32)) + (int)(Double.doubleToLongBits(this.latitude_) ^ Double.doubleToLongBits(this.latitude_) >>> 32)) + (int)(Double.doubleToLongBits(this.longitude_) ^ Double.doubleToLongBits(this.longitude_) >>> 32)) + (int)(Double.doubleToLongBits(this.accuracy_) ^ Double.doubleToLongBits(this.accuracy_) >>> 32));
        if (this.levelId_ != null)
          break label214;
        n = 0;
        int i1 = 31 * (31 * (m + n) + Float.floatToIntBits(this.levelNumber_));
        if (this.displayName_ != null)
          break label226;
        i2 = 0;
        i3 = 31 * (i1 + i2);
        String str = this.address_;
        i4 = 0;
        if (str != null)
          break label238;
      }
      while (true)
      {
        return i3 + i4;
        i = this.id_.hashCode();
        break;
        label203: k = this.source_.hashCode();
        break label27;
        label214: n = this.levelId_.hashCode();
        break label131;
        label226: i2 = this.displayName_.hashCode();
        break label162;
        label238: i4 = this.address_.hashCode();
      }
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
          this.bitField0_ = (0x8 | this.bitField0_);
          break;
        case 17:
          this.longitude_ = paramCodedInputByteBufferNano.readDouble();
          this.bitField0_ = (0x10 | this.bitField0_);
          break;
        case 26:
          this.displayName_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x100 | this.bitField0_);
          break;
        case 34:
          this.address_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x200 | this.bitField0_);
          break;
        case 40:
          this.timestamp_ = paramCodedInputByteBufferNano.readUInt64();
          this.bitField0_ = (0x4 | this.bitField0_);
          break;
        case 49:
          this.accuracy_ = paramCodedInputByteBufferNano.readDouble();
          this.bitField0_ = (0x20 | this.bitField0_);
          break;
        case 58:
          this.id_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x1 | this.bitField0_);
          break;
        case 66:
          this.levelId_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x40 | this.bitField0_);
          break;
        case 77:
          this.levelNumber_ = paramCodedInputByteBufferNano.readFloat();
          this.bitField0_ = (0x80 | this.bitField0_);
          break;
        case 82:
        }
        this.source_ = paramCodedInputByteBufferNano.readString();
        this.bitField0_ = (0x2 | this.bitField0_);
      }
    }

    public Location setAccuracy(double paramDouble)
    {
      this.accuracy_ = paramDouble;
      this.bitField0_ = (0x20 | this.bitField0_);
      return this;
    }

    public Location setAddress(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.address_ = paramString;
      this.bitField0_ = (0x200 | this.bitField0_);
      return this;
    }

    public Location setDisplayName(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.displayName_ = paramString;
      this.bitField0_ = (0x100 | this.bitField0_);
      return this;
    }

    public Location setId(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.id_ = paramString;
      this.bitField0_ = (0x1 | this.bitField0_);
      return this;
    }

    public Location setLatitude(double paramDouble)
    {
      this.latitude_ = paramDouble;
      this.bitField0_ = (0x8 | this.bitField0_);
      return this;
    }

    public Location setLevelId(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.levelId_ = paramString;
      this.bitField0_ = (0x40 | this.bitField0_);
      return this;
    }

    public Location setLevelNumber(float paramFloat)
    {
      this.levelNumber_ = paramFloat;
      this.bitField0_ = (0x80 | this.bitField0_);
      return this;
    }

    public Location setLongitude(double paramDouble)
    {
      this.longitude_ = paramDouble;
      this.bitField0_ = (0x10 | this.bitField0_);
      return this;
    }

    public Location setSource(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.source_ = paramString;
      this.bitField0_ = (0x2 | this.bitField0_);
      return this;
    }

    public Location setTimestamp(long paramLong)
    {
      this.timestamp_ = paramLong;
      this.bitField0_ = (0x4 | this.bitField0_);
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if ((0x8 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeDouble(1, this.latitude_);
      if ((0x10 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeDouble(2, this.longitude_);
      if ((0x100 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(3, this.displayName_);
      if ((0x200 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(4, this.address_);
      if ((0x4 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeUInt64(5, this.timestamp_);
      if ((0x20 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeDouble(6, this.accuracy_);
      if ((0x1 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(7, this.id_);
      if ((0x40 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(8, this.levelId_);
      if ((0x80 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeFloat(9, this.levelNumber_);
      if ((0x2 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(10, this.source_);
    }
  }

  public static final class MenuItem extends MessageNano
  {
    public static final MenuItem[] EMPTY_ARRAY = new MenuItem[0];
    private int action_ = 0;
    private int bitField0_;
    private String broadcastAction_ = "";
    private String id_ = "";
    private String payload_ = "";
    private TimelineNano.Entity recipient_;
    private boolean removeWhenSelected_ = false;
    private int travelMode_ = 0;
    public TimelineNano.MenuValue[] value = TimelineNano.MenuValue.EMPTY_ARRAY;

    public static MenuItem parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new MenuItem().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static MenuItem parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (MenuItem)MessageNano.mergeFrom(new MenuItem(), paramArrayOfByte);
    }

    public final MenuItem clear()
    {
      this.bitField0_ = 0;
      this.id_ = "";
      this.action_ = 0;
      this.value = TimelineNano.MenuValue.EMPTY_ARRAY;
      this.broadcastAction_ = "";
      this.removeWhenSelected_ = false;
      this.travelMode_ = 0;
      this.recipient_ = null;
      this.payload_ = "";
      this.cachedSize = -1;
      return this;
    }

    public MenuItem clearAction()
    {
      this.action_ = 0;
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      return this;
    }

    public MenuItem clearBroadcastAction()
    {
      this.broadcastAction_ = "";
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      return this;
    }

    public MenuItem clearId()
    {
      this.id_ = "";
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public MenuItem clearPayload()
    {
      this.payload_ = "";
      this.bitField0_ = (0xFFFFFFDF & this.bitField0_);
      return this;
    }

    public MenuItem clearRecipient()
    {
      this.recipient_ = null;
      return this;
    }

    public MenuItem clearRemoveWhenSelected()
    {
      this.removeWhenSelected_ = false;
      this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
      return this;
    }

    public MenuItem clearTravelMode()
    {
      this.travelMode_ = 0;
      this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      MenuItem localMenuItem;
      label74: label110: 
      do
      {
        return true;
        if (!(paramObject instanceof MenuItem))
          return false;
        localMenuItem = (MenuItem)paramObject;
        if (this.id_ != null)
          break label126;
        if (localMenuItem.id_ != null)
          break;
        if ((this.action_ != localMenuItem.action_) || (!Arrays.equals(this.value, localMenuItem.value)))
          break;
        if (this.broadcastAction_ != null)
          break label143;
        if (localMenuItem.broadcastAction_ != null)
          break;
        if ((this.removeWhenSelected_ != localMenuItem.removeWhenSelected_) || (this.travelMode_ != localMenuItem.travelMode_))
          break;
        if (this.recipient_ != null)
          break label160;
        if (localMenuItem.recipient_ != null)
          break;
        if (this.payload_ != null)
          break label177;
      }
      while (localMenuItem.payload_ == null);
      label126: 
      while (!this.payload_.equals(localMenuItem.payload_))
      {
        do
        {
          do
          {
            do
              return false;
            while (!this.id_.equals(localMenuItem.id_));
            break;
          }
          while (!this.broadcastAction_.equals(localMenuItem.broadcastAction_));
          break label74;
        }
        while (!this.recipient_.equals(localMenuItem.recipient_));
        break label110;
      }
      label143: label160: label177: return true;
    }

    public int getAction()
    {
      return this.action_;
    }

    public String getBroadcastAction()
    {
      return this.broadcastAction_;
    }

    public String getId()
    {
      return this.id_;
    }

    public String getPayload()
    {
      return this.payload_;
    }

    public TimelineNano.Entity getRecipient()
    {
      return this.recipient_;
    }

    public boolean getRemoveWhenSelected()
    {
      return this.removeWhenSelected_;
    }

    public int getSerializedSize()
    {
      int i = 0x1 & this.bitField0_;
      int j = 0;
      if (i != 0)
        j = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.id_);
      if ((0x2 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeInt32Size(2, this.action_);
      if (this.value != null)
      {
        TimelineNano.MenuValue[] arrayOfMenuValue = this.value;
        int k = arrayOfMenuValue.length;
        for (int m = 0; m < k; m++)
          j += CodedOutputByteBufferNano.computeMessageSize(3, arrayOfMenuValue[m]);
      }
      if ((0x4 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(5, this.broadcastAction_);
      if ((0x8 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeBoolSize(7, this.removeWhenSelected_);
      if ((0x10 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeInt32Size(8, this.travelMode_);
      if (this.recipient_ != null)
        j += CodedOutputByteBufferNano.computeMessageSize(9, this.recipient_);
      if ((0x20 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(10, this.payload_);
      this.cachedSize = j;
      return j;
    }

    public int getTravelMode()
    {
      return this.travelMode_;
    }

    public boolean hasAction()
    {
      return (0x2 & this.bitField0_) != 0;
    }

    public boolean hasBroadcastAction()
    {
      return (0x4 & this.bitField0_) != 0;
    }

    public boolean hasId()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public boolean hasPayload()
    {
      return (0x20 & this.bitField0_) != 0;
    }

    public boolean hasRecipient()
    {
      return this.recipient_ != null;
    }

    public boolean hasRemoveWhenSelected()
    {
      return (0x8 & this.bitField0_) != 0;
    }

    public boolean hasTravelMode()
    {
      return (0x10 & this.bitField0_) != 0;
    }

    public int hashCode()
    {
      int i;
      int j;
      int i2;
      label51: int i4;
      label71: int i6;
      label99: int i7;
      int i8;
      if (this.id_ == null)
      {
        i = 0;
        j = 31 * (i + 527) + this.action_;
        if (this.value != null)
          break label140;
        j *= 31;
        int i1 = j * 31;
        if (this.broadcastAction_ != null)
          break label195;
        i2 = 0;
        int i3 = 31 * (i1 + i2);
        if (!this.removeWhenSelected_)
          break label207;
        i4 = 1;
        int i5 = 31 * (31 * (i3 + i4) + this.travelMode_);
        if (this.recipient_ != null)
          break label213;
        i6 = 0;
        i7 = 31 * (i5 + i6);
        String str = this.payload_;
        i8 = 0;
        if (str != null)
          break label225;
      }
      while (true)
      {
        return i7 + i8;
        i = this.id_.hashCode();
        break;
        label140: int k = 0;
        label142: int m;
        if (k < this.value.length)
        {
          m = j * 31;
          if (this.value[k] != null)
            break label181;
        }
        label181: for (int n = 0; ; n = this.value[k].hashCode())
        {
          j = m + n;
          k++;
          break label142;
          break;
        }
        label195: i2 = this.broadcastAction_.hashCode();
        break label51;
        label207: i4 = 2;
        break label71;
        label213: i6 = this.recipient_.hashCode();
        break label99;
        label225: i8 = this.payload_.hashCode();
      }
    }

    public MenuItem mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.id_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x1 | this.bitField0_);
          break;
        case 16:
          int n = paramCodedInputByteBufferNano.readInt32();
          if ((n == 0) || (n == 2) || (n == 3) || (n == 4) || (n == 5) || (n == 6) || (n == 7) || (n == 8) || (n == 9) || (n == 10) || (n == 11) || (n == 12) || (n == 13) || (n == 14) || (n == 15) || (n == 16) || (n == 17) || (n == 18) || (n == 19) || (n == 20) || (n == 21) || (n == 22));
          for (this.action_ = n; ; this.action_ = 0)
          {
            this.bitField0_ = (0x2 | this.bitField0_);
            break;
          }
        case 26:
          int k = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 26);
          if (this.value == null);
          for (int m = 0; ; m = this.value.length)
          {
            TimelineNano.MenuValue[] arrayOfMenuValue = new TimelineNano.MenuValue[m + k];
            if (this.value != null)
              System.arraycopy(this.value, 0, arrayOfMenuValue, 0, m);
            this.value = arrayOfMenuValue;
            while (m < -1 + this.value.length)
            {
              this.value[m] = new TimelineNano.MenuValue();
              paramCodedInputByteBufferNano.readMessage(this.value[m]);
              paramCodedInputByteBufferNano.readTag();
              m++;
            }
          }
          this.value[m] = new TimelineNano.MenuValue();
          paramCodedInputByteBufferNano.readMessage(this.value[m]);
          break;
        case 42:
          this.broadcastAction_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x4 | this.bitField0_);
          break;
        case 56:
          this.removeWhenSelected_ = paramCodedInputByteBufferNano.readBool();
          this.bitField0_ = (0x8 | this.bitField0_);
          break;
        case 64:
          int j = paramCodedInputByteBufferNano.readInt32();
          if ((j == 0) || (j == 1) || (j == 2) || (j == 3) || (j == 4));
          for (this.travelMode_ = j; ; this.travelMode_ = 0)
          {
            this.bitField0_ = (0x10 | this.bitField0_);
            break;
          }
        case 74:
          if (this.recipient_ == null)
            this.recipient_ = new TimelineNano.Entity();
          paramCodedInputByteBufferNano.readMessage(this.recipient_);
          break;
        case 82:
        }
        this.payload_ = paramCodedInputByteBufferNano.readString();
        this.bitField0_ = (0x20 | this.bitField0_);
      }
    }

    public MenuItem setAction(int paramInt)
    {
      this.action_ = paramInt;
      this.bitField0_ = (0x2 | this.bitField0_);
      return this;
    }

    public MenuItem setBroadcastAction(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.broadcastAction_ = paramString;
      this.bitField0_ = (0x4 | this.bitField0_);
      return this;
    }

    public MenuItem setId(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.id_ = paramString;
      this.bitField0_ = (0x1 | this.bitField0_);
      return this;
    }

    public MenuItem setPayload(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.payload_ = paramString;
      this.bitField0_ = (0x20 | this.bitField0_);
      return this;
    }

    public MenuItem setRecipient(TimelineNano.Entity paramEntity)
    {
      if (paramEntity == null)
        throw new NullPointerException();
      this.recipient_ = paramEntity;
      return this;
    }

    public MenuItem setRemoveWhenSelected(boolean paramBoolean)
    {
      this.removeWhenSelected_ = paramBoolean;
      this.bitField0_ = (0x8 | this.bitField0_);
      return this;
    }

    public MenuItem setTravelMode(int paramInt)
    {
      this.travelMode_ = paramInt;
      this.bitField0_ = (0x10 | this.bitField0_);
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if ((0x1 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(1, this.id_);
      if ((0x2 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt32(2, this.action_);
      if (this.value != null)
      {
        TimelineNano.MenuValue[] arrayOfMenuValue = this.value;
        int i = arrayOfMenuValue.length;
        for (int j = 0; j < i; j++)
          paramCodedOutputByteBufferNano.writeMessage(3, arrayOfMenuValue[j]);
      }
      if ((0x4 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(5, this.broadcastAction_);
      if ((0x8 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeBool(7, this.removeWhenSelected_);
      if ((0x10 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt32(8, this.travelMode_);
      if (this.recipient_ != null)
        paramCodedOutputByteBufferNano.writeMessage(9, this.recipient_);
      if ((0x20 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(10, this.payload_);
    }

    public static abstract interface Action
    {
      public static final int BROADCAST = 7;
      public static final int CUSTOM = 0;
      public static final int DELETE = 3;
      public static final int GET_MEDIA_INPUT = 22;
      public static final int HANGOUT = 14;
      public static final int MUTE_MIC = 11;
      public static final int NAVIGATE = 9;
      public static final int OPEN_URI = 13;
      public static final int PLAY_VIDEO = 17;
      public static final int READ_ALOUD = 5;
      public static final int READ_MORE = 16;
      public static final int REPLY = 2;
      public static final int REPLY_ALL = 6;
      public static final int SEARCH = 10;
      public static final int SEND = 21;
      public static final int SEND_MESSAGE = 18;
      public static final int SEND_TO_PHONE = 12;
      public static final int SHARE = 4;
      public static final int SHOW_RECIPIENTS = 20;
      public static final int TOGGLE_PINNED = 15;
      public static final int VOICE_CALL = 8;
      public static final int VOLUME = 19;
    }

    public static abstract interface State
    {
      public static final int CONFIRMED = 2;
      public static final int DEFAULT = 0;
      public static final int PENDING = 1;
    }

    public static abstract interface TravelMode
    {
      public static final int BICYCLING = 3;
      public static final int DRIVING = 1;
      public static final int MOST_RECENTLY_USED = 0;
      public static final int TRANSIT = 4;
      public static final int WALKING = 2;
    }
  }

  public static final class MenuValue extends MessageNano
  {
    public static final MenuValue[] EMPTY_ARRAY = new MenuValue[0];
    private int bitField0_;
    private String displayName_ = "";
    private String iconUrl_ = "";
    private int state_ = 0;

    public static MenuValue parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new MenuValue().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static MenuValue parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (MenuValue)MessageNano.mergeFrom(new MenuValue(), paramArrayOfByte);
    }

    public final MenuValue clear()
    {
      this.bitField0_ = 0;
      this.state_ = 0;
      this.displayName_ = "";
      this.iconUrl_ = "";
      this.cachedSize = -1;
      return this;
    }

    public MenuValue clearDisplayName()
    {
      this.displayName_ = "";
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      return this;
    }

    public MenuValue clearIconUrl()
    {
      this.iconUrl_ = "";
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      return this;
    }

    public MenuValue clearState()
    {
      this.state_ = 0;
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      MenuValue localMenuValue;
      do
      {
        return true;
        if (!(paramObject instanceof MenuValue))
          return false;
        localMenuValue = (MenuValue)paramObject;
        if (this.state_ != localMenuValue.state_)
          break;
        if (this.displayName_ != null)
          break label62;
        if (localMenuValue.displayName_ != null)
          break;
        if (this.iconUrl_ != null)
          break label79;
      }
      while (localMenuValue.iconUrl_ == null);
      label62: label79: 
      while (!this.iconUrl_.equals(localMenuValue.iconUrl_))
      {
        do
          return false;
        while (!this.displayName_.equals(localMenuValue.displayName_));
        break;
      }
      return true;
    }

    public String getDisplayName()
    {
      return this.displayName_;
    }

    public String getIconUrl()
    {
      return this.iconUrl_;
    }

    public int getSerializedSize()
    {
      int i = 0x2 & this.bitField0_;
      int j = 0;
      if (i != 0)
        j = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.displayName_);
      if ((0x4 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(2, this.iconUrl_);
      if ((0x1 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeInt32Size(3, this.state_);
      this.cachedSize = j;
      return j;
    }

    public int getState()
    {
      return this.state_;
    }

    public boolean hasDisplayName()
    {
      return (0x2 & this.bitField0_) != 0;
    }

    public boolean hasIconUrl()
    {
      return (0x4 & this.bitField0_) != 0;
    }

    public boolean hasState()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public int hashCode()
    {
      int i = 31 * (527 + this.state_);
      int j;
      int k;
      int m;
      if (this.displayName_ == null)
      {
        j = 0;
        k = 31 * (i + j);
        String str = this.iconUrl_;
        m = 0;
        if (str != null)
          break label58;
      }
      while (true)
      {
        return k + m;
        j = this.displayName_.hashCode();
        break;
        label58: m = this.iconUrl_.hashCode();
      }
    }

    public MenuValue mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.displayName_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x2 | this.bitField0_);
          break;
        case 18:
          this.iconUrl_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x4 | this.bitField0_);
        case 24:
        }
      }
      int j = paramCodedInputByteBufferNano.readInt32();
      if ((j == 0) || (j == 1) || (j == 2));
      for (this.state_ = j; ; this.state_ = 0)
      {
        this.bitField0_ = (0x1 | this.bitField0_);
        break;
      }
    }

    public MenuValue setDisplayName(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.displayName_ = paramString;
      this.bitField0_ = (0x2 | this.bitField0_);
      return this;
    }

    public MenuValue setIconUrl(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.iconUrl_ = paramString;
      this.bitField0_ = (0x4 | this.bitField0_);
      return this;
    }

    public MenuValue setState(int paramInt)
    {
      this.state_ = paramInt;
      this.bitField0_ = (0x1 | this.bitField0_);
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if ((0x2 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(1, this.displayName_);
      if ((0x4 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(2, this.iconUrl_);
      if ((0x1 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt32(3, this.state_);
    }
  }

  public static final class MessagingPersona extends MessageNano
  {
    public static final MessagingPersona[] EMPTY_ARRAY = new MessagingPersona[0];
    public String[] acceptType = WireFormatNano.EMPTY_STRING_ARRAY;
    private int bitField0_;
    private boolean isDefault_ = false;
    private String personaId_ = "";
    public int[] sharingFeature = WireFormatNano.EMPTY_INT_ARRAY;
    private String source_ = "";

    public static MessagingPersona parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new MessagingPersona().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static MessagingPersona parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (MessagingPersona)MessageNano.mergeFrom(new MessagingPersona(), paramArrayOfByte);
    }

    public final MessagingPersona clear()
    {
      this.bitField0_ = 0;
      this.source_ = "";
      this.personaId_ = "";
      this.isDefault_ = false;
      this.acceptType = WireFormatNano.EMPTY_STRING_ARRAY;
      this.sharingFeature = WireFormatNano.EMPTY_INT_ARRAY;
      this.cachedSize = -1;
      return this;
    }

    public MessagingPersona clearIsDefault()
    {
      this.isDefault_ = false;
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      return this;
    }

    public MessagingPersona clearPersonaId()
    {
      this.personaId_ = "";
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      return this;
    }

    public MessagingPersona clearSource()
    {
      this.source_ = "";
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      label107: label122: 
      while (true)
      {
        return true;
        if (!(paramObject instanceof MessagingPersona))
          return false;
        MessagingPersona localMessagingPersona = (MessagingPersona)paramObject;
        if (this.source_ == null)
          if (localMessagingPersona.source_ == null)
          {
            if (this.personaId_ != null)
              break label107;
            if (localMessagingPersona.personaId_ != null);
          }
        while (true)
        {
          if ((this.isDefault_ == localMessagingPersona.isDefault_) && (Arrays.equals(this.acceptType, localMessagingPersona.acceptType)) && (Arrays.equals(this.sharingFeature, localMessagingPersona.sharingFeature)))
            break label122;
          do
          {
            do
              return false;
            while (!this.source_.equals(localMessagingPersona.source_));
            break;
          }
          while (!this.personaId_.equals(localMessagingPersona.personaId_));
        }
      }
    }

    public boolean getIsDefault()
    {
      return this.isDefault_;
    }

    public String getPersonaId()
    {
      return this.personaId_;
    }

    public int getSerializedSize()
    {
      int i = 0x1 & this.bitField0_;
      int j = 0;
      if (i != 0)
        j = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.source_);
      if ((0x2 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(2, this.personaId_);
      if ((0x4 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeBoolSize(3, this.isDefault_);
      if ((this.acceptType != null) && (this.acceptType.length > 0))
      {
        int i1 = 0;
        String[] arrayOfString = this.acceptType;
        int i2 = arrayOfString.length;
        for (int i3 = 0; i3 < i2; i3++)
          i1 += CodedOutputByteBufferNano.computeStringSizeNoTag(arrayOfString[i3]);
        j = j + i1 + 1 * this.acceptType.length;
      }
      if ((this.sharingFeature != null) && (this.sharingFeature.length > 0))
      {
        int k = 0;
        int[] arrayOfInt = this.sharingFeature;
        int m = arrayOfInt.length;
        for (int n = 0; n < m; n++)
          k += CodedOutputByteBufferNano.computeInt32SizeNoTag(arrayOfInt[n]);
        j = j + k + 1 * this.sharingFeature.length;
      }
      this.cachedSize = j;
      return j;
    }

    public String getSource()
    {
      return this.source_;
    }

    public boolean hasIsDefault()
    {
      return (0x4 & this.bitField0_) != 0;
    }

    public boolean hasPersonaId()
    {
      return (0x2 & this.bitField0_) != 0;
    }

    public boolean hasSource()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public int hashCode()
    {
      int i;
      int k;
      label27: int n;
      label45: int i1;
      if (this.source_ == null)
      {
        i = 0;
        int j = 31 * (i + 527);
        if (this.personaId_ != null)
          break label94;
        k = 0;
        int m = 31 * (j + k);
        if (!this.isDefault_)
          break label105;
        n = 1;
        i1 = m + n;
        if (this.acceptType != null)
          break label111;
        i1 *= 31;
        if (this.sharingFeature != null)
          break label172;
        i1 *= 31;
      }
      while (true)
      {
        return i1;
        i = this.source_.hashCode();
        break;
        label94: k = this.personaId_.hashCode();
        break label27;
        label105: n = 2;
        break label45;
        label111: int i2 = 0;
        label114: int i3;
        if (i2 < this.acceptType.length)
        {
          i3 = i1 * 31;
          if (this.acceptType[i2] != null)
            break label157;
        }
        label157: for (int i4 = 0; ; i4 = this.acceptType[i2].hashCode())
        {
          i1 = i3 + i4;
          i2++;
          break label114;
          break;
        }
        label172: for (int i5 = 0; i5 < this.sharingFeature.length; i5++)
          i1 = i1 * 31 + this.sharingFeature[i5];
      }
    }

    public MessagingPersona mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.source_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x1 | this.bitField0_);
          break;
        case 18:
          this.personaId_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x2 | this.bitField0_);
          break;
        case 24:
          this.isDefault_ = paramCodedInputByteBufferNano.readBool();
          this.bitField0_ = (0x4 | this.bitField0_);
          break;
        case 34:
          int m = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 34);
          int n = this.acceptType.length;
          String[] arrayOfString = new String[n + m];
          System.arraycopy(this.acceptType, 0, arrayOfString, 0, n);
          this.acceptType = arrayOfString;
          while (n < -1 + this.acceptType.length)
          {
            this.acceptType[n] = paramCodedInputByteBufferNano.readString();
            paramCodedInputByteBufferNano.readTag();
            n++;
          }
          this.acceptType[n] = paramCodedInputByteBufferNano.readString();
          break;
        case 40:
        }
        int j = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 40);
        int k = this.sharingFeature.length;
        int[] arrayOfInt = new int[k + j];
        System.arraycopy(this.sharingFeature, 0, arrayOfInt, 0, k);
        this.sharingFeature = arrayOfInt;
        while (k < -1 + this.sharingFeature.length)
        {
          this.sharingFeature[k] = paramCodedInputByteBufferNano.readInt32();
          paramCodedInputByteBufferNano.readTag();
          k++;
        }
        this.sharingFeature[k] = paramCodedInputByteBufferNano.readInt32();
      }
    }

    public MessagingPersona setIsDefault(boolean paramBoolean)
    {
      this.isDefault_ = paramBoolean;
      this.bitField0_ = (0x4 | this.bitField0_);
      return this;
    }

    public MessagingPersona setPersonaId(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.personaId_ = paramString;
      this.bitField0_ = (0x2 | this.bitField0_);
      return this;
    }

    public MessagingPersona setSource(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.source_ = paramString;
      this.bitField0_ = (0x1 | this.bitField0_);
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if ((0x1 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(1, this.source_);
      if ((0x2 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(2, this.personaId_);
      if ((0x4 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeBool(3, this.isDefault_);
      if (this.acceptType != null)
      {
        String[] arrayOfString = this.acceptType;
        int k = arrayOfString.length;
        for (int m = 0; m < k; m++)
          paramCodedOutputByteBufferNano.writeString(4, arrayOfString[m]);
      }
      if ((this.sharingFeature != null) && (this.sharingFeature.length > 0))
      {
        int[] arrayOfInt = this.sharingFeature;
        int i = arrayOfInt.length;
        for (int j = 0; j < i; j++)
          paramCodedOutputByteBufferNano.writeInt32(5, arrayOfInt[j]);
      }
    }
  }

  public static final class NotificationConfig extends MessageNano
  {
    public static final NotificationConfig[] EMPTY_ARRAY = new NotificationConfig[0];
    private int bitField0_;
    private long deliveryTime_ = 0L;
    private int level_ = 10;

    public static NotificationConfig parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new NotificationConfig().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static NotificationConfig parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (NotificationConfig)MessageNano.mergeFrom(new NotificationConfig(), paramArrayOfByte);
    }

    public final NotificationConfig clear()
    {
      this.bitField0_ = 0;
      this.level_ = 10;
      this.deliveryTime_ = 0L;
      this.cachedSize = -1;
      return this;
    }

    public NotificationConfig clearDeliveryTime()
    {
      this.deliveryTime_ = 0L;
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      return this;
    }

    public NotificationConfig clearLevel()
    {
      this.level_ = 10;
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      NotificationConfig localNotificationConfig;
      do
      {
        return true;
        if (!(paramObject instanceof NotificationConfig))
          return false;
        localNotificationConfig = (NotificationConfig)paramObject;
      }
      while ((this.level_ == localNotificationConfig.level_) && (this.deliveryTime_ == localNotificationConfig.deliveryTime_));
      return false;
    }

    public long getDeliveryTime()
    {
      return this.deliveryTime_;
    }

    public int getLevel()
    {
      return this.level_;
    }

    public int getSerializedSize()
    {
      int i = 0x1 & this.bitField0_;
      int j = 0;
      if (i != 0)
        j = 0 + CodedOutputByteBufferNano.computeInt32Size(1, this.level_);
      if ((0x2 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeUInt64Size(2, this.deliveryTime_);
      this.cachedSize = j;
      return j;
    }

    public boolean hasDeliveryTime()
    {
      return (0x2 & this.bitField0_) != 0;
    }

    public boolean hasLevel()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public int hashCode()
    {
      return 31 * (527 + this.level_) + (int)(this.deliveryTime_ ^ this.deliveryTime_ >>> 32);
    }

    public NotificationConfig mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          if (j == 10);
          for (this.level_ = j; ; this.level_ = 10)
          {
            this.bitField0_ = (0x1 | this.bitField0_);
            break;
          }
        case 16:
        }
        this.deliveryTime_ = paramCodedInputByteBufferNano.readUInt64();
        this.bitField0_ = (0x2 | this.bitField0_);
      }
    }

    public NotificationConfig setDeliveryTime(long paramLong)
    {
      this.deliveryTime_ = paramLong;
      this.bitField0_ = (0x2 | this.bitField0_);
      return this;
    }

    public NotificationConfig setLevel(int paramInt)
    {
      this.level_ = paramInt;
      this.bitField0_ = (0x1 | this.bitField0_);
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if ((0x1 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt32(1, this.level_);
      if ((0x2 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeUInt64(2, this.deliveryTime_);
    }

    public static abstract interface Level
    {
      public static final int DEFAULT = 10;
    }
  }

  public static abstract interface SharingFeature
  {
    public static final int ADD_CAPTION;
  }

  public static final class TimelineItem extends MessageNano
  {
    public static final TimelineItem[] EMPTY_ARRAY = new TimelineItem[0];
    public TimelineNano.Attachment[] attachment = TimelineNano.Attachment.EMPTY_ARRAY;
    private int bitField0_;
    private String bundleId_ = "";
    private String canonicalUrl_ = "";
    private int cloudSyncProtocol_ = 0;
    private int cloudSyncStatus_ = 0;
    private int companionSyncProtocol_ = 2;
    private int companionSyncStatus_ = 0;
    private long creationTime_ = 0L;
    private TimelineNano.Entity creator_;
    private long displayTime_ = 0L;
    private long expirationTime_ = 0L;
    private String html_ = "";
    private String id_ = "";
    private String inReplyTo_ = "";
    private boolean isBundleCover_ = false;
    private boolean isDeleted_ = false;
    private boolean isPinned_ = false;
    public TimelineNano.LinkSpec[] linkSpec = TimelineNano.LinkSpec.EMPTY_ARRAY;
    private TimelineNano.Location location_;
    public TimelineNano.MenuItem[] menuItem = TimelineNano.MenuItem.EMPTY_ARRAY;
    private long modifiedTime_ = 0L;
    private TimelineNano.NotificationConfig notification_;
    public TimelineNano.MenuItem[] pendingAction = TimelineNano.MenuItem.EMPTY_ARRAY;
    private int pinScore_ = 0;
    private long pinTime_ = 0L;
    private ProgressStatus progressStatus_;
    private String sendToPhoneUrl_ = "";
    public TimelineNano.Entity[] shareTarget = TimelineNano.Entity.EMPTY_ARRAY;
    public int[] sharingFeature = WireFormatNano.EMPTY_INT_ARRAY;
    private int smsType_ = 0;
    private String sourceAccountId_ = "";
    private String sourceItemId_ = "";
    private int sourceType_ = 0;
    private String source_ = "";
    private String speakableText_ = "";
    private String speakableType_ = "";
    private String text_ = "";
    private String title_ = "";
    private int viewType_ = -1;

    public static TimelineItem parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new TimelineItem().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static TimelineItem parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (TimelineItem)MessageNano.mergeFrom(new TimelineItem(), paramArrayOfByte);
    }

    public final TimelineItem clear()
    {
      this.bitField0_ = 0;
      this.id_ = "";
      this.bundleId_ = "";
      this.isBundleCover_ = false;
      this.creationTime_ = 0L;
      this.modifiedTime_ = 0L;
      this.displayTime_ = 0L;
      this.pinTime_ = 0L;
      this.expirationTime_ = 0L;
      this.pinScore_ = 0;
      this.isPinned_ = false;
      this.isDeleted_ = false;
      this.source_ = "";
      this.sourceType_ = 0;
      this.sourceItemId_ = "";
      this.sourceAccountId_ = "";
      this.canonicalUrl_ = "";
      this.creator_ = null;
      this.shareTarget = TimelineNano.Entity.EMPTY_ARRAY;
      this.inReplyTo_ = "";
      this.title_ = "";
      this.text_ = "";
      this.html_ = "";
      this.speakableType_ = "";
      this.speakableText_ = "";
      this.attachment = TimelineNano.Attachment.EMPTY_ARRAY;
      this.location_ = null;
      this.menuItem = TimelineNano.MenuItem.EMPTY_ARRAY;
      this.pendingAction = TimelineNano.MenuItem.EMPTY_ARRAY;
      this.notification_ = null;
      this.cloudSyncStatus_ = 0;
      this.companionSyncStatus_ = 0;
      this.cloudSyncProtocol_ = 0;
      this.companionSyncProtocol_ = 2;
      this.smsType_ = 0;
      this.sendToPhoneUrl_ = "";
      this.viewType_ = -1;
      this.sharingFeature = WireFormatNano.EMPTY_INT_ARRAY;
      this.progressStatus_ = null;
      this.linkSpec = TimelineNano.LinkSpec.EMPTY_ARRAY;
      this.cachedSize = -1;
      return this;
    }

    public TimelineItem clearBundleId()
    {
      this.bundleId_ = "";
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      return this;
    }

    public TimelineItem clearCanonicalUrl()
    {
      this.canonicalUrl_ = "";
      this.bitField0_ = (0xFFFF7FFF & this.bitField0_);
      return this;
    }

    public TimelineItem clearCloudSyncProtocol()
    {
      this.cloudSyncProtocol_ = 0;
      this.bitField0_ = (0xFEFFFFFF & this.bitField0_);
      return this;
    }

    public TimelineItem clearCloudSyncStatus()
    {
      this.cloudSyncStatus_ = 0;
      this.bitField0_ = (0xFFBFFFFF & this.bitField0_);
      return this;
    }

    public TimelineItem clearCompanionSyncProtocol()
    {
      this.companionSyncProtocol_ = 2;
      this.bitField0_ = (0xFDFFFFFF & this.bitField0_);
      return this;
    }

    public TimelineItem clearCompanionSyncStatus()
    {
      this.companionSyncStatus_ = 0;
      this.bitField0_ = (0xFF7FFFFF & this.bitField0_);
      return this;
    }

    public TimelineItem clearCreationTime()
    {
      this.creationTime_ = 0L;
      this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
      return this;
    }

    public TimelineItem clearCreator()
    {
      this.creator_ = null;
      return this;
    }

    public TimelineItem clearDisplayTime()
    {
      this.displayTime_ = 0L;
      this.bitField0_ = (0xFFFFFFDF & this.bitField0_);
      return this;
    }

    public TimelineItem clearExpirationTime()
    {
      this.expirationTime_ = 0L;
      this.bitField0_ = (0xFFFFFF7F & this.bitField0_);
      return this;
    }

    public TimelineItem clearHtml()
    {
      this.html_ = "";
      this.bitField0_ = (0xFFF7FFFF & this.bitField0_);
      return this;
    }

    public TimelineItem clearId()
    {
      this.id_ = "";
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public TimelineItem clearInReplyTo()
    {
      this.inReplyTo_ = "";
      this.bitField0_ = (0xFFFEFFFF & this.bitField0_);
      return this;
    }

    public TimelineItem clearIsBundleCover()
    {
      this.isBundleCover_ = false;
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      return this;
    }

    public TimelineItem clearIsDeleted()
    {
      this.isDeleted_ = false;
      this.bitField0_ = (0xFFFFFBFF & this.bitField0_);
      return this;
    }

    public TimelineItem clearIsPinned()
    {
      this.isPinned_ = false;
      this.bitField0_ = (0xFFFFFDFF & this.bitField0_);
      return this;
    }

    public TimelineItem clearLocation()
    {
      this.location_ = null;
      return this;
    }

    public TimelineItem clearModifiedTime()
    {
      this.modifiedTime_ = 0L;
      this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
      return this;
    }

    public TimelineItem clearNotification()
    {
      this.notification_ = null;
      return this;
    }

    public TimelineItem clearPinScore()
    {
      this.pinScore_ = 0;
      this.bitField0_ = (0xFFFFFEFF & this.bitField0_);
      return this;
    }

    public TimelineItem clearPinTime()
    {
      this.pinTime_ = 0L;
      this.bitField0_ = (0xFFFFFFBF & this.bitField0_);
      return this;
    }

    public TimelineItem clearProgressStatus()
    {
      this.progressStatus_ = null;
      return this;
    }

    public TimelineItem clearSendToPhoneUrl()
    {
      this.sendToPhoneUrl_ = "";
      this.bitField0_ = (0xF7FFFFFF & this.bitField0_);
      return this;
    }

    public TimelineItem clearSmsType()
    {
      this.smsType_ = 0;
      this.bitField0_ = (0xFBFFFFFF & this.bitField0_);
      return this;
    }

    public TimelineItem clearSource()
    {
      this.source_ = "";
      this.bitField0_ = (0xFFFFF7FF & this.bitField0_);
      return this;
    }

    public TimelineItem clearSourceAccountId()
    {
      this.sourceAccountId_ = "";
      this.bitField0_ = (0xFFFFBFFF & this.bitField0_);
      return this;
    }

    public TimelineItem clearSourceItemId()
    {
      this.sourceItemId_ = "";
      this.bitField0_ = (0xFFFFDFFF & this.bitField0_);
      return this;
    }

    public TimelineItem clearSourceType()
    {
      this.sourceType_ = 0;
      this.bitField0_ = (0xFFFFEFFF & this.bitField0_);
      return this;
    }

    public TimelineItem clearSpeakableText()
    {
      this.speakableText_ = "";
      this.bitField0_ = (0xFFDFFFFF & this.bitField0_);
      return this;
    }

    public TimelineItem clearSpeakableType()
    {
      this.speakableType_ = "";
      this.bitField0_ = (0xFFEFFFFF & this.bitField0_);
      return this;
    }

    public TimelineItem clearText()
    {
      this.text_ = "";
      this.bitField0_ = (0xFFFBFFFF & this.bitField0_);
      return this;
    }

    public TimelineItem clearTitle()
    {
      this.title_ = "";
      this.bitField0_ = (0xFFFDFFFF & this.bitField0_);
      return this;
    }

    public TimelineItem clearViewType()
    {
      this.viewType_ = -1;
      this.bitField0_ = (0xEFFFFFFF & this.bitField0_);
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      label49: label192: label206: label471: label730: 
      while (true)
      {
        return true;
        if (!(paramObject instanceof TimelineItem))
          return false;
        TimelineItem localTimelineItem = (TimelineItem)paramObject;
        if (this.id_ == null)
          if (localTimelineItem.id_ == null)
          {
            if (this.bundleId_ != null)
              break label543;
            if (localTimelineItem.bundleId_ == null)
              if ((this.isBundleCover_ == localTimelineItem.isBundleCover_) && (this.creationTime_ == localTimelineItem.creationTime_) && (this.modifiedTime_ == localTimelineItem.modifiedTime_) && (this.displayTime_ == localTimelineItem.displayTime_) && (this.pinTime_ == localTimelineItem.pinTime_) && (this.expirationTime_ == localTimelineItem.expirationTime_) && (this.pinScore_ == localTimelineItem.pinScore_) && (this.isPinned_ == localTimelineItem.isPinned_) && (this.isDeleted_ == localTimelineItem.isDeleted_))
              {
                if (this.source_ != null)
                  break label560;
                if (localTimelineItem.source_ == null)
                  if (this.sourceType_ == localTimelineItem.sourceType_)
                  {
                    if (this.sourceItemId_ != null)
                      break label577;
                    if (localTimelineItem.sourceItemId_ == null)
                    {
                      if (this.sourceAccountId_ != null)
                        break label594;
                      if (localTimelineItem.sourceAccountId_ == null)
                      {
                        if (this.canonicalUrl_ != null)
                          break label611;
                        if (localTimelineItem.canonicalUrl_ == null)
                        {
                          label220: if (this.creator_ != null)
                            break label628;
                          label360: if (localTimelineItem.creator_ == null)
                            label234: if (Arrays.equals(this.shareTarget, localTimelineItem.shareTarget))
                            {
                              if (this.inReplyTo_ != null)
                                break label645;
                              if (localTimelineItem.inReplyTo_ == null)
                              {
                                if (this.title_ != null)
                                  break label662;
                                if (localTimelineItem.title_ == null)
                                {
                                  if (this.text_ != null)
                                    break label679;
                                  if (localTimelineItem.text_ == null)
                                  {
                                    if (this.html_ != null)
                                      break label696;
                                    if (localTimelineItem.html_ == null)
                                    {
                                      if (this.speakableType_ != null)
                                        break label713;
                                      if (localTimelineItem.speakableType_ == null)
                                      {
                                        if (this.speakableText_ != null)
                                          break label730;
                                        if (localTimelineItem.speakableText_ == null)
                                          if (Arrays.equals(this.attachment, localTimelineItem.attachment))
                                          {
                                            if (this.location_ != null)
                                              break label747;
                                            if (localTimelineItem.location_ == null)
                                              if ((Arrays.equals(this.menuItem, localTimelineItem.menuItem)) && (Arrays.equals(this.pendingAction, localTimelineItem.pendingAction)))
                                              {
                                                if (this.notification_ != null)
                                                  break label764;
                                                if (localTimelineItem.notification_ == null)
                                                  if ((this.cloudSyncStatus_ == localTimelineItem.cloudSyncStatus_) && (this.companionSyncStatus_ == localTimelineItem.companionSyncStatus_) && (this.cloudSyncProtocol_ == localTimelineItem.cloudSyncProtocol_) && (this.companionSyncProtocol_ == localTimelineItem.companionSyncProtocol_) && (this.smsType_ == localTimelineItem.smsType_))
                                                  {
                                                    if (this.sendToPhoneUrl_ != null)
                                                      break label781;
                                                    if (localTimelineItem.sendToPhoneUrl_ == null)
                                                      if ((this.viewType_ == localTimelineItem.viewType_) && (Arrays.equals(this.sharingFeature, localTimelineItem.sharingFeature)))
                                                      {
                                                        if (this.progressStatus_ != null)
                                                          break label798;
                                                        if (localTimelineItem.progressStatus_ != null);
                                                      }
                                                  }
                                              }
                                          }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                        }
                      }
                    }
                  }
              }
          }
        label611: label747: 
        while (true)
        {
          if (Arrays.equals(this.linkSpec, localTimelineItem.linkSpec))
            break label813;
          label628: label764: 
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
                                          while (!this.id_.equals(localTimelineItem.id_));
                                          break;
                                        }
                                        while (!this.bundleId_.equals(localTimelineItem.bundleId_));
                                        break label49;
                                      }
                                      while (!this.source_.equals(localTimelineItem.source_));
                                      break label167;
                                    }
                                    while (!this.sourceItemId_.equals(localTimelineItem.sourceItemId_));
                                    break label192;
                                  }
                                  while (!this.sourceAccountId_.equals(localTimelineItem.sourceAccountId_));
                                  break label206;
                                }
                                while (!this.canonicalUrl_.equals(localTimelineItem.canonicalUrl_));
                                break label220;
                              }
                              while (!this.creator_.equals(localTimelineItem.creator_));
                              break label234;
                            }
                            while (!this.inReplyTo_.equals(localTimelineItem.inReplyTo_));
                            break label262;
                          }
                          while (!this.title_.equals(localTimelineItem.title_));
                          break label276;
                        }
                        while (!this.text_.equals(localTimelineItem.text_));
                        break label290;
                      }
                      while (!this.html_.equals(localTimelineItem.html_));
                      break label304;
                    }
                    while (!this.speakableType_.equals(localTimelineItem.speakableType_));
                    break label318;
                  }
                  while (!this.speakableText_.equals(localTimelineItem.speakableText_));
                  break label332;
                }
                while (!this.location_.equals(localTimelineItem.location_));
                break label360;
              }
              while (!this.notification_.equals(localTimelineItem.notification_));
              break label402;
            }
            while (!this.sendToPhoneUrl_.equals(localTimelineItem.sendToPhoneUrl_));
            break label471;
          }
          while (!this.progressStatus_.equals(localTimelineItem.progressStatus_));
        }
      }
    }

    public String getBundleId()
    {
      return this.bundleId_;
    }

    public String getCanonicalUrl()
    {
      return this.canonicalUrl_;
    }

    public int getCloudSyncProtocol()
    {
      return this.cloudSyncProtocol_;
    }

    public int getCloudSyncStatus()
    {
      return this.cloudSyncStatus_;
    }

    public int getCompanionSyncProtocol()
    {
      return this.companionSyncProtocol_;
    }

    public int getCompanionSyncStatus()
    {
      return this.companionSyncStatus_;
    }

    public long getCreationTime()
    {
      return this.creationTime_;
    }

    public TimelineNano.Entity getCreator()
    {
      return this.creator_;
    }

    public long getDisplayTime()
    {
      return this.displayTime_;
    }

    public long getExpirationTime()
    {
      return this.expirationTime_;
    }

    public String getHtml()
    {
      return this.html_;
    }

    public String getId()
    {
      return this.id_;
    }

    public String getInReplyTo()
    {
      return this.inReplyTo_;
    }

    public boolean getIsBundleCover()
    {
      return this.isBundleCover_;
    }

    public boolean getIsDeleted()
    {
      return this.isDeleted_;
    }

    public boolean getIsPinned()
    {
      return this.isPinned_;
    }

    public TimelineNano.Location getLocation()
    {
      return this.location_;
    }

    public long getModifiedTime()
    {
      return this.modifiedTime_;
    }

    public TimelineNano.NotificationConfig getNotification()
    {
      return this.notification_;
    }

    public int getPinScore()
    {
      return this.pinScore_;
    }

    public long getPinTime()
    {
      return this.pinTime_;
    }

    public ProgressStatus getProgressStatus()
    {
      return this.progressStatus_;
    }

    public String getSendToPhoneUrl()
    {
      return this.sendToPhoneUrl_;
    }

    public int getSerializedSize()
    {
      int i = 0x1 & this.bitField0_;
      int j = 0;
      if (i != 0)
        j = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.id_);
      if ((0x8 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeUInt64Size(2, this.creationTime_);
      if ((0x10 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeUInt64Size(3, this.modifiedTime_);
      if ((0x800 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(4, this.source_);
      if (this.creator_ != null)
        j += CodedOutputByteBufferNano.computeMessageSize(5, this.creator_);
      if (this.shareTarget != null)
      {
        TimelineNano.Entity[] arrayOfEntity = this.shareTarget;
        int i9 = arrayOfEntity.length;
        for (int i10 = 0; i10 < i9; i10++)
          j += CodedOutputByteBufferNano.computeMessageSize(6, arrayOfEntity[i10]);
      }
      if ((0x10000 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(7, this.inReplyTo_);
      if ((0x40000 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(8, this.text_);
      if (this.attachment != null)
      {
        TimelineNano.Attachment[] arrayOfAttachment = this.attachment;
        int i7 = arrayOfAttachment.length;
        for (int i8 = 0; i8 < i7; i8++)
          j += CodedOutputByteBufferNano.computeMessageSize(9, arrayOfAttachment[i8]);
      }
      if (this.location_ != null)
        j += CodedOutputByteBufferNano.computeMessageSize(10, this.location_);
      if (this.menuItem != null)
      {
        TimelineNano.MenuItem[] arrayOfMenuItem2 = this.menuItem;
        int i5 = arrayOfMenuItem2.length;
        for (int i6 = 0; i6 < i5; i6++)
          j += CodedOutputByteBufferNano.computeMessageSize(11, arrayOfMenuItem2[i6]);
      }
      if ((0x400000 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeInt32Size(12, this.cloudSyncStatus_);
      if ((0x1000000 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeInt32Size(13, this.cloudSyncProtocol_);
      if ((0x1000 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeInt32Size(14, this.sourceType_);
      if ((0x400 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeBoolSize(15, this.isDeleted_);
      if (this.notification_ != null)
        j += CodedOutputByteBufferNano.computeMessageSize(16, this.notification_);
      if ((0x20 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeUInt64Size(17, this.displayTime_);
      if (this.pendingAction != null)
      {
        TimelineNano.MenuItem[] arrayOfMenuItem1 = this.pendingAction;
        int i3 = arrayOfMenuItem1.length;
        for (int i4 = 0; i4 < i3; i4++)
          j += CodedOutputByteBufferNano.computeMessageSize(18, arrayOfMenuItem1[i4]);
      }
      if ((0x200000 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(19, this.speakableText_);
      if ((0x4000000 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeInt32Size(20, this.smsType_);
      if ((0x200 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeBoolSize(21, this.isPinned_);
      if ((0x20000 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(23, this.title_);
      if ((0x80000 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(24, this.html_);
      if ((0x2 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(25, this.bundleId_);
      if ((0x8000000 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(28, this.sendToPhoneUrl_);
      if ((0x4 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeBoolSize(29, this.isBundleCover_);
      if ((0x2000 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(30, this.sourceItemId_);
      if ((0x8000 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(31, this.canonicalUrl_);
      if ((0x800000 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeInt32Size(33, this.companionSyncStatus_);
      if ((0x2000000 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeInt32Size(34, this.companionSyncProtocol_);
      if ((0x40 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeUInt64Size(35, this.pinTime_);
      if ((0x100 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeInt32Size(36, this.pinScore_);
      if ((0x4000 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(37, this.sourceAccountId_);
      if ((0x100000 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(38, this.speakableType_);
      if ((0x80 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeUInt64Size(39, this.expirationTime_);
      if ((0x10000000 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeInt32Size(40, this.viewType_);
      if ((this.sharingFeature != null) && (this.sharingFeature.length > 0))
      {
        int n = 0;
        int[] arrayOfInt = this.sharingFeature;
        int i1 = arrayOfInt.length;
        for (int i2 = 0; i2 < i1; i2++)
          n += CodedOutputByteBufferNano.computeInt32SizeNoTag(arrayOfInt[i2]);
        j = j + n + 2 * this.sharingFeature.length;
      }
      if (this.progressStatus_ != null)
        j += CodedOutputByteBufferNano.computeMessageSize(42, this.progressStatus_);
      if (this.linkSpec != null)
      {
        TimelineNano.LinkSpec[] arrayOfLinkSpec = this.linkSpec;
        int k = arrayOfLinkSpec.length;
        for (int m = 0; m < k; m++)
          j += CodedOutputByteBufferNano.computeMessageSize(43, arrayOfLinkSpec[m]);
      }
      this.cachedSize = j;
      return j;
    }

    public int getSmsType()
    {
      return this.smsType_;
    }

    public String getSource()
    {
      return this.source_;
    }

    public String getSourceAccountId()
    {
      return this.sourceAccountId_;
    }

    public String getSourceItemId()
    {
      return this.sourceItemId_;
    }

    public int getSourceType()
    {
      return this.sourceType_;
    }

    public String getSpeakableText()
    {
      return this.speakableText_;
    }

    public String getSpeakableType()
    {
      return this.speakableType_;
    }

    public String getText()
    {
      return this.text_;
    }

    public String getTitle()
    {
      return this.title_;
    }

    public int getViewType()
    {
      return this.viewType_;
    }

    public boolean hasBundleId()
    {
      return (0x2 & this.bitField0_) != 0;
    }

    public boolean hasCanonicalUrl()
    {
      return (0x8000 & this.bitField0_) != 0;
    }

    public boolean hasCloudSyncProtocol()
    {
      return (0x1000000 & this.bitField0_) != 0;
    }

    public boolean hasCloudSyncStatus()
    {
      return (0x400000 & this.bitField0_) != 0;
    }

    public boolean hasCompanionSyncProtocol()
    {
      return (0x2000000 & this.bitField0_) != 0;
    }

    public boolean hasCompanionSyncStatus()
    {
      return (0x800000 & this.bitField0_) != 0;
    }

    public boolean hasCreationTime()
    {
      return (0x8 & this.bitField0_) != 0;
    }

    public boolean hasCreator()
    {
      return this.creator_ != null;
    }

    public boolean hasDisplayTime()
    {
      return (0x20 & this.bitField0_) != 0;
    }

    public boolean hasExpirationTime()
    {
      return (0x80 & this.bitField0_) != 0;
    }

    public boolean hasHtml()
    {
      return (0x80000 & this.bitField0_) != 0;
    }

    public boolean hasId()
    {
      return (0x1 & this.bitField0_) != 0;
    }

    public boolean hasInReplyTo()
    {
      return (0x10000 & this.bitField0_) != 0;
    }

    public boolean hasIsBundleCover()
    {
      return (0x4 & this.bitField0_) != 0;
    }

    public boolean hasIsDeleted()
    {
      return (0x400 & this.bitField0_) != 0;
    }

    public boolean hasIsPinned()
    {
      return (0x200 & this.bitField0_) != 0;
    }

    public boolean hasLocation()
    {
      return this.location_ != null;
    }

    public boolean hasModifiedTime()
    {
      return (0x10 & this.bitField0_) != 0;
    }

    public boolean hasNotification()
    {
      return this.notification_ != null;
    }

    public boolean hasPinScore()
    {
      return (0x100 & this.bitField0_) != 0;
    }

    public boolean hasPinTime()
    {
      return (0x40 & this.bitField0_) != 0;
    }

    public boolean hasProgressStatus()
    {
      return this.progressStatus_ != null;
    }

    public boolean hasSendToPhoneUrl()
    {
      return (0x8000000 & this.bitField0_) != 0;
    }

    public boolean hasSmsType()
    {
      return (0x4000000 & this.bitField0_) != 0;
    }

    public boolean hasSource()
    {
      return (0x800 & this.bitField0_) != 0;
    }

    public boolean hasSourceAccountId()
    {
      return (0x4000 & this.bitField0_) != 0;
    }

    public boolean hasSourceItemId()
    {
      return (0x2000 & this.bitField0_) != 0;
    }

    public boolean hasSourceType()
    {
      return (0x1000 & this.bitField0_) != 0;
    }

    public boolean hasSpeakableText()
    {
      return (0x200000 & this.bitField0_) != 0;
    }

    public boolean hasSpeakableType()
    {
      return (0x100000 & this.bitField0_) != 0;
    }

    public boolean hasText()
    {
      return (0x40000 & this.bitField0_) != 0;
    }

    public boolean hasTitle()
    {
      return (0x20000 & this.bitField0_) != 0;
    }

    public boolean hasViewType()
    {
      return (0x10000000 & this.bitField0_) != 0;
    }

    public int hashCode()
    {
      int i = 1;
      int j;
      int m;
      label30: int i1;
      label49: int i3;
      label162: label179: int i6;
      label198: int i8;
      label226: int i10;
      label246: int i12;
      label266: int i14;
      label286: int i15;
      int i20;
      label324: int i22;
      label344: int i24;
      label364: int i26;
      label384: int i28;
      label404: int i30;
      label424: int i31;
      int i36;
      label462: int i37;
      int i45;
      label514: int i47;
      label574: int i48;
      label603: int i50;
      if (this.id_ == null)
      {
        j = 0;
        int k = 31 * (j + 527);
        if (this.bundleId_ != null)
          break label655;
        m = 0;
        int n = 31 * (k + m);
        if (!this.isBundleCover_)
          break label667;
        i1 = i;
        int i2 = 31 * (31 * (31 * (31 * (31 * (31 * (31 * (n + i1) + (int)(this.creationTime_ ^ this.creationTime_ >>> 32)) + (int)(this.modifiedTime_ ^ this.modifiedTime_ >>> 32)) + (int)(this.displayTime_ ^ this.displayTime_ >>> 32)) + (int)(this.pinTime_ ^ this.pinTime_ >>> 32)) + (int)(this.expirationTime_ ^ this.expirationTime_ >>> 32)) + this.pinScore_);
        if (!this.isPinned_)
          break label673;
        i3 = i;
        int i4 = 31 * (i2 + i3);
        if (!this.isDeleted_)
          break label679;
        int i5 = 31 * (i4 + i);
        if (this.source_ != null)
          break label684;
        i6 = 0;
        int i7 = 31 * (31 * (i5 + i6) + this.sourceType_);
        if (this.sourceItemId_ != null)
          break label696;
        i8 = 0;
        int i9 = 31 * (i7 + i8);
        if (this.sourceAccountId_ != null)
          break label708;
        i10 = 0;
        int i11 = 31 * (i9 + i10);
        if (this.canonicalUrl_ != null)
          break label720;
        i12 = 0;
        int i13 = 31 * (i11 + i12);
        if (this.creator_ != null)
          break label732;
        i14 = 0;
        i15 = i13 + i14;
        if (this.shareTarget != null)
          break label744;
        i15 *= 31;
        int i19 = i15 * 31;
        if (this.inReplyTo_ != null)
          break label805;
        i20 = 0;
        int i21 = 31 * (i19 + i20);
        if (this.title_ != null)
          break label817;
        i22 = 0;
        int i23 = 31 * (i21 + i22);
        if (this.text_ != null)
          break label829;
        i24 = 0;
        int i25 = 31 * (i23 + i24);
        if (this.html_ != null)
          break label841;
        i26 = 0;
        int i27 = 31 * (i25 + i26);
        if (this.speakableType_ != null)
          break label853;
        i28 = 0;
        int i29 = 31 * (i27 + i28);
        if (this.speakableText_ != null)
          break label865;
        i30 = 0;
        i31 = i29 + i30;
        if (this.attachment != null)
          break label877;
        i31 *= 31;
        int i35 = i31 * 31;
        if (this.location_ != null)
          break label938;
        i36 = 0;
        i37 = i35 + i36;
        if (this.menuItem != null)
          break label950;
        i37 *= 31;
        if (this.pendingAction != null)
          break label1011;
        i37 *= 31;
        int i44 = i37 * 31;
        if (this.notification_ != null)
          break label1072;
        i45 = 0;
        int i46 = 31 * (31 * (31 * (31 * (31 * (31 * (i44 + i45) + this.cloudSyncStatus_) + this.companionSyncStatus_) + this.cloudSyncProtocol_) + this.companionSyncProtocol_) + this.smsType_);
        if (this.sendToPhoneUrl_ != null)
          break label1084;
        i47 = 0;
        i48 = 31 * (i46 + i47) + this.viewType_;
        if (this.sharingFeature != null)
          break label1096;
        i48 *= 31;
        i50 = i48 * 31;
        if (this.progressStatus_ != null)
          break label1130;
      }
      int i52;
      label655: label667: label673: label679: label684: label696: label708: label720: label732: label744: label1130: for (int i51 = 0; ; i51 = this.progressStatus_.hashCode())
      {
        i52 = i50 + i51;
        if (this.linkSpec != null)
          break label1142;
        i52 *= 31;
        return i52;
        j = this.id_.hashCode();
        break;
        m = this.bundleId_.hashCode();
        break label30;
        i1 = 2;
        break label49;
        i3 = 2;
        break label162;
        i = 2;
        break label179;
        i6 = this.source_.hashCode();
        break label198;
        i8 = this.sourceItemId_.hashCode();
        break label226;
        i10 = this.sourceAccountId_.hashCode();
        break label246;
        i12 = this.canonicalUrl_.hashCode();
        break label266;
        i14 = this.creator_.hashCode();
        break label286;
        int i16 = 0;
        label747: int i17;
        if (i16 < this.shareTarget.length)
        {
          i17 = i15 * 31;
          if (this.shareTarget[i16] != null)
            break label790;
        }
        for (int i18 = 0; ; i18 = this.shareTarget[i16].hashCode())
        {
          i15 = i17 + i18;
          i16++;
          break label747;
          break;
        }
        i20 = this.inReplyTo_.hashCode();
        break label324;
        i22 = this.title_.hashCode();
        break label344;
        i24 = this.text_.hashCode();
        break label364;
        i26 = this.html_.hashCode();
        break label384;
        i28 = this.speakableType_.hashCode();
        break label404;
        i30 = this.speakableText_.hashCode();
        break label424;
        label877: int i32 = 0;
        label880: int i33;
        if (i32 < this.attachment.length)
        {
          i33 = i31 * 31;
          if (this.attachment[i32] != null)
            break label923;
        }
        for (int i34 = 0; ; i34 = this.attachment[i32].hashCode())
        {
          i31 = i33 + i34;
          i32++;
          break label880;
          break;
        }
        i36 = this.location_.hashCode();
        break label462;
        int i38 = 0;
        int i39;
        if (i38 < this.menuItem.length)
        {
          i39 = i37 * 31;
          if (this.menuItem[i38] != null)
            break label996;
        }
        for (int i40 = 0; ; i40 = this.menuItem[i38].hashCode())
        {
          i37 = i39 + i40;
          i38++;
          break label953;
          break;
        }
        label1011: int i41 = 0;
        label1014: int i42;
        if (i41 < this.pendingAction.length)
        {
          i42 = i37 * 31;
          if (this.pendingAction[i41] != null)
            break label1057;
        }
        for (int i43 = 0; ; i43 = this.pendingAction[i41].hashCode())
        {
          i37 = i42 + i43;
          i41++;
          break label1014;
          break;
        }
        i45 = this.notification_.hashCode();
        break label514;
        i47 = this.sendToPhoneUrl_.hashCode();
        break label574;
        for (int i49 = 0; i49 < this.sharingFeature.length; i49++)
          i48 = i48 * 31 + this.sharingFeature[i49];
        break label603;
      }
      label790: label805: label817: label829: label841: label853: label865: label996: label1142: int i53 = 0;
      label923: label938: label950: label953: label1084: label1096: label1145: int i54;
      label1057: label1072: if (i53 < this.linkSpec.length)
      {
        i54 = i52 * 31;
        if (this.linkSpec[i53] != null)
          break label1188;
      }
      label1188: for (int i55 = 0; ; i55 = this.linkSpec[i53].hashCode())
      {
        i52 = i54 + i55;
        i53++;
        break label1145;
        break;
      }
    }

    public TimelineItem mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.id_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x1 | this.bitField0_);
          break;
        case 16:
          this.creationTime_ = paramCodedInputByteBufferNano.readUInt64();
          this.bitField0_ = (0x8 | this.bitField0_);
          break;
        case 24:
          this.modifiedTime_ = paramCodedInputByteBufferNano.readUInt64();
          this.bitField0_ = (0x10 | this.bitField0_);
          break;
        case 34:
          this.source_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x800 | this.bitField0_);
          break;
        case 42:
          if (this.creator_ == null)
            this.creator_ = new TimelineNano.Entity();
          paramCodedInputByteBufferNano.readMessage(this.creator_);
          break;
        case 50:
          int i14 = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 50);
          if (this.shareTarget == null);
          for (int i15 = 0; ; i15 = this.shareTarget.length)
          {
            TimelineNano.Entity[] arrayOfEntity = new TimelineNano.Entity[i15 + i14];
            if (this.shareTarget != null)
              System.arraycopy(this.shareTarget, 0, arrayOfEntity, 0, i15);
            this.shareTarget = arrayOfEntity;
            while (i15 < -1 + this.shareTarget.length)
            {
              this.shareTarget[i15] = new TimelineNano.Entity();
              paramCodedInputByteBufferNano.readMessage(this.shareTarget[i15]);
              paramCodedInputByteBufferNano.readTag();
              i15++;
            }
          }
          this.shareTarget[i15] = new TimelineNano.Entity();
          paramCodedInputByteBufferNano.readMessage(this.shareTarget[i15]);
          break;
        case 58:
          this.inReplyTo_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x10000 | this.bitField0_);
          break;
        case 66:
          this.text_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x40000 | this.bitField0_);
          break;
        case 74:
          int i12 = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 74);
          if (this.attachment == null);
          for (int i13 = 0; ; i13 = this.attachment.length)
          {
            TimelineNano.Attachment[] arrayOfAttachment = new TimelineNano.Attachment[i13 + i12];
            if (this.attachment != null)
              System.arraycopy(this.attachment, 0, arrayOfAttachment, 0, i13);
            this.attachment = arrayOfAttachment;
            while (i13 < -1 + this.attachment.length)
            {
              this.attachment[i13] = new TimelineNano.Attachment();
              paramCodedInputByteBufferNano.readMessage(this.attachment[i13]);
              paramCodedInputByteBufferNano.readTag();
              i13++;
            }
          }
          this.attachment[i13] = new TimelineNano.Attachment();
          paramCodedInputByteBufferNano.readMessage(this.attachment[i13]);
          break;
        case 82:
          if (this.location_ == null)
            this.location_ = new TimelineNano.Location();
          paramCodedInputByteBufferNano.readMessage(this.location_);
          break;
        case 90:
          int i10 = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 90);
          if (this.menuItem == null);
          for (int i11 = 0; ; i11 = this.menuItem.length)
          {
            TimelineNano.MenuItem[] arrayOfMenuItem2 = new TimelineNano.MenuItem[i11 + i10];
            if (this.menuItem != null)
              System.arraycopy(this.menuItem, 0, arrayOfMenuItem2, 0, i11);
            this.menuItem = arrayOfMenuItem2;
            while (i11 < -1 + this.menuItem.length)
            {
              this.menuItem[i11] = new TimelineNano.MenuItem();
              paramCodedInputByteBufferNano.readMessage(this.menuItem[i11]);
              paramCodedInputByteBufferNano.readTag();
              i11++;
            }
          }
          this.menuItem[i11] = new TimelineNano.MenuItem();
          paramCodedInputByteBufferNano.readMessage(this.menuItem[i11]);
          break;
        case 96:
          int i9 = paramCodedInputByteBufferNano.readInt32();
          if ((i9 == 0) || (i9 == 1) || (i9 == 2));
          for (this.cloudSyncStatus_ = i9; ; this.cloudSyncStatus_ = 0)
          {
            this.bitField0_ = (0x400000 | this.bitField0_);
            break;
          }
        case 104:
          int i8 = paramCodedInputByteBufferNano.readInt32();
          if ((i8 == 0) || (i8 == 1) || (i8 == 2));
          for (this.cloudSyncProtocol_ = i8; ; this.cloudSyncProtocol_ = 0)
          {
            this.bitField0_ = (0x1000000 | this.bitField0_);
            break;
          }
        case 112:
          int i7 = paramCodedInputByteBufferNano.readInt32();
          if ((i7 == 0) || (i7 == 1) || (i7 == 2));
          for (this.sourceType_ = i7; ; this.sourceType_ = 0)
          {
            this.bitField0_ = (0x1000 | this.bitField0_);
            break;
          }
        case 120:
          this.isDeleted_ = paramCodedInputByteBufferNano.readBool();
          this.bitField0_ = (0x400 | this.bitField0_);
          break;
        case 130:
          if (this.notification_ == null)
            this.notification_ = new TimelineNano.NotificationConfig();
          paramCodedInputByteBufferNano.readMessage(this.notification_);
          break;
        case 136:
          this.displayTime_ = paramCodedInputByteBufferNano.readUInt64();
          this.bitField0_ = (0x20 | this.bitField0_);
          break;
        case 146:
          int i5 = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 146);
          if (this.pendingAction == null);
          for (int i6 = 0; ; i6 = this.pendingAction.length)
          {
            TimelineNano.MenuItem[] arrayOfMenuItem1 = new TimelineNano.MenuItem[i6 + i5];
            if (this.pendingAction != null)
              System.arraycopy(this.pendingAction, 0, arrayOfMenuItem1, 0, i6);
            this.pendingAction = arrayOfMenuItem1;
            while (i6 < -1 + this.pendingAction.length)
            {
              this.pendingAction[i6] = new TimelineNano.MenuItem();
              paramCodedInputByteBufferNano.readMessage(this.pendingAction[i6]);
              paramCodedInputByteBufferNano.readTag();
              i6++;
            }
          }
          this.pendingAction[i6] = new TimelineNano.MenuItem();
          paramCodedInputByteBufferNano.readMessage(this.pendingAction[i6]);
          break;
        case 154:
          this.speakableText_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x200000 | this.bitField0_);
          break;
        case 160:
          int i4 = paramCodedInputByteBufferNano.readInt32();
          if ((i4 == 0) || (i4 == 1) || (i4 == 2));
          for (this.smsType_ = i4; ; this.smsType_ = 0)
          {
            this.bitField0_ = (0x4000000 | this.bitField0_);
            break;
          }
        case 168:
          this.isPinned_ = paramCodedInputByteBufferNano.readBool();
          this.bitField0_ = (0x200 | this.bitField0_);
          break;
        case 186:
          this.title_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x20000 | this.bitField0_);
          break;
        case 194:
          this.html_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x80000 | this.bitField0_);
          break;
        case 202:
          this.bundleId_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x2 | this.bitField0_);
          break;
        case 226:
          this.sendToPhoneUrl_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x8000000 | this.bitField0_);
          break;
        case 232:
          this.isBundleCover_ = paramCodedInputByteBufferNano.readBool();
          this.bitField0_ = (0x4 | this.bitField0_);
          break;
        case 242:
          this.sourceItemId_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x2000 | this.bitField0_);
          break;
        case 250:
          this.canonicalUrl_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x8000 | this.bitField0_);
          break;
        case 264:
          int i3 = paramCodedInputByteBufferNano.readInt32();
          if ((i3 == 0) || (i3 == 1) || (i3 == 2));
          for (this.companionSyncStatus_ = i3; ; this.companionSyncStatus_ = 0)
          {
            this.bitField0_ = (0x800000 | this.bitField0_);
            break;
          }
        case 272:
          int i2 = paramCodedInputByteBufferNano.readInt32();
          if ((i2 == 0) || (i2 == 1) || (i2 == 2));
          for (this.companionSyncProtocol_ = i2; ; this.companionSyncProtocol_ = 0)
          {
            this.bitField0_ = (0x2000000 | this.bitField0_);
            break;
          }
        case 280:
          this.pinTime_ = paramCodedInputByteBufferNano.readUInt64();
          this.bitField0_ = (0x40 | this.bitField0_);
          break;
        case 288:
          this.pinScore_ = paramCodedInputByteBufferNano.readInt32();
          this.bitField0_ = (0x100 | this.bitField0_);
          break;
        case 298:
          this.sourceAccountId_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x4000 | this.bitField0_);
          break;
        case 306:
          this.speakableType_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x100000 | this.bitField0_);
          break;
        case 312:
          this.expirationTime_ = paramCodedInputByteBufferNano.readUInt64();
          this.bitField0_ = (0x80 | this.bitField0_);
          break;
        case 320:
          int i1 = paramCodedInputByteBufferNano.readInt32();
          if ((i1 == -1) || (i1 == 0) || (i1 == 1) || (i1 == 2) || (i1 == 3) || (i1 == 4) || (i1 == 5) || (i1 == 6) || (i1 == 7) || (i1 == 8) || (i1 == 9) || (i1 == 10));
          for (this.viewType_ = i1; ; this.viewType_ = -1)
          {
            this.bitField0_ = (0x10000000 | this.bitField0_);
            break;
          }
        case 328:
          int m = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 328);
          int n = this.sharingFeature.length;
          int[] arrayOfInt = new int[n + m];
          System.arraycopy(this.sharingFeature, 0, arrayOfInt, 0, n);
          this.sharingFeature = arrayOfInt;
          while (n < -1 + this.sharingFeature.length)
          {
            this.sharingFeature[n] = paramCodedInputByteBufferNano.readInt32();
            paramCodedInputByteBufferNano.readTag();
            n++;
          }
          this.sharingFeature[n] = paramCodedInputByteBufferNano.readInt32();
          break;
        case 338:
          if (this.progressStatus_ == null)
            this.progressStatus_ = new ProgressStatus();
          paramCodedInputByteBufferNano.readMessage(this.progressStatus_);
          break;
        case 346:
        }
        int j = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 346);
        if (this.linkSpec == null);
        for (int k = 0; ; k = this.linkSpec.length)
        {
          TimelineNano.LinkSpec[] arrayOfLinkSpec = new TimelineNano.LinkSpec[k + j];
          if (this.linkSpec != null)
            System.arraycopy(this.linkSpec, 0, arrayOfLinkSpec, 0, k);
          this.linkSpec = arrayOfLinkSpec;
          while (k < -1 + this.linkSpec.length)
          {
            this.linkSpec[k] = new TimelineNano.LinkSpec();
            paramCodedInputByteBufferNano.readMessage(this.linkSpec[k]);
            paramCodedInputByteBufferNano.readTag();
            k++;
          }
        }
        this.linkSpec[k] = new TimelineNano.LinkSpec();
        paramCodedInputByteBufferNano.readMessage(this.linkSpec[k]);
      }
    }

    public TimelineItem setBundleId(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.bundleId_ = paramString;
      this.bitField0_ = (0x2 | this.bitField0_);
      return this;
    }

    public TimelineItem setCanonicalUrl(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.canonicalUrl_ = paramString;
      this.bitField0_ = (0x8000 | this.bitField0_);
      return this;
    }

    public TimelineItem setCloudSyncProtocol(int paramInt)
    {
      this.cloudSyncProtocol_ = paramInt;
      this.bitField0_ = (0x1000000 | this.bitField0_);
      return this;
    }

    public TimelineItem setCloudSyncStatus(int paramInt)
    {
      this.cloudSyncStatus_ = paramInt;
      this.bitField0_ = (0x400000 | this.bitField0_);
      return this;
    }

    public TimelineItem setCompanionSyncProtocol(int paramInt)
    {
      this.companionSyncProtocol_ = paramInt;
      this.bitField0_ = (0x2000000 | this.bitField0_);
      return this;
    }

    public TimelineItem setCompanionSyncStatus(int paramInt)
    {
      this.companionSyncStatus_ = paramInt;
      this.bitField0_ = (0x800000 | this.bitField0_);
      return this;
    }

    public TimelineItem setCreationTime(long paramLong)
    {
      this.creationTime_ = paramLong;
      this.bitField0_ = (0x8 | this.bitField0_);
      return this;
    }

    public TimelineItem setCreator(TimelineNano.Entity paramEntity)
    {
      if (paramEntity == null)
        throw new NullPointerException();
      this.creator_ = paramEntity;
      return this;
    }

    public TimelineItem setDisplayTime(long paramLong)
    {
      this.displayTime_ = paramLong;
      this.bitField0_ = (0x20 | this.bitField0_);
      return this;
    }

    public TimelineItem setExpirationTime(long paramLong)
    {
      this.expirationTime_ = paramLong;
      this.bitField0_ = (0x80 | this.bitField0_);
      return this;
    }

    public TimelineItem setHtml(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.html_ = paramString;
      this.bitField0_ = (0x80000 | this.bitField0_);
      return this;
    }

    public TimelineItem setId(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.id_ = paramString;
      this.bitField0_ = (0x1 | this.bitField0_);
      return this;
    }

    public TimelineItem setInReplyTo(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.inReplyTo_ = paramString;
      this.bitField0_ = (0x10000 | this.bitField0_);
      return this;
    }

    public TimelineItem setIsBundleCover(boolean paramBoolean)
    {
      this.isBundleCover_ = paramBoolean;
      this.bitField0_ = (0x4 | this.bitField0_);
      return this;
    }

    public TimelineItem setIsDeleted(boolean paramBoolean)
    {
      this.isDeleted_ = paramBoolean;
      this.bitField0_ = (0x400 | this.bitField0_);
      return this;
    }

    public TimelineItem setIsPinned(boolean paramBoolean)
    {
      this.isPinned_ = paramBoolean;
      this.bitField0_ = (0x200 | this.bitField0_);
      return this;
    }

    public TimelineItem setLocation(TimelineNano.Location paramLocation)
    {
      if (paramLocation == null)
        throw new NullPointerException();
      this.location_ = paramLocation;
      return this;
    }

    public TimelineItem setModifiedTime(long paramLong)
    {
      this.modifiedTime_ = paramLong;
      this.bitField0_ = (0x10 | this.bitField0_);
      return this;
    }

    public TimelineItem setNotification(TimelineNano.NotificationConfig paramNotificationConfig)
    {
      if (paramNotificationConfig == null)
        throw new NullPointerException();
      this.notification_ = paramNotificationConfig;
      return this;
    }

    public TimelineItem setPinScore(int paramInt)
    {
      this.pinScore_ = paramInt;
      this.bitField0_ = (0x100 | this.bitField0_);
      return this;
    }

    public TimelineItem setPinTime(long paramLong)
    {
      this.pinTime_ = paramLong;
      this.bitField0_ = (0x40 | this.bitField0_);
      return this;
    }

    public TimelineItem setProgressStatus(ProgressStatus paramProgressStatus)
    {
      if (paramProgressStatus == null)
        throw new NullPointerException();
      this.progressStatus_ = paramProgressStatus;
      return this;
    }

    public TimelineItem setSendToPhoneUrl(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.sendToPhoneUrl_ = paramString;
      this.bitField0_ = (0x8000000 | this.bitField0_);
      return this;
    }

    public TimelineItem setSmsType(int paramInt)
    {
      this.smsType_ = paramInt;
      this.bitField0_ = (0x4000000 | this.bitField0_);
      return this;
    }

    public TimelineItem setSource(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.source_ = paramString;
      this.bitField0_ = (0x800 | this.bitField0_);
      return this;
    }

    public TimelineItem setSourceAccountId(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.sourceAccountId_ = paramString;
      this.bitField0_ = (0x4000 | this.bitField0_);
      return this;
    }

    public TimelineItem setSourceItemId(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.sourceItemId_ = paramString;
      this.bitField0_ = (0x2000 | this.bitField0_);
      return this;
    }

    public TimelineItem setSourceType(int paramInt)
    {
      this.sourceType_ = paramInt;
      this.bitField0_ = (0x1000 | this.bitField0_);
      return this;
    }

    public TimelineItem setSpeakableText(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.speakableText_ = paramString;
      this.bitField0_ = (0x200000 | this.bitField0_);
      return this;
    }

    public TimelineItem setSpeakableType(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.speakableType_ = paramString;
      this.bitField0_ = (0x100000 | this.bitField0_);
      return this;
    }

    public TimelineItem setText(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.text_ = paramString;
      this.bitField0_ = (0x40000 | this.bitField0_);
      return this;
    }

    public TimelineItem setTitle(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.title_ = paramString;
      this.bitField0_ = (0x20000 | this.bitField0_);
      return this;
    }

    public TimelineItem setViewType(int paramInt)
    {
      this.viewType_ = paramInt;
      this.bitField0_ = (0x10000000 | this.bitField0_);
      return this;
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if ((0x1 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(1, this.id_);
      if ((0x8 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeUInt64(2, this.creationTime_);
      if ((0x10 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeUInt64(3, this.modifiedTime_);
      if ((0x800 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(4, this.source_);
      if (this.creator_ != null)
        paramCodedOutputByteBufferNano.writeMessage(5, this.creator_);
      if (this.shareTarget != null)
      {
        TimelineNano.Entity[] arrayOfEntity = this.shareTarget;
        int i6 = arrayOfEntity.length;
        for (int i7 = 0; i7 < i6; i7++)
          paramCodedOutputByteBufferNano.writeMessage(6, arrayOfEntity[i7]);
      }
      if ((0x10000 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(7, this.inReplyTo_);
      if ((0x40000 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(8, this.text_);
      if (this.attachment != null)
      {
        TimelineNano.Attachment[] arrayOfAttachment = this.attachment;
        int i4 = arrayOfAttachment.length;
        for (int i5 = 0; i5 < i4; i5++)
          paramCodedOutputByteBufferNano.writeMessage(9, arrayOfAttachment[i5]);
      }
      if (this.location_ != null)
        paramCodedOutputByteBufferNano.writeMessage(10, this.location_);
      if (this.menuItem != null)
      {
        TimelineNano.MenuItem[] arrayOfMenuItem2 = this.menuItem;
        int i2 = arrayOfMenuItem2.length;
        for (int i3 = 0; i3 < i2; i3++)
          paramCodedOutputByteBufferNano.writeMessage(11, arrayOfMenuItem2[i3]);
      }
      if ((0x400000 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt32(12, this.cloudSyncStatus_);
      if ((0x1000000 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt32(13, this.cloudSyncProtocol_);
      if ((0x1000 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt32(14, this.sourceType_);
      if ((0x400 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeBool(15, this.isDeleted_);
      if (this.notification_ != null)
        paramCodedOutputByteBufferNano.writeMessage(16, this.notification_);
      if ((0x20 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeUInt64(17, this.displayTime_);
      if (this.pendingAction != null)
      {
        TimelineNano.MenuItem[] arrayOfMenuItem1 = this.pendingAction;
        int n = arrayOfMenuItem1.length;
        for (int i1 = 0; i1 < n; i1++)
          paramCodedOutputByteBufferNano.writeMessage(18, arrayOfMenuItem1[i1]);
      }
      if ((0x200000 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(19, this.speakableText_);
      if ((0x4000000 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt32(20, this.smsType_);
      if ((0x200 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeBool(21, this.isPinned_);
      if ((0x20000 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(23, this.title_);
      if ((0x80000 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(24, this.html_);
      if ((0x2 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(25, this.bundleId_);
      if ((0x8000000 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(28, this.sendToPhoneUrl_);
      if ((0x4 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeBool(29, this.isBundleCover_);
      if ((0x2000 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(30, this.sourceItemId_);
      if ((0x8000 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(31, this.canonicalUrl_);
      if ((0x800000 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt32(33, this.companionSyncStatus_);
      if ((0x2000000 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt32(34, this.companionSyncProtocol_);
      if ((0x40 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeUInt64(35, this.pinTime_);
      if ((0x100 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt32(36, this.pinScore_);
      if ((0x4000 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(37, this.sourceAccountId_);
      if ((0x100000 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeString(38, this.speakableType_);
      if ((0x80 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeUInt64(39, this.expirationTime_);
      if ((0x10000000 & this.bitField0_) != 0)
        paramCodedOutputByteBufferNano.writeInt32(40, this.viewType_);
      if ((this.sharingFeature != null) && (this.sharingFeature.length > 0))
      {
        int[] arrayOfInt = this.sharingFeature;
        int k = arrayOfInt.length;
        for (int m = 0; m < k; m++)
          paramCodedOutputByteBufferNano.writeInt32(41, arrayOfInt[m]);
      }
      if (this.progressStatus_ != null)
        paramCodedOutputByteBufferNano.writeMessage(42, this.progressStatus_);
      if (this.linkSpec != null)
      {
        TimelineNano.LinkSpec[] arrayOfLinkSpec = this.linkSpec;
        int i = arrayOfLinkSpec.length;
        for (int j = 0; j < i; j++)
          paramCodedOutputByteBufferNano.writeMessage(43, arrayOfLinkSpec[j]);
      }
    }

    public static final class ProgressStatus extends MessageNano
    {
      public static final ProgressStatus[] EMPTY_ARRAY = new ProgressStatus[0];
      private int bitField0_;
      private String label_ = "";

      public final ProgressStatus clear()
      {
        this.bitField0_ = 0;
        this.label_ = "";
        this.cachedSize = -1;
        return this;
      }

      public ProgressStatus clearLabel()
      {
        this.label_ = "";
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        return this;
      }

      public final boolean equals(Object paramObject)
      {
        if (paramObject == this);
        ProgressStatus localProgressStatus;
        do
        {
          return true;
          if (!(paramObject instanceof ProgressStatus))
            return false;
          localProgressStatus = (ProgressStatus)paramObject;
          if (this.label_ != null)
            break;
        }
        while (localProgressStatus.label_ == null);
        return false;
        return this.label_.equals(localProgressStatus.label_);
      }

      public String getLabel()
      {
        return this.label_;
      }

      public int getSerializedSize()
      {
        int i = 0x1 & this.bitField0_;
        int j = 0;
        if (i != 0)
          j = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.label_);
        this.cachedSize = j;
        return j;
      }

      public boolean hasLabel()
      {
        return (0x1 & this.bitField0_) != 0;
      }

      public int hashCode()
      {
        if (this.label_ == null);
        for (int i = 0; ; i = this.label_.hashCode())
          return i + 527;
      }

      public ProgressStatus mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.label_ = paramCodedInputByteBufferNano.readString();
          this.bitField0_ = (0x1 | this.bitField0_);
        }
      }

      public ProgressStatus parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
        throws IOException
      {
        return new ProgressStatus().mergeFrom(paramCodedInputByteBufferNano);
      }

      public ProgressStatus parseFrom(byte[] paramArrayOfByte)
        throws InvalidProtocolBufferNanoException
      {
        return (ProgressStatus)MessageNano.mergeFrom(new ProgressStatus(), paramArrayOfByte);
      }

      public ProgressStatus setLabel(String paramString)
      {
        if (paramString == null)
          throw new NullPointerException();
        this.label_ = paramString;
        this.bitField0_ = (0x1 | this.bitField0_);
        return this;
      }

      public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
        throws IOException
      {
        if ((0x1 & this.bitField0_) != 0)
          paramCodedOutputByteBufferNano.writeString(1, this.label_);
      }
    }

    public static abstract interface SmsType
    {
      public static final int COMPANION_DECIDES = 2;
      public static final int GOOGLE_VOICE = 1;
      public static final int NATIVE;
    }

    public static abstract interface SourceType
    {
      public static final int COMPANIONWARE = 2;
      public static final int GLASSWARE = 0;
      public static final int GLASS_DEVICE = 1;
    }

    public static abstract interface SyncProtocol
    {
      public static final int ALWAYS = 0;
      public static final int NEVER = 2;
      public static final int OPPORTUNISTIC = 1;
    }

    public static abstract interface SyncStatus
    {
      public static final int NOT_SYNCED = 0;
      public static final int SYNCED = 1;
      public static final int SYNC_FAILED = 2;
    }

    public static abstract interface ViewType
    {
      public static final int CALL = 6;
      public static final int CONNECTIVITY_STATUS = 10;
      public static final int HANGOUT = 7;
      public static final int HTML = 4;
      public static final int IMAGE = 2;
      public static final int MESSAGE = 1;
      public static final int MUSIC = 9;
      public static final int SEARCH = 5;
      public static final int SOUND_SEARCH = 8;
      public static final int TEXT = 0;
      public static final int UNSET = -1;
      public static final int VIDEO = 3;
    }
  }

  public static final class UserAction extends MessageNano
  {
    public static final UserAction[] EMPTY_ARRAY = new UserAction[0];
    private int bitField0_;
    private String payload_ = "";
    private int type_ = 1;

    public static UserAction parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new UserAction().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static UserAction parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (UserAction)MessageNano.mergeFrom(new UserAction(), paramArrayOfByte);
    }

    public final UserAction clear()
    {
      this.bitField0_ = 0;
      this.type_ = 1;
      this.payload_ = "";
      this.cachedSize = -1;
      return this;
    }

    public UserAction clearPayload()
    {
      this.payload_ = "";
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      return this;
    }

    public UserAction clearType()
    {
      this.type_ = 1;
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      UserAction localUserAction;
      do
      {
        return true;
        if (!(paramObject instanceof UserAction))
          return false;
        localUserAction = (UserAction)paramObject;
        if (this.type_ != localUserAction.type_)
          break;
        if (this.payload_ != null)
          break label48;
      }
      while (localUserAction.payload_ == null);
      label48: 
      while (!this.payload_.equals(localUserAction.payload_))
        return false;
      return true;
    }

    public String getPayload()
    {
      return this.payload_;
    }

    public int getSerializedSize()
    {
      int i = 0x1 & this.bitField0_;
      int j = 0;
      if (i != 0)
        j = 0 + CodedOutputByteBufferNano.computeInt32Size(1, this.type_);
      if ((0x2 & this.bitField0_) != 0)
        j += CodedOutputByteBufferNano.computeStringSize(2, this.payload_);
      this.cachedSize = j;
      return j;
    }

    public int getType()
    {
      return this.type_;
    }

    public boolean hasPayload()
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
      if (this.payload_ == null);
      for (int j = 0; ; j = this.payload_.hashCode())
        return i + j;
    }

    public UserAction mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          if ((j == 1) || (j == 2) || (j == 3) || (j == 4) || (j == 5) || (j == 6) || (j == 7) || (j == 8) || (j == 9) || (j == 10));
          for (this.type_ = j; ; this.type_ = 1)
          {
            this.bitField0_ = (0x1 | this.bitField0_);
            break;
          }
        case 18:
        }
        this.payload_ = paramCodedInputByteBufferNano.readString();
        this.bitField0_ = (0x2 | this.bitField0_);
      }
    }

    public UserAction setPayload(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.payload_ = paramString;
      this.bitField0_ = (0x2 | this.bitField0_);
      return this;
    }

    public UserAction setType(int paramInt)
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
        paramCodedOutputByteBufferNano.writeString(2, this.payload_);
    }

    public static abstract interface Type
    {
      public static final int CUSTOM = 5;
      public static final int DELETE = 6;
      public static final int GET_MEDIA_INPUT = 10;
      public static final int LAUNCH = 7;
      public static final int NEW_MESSAGE = 1;
      public static final int PIN = 8;
      public static final int REPLY = 3;
      public static final int REPLY_ALL = 4;
      public static final int SHARE = 2;
      public static final int UNPIN = 9;
    }
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.TimelineNano
 * JD-Core Version:    0.6.2
 */