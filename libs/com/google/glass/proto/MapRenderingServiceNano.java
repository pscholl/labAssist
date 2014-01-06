package com.google.glass.proto;

import com.google.protobuf.nano.CodedInputByteBufferNano;
import com.google.protobuf.nano.CodedOutputByteBufferNano;
import com.google.protobuf.nano.InvalidProtocolBufferNanoException;
import com.google.protobuf.nano.MessageNano;
import com.google.protobuf.nano.WireFormatNano;
import java.io.IOException;
import java.util.Arrays;

public abstract interface MapRenderingServiceNano
{
  public static final class LatLng extends MessageNano
  {
    public static final LatLng[] EMPTY_ARRAY = new LatLng[0];
    public double lat = 0.0D;
    public double lng = 0.0D;

    public static LatLng parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new LatLng().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static LatLng parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (LatLng)MessageNano.mergeFrom(new LatLng(), paramArrayOfByte);
    }

    public final LatLng clear()
    {
      this.lat = 0.0D;
      this.lng = 0.0D;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      LatLng localLatLng;
      do
      {
        return true;
        if (!(paramObject instanceof LatLng))
          return false;
        localLatLng = (LatLng)paramObject;
      }
      while ((this.lat == localLatLng.lat) && (this.lng == localLatLng.lng));
      return false;
    }

    public int getSerializedSize()
    {
      boolean bool = this.lat < 0.0D;
      int i = 0;
      if (bool)
        i = 0 + CodedOutputByteBufferNano.computeDoubleSize(1, this.lat);
      if (this.lng != 0.0D)
        i += CodedOutputByteBufferNano.computeDoubleSize(2, this.lng);
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      return 31 * (527 + (int)(Double.doubleToLongBits(this.lat) ^ Double.doubleToLongBits(this.lat) >>> 32)) + (int)(Double.doubleToLongBits(this.lng) ^ Double.doubleToLongBits(this.lng) >>> 32);
    }

