package com.google.common.logging;

import com.google.protobuf.nano.CodedInputByteBufferNano;
import com.google.protobuf.nano.CodedOutputByteBufferNano;
import com.google.protobuf.nano.InvalidProtocolBufferNanoException;
import com.google.protobuf.nano.MessageNano;
import com.google.protobuf.nano.WireFormatNano;
import java.io.IOException;
import java.util.Arrays;

public abstract interface GlassExtensionsNano
{
  public static final class GlassExtensionsProto extends MessageNano
  {
    public static final GlassExtensionsProto[] EMPTY_ARRAY = new GlassExtensionsProto[0];
    public int hardwareVersion = 7;
    public String sessionId = "";
    public String softwareVersion = "";
    public GlassExtensionsNano.GlassUserEventProto[] userEvent = GlassExtensionsNano.GlassUserEventProto.EMPTY_ARRAY;

    public static GlassExtensionsProto parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new GlassExtensionsProto().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static GlassExtensionsProto parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (GlassExtensionsProto)MessageNano.mergeFrom(new GlassExtensionsProto(), paramArrayOfByte);
    }

    public final GlassExtensionsProto clear()
    {
      this.sessionId = "";
      this.softwareVersion = "";
      this.userEvent = GlassExtensionsNano.GlassUserEventProto.EMPTY_ARRAY;
      this.hardwareVersion = 7;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      label93: label108: 
      while (true)
      {
        return true;
        if (!(paramObject instanceof GlassExtensionsProto))
          return false;
        GlassExtensionsProto localGlassExtensionsProto = (GlassExtensionsProto)paramObject;
        if (this.sessionId == null)
          if (localGlassExtensionsProto.sessionId == null)
          {
            if (this.softwareVersion != null)
              break label93;
            if (localGlassExtensionsProto.softwareVersion != null);
          }
        while (true)
        {
          if ((Arrays.equals(this.userEvent, localGlassExtensionsProto.userEvent)) && (this.hardwareVersion == localGlassExtensionsProto.hardwareVersion))
            break label108;
          do
          {
            do
              return false;
            while (!this.sessionId.equals(localGlassExtensionsProto.sessionId));
            break;
          }
          while (!this.softwareVersion.equals(localGlassExtensionsProto.softwareVersion));
        }
      }
    }

    public int getSerializedSize()
    {
      boolean bool = this.sessionId.equals("");
      int i = 0;
      if (!bool)
        i = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.sessionId);
      if (!this.softwareVersion.equals(""))
        i += CodedOutputByteBufferNano.computeStringSize(2, this.softwareVersion);
      if (this.userEvent != null)
      {
        GlassExtensionsNano.GlassUserEventProto[] arrayOfGlassUserEventProto = this.userEvent;
        int j = arrayOfGlassUserEventProto.length;
        for (int k = 0; k < j; k++)
          i += CodedOutputByteBufferNano.computeMessageSize(3, arrayOfGlassUserEventProto[k]);
      }
      if (this.hardwareVersion != 7)
        i += CodedOutputByteBufferNano.computeInt32Size(4, this.hardwareVersion);
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      int i;
      int j;
      if (this.sessionId == null)
      {
        i = 0;
        j = 31 * (i + 527);
        if (this.softwareVersion != null)
          break label68;
      }
      int m;
      label68: for (int k = 0; ; k = this.softwareVersion.hashCode())
      {
        m = j + k;
        if (this.userEvent != null)
          break label79;
        m *= 31;
        return m * 31 + this.hardwareVersion;
        i = this.sessionId.hashCode();
        break;
      }
      label79: int n = 0;
      label82: int i1;
      if (n < this.userEvent.length)
      {
        i1 = m * 31;
        if (this.userEvent[n] != null)
          break label125;
      }
      label125: for (int i2 = 0; ; i2 = this.userEvent[n].hashCode())
      {
        m = i1 + i2;
        n++;
        break label82;
        break;
      }
    }

    public GlassExtensionsProto mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.sessionId = paramCodedInputByteBufferNano.readString();
          break;
        case 18:
          this.softwareVersion = paramCodedInputByteBufferNano.readString();
          break;
        case 26:
          int k = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 26);
          if (this.userEvent == null);
          for (int m = 0; ; m = this.userEvent.length)
          {
            GlassExtensionsNano.GlassUserEventProto[] arrayOfGlassUserEventProto = new GlassExtensionsNano.GlassUserEventProto[m + k];
            if (this.userEvent != null)
              System.arraycopy(this.userEvent, 0, arrayOfGlassUserEventProto, 0, m);
            this.userEvent = arrayOfGlassUserEventProto;
            while (m < -1 + this.userEvent.length)
            {
              this.userEvent[m] = new GlassExtensionsNano.GlassUserEventProto();
              paramCodedInputByteBufferNano.readMessage(this.userEvent[m]);
              paramCodedInputByteBufferNano.readTag();
              m++;
            }
          }
          this.userEvent[m] = new GlassExtensionsNano.GlassUserEventProto();
          paramCodedInputByteBufferNano.readMessage(this.userEvent[m]);
          break;
        case 32:
        }
        int j = paramCodedInputByteBufferNano.readInt32();
        if ((j == 7) || (j == 1) || (j == 2) || (j == 3) || (j == 4))
          this.hardwareVersion = j;
        else
          this.hardwareVersion = 7;
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (!this.sessionId.equals(""))
        paramCodedOutputByteBufferNano.writeString(1, this.sessionId);
      if (!this.softwareVersion.equals(""))
        paramCodedOutputByteBufferNano.writeString(2, this.softwareVersion);
      if (this.userEvent != null)
      {
        GlassExtensionsNano.GlassUserEventProto[] arrayOfGlassUserEventProto = this.userEvent;
        int i = arrayOfGlassUserEventProto.length;
        for (int j = 0; j < i; j++)
          paramCodedOutputByteBufferNano.writeMessage(3, arrayOfGlassUserEventProto[j]);
      }
      if (this.hardwareVersion != 7)
        paramCodedOutputByteBufferNano.writeInt32(4, this.hardwareVersion);
    }
  }

  public static final class GlassUserEventFrequencyStat extends MessageNano
  {
    public static final GlassUserEventFrequencyStat[] EMPTY_ARRAY = new GlassUserEventFrequencyStat[0];
    public long durationMs = 0L;
    public long frequencyHz = 0L;

    public static GlassUserEventFrequencyStat parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new GlassUserEventFrequencyStat().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static GlassUserEventFrequencyStat parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (GlassUserEventFrequencyStat)MessageNano.mergeFrom(new GlassUserEventFrequencyStat(), paramArrayOfByte);
    }

    public final GlassUserEventFrequencyStat clear()
    {
      this.frequencyHz = 0L;
      this.durationMs = 0L;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      GlassUserEventFrequencyStat localGlassUserEventFrequencyStat;
      do
      {
        return true;
        if (!(paramObject instanceof GlassUserEventFrequencyStat))
          return false;
        localGlassUserEventFrequencyStat = (GlassUserEventFrequencyStat)paramObject;
      }
      while ((this.frequencyHz == localGlassUserEventFrequencyStat.frequencyHz) && (this.durationMs == localGlassUserEventFrequencyStat.durationMs));
      return false;
    }

    public int getSerializedSize()
    {
      int i = 0 + CodedOutputByteBufferNano.computeInt64Size(1, this.frequencyHz) + CodedOutputByteBufferNano.computeInt64Size(2, this.durationMs);
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      return 31 * (527 + (int)(this.frequencyHz ^ this.frequencyHz >>> 32)) + (int)(this.durationMs ^ this.durationMs >>> 32);
    }

    public GlassUserEventFrequencyStat mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.frequencyHz = paramCodedInputByteBufferNano.readInt64();
          break;
        case 16:
        }
        this.durationMs = paramCodedInputByteBufferNano.readInt64();
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      paramCodedOutputByteBufferNano.writeInt64(1, this.frequencyHz);
      paramCodedOutputByteBufferNano.writeInt64(2, this.durationMs);
    }
  }

  public static final class GlassUserEventPerformanceStats extends MessageNano
  {
    public static final GlassUserEventPerformanceStats[] EMPTY_ARRAY = new GlassUserEventPerformanceStats[0];
    public int batteryChargeWhenFullUah = 0;
    public int batteryStateOfChargeUah = 0;
    public int batteryTemperatureMilliCentigrade = 0;
    public int boardTemperatureMilliCentigrade = 0;
    public int frequencyScalingGovernor = 0;
    public GlassExtensionsNano.GlassUserEventFrequencyStat[] frequencyStat = GlassExtensionsNano.GlassUserEventFrequencyStat.EMPTY_ARRAY;
    public int reportedSoc = 0;
    public long totalBytesSent = 0L;
    public long totalKernelMs = 0L;

    public static GlassUserEventPerformanceStats parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new GlassUserEventPerformanceStats().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static GlassUserEventPerformanceStats parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (GlassUserEventPerformanceStats)MessageNano.mergeFrom(new GlassUserEventPerformanceStats(), paramArrayOfByte);
    }

    public final GlassUserEventPerformanceStats clear()
    {
      this.frequencyStat = GlassExtensionsNano.GlassUserEventFrequencyStat.EMPTY_ARRAY;
      this.totalKernelMs = 0L;
      this.boardTemperatureMilliCentigrade = 0;
      this.batteryStateOfChargeUah = 0;
      this.batteryChargeWhenFullUah = 0;
      this.reportedSoc = 0;
      this.batteryTemperatureMilliCentigrade = 0;
      this.totalBytesSent = 0L;
      this.frequencyScalingGovernor = 0;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      GlassUserEventPerformanceStats localGlassUserEventPerformanceStats;
      do
      {
        return true;
        if (!(paramObject instanceof GlassUserEventPerformanceStats))
          return false;
        localGlassUserEventPerformanceStats = (GlassUserEventPerformanceStats)paramObject;
      }
      while ((Arrays.equals(this.frequencyStat, localGlassUserEventPerformanceStats.frequencyStat)) && (this.totalKernelMs == localGlassUserEventPerformanceStats.totalKernelMs) && (this.boardTemperatureMilliCentigrade == localGlassUserEventPerformanceStats.boardTemperatureMilliCentigrade) && (this.batteryStateOfChargeUah == localGlassUserEventPerformanceStats.batteryStateOfChargeUah) && (this.batteryChargeWhenFullUah == localGlassUserEventPerformanceStats.batteryChargeWhenFullUah) && (this.reportedSoc == localGlassUserEventPerformanceStats.reportedSoc) && (this.batteryTemperatureMilliCentigrade == localGlassUserEventPerformanceStats.batteryTemperatureMilliCentigrade) && (this.totalBytesSent == localGlassUserEventPerformanceStats.totalBytesSent) && (this.frequencyScalingGovernor == localGlassUserEventPerformanceStats.frequencyScalingGovernor));
      return false;
    }

    public int getSerializedSize()
    {
      GlassExtensionsNano.GlassUserEventFrequencyStat[] arrayOfGlassUserEventFrequencyStat1 = this.frequencyStat;
      int i = 0;
      if (arrayOfGlassUserEventFrequencyStat1 != null)
      {
        GlassExtensionsNano.GlassUserEventFrequencyStat[] arrayOfGlassUserEventFrequencyStat2 = this.frequencyStat;
        int j = arrayOfGlassUserEventFrequencyStat2.length;
        for (int k = 0; k < j; k++)
          i += CodedOutputByteBufferNano.computeMessageSize(1, arrayOfGlassUserEventFrequencyStat2[k]);
      }
      if (this.totalKernelMs != 0L)
        i += CodedOutputByteBufferNano.computeInt64Size(2, this.totalKernelMs);
      if (this.boardTemperatureMilliCentigrade != 0)
        i += CodedOutputByteBufferNano.computeInt32Size(3, this.boardTemperatureMilliCentigrade);
      if (this.batteryStateOfChargeUah != 0)
        i += CodedOutputByteBufferNano.computeInt32Size(4, this.batteryStateOfChargeUah);
      if (this.batteryChargeWhenFullUah != 0)
        i += CodedOutputByteBufferNano.computeInt32Size(5, this.batteryChargeWhenFullUah);
      if (this.batteryTemperatureMilliCentigrade != 0)
        i += CodedOutputByteBufferNano.computeInt32Size(6, this.batteryTemperatureMilliCentigrade);
      if (this.totalBytesSent != 0L)
        i += CodedOutputByteBufferNano.computeInt64Size(7, this.totalBytesSent);
      if (this.reportedSoc != 0)
        i += CodedOutputByteBufferNano.computeInt32Size(8, this.reportedSoc);
      if (this.frequencyScalingGovernor != 0)
        i += CodedOutputByteBufferNano.computeInt32Size(9, this.frequencyScalingGovernor);
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      int i = 17;
      if (this.frequencyStat == null)
      {
        i *= 31;
        return 31 * (31 * (31 * (31 * (31 * (31 * (31 * (i * 31 + (int)(this.totalKernelMs ^ this.totalKernelMs >>> 32)) + this.boardTemperatureMilliCentigrade) + this.batteryStateOfChargeUah) + this.batteryChargeWhenFullUah) + this.reportedSoc) + this.batteryTemperatureMilliCentigrade) + (int)(this.totalBytesSent ^ this.totalBytesSent >>> 32)) + this.frequencyScalingGovernor;
      }
      int j = 0;
      label101: int k;
      if (j < this.frequencyStat.length)
      {
        k = i * 31;
        if (this.frequencyStat[j] != null)
          break label138;
      }
      label138: for (int m = 0; ; m = this.frequencyStat[j].hashCode())
      {
        i = k + m;
        j++;
        break label101;
        break;
      }
    }

    public GlassUserEventPerformanceStats mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          if (this.frequencyStat == null);
          for (int k = 0; ; k = this.frequencyStat.length)
          {
            GlassExtensionsNano.GlassUserEventFrequencyStat[] arrayOfGlassUserEventFrequencyStat = new GlassExtensionsNano.GlassUserEventFrequencyStat[k + j];
            if (this.frequencyStat != null)
              System.arraycopy(this.frequencyStat, 0, arrayOfGlassUserEventFrequencyStat, 0, k);
            this.frequencyStat = arrayOfGlassUserEventFrequencyStat;
            while (k < -1 + this.frequencyStat.length)
            {
              this.frequencyStat[k] = new GlassExtensionsNano.GlassUserEventFrequencyStat();
              paramCodedInputByteBufferNano.readMessage(this.frequencyStat[k]);
              paramCodedInputByteBufferNano.readTag();
              k++;
            }
          }
          this.frequencyStat[k] = new GlassExtensionsNano.GlassUserEventFrequencyStat();
          paramCodedInputByteBufferNano.readMessage(this.frequencyStat[k]);
          break;
        case 16:
          this.totalKernelMs = paramCodedInputByteBufferNano.readInt64();
          break;
        case 24:
          this.boardTemperatureMilliCentigrade = paramCodedInputByteBufferNano.readInt32();
          break;
        case 32:
          this.batteryStateOfChargeUah = paramCodedInputByteBufferNano.readInt32();
          break;
        case 40:
          this.batteryChargeWhenFullUah = paramCodedInputByteBufferNano.readInt32();
          break;
        case 48:
          this.batteryTemperatureMilliCentigrade = paramCodedInputByteBufferNano.readInt32();
          break;
        case 56:
          this.totalBytesSent = paramCodedInputByteBufferNano.readInt64();
          break;
        case 64:
          this.reportedSoc = paramCodedInputByteBufferNano.readInt32();
          break;
        case 72:
        }
        this.frequencyScalingGovernor = paramCodedInputByteBufferNano.readInt32();
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.frequencyStat != null)
      {
        GlassExtensionsNano.GlassUserEventFrequencyStat[] arrayOfGlassUserEventFrequencyStat = this.frequencyStat;
        int i = arrayOfGlassUserEventFrequencyStat.length;
        for (int j = 0; j < i; j++)
          paramCodedOutputByteBufferNano.writeMessage(1, arrayOfGlassUserEventFrequencyStat[j]);
      }
      if (this.totalKernelMs != 0L)
        paramCodedOutputByteBufferNano.writeInt64(2, this.totalKernelMs);
      if (this.boardTemperatureMilliCentigrade != 0)
        paramCodedOutputByteBufferNano.writeInt32(3, this.boardTemperatureMilliCentigrade);
      if (this.batteryStateOfChargeUah != 0)
        paramCodedOutputByteBufferNano.writeInt32(4, this.batteryStateOfChargeUah);
      if (this.batteryChargeWhenFullUah != 0)
        paramCodedOutputByteBufferNano.writeInt32(5, this.batteryChargeWhenFullUah);
      if (this.batteryTemperatureMilliCentigrade != 0)
        paramCodedOutputByteBufferNano.writeInt32(6, this.batteryTemperatureMilliCentigrade);
      if (this.totalBytesSent != 0L)
        paramCodedOutputByteBufferNano.writeInt64(7, this.totalBytesSent);
      if (this.reportedSoc != 0)
        paramCodedOutputByteBufferNano.writeInt32(8, this.reportedSoc);
      if (this.frequencyScalingGovernor != 0)
        paramCodedOutputByteBufferNano.writeInt32(9, this.frequencyScalingGovernor);
    }
  }

  public static final class GlassUserEventProto extends MessageNano
  {
    public static final GlassUserEventProto[] EMPTY_ARRAY = new GlassUserEventProto[0];
    public String eventData = "";
    public long eventSerial = 0L;
    public long eventTimeMs = 0L;
    public String eventType = "";
    public GlassExtensionsNano.GlassUserEventPerformanceStats performanceStats = null;

    public static GlassUserEventProto parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new GlassUserEventProto().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static GlassUserEventProto parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (GlassUserEventProto)MessageNano.mergeFrom(new GlassUserEventProto(), paramArrayOfByte);
    }

    public final GlassUserEventProto clear()
    {
      this.eventTimeMs = 0L;
      this.eventSerial = 0L;
      this.eventType = "";
      this.eventData = "";
      this.performanceStats = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      GlassUserEventProto localGlassUserEventProto;
      label73: 
      do
      {
        return true;
        if (!(paramObject instanceof GlassUserEventProto))
          return false;
        localGlassUserEventProto = (GlassUserEventProto)paramObject;
        if ((this.eventTimeMs != localGlassUserEventProto.eventTimeMs) || (this.eventSerial != localGlassUserEventProto.eventSerial))
          break;
        if (this.eventType != null)
          break label89;
        if (localGlassUserEventProto.eventType != null)
          break;
        if (this.eventData != null)
          break label106;
        if (localGlassUserEventProto.eventData != null)
          break;
        if (this.performanceStats != null)
          break label123;
      }
      while (localGlassUserEventProto.performanceStats == null);
      label89: label106: label123: 
      while (!this.performanceStats.equals(localGlassUserEventProto.performanceStats))
      {
        do
        {
          do
            return false;
          while (!this.eventType.equals(localGlassUserEventProto.eventType));
          break;
        }
        while (!this.eventData.equals(localGlassUserEventProto.eventData));
        break label73;
      }
      return true;
    }

    public int getSerializedSize()
    {
      boolean bool = this.eventTimeMs < 0L;
      int i = 0;
      if (bool)
        i = 0 + CodedOutputByteBufferNano.computeInt64Size(1, this.eventTimeMs);
      if (!this.eventType.equals(""))
        i += CodedOutputByteBufferNano.computeStringSize(2, this.eventType);
      if (!this.eventData.equals(""))
        i += CodedOutputByteBufferNano.computeStringSize(3, this.eventData);
      if (this.performanceStats != null)
        i += CodedOutputByteBufferNano.computeMessageSize(4, this.performanceStats);
      if (this.eventSerial != 0L)
        i += CodedOutputByteBufferNano.computeInt64Size(5, this.eventSerial);
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      int i = 31 * (31 * (527 + (int)(this.eventTimeMs ^ this.eventTimeMs >>> 32)) + (int)(this.eventSerial ^ this.eventSerial >>> 32));
      int j;
      int m;
      label64: int n;
      int i1;
      if (this.eventType == null)
      {
        j = 0;
        int k = 31 * (i + j);
        if (this.eventData != null)
          break label104;
        m = 0;
        n = 31 * (k + m);
        GlassExtensionsNano.GlassUserEventPerformanceStats localGlassUserEventPerformanceStats = this.performanceStats;
        i1 = 0;
        if (localGlassUserEventPerformanceStats != null)
          break label116;
      }
      while (true)
      {
        return n + i1;
        j = this.eventType.hashCode();
        break;
        label104: m = this.eventData.hashCode();
        break label64;
        label116: i1 = this.performanceStats.hashCode();
      }
    }

    public GlassUserEventProto mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.eventTimeMs = paramCodedInputByteBufferNano.readInt64();
          break;
        case 18:
          this.eventType = paramCodedInputByteBufferNano.readString();
          break;
        case 26:
          this.eventData = paramCodedInputByteBufferNano.readString();
          break;
        case 34:
          this.performanceStats = new GlassExtensionsNano.GlassUserEventPerformanceStats();
          paramCodedInputByteBufferNano.readMessage(this.performanceStats);
          break;
        case 40:
        }
        this.eventSerial = paramCodedInputByteBufferNano.readInt64();
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.eventTimeMs != 0L)
        paramCodedOutputByteBufferNano.writeInt64(1, this.eventTimeMs);
      if (!this.eventType.equals(""))
        paramCodedOutputByteBufferNano.writeString(2, this.eventType);
      if (!this.eventData.equals(""))
        paramCodedOutputByteBufferNano.writeString(3, this.eventData);
      if (this.performanceStats != null)
        paramCodedOutputByteBufferNano.writeMessage(4, this.performanceStats);
      if (this.eventSerial != 0L)
        paramCodedOutputByteBufferNano.writeInt64(5, this.eventSerial);
    }
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.logging.GlassExtensionsNano
 * JD-Core Version:    0.6.2
 */