    public LatLng mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.lat = paramCodedInputByteBufferNano.readDouble();
          break;
        case 17:
        }
        this.lng = paramCodedInputByteBufferNano.readDouble();
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.lat != 0.0D)
        paramCodedOutputByteBufferNano.writeDouble(1, this.lat);
      if (this.lng != 0.0D)
        paramCodedOutputByteBufferNano.writeDouble(2, this.lng);
    }
  }

  public static final class MapRenderRequest extends MessageNano
  {
    public static final MapRenderRequest[] EMPTY_ARRAY = new MapRenderRequest[0];
    public MapRenderingServiceNano.LatLng center = null;
    public int height = 0;
    public String id = "";
    public double latSpan = 0.0D;
    public double lngSpan = 0.0D;
    public MapRenderingServiceNano.Marker[] marker = MapRenderingServiceNano.Marker.EMPTY_ARRAY;
    public MapRenderingServiceNano.Polyline[] polyline = MapRenderingServiceNano.Polyline.EMPTY_ARRAY;
    public int type = 1;
    public String uri = "";
    public int width = 0;
    public float zoom = 0.0F;

    public static MapRenderRequest parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new MapRenderRequest().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static MapRenderRequest parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (MapRenderRequest)MessageNano.mergeFrom(new MapRenderRequest(), paramArrayOfByte);
    }

    public final MapRenderRequest clear()
    {
      this.id = "";
      this.type = 1;
      this.uri = "";
      this.width = 0;
      this.height = 0;
      this.center = null;
      this.zoom = 0.0F;
      this.latSpan = 0.0D;
      this.lngSpan = 0.0D;
      this.marker = MapRenderingServiceNano.Marker.EMPTY_ARRAY;
      this.polyline = MapRenderingServiceNano.Polyline.EMPTY_ARRAY;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      label60: label196: label211: 
      while (true)
      {
        return true;
        if (!(paramObject instanceof MapRenderRequest))
          return false;
        MapRenderRequest localMapRenderRequest = (MapRenderRequest)paramObject;
        if (this.id == null)
          if (localMapRenderRequest.id == null)
            if (this.type == localMapRenderRequest.type)
            {
              if (this.uri != null)
                break label179;
              if (localMapRenderRequest.uri == null)
                if ((this.width == localMapRenderRequest.width) && (this.height == localMapRenderRequest.height))
                {
                  if (this.center != null)
                    break label196;
                  if (localMapRenderRequest.center != null);
                }
            }
        while (true)
        {
          if ((this.zoom == localMapRenderRequest.zoom) && (this.latSpan == localMapRenderRequest.latSpan) && (this.lngSpan == localMapRenderRequest.lngSpan) && (Arrays.equals(this.marker, localMapRenderRequest.marker)) && (Arrays.equals(this.polyline, localMapRenderRequest.polyline)))
            break label211;
          do
          {
            do
            {
              do
                return false;
              while (!this.id.equals(localMapRenderRequest.id));
              break;
            }
            while (!this.uri.equals(localMapRenderRequest.uri));
            break label60;
          }
          while (!this.center.equals(localMapRenderRequest.center));
        }
      }
    }

    public int getSerializedSize()
    {
      boolean bool = this.id.equals("");
      int i = 0;
      if (!bool)
        i = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.id);
      if (this.type != 1)
        i += CodedOutputByteBufferNano.computeInt32Size(2, this.type);
      if (this.width != 0)
        i += CodedOutputByteBufferNano.computeInt32Size(3, this.width);
      if (this.height != 0)
        i += CodedOutputByteBufferNano.computeInt32Size(4, this.height);
      if (this.center != null)
        i += CodedOutputByteBufferNano.computeMessageSize(5, this.center);
      if (this.zoom != 0.0F)
        i += CodedOutputByteBufferNano.computeFloatSize(6, this.zoom);
      if (this.latSpan != 0.0D)
        i += CodedOutputByteBufferNano.computeDoubleSize(8, this.latSpan);
      if (this.lngSpan != 0.0D)
        i += CodedOutputByteBufferNano.computeDoubleSize(9, this.lngSpan);
      if (this.marker != null)
      {
        MapRenderingServiceNano.Marker[] arrayOfMarker = this.marker;
        int m = arrayOfMarker.length;
        for (int n = 0; n < m; n++)
          i += CodedOutputByteBufferNano.computeMessageSize(10, arrayOfMarker[n]);
      }
      if (this.polyline != null)
      {
        MapRenderingServiceNano.Polyline[] arrayOfPolyline = this.polyline;
        int j = arrayOfPolyline.length;
        for (int k = 0; k < j; k++)
          i += CodedOutputByteBufferNano.computeMessageSize(11, arrayOfPolyline[k]);
      }
      if (!this.uri.equals(""))
        i += CodedOutputByteBufferNano.computeStringSize(12, this.uri);
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      int i;
      int k;
      label35: int m;
      if (this.id == null)
      {
        i = 0;
        int j = 31 * (31 * (i + 527) + this.type);
        if (this.uri != null)
          break label175;
        k = 0;
        m = 31 * (31 * (31 * (j + k) + this.width) + this.height);
        if (this.center != null)
          break label186;
      }
      int i1;
      label175: label186: for (int n = 0; ; n = this.center.hashCode())
      {
        i1 = 31 * (31 * (31 * (m + n) + Float.floatToIntBits(this.zoom)) + (int)(Double.doubleToLongBits(this.latSpan) ^ Double.doubleToLongBits(this.latSpan) >>> 32)) + (int)(Double.doubleToLongBits(this.lngSpan) ^ Double.doubleToLongBits(this.lngSpan) >>> 32);
        if (this.marker != null)
          break label198;
        i1 *= 31;
        if (this.polyline != null)
          break label259;
        i1 *= 31;
        return i1;
        i = this.id.hashCode();
        break;
        k = this.uri.hashCode();
        break label35;
      }
      label198: int i2 = 0;
      label201: int i3;
      if (i2 < this.marker.length)
      {
        i3 = i1 * 31;
        if (this.marker[i2] != null)
          break label244;
      }
      label244: for (int i4 = 0; ; i4 = this.marker[i2].hashCode())
      {
        i1 = i3 + i4;
        i2++;
        break label201;
        break;
      }
      label259: int i5 = 0;
      label262: int i6;
      if (i5 < this.polyline.length)
      {
        i6 = i1 * 31;
        if (this.polyline[i5] != null)
          break label305;
      }
      label305: for (int i7 = 0; ; i7 = this.polyline[i5].hashCode())
      {
        i1 = i6 + i7;
        i5++;
        break label262;
        break;
      }
    }

    public MapRenderRequest mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.id = paramCodedInputByteBufferNano.readString();
          break;
        case 16:
          int i1 = paramCodedInputByteBufferNano.readInt32();
          if ((i1 == 1) || (i1 == 2))
          {
            this.type = i1;
            continue;
          }
          this.type = 1;
          break;
        case 24:
          this.width = paramCodedInputByteBufferNano.readInt32();
          break;
        case 32:
          this.height = paramCodedInputByteBufferNano.readInt32();
          break;
        case 42:
          this.center = new MapRenderingServiceNano.LatLng();
          paramCodedInputByteBufferNano.readMessage(this.center);
          break;
        case 53:
          this.zoom = paramCodedInputByteBufferNano.readFloat();
          break;
        case 65:
          this.latSpan = paramCodedInputByteBufferNano.readDouble();
          break;
        case 73:
          this.lngSpan = paramCodedInputByteBufferNano.readDouble();
          break;
        case 82:
          int m = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 82);
          if (this.marker == null);
          for (int n = 0; ; n = this.marker.length)
          {
            MapRenderingServiceNano.Marker[] arrayOfMarker = new MapRenderingServiceNano.Marker[n + m];
            if (this.marker != null)
              System.arraycopy(this.marker, 0, arrayOfMarker, 0, n);
            this.marker = arrayOfMarker;
            while (n < -1 + this.marker.length)
            {
              this.marker[n] = new MapRenderingServiceNano.Marker();
              paramCodedInputByteBufferNano.readMessage(this.marker[n]);
              paramCodedInputByteBufferNano.readTag();
              n++;
            }
          }
          this.marker[n] = new MapRenderingServiceNano.Marker();
          paramCodedInputByteBufferNano.readMessage(this.marker[n]);
          break;
        case 90:
          int j = WireFormatNano.getRepeatedFieldArrayLength(paramCodedInputByteBufferNano, 90);
          if (this.polyline == null);
          for (int k = 0; ; k = this.polyline.length)
          {
            MapRenderingServiceNano.Polyline[] arrayOfPolyline = new MapRenderingServiceNano.Polyline[k + j];
            if (this.polyline != null)
              System.arraycopy(this.polyline, 0, arrayOfPolyline, 0, k);
            this.polyline = arrayOfPolyline;
            while (k < -1 + this.polyline.length)
            {
              this.polyline[k] = new MapRenderingServiceNano.Polyline();
              paramCodedInputByteBufferNano.readMessage(this.polyline[k]);
              paramCodedInputByteBufferNano.readTag();
              k++;
            }
          }
          this.polyline[k] = new MapRenderingServiceNano.Polyline();
          paramCodedInputByteBufferNano.readMessage(this.polyline[k]);
          break;
        case 98:
        }
        this.uri = paramCodedInputByteBufferNano.readString();
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (!this.id.equals(""))
        paramCodedOutputByteBufferNano.writeString(1, this.id);
      if (this.type != 1)
        paramCodedOutputByteBufferNano.writeInt32(2, this.type);
      if (this.width != 0)
        paramCodedOutputByteBufferNano.writeInt32(3, this.width);
      if (this.height != 0)
        paramCodedOutputByteBufferNano.writeInt32(4, this.height);
      if (this.center != null)
        paramCodedOutputByteBufferNano.writeMessage(5, this.center);
      if (this.zoom != 0.0F)
        paramCodedOutputByteBufferNano.writeFloat(6, this.zoom);
      if (this.latSpan != 0.0D)
        paramCodedOutputByteBufferNano.writeDouble(8, this.latSpan);
      if (this.lngSpan != 0.0D)
        paramCodedOutputByteBufferNano.writeDouble(9, this.lngSpan);
      if (this.marker != null)
      {
        MapRenderingServiceNano.Marker[] arrayOfMarker = this.marker;
        int k = arrayOfMarker.length;
        for (int m = 0; m < k; m++)
          paramCodedOutputByteBufferNano.writeMessage(10, arrayOfMarker[m]);
      }
      if (this.polyline != null)
      {
        MapRenderingServiceNano.Polyline[] arrayOfPolyline = this.polyline;
        int i = arrayOfPolyline.length;
        for (int j = 0; j < i; j++)
          paramCodedOutputByteBufferNano.writeMessage(11, arrayOfPolyline[j]);
      }
      if (!this.uri.equals(""))
        paramCodedOutputByteBufferNano.writeString(12, this.uri);
    }

    public static abstract interface Type
    {
      public static final int CANCEL = 2;
      public static final int RENDER_MAP = 1;
    }
  }

  public static final class MapRenderResponse extends MessageNano
  {
    public static final MapRenderResponse[] EMPTY_ARRAY = new MapRenderResponse[0];
    public String id = "";
    public byte[] image = WireFormatNano.EMPTY_BYTES;

    public static MapRenderResponse parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new MapRenderResponse().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static MapRenderResponse parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (MapRenderResponse)MessageNano.mergeFrom(new MapRenderResponse(), paramArrayOfByte);
    }

    public final MapRenderResponse clear()
    {
      this.id = "";
      this.image = WireFormatNano.EMPTY_BYTES;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      while (true)
      {
        return true;
        if (!(paramObject instanceof MapRenderResponse))
          return false;
        MapRenderResponse localMapRenderResponse = (MapRenderResponse)paramObject;
        if (this.id == null)
          if (localMapRenderResponse.id != null);
        while (!Arrays.equals(this.image, localMapRenderResponse.image))
          do
            return false;
          while (!this.id.equals(localMapRenderResponse.id));
      }
    }

    public int getSerializedSize()
    {
      int i = 0 + CodedOutputByteBufferNano.computeStringSize(1, this.id);
      if (!Arrays.equals(this.image, WireFormatNano.EMPTY_BYTES))
        i += CodedOutputByteBufferNano.computeBytesSize(2, this.image);
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      int i;
      int j;
      if (this.id == null)
      {
        i = 0;
        j = i + 527;
        if (this.image != null)
          break label40;
        j *= 31;
      }
      while (true)
      {
        return j;
        i = this.id.hashCode();
        break;
        label40: for (int k = 0; k < this.image.length; k++)
          j = j * 31 + this.image[k];
      }
    }

    public MapRenderResponse mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          this.id = paramCodedInputByteBufferNano.readString();
          break;
        case 18:
        }
        this.image = paramCodedInputByteBufferNano.readBytes();
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      paramCodedOutputByteBufferNano.writeString(1, this.id);
      if (!Arrays.equals(this.image, WireFormatNano.EMPTY_BYTES))
        paramCodedOutputByteBufferNano.writeBytes(2, this.image);
    }
  }

  public static final class Marker extends MessageNano
  {
    public static final Marker[] EMPTY_ARRAY = new Marker[0];
    public MapRenderingServiceNano.LatLng location = null;
    public int type = 0;

    public static Marker parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new Marker().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static Marker parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (Marker)MessageNano.mergeFrom(new Marker(), paramArrayOfByte);
    }

    public final Marker clear()
    {
      this.type = 0;
      this.location = null;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      Marker localMarker;
      do
      {
        return true;
        if (!(paramObject instanceof Marker))
          return false;
        localMarker = (Marker)paramObject;
        if (this.type != localMarker.type)
          break;
        if (this.location != null)
          break label48;
      }
      while (localMarker.location == null);
      label48: 
      while (!this.location.equals(localMarker.location))
        return false;
      return true;
    }

    public int getSerializedSize()
    {
      int i = this.type;
      int j = 0;
      if (i != 0)
        j = 0 + CodedOutputByteBufferNano.computeInt32Size(1, this.type);
      if (this.location != null)
        j += CodedOutputByteBufferNano.computeMessageSize(2, this.location);
      this.cachedSize = j;
      return j;
    }

    public int hashCode()
    {
      int i = 31 * (527 + this.type);
      if (this.location == null);
      for (int j = 0; ; j = this.location.hashCode())
        return i + j;
    }

    public Marker mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          if ((j == 0) || (j == 1))
          {
            this.type = j;
            continue;
          }
          this.type = 0;
          break;
        case 18:
        }
        this.location = new MapRenderingServiceNano.LatLng();
        paramCodedInputByteBufferNano.readMessage(this.location);
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.type != 0)
        paramCodedOutputByteBufferNano.writeInt32(1, this.type);
      if (this.location != null)
        paramCodedOutputByteBufferNano.writeMessage(2, this.location);
    }

    public static abstract interface MarkerType
    {
      public static final int TYPE_MY_LOCATION = 1;
      public static final int TYPE_PLACEMARK;
    }
  }

  public static final class Polyline extends MessageNano
  {
    public static final Polyline[] EMPTY_ARRAY = new Polyline[0];
    public int colorArgb = 0;
    public MapRenderingServiceNano.LatLng[] vertex = MapRenderingServiceNano.LatLng.EMPTY_ARRAY;
    public float width = 0.0F;

    public static Polyline parseFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
      throws IOException
    {
      return new Polyline().mergeFrom(paramCodedInputByteBufferNano);
    }

    public static Polyline parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferNanoException
    {
      return (Polyline)MessageNano.mergeFrom(new Polyline(), paramArrayOfByte);
    }

    public final Polyline clear()
    {
      this.vertex = MapRenderingServiceNano.LatLng.EMPTY_ARRAY;
      this.width = 0.0F;
      this.colorArgb = 0;
      this.cachedSize = -1;
      return this;
    }

    public final boolean equals(Object paramObject)
    {
      if (paramObject == this);
      Polyline localPolyline;
      do
      {
        return true;
        if (!(paramObject instanceof Polyline))
          return false;
        localPolyline = (Polyline)paramObject;
      }
      while ((Arrays.equals(this.vertex, localPolyline.vertex)) && (this.width == localPolyline.width) && (this.colorArgb == localPolyline.colorArgb));
      return false;
    }

    public int getSerializedSize()
    {
      MapRenderingServiceNano.LatLng[] arrayOfLatLng1 = this.vertex;
      int i = 0;
      if (arrayOfLatLng1 != null)
      {
        MapRenderingServiceNano.LatLng[] arrayOfLatLng2 = this.vertex;
        int j = arrayOfLatLng2.length;
        for (int k = 0; k < j; k++)
          i += CodedOutputByteBufferNano.computeMessageSize(1, arrayOfLatLng2[k]);
      }
      if (this.width != 0.0F)
        i += CodedOutputByteBufferNano.computeFloatSize(2, this.width);
      if (this.colorArgb != 0)
        i += CodedOutputByteBufferNano.computeFixed32Size(3, this.colorArgb);
      this.cachedSize = i;
      return i;
    }

    public int hashCode()
    {
      int i = 17;
      if (this.vertex == null)
      {
        i *= 31;
        return 31 * (i * 31 + Float.floatToIntBits(this.width)) + this.colorArgb;
      }
      int j = 0;
      label38: int k;
      if (j < this.vertex.length)
      {
        k = i * 31;
        if (this.vertex[j] != null)
          break label75;
      }
      label75: for (int m = 0; ; m = this.vertex[j].hashCode())
      {
        i = k + m;
        j++;
        break label38;
        break;
      }
    }

    public Polyline mergeFrom(CodedInputByteBufferNano paramCodedInputByteBufferNano)
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
          if (this.vertex == null);
          for (int k = 0; ; k = this.vertex.length)
          {
            MapRenderingServiceNano.LatLng[] arrayOfLatLng = new MapRenderingServiceNano.LatLng[k + j];
            if (this.vertex != null)
              System.arraycopy(this.vertex, 0, arrayOfLatLng, 0, k);
            this.vertex = arrayOfLatLng;
            while (k < -1 + this.vertex.length)
            {
              this.vertex[k] = new MapRenderingServiceNano.LatLng();
              paramCodedInputByteBufferNano.readMessage(this.vertex[k]);
              paramCodedInputByteBufferNano.readTag();
              k++;
            }
          }
          this.vertex[k] = new MapRenderingServiceNano.LatLng();
          paramCodedInputByteBufferNano.readMessage(this.vertex[k]);
          break;
        case 21:
          this.width = paramCodedInputByteBufferNano.readFloat();
          break;
        case 29:
        }
        this.colorArgb = paramCodedInputByteBufferNano.readFixed32();
      }
    }

    public void writeTo(CodedOutputByteBufferNano paramCodedOutputByteBufferNano)
      throws IOException
    {
      if (this.vertex != null)
      {
        MapRenderingServiceNano.LatLng[] arrayOfLatLng = this.vertex;
        int i = arrayOfLatLng.length;
        for (int j = 0; j < i; j++)
          paramCodedOutputByteBufferNano.writeMessage(1, arrayOfLatLng[j]);
      }
      if (this.width != 0.0F)
        paramCodedOutputByteBufferNano.writeFloat(2, this.width);
      if (this.colorArgb != 0)
        paramCodedOutputByteBufferNano.writeFixed32(3, this.colorArgb);
    }
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.proto.MapRenderingServiceNano
 * JD-Core Version:    0.6.2
 */