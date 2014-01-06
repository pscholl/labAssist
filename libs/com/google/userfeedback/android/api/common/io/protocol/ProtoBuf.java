package com.google.userfeedback.android.api.common.io.protocol;

import com.google.userfeedback.android.api.common.io.IoUtil;
import com.google.userfeedback.android.api.common.io.MarkedOutputStream;
import com.google.userfeedback.android.api.common.util.IntMap;
import com.google.userfeedback.android.api.common.util.IntMap.KeyIterator;
import com.google.userfeedback.android.api.common.util.Primitives;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Vector;

public class ProtoBuf
{
  public static final byte[] EMPTY_BYTE_ARRAY = new byte[0];
  public static final Boolean FALSE = new Boolean(false);
  private static final int MARKER_HOLDER = -1;
  private static final String MSG_EOF = "Unexp.EOF";
  private static final String MSG_MISMATCH = "Type mismatch";
  private static final String MSG_UNSUPPORTED = "Unsupp.Type";
  private static final SimpleCounter NULL_COUNTER = new SimpleCounter(null);
  public static final Boolean TRUE = new Boolean(true);
  private static final int VARINT_MAX_BYTES = 10;
  static final int WIRETYPE_END_GROUP = 4;
  static final int WIRETYPE_FIXED32 = 5;
  static final int WIRETYPE_FIXED64 = 1;
  static final int WIRETYPE_LENGTH_DELIMITED = 2;
  static final int WIRETYPE_START_GROUP = 3;
  static final int WIRETYPE_VARINT;
  private int cachedSize = -2147483648;
  private ProtoBufType msgType;
  private final IntMap values;
  private IntMap wireTypes;

  public ProtoBuf(ProtoBufType paramProtoBufType)
  {
    this.msgType = paramProtoBufType;
    this.values = new IntMap();
  }

  private void addObject(int paramInt, Object paramObject)
  {
    insertObject(paramInt, 0, paramObject, true);
  }

  private void assertTypeMatch(int paramInt, Object paramObject)
  {
  }

  private static void checkTag(int paramInt)
  {
  }

  private Object convert(Object paramObject, int paramInt1, int paramInt2)
  {
    switch (paramInt1)
    {
    case 17:
    case 18:
    case 20:
    case 29:
    case 30:
    default:
      throw new RuntimeException("Unsupp.Type");
    case 24:
      if (!(paramObject instanceof Boolean))
        break;
    case 16:
    case 19:
    case 21:
    case 22:
    case 23:
    case 31:
    case 32:
    case 33:
    case 34:
    case 25:
    case 35:
    case 28:
    case 36:
    case 26:
    case 27:
    }
    do
    {
      do
      {
        do
        {
          do
          {
            return paramObject;
            switch ((int)((Long)paramObject).longValue())
            {
            default:
              throw new IllegalArgumentException("Type mismatch");
            case 0:
              return FALSE;
            case 1:
            }
            return TRUE;
          }
          while (!(paramObject instanceof Boolean));
          if (((Boolean)paramObject).booleanValue());
          for (long l = 1L; ; l = 0L)
            return Primitives.toLong(l);
          if ((paramObject instanceof String))
            return IoUtil.encodeUtf8((String)paramObject);
        }
        while (!(paramObject instanceof ProtoBuf));
        ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
        try
        {
          ((ProtoBuf)paramObject).outputTo(localByteArrayOutputStream);
          byte[] arrayOfByte2 = localByteArrayOutputStream.toByteArray();
          return arrayOfByte2;
        }
        catch (IOException localIOException2)
        {
          throw new RuntimeException(localIOException2.toString());
        }
      }
      while (!(paramObject instanceof byte[]));
      byte[] arrayOfByte1 = (byte[])paramObject;
      return IoUtil.decodeUtf8(arrayOfByte1, 0, arrayOfByte1.length, true);
    }
    while (!(paramObject instanceof byte[]));
    if (paramInt2 > 0);
    try
    {
      if (this.msgType != null);
      for (ProtoBuf localProtoBuf = new ProtoBuf((ProtoBufType)this.msgType.getData(paramInt2)); ; localProtoBuf = new ProtoBuf(null))
        return localProtoBuf.parse((byte[])paramObject);
    }
    catch (IOException localIOException1)
    {
      throw new RuntimeException(localIOException1.toString());
    }
  }

  private int getCachedDataSize(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int i = getVarIntSize(paramInt1 << 3);
    Object localObject;
    int j;
    switch (getWireType(paramInt1))
    {
    case 2:
    case 4:
    default:
      localObject = getObject(paramInt1, paramInt2, 16);
      if ((localObject instanceof byte[]))
        j = ((byte[])localObject).length;
      break;
    case 5:
    case 1:
    case 0:
    case 3:
    }
    while (true)
    {
      return j + (i + getVarIntSize(j));
      return i + 4;
      return i + 8;
      long l = getLong(paramInt1, paramInt2);
      if (isZigZagEncodedType(paramInt1))
        l = zigZagEncode(l);
      return i + getVarIntSize(l);
      return i + (i + getProtoBuf(paramInt1, paramInt2).getCachedDataSize(paramBoolean));
      if ((localObject instanceof String))
        j = IoUtil.encodeUtf8((String)localObject, null, 0);
      else
        j = ((ProtoBuf)localObject).getCachedDataSize(paramBoolean);
    }
  }

  private int getCachedDataSize(boolean paramBoolean)
  {
    if ((this.cachedSize != -2147483648) && (paramBoolean))
      return this.cachedSize;
    int i = 0;
    IntMap.KeyIterator localKeyIterator = this.values.keys();
    while (localKeyIterator.hasNext())
    {
      int j = localKeyIterator.next();
      int k = getCount(j);
      for (int m = 0; m < k; m++)
        i += getCachedDataSize(j, m, paramBoolean);
    }
    this.cachedSize = i;
    return this.cachedSize;
  }

  private static int getCount(Object paramObject)
  {
    if (paramObject == null)
      return 0;
    if ((paramObject instanceof Vector))
      return ((Vector)paramObject).size();
    return 1;
  }

  private Object getDefault(int paramInt)
  {
    switch (getType(paramInt))
    {
    default:
      return this.msgType.getData(paramInt);
    case 16:
    case 26:
    case 27:
    }
    return null;
  }

  private static int getNumBytesUsed(Object paramObject)
  {
    int i = 0;
    if (paramObject == null);
    boolean bool;
    do
    {
      while (true)
      {
        return i;
        if ((paramObject instanceof String))
          return ((String)paramObject).length();
        if (!(paramObject instanceof Vector))
          break;
        i = 0;
        for (int j = 0; j < ((Vector)paramObject).size(); j++)
          i += getNumBytesUsed(((Vector)paramObject).elementAt(j));
      }
      if ((paramObject instanceof ProtoBuf))
        return ((ProtoBuf)paramObject).getNumBytesUsed();
      if ((paramObject instanceof byte[]))
        return ((byte[])paramObject).length;
      if ((paramObject instanceof Long))
        return 8;
      bool = paramObject instanceof Boolean;
      i = 0;
    }
    while (!bool);
    return 1;
  }

  private Object getObject(int paramInt1, int paramInt2)
  {
    checkTag(paramInt1);
    Object localObject = this.values.get(paramInt1);
    int i = getCount(localObject);
    if (i == 0)
      return getDefault(paramInt1);
    if (i > 1)
      throw new IllegalArgumentException();
    return getObjectWithoutArgChecking(paramInt1, 0, paramInt2, localObject);
  }

  private Object getObject(int paramInt1, int paramInt2, int paramInt3)
  {
    checkTag(paramInt1);
    Object localObject = this.values.get(paramInt1);
    if (paramInt2 >= getCount(localObject))
      throw new ArrayIndexOutOfBoundsException();
    return getObjectWithoutArgChecking(paramInt1, paramInt2, paramInt3, localObject);
  }

  private Object getObjectWithoutArgChecking(int paramInt1, int paramInt2, int paramInt3, Object paramObject)
  {
    boolean bool = paramObject instanceof Vector;
    Vector localVector = null;
    if (bool)
    {
      localVector = (Vector)paramObject;
      paramObject = localVector.elementAt(paramInt2);
    }
    Object localObject = convert(paramObject, paramInt3, paramInt1);
    if ((localObject != paramObject) && (paramObject != null))
    {
      if (localVector == null)
        setObject(paramInt1, localObject);
    }
    else
      return localObject;
    localVector.setElementAt(localObject, paramInt2);
    return localObject;
  }

  private static int getVarIntSize(long paramLong)
  {
    int i;
    if (paramLong < 0L)
      i = 10;
    while (true)
    {
      return i;
      i = 1;
      while (paramLong >= 128L)
      {
        i++;
        paramLong >>= 7;
      }
    }
  }

  private final int getWireType(int paramInt)
  {
    int i = getType(paramInt);
    switch (i)
    {
    case 4:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    default:
      throw new RuntimeException("Unsupp.Type:" + this.msgType + '/' + paramInt + '/' + i);
    case 19:
    case 20:
    case 21:
    case 24:
    case 29:
    case 30:
    case 33:
    case 34:
      i = 0;
    case 0:
    case 1:
    case 2:
    case 3:
    case 5:
    case 16:
      return i;
    case 25:
    case 27:
    case 28:
    case 35:
    case 36:
      return 2;
    case 17:
    case 22:
    case 32:
      return 1;
    case 18:
    case 23:
    case 31:
      return 5;
    case 26:
    }
    return 3;
  }

  private void insertObject(int paramInt1, int paramInt2, Object paramObject)
  {
    insertObject(paramInt1, paramInt2, paramObject, false);
  }

  private void insertObject(int paramInt1, int paramInt2, Object paramObject, boolean paramBoolean)
  {
    checkTag(paramInt1);
    Object localObject = this.values.get(paramInt1);
    boolean bool = localObject instanceof Vector;
    Vector localVector = null;
    if (bool)
      localVector = (Vector)localObject;
    if ((localObject == null) || ((localVector != null) && (localVector.size() == 0)))
    {
      setObject(paramInt1, paramObject);
      return;
    }
    assertTypeMatch(paramInt1, paramObject);
    if (localVector == null)
    {
      localVector = new Vector();
      localVector.addElement(localObject);
      this.values.put(paramInt1, localVector);
    }
    if (paramBoolean)
    {
      localVector.addElement(paramObject);
      return;
    }
    localVector.insertElementAt(paramObject, paramInt2);
  }

  private boolean isZigZagEncodedType(int paramInt)
  {
    int i = getType(paramInt);
    return (i == 33) || (i == 34);
  }

  private int outputField(int paramInt, MarkedOutputStream paramMarkedOutputStream)
    throws IOException
  {
    int i = getCount(paramInt);
    int j = getWireType(paramInt);
    int k = j | paramInt << 3;
    int m = 0;
    int n = 0;
    if (n < i)
    {
      m += writeVarInt(paramMarkedOutputStream, k);
      int i1 = 0;
      int i2 = paramMarkedOutputStream.availableContent();
      switch (j)
      {
      case 4:
      default:
        throw new IllegalArgumentException();
      case 1:
      case 5:
        long l2 = ((Long)getObject(paramInt, n, 19)).longValue();
        if (j == 5);
        for (int i6 = 4; ; i6 = 8)
          for (int i7 = 0; ; i7++)
          {
            i1 = 0;
            if (i7 >= i6)
              break;
            paramMarkedOutputStream.write((int)(0xFF & l2));
            l2 >>= 8;
          }
      case 0:
        long l1 = ((Long)getObject(paramInt, n, 19)).longValue();
        if (isZigZagEncodedType(paramInt))
          l1 = zigZagEncode(l1);
        writeVarInt(paramMarkedOutputStream, l1);
      case 2:
      case 3:
      }
      while (true)
      {
        if (i1 == 0)
          m += paramMarkedOutputStream.availableContent() - i2;
        n++;
        break;
        if (getType(paramInt) == 27);
        Object localObject;
        for (int i3 = 16; ; i3 = 25)
        {
          localObject = getObject(paramInt, n, i3);
          if (!(localObject instanceof byte[]))
            break label307;
          byte[] arrayOfByte = (byte[])localObject;
          writeVarInt(paramMarkedOutputStream, arrayOfByte.length);
          paramMarkedOutputStream.write(arrayOfByte);
          i1 = 0;
          break;
        }
        label307: paramMarkedOutputStream.addMarker(paramMarkedOutputStream.availableContent());
        int i4 = paramMarkedOutputStream.numMarkers();
        paramMarkedOutputStream.addMarker(-1);
        int i5 = ((ProtoBuf)localObject).outputToInternal(paramMarkedOutputStream);
        paramMarkedOutputStream.setMarker(i4, i5);
        m += i5 + getVarIntSize(i5);
        i1 = 1;
        continue;
        m = m + ((ProtoBuf)getObject(paramInt, n, 26)).outputToInternal(paramMarkedOutputStream) + writeVarInt(paramMarkedOutputStream, 0x4 | paramInt << 3);
        i1 = 1;
      }
    }
    return m;
  }

  private void outputTo(OutputStream paramOutputStream, boolean paramBoolean)
    throws IOException
  {
    MarkedOutputStream localMarkedOutputStream = new MarkedOutputStream();
    int i = outputToInternal(localMarkedOutputStream);
    if (paramBoolean)
      ((DataOutput)paramOutputStream).writeInt(i);
    int j = 0;
    int k = 0;
    int m = localMarkedOutputStream.numMarkers();
    while (k < m)
    {
      int n = localMarkedOutputStream.getMarker(k);
      localMarkedOutputStream.writeContentsTo(paramOutputStream, j, n - j);
      writeVarInt(paramOutputStream, localMarkedOutputStream.getMarker(k + 1));
      j = n;
      k += 2;
    }
    if (j < localMarkedOutputStream.availableContent())
      localMarkedOutputStream.writeContentsTo(paramOutputStream, j, localMarkedOutputStream.availableContent() - j);
  }

  private int outputToInternal(MarkedOutputStream paramMarkedOutputStream)
    throws IOException
  {
    IntMap.KeyIterator localKeyIterator = this.values.keys();
    int i = 0;
    while (localKeyIterator.hasNext())
      i += outputField(localKeyIterator.next(), paramMarkedOutputStream);
    return i;
  }

  private int parseInternal(InputStream paramInputStream, int paramInt, boolean paramBoolean, SimpleCounter paramSimpleCounter)
    throws IOException
  {
    if (paramBoolean)
      clear();
    long l1;
    if (paramInt > 0)
    {
      l1 = readVarInt(paramInputStream, true, paramSimpleCounter);
      if (l1 != -1L)
        break label42;
    }
    while (paramInt < 0)
    {
      throw new IOException();
      label42: paramInt -= paramSimpleCounter.count;
      int i = 0x7 & (int)l1;
      if (i != 4)
      {
        int j = (int)(l1 >>> 3);
        if (getType(j) == 16)
        {
          if (this.wireTypes == null)
            this.wireTypes = new IntMap();
          this.wireTypes.put(j, Primitives.toInteger(i));
        }
        Object localObject;
        switch (i)
        {
        case 4:
        default:
          throw new IOException("Unknown wire type " + i + ", reading garbage data?");
        case 0:
          long l3 = readVarInt(paramInputStream, false, paramSimpleCounter);
          paramInt -= paramSimpleCounter.count;
          if (isZigZagEncodedType(j))
            l3 = zigZagDecode(l3);
          localObject = Primitives.toLong(l3);
        case 1:
        case 5:
        case 2:
          while (true)
          {
            addObject(j, localObject);
            break;
            long l2 = 0L;
            int i1 = 0;
            if (i == 5);
            for (int i2 = 4; ; i2 = 8)
            {
              paramInt -= i2;
              int i4;
              for (int i3 = i2; ; i3 = i4)
              {
                i4 = i3 - 1;
                if (i3 <= 0)
                  break;
                l2 |= paramInputStream.read() << i1;
                i1 += 8;
              }
            }
            localObject = Primitives.toLong(l2);
            continue;
            int k = (int)readVarInt(paramInputStream, false, paramSimpleCounter);
            paramInt = paramInt - paramSimpleCounter.count - k;
            byte[] arrayOfByte;
            int m;
            if (k == 0)
            {
              arrayOfByte = EMPTY_BYTE_ARRAY;
              m = 0;
            }
            while (true)
            {
              if (m >= k)
                break label407;
              int n = paramInputStream.read(arrayOfByte, m, k - m);
              if (n <= 0)
              {
                throw new IOException("Unexp.EOF");
                arrayOfByte = new byte[k];
                break;
              }
              m += n;
            }
            label407: localObject = arrayOfByte;
          }
        case 3:
        }
        if (this.msgType == null);
        for (ProtoBufType localProtoBufType = null; ; localProtoBufType = (ProtoBufType)this.msgType.getData(j))
        {
          ProtoBuf localProtoBuf = new ProtoBuf(localProtoBufType);
          paramInt = localProtoBuf.parseInternal(paramInputStream, paramInt, false, paramSimpleCounter);
          localObject = localProtoBuf;
          break;
        }
      }
    }
    return paramInt;
  }

  static long readVarInt(InputStream paramInputStream, boolean paramBoolean)
    throws IOException
  {
    return readVarInt(paramInputStream, paramBoolean, NULL_COUNTER);
  }

  private static long readVarInt(InputStream paramInputStream, boolean paramBoolean, SimpleCounter paramSimpleCounter)
    throws IOException
  {
    long l = 0L;
    int i = 0;
    paramSimpleCounter.count = 0;
    for (int j = 0; ; j++)
    {
      if (j < 10)
      {
        int k = paramInputStream.read();
        if (k == -1)
        {
          if ((j == 0) && (paramBoolean))
            return -1L;
          throw new IOException("EOF");
        }
        l |= (k & 0x7F) << i;
        if ((k & 0x80) != 0);
      }
      else
      {
        paramSimpleCounter.count = (j + 1);
        return l;
      }
      i += 7;
    }
  }

  private void setObject(int paramInt1, int paramInt2, Object paramObject)
  {
    if (paramInt1 < 0)
      throw new ArrayIndexOutOfBoundsException();
    if (paramObject != null)
      assertTypeMatch(paramInt1, paramObject);
    if (paramInt2 < 0)
      throw new ArrayIndexOutOfBoundsException();
    Object localObject = this.values.get(paramInt1);
    if ((localObject instanceof Vector))
    {
      Vector localVector2 = (Vector)localObject;
      if (paramInt2 == localVector2.size())
      {
        localVector2.addElement(paramObject);
        return;
      }
      localVector2.setElementAt(paramObject, paramInt2);
      return;
    }
    if (localObject == null)
    {
      if (paramInt2 > 0)
        throw new ArrayIndexOutOfBoundsException();
      setObject(paramInt1, paramObject);
      return;
    }
    switch (paramInt2)
    {
    default:
      throw new ArrayIndexOutOfBoundsException();
    case 0:
      setObject(paramInt1, paramObject);
      return;
    case 1:
    }
    Vector localVector1 = new Vector();
    localVector1.addElement(localObject);
    localVector1.addElement(paramObject);
    this.values.put(paramInt1, localVector1);
  }

  private void setObject(int paramInt, Object paramObject)
  {
    if (paramInt < 0)
      throw new ArrayIndexOutOfBoundsException();
    if (paramObject != null)
      assertTypeMatch(paramInt, paramObject);
    this.values.put(paramInt, paramObject);
  }

  static int writeVarInt(OutputStream paramOutputStream, long paramLong)
    throws IOException
  {
    for (int i = 0; ; i++)
    {
      int j;
      if (i < 10)
      {
        j = (int)(0x7F & paramLong);
        paramLong >>>= 7;
        if (paramLong == 0L)
        {
          paramOutputStream.write(j);
          i++;
        }
      }
      else
      {
        return i;
      }
      paramOutputStream.write(j | 0x80);
    }
  }

  private static long zigZagDecode(long paramLong)
  {
    return paramLong >>> 1 ^ -(1L & paramLong);
  }

  private static long zigZagEncode(long paramLong)
  {
    return paramLong << 1 ^ -(paramLong >>> 63);
  }

  public void addBool(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean);
    for (Boolean localBoolean = TRUE; ; localBoolean = FALSE)
    {
      addObject(paramInt, localBoolean);
      return;
    }
  }

  public void addBytes(int paramInt, byte[] paramArrayOfByte)
  {
    addObject(paramInt, paramArrayOfByte);
  }

  public void addDouble(int paramInt, double paramDouble)
  {
    setLong(paramInt, Double.doubleToLongBits(paramDouble));
  }

  public void addFloat(int paramInt, float paramFloat)
  {
    setInt(paramInt, Float.floatToIntBits(paramFloat));
  }

  public void addInt(int paramInt1, int paramInt2)
  {
    addLong(paramInt1, paramInt2);
  }

  public void addLong(int paramInt, long paramLong)
  {
    addObject(paramInt, Primitives.toLong(paramLong));
  }

  public void addProtoBuf(int paramInt, ProtoBuf paramProtoBuf)
  {
    addObject(paramInt, paramProtoBuf);
  }

  public void addString(int paramInt, String paramString)
  {
    addObject(paramInt, paramString);
  }

  public void clear()
  {
    this.values.clear();
    this.wireTypes = null;
  }

  public ProtoBuf createGroup(int paramInt)
  {
    return new ProtoBuf((ProtoBufType)getType().getData(paramInt));
  }

  public boolean getBool(int paramInt)
  {
    return ((Boolean)getObject(paramInt, 24)).booleanValue();
  }

  public boolean getBool(int paramInt1, int paramInt2)
  {
    return ((Boolean)getObject(paramInt1, paramInt2, 24)).booleanValue();
  }

  public byte[] getBytes(int paramInt)
  {
    return (byte[])getObject(paramInt, 25);
  }

  public byte[] getBytes(int paramInt1, int paramInt2)
  {
    return (byte[])getObject(paramInt1, paramInt2, 25);
  }

  public int getCount(int paramInt)
  {
    return getCount(this.values.get(paramInt));
  }

  public int getDataSize()
  {
    return getCachedDataSize(false);
  }

  public double getDouble(int paramInt)
  {
    return Double.longBitsToDouble(getLong(paramInt));
  }

  public double getDouble(int paramInt1, int paramInt2)
  {
    return Double.longBitsToDouble(getLong(paramInt1, paramInt2));
  }

  public float getFloat(int paramInt)
  {
    return Float.intBitsToFloat(getInt(paramInt));
  }

  public float getFloat(int paramInt1, int paramInt2)
  {
    return Float.intBitsToFloat(getInt(paramInt1, paramInt2));
  }

  public int getInt(int paramInt)
  {
    return (int)((Long)getObject(paramInt, 21)).longValue();
  }

  public int getInt(int paramInt1, int paramInt2)
  {
    return (int)((Long)getObject(paramInt1, paramInt2, 21)).longValue();
  }

  public long getLong(int paramInt)
  {
    return ((Long)getObject(paramInt, 19)).longValue();
  }

  public long getLong(int paramInt1, int paramInt2)
  {
    return ((Long)getObject(paramInt1, paramInt2, 19)).longValue();
  }

  public int getNumBytesUsed()
  {
    int i = this.values.getNumBytesOverhead();
    IntMap.KeyIterator localKeyIterator = this.values.keys();
    while (localKeyIterator.hasNext())
    {
      int j = localKeyIterator.next();
      i += getNumBytesUsed(this.values.get(j));
    }
    return i;
  }

  public ProtoBuf getProtoBuf(int paramInt)
  {
    return (ProtoBuf)getObject(paramInt, 26);
  }

  public ProtoBuf getProtoBuf(int paramInt1, int paramInt2)
  {
    return (ProtoBuf)getObject(paramInt1, paramInt2, 26);
  }

  public String getString(int paramInt)
  {
    return (String)getObject(paramInt, 28);
  }

  public String getString(int paramInt1, int paramInt2)
  {
    return (String)getObject(paramInt1, paramInt2, 28);
  }

  public int getType(int paramInt)
  {
    int i = 16;
    if (this.msgType != null)
      i = this.msgType.getType(paramInt);
    if (i == 16)
      if (this.wireTypes == null)
        break label97;
    label97: for (Integer localInteger = (Integer)this.wireTypes.get(paramInt); ; localInteger = null)
    {
      if (localInteger != null)
        i = localInteger.intValue();
      if ((i == 16) && (getCount(paramInt) > 0))
      {
        Object localObject = getObject(paramInt, 0, 16);
        if ((!(localObject instanceof Long)) && (!(localObject instanceof Boolean)))
          break;
        i = 0;
      }
      return i;
    }
    return 2;
  }

  public ProtoBufType getType()
  {
    return this.msgType;
  }

  public boolean has(int paramInt)
  {
    return (getCount(paramInt) > 0) || (getDefault(paramInt) != null);
  }

  public void insertBool(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (paramBoolean);
    for (Boolean localBoolean = TRUE; ; localBoolean = FALSE)
    {
      insertObject(paramInt1, paramInt2, localBoolean);
      return;
    }
  }

  public void insertBytes(int paramInt1, int paramInt2, byte[] paramArrayOfByte)
  {
    insertObject(paramInt1, paramInt2, paramArrayOfByte);
  }

  public void insertDouble(int paramInt1, int paramInt2, double paramDouble)
  {
    insertLong(paramInt1, paramInt2, Double.doubleToLongBits(paramDouble));
  }

  public void insertFloat(int paramInt1, int paramInt2, float paramFloat)
  {
    insertInt(paramInt1, paramInt2, Float.floatToIntBits(paramFloat));
  }

  public void insertInt(int paramInt1, int paramInt2, int paramInt3)
  {
    insertLong(paramInt1, paramInt2, paramInt3);
  }

  public void insertLong(int paramInt1, int paramInt2, long paramLong)
  {
    insertObject(paramInt1, paramInt2, Primitives.toLong(paramLong));
  }

  public void insertProtoBuf(int paramInt1, int paramInt2, ProtoBuf paramProtoBuf)
  {
    insertObject(paramInt1, paramInt2, paramProtoBuf);
  }

  public void insertString(int paramInt1, int paramInt2, String paramString)
  {
    insertObject(paramInt1, paramInt2, paramString);
  }

  public boolean isValid()
  {
    return (this.msgType == null) || (this.msgType.isValidProto(this));
  }

  public int maxTag()
  {
    return this.values.maxKey();
  }

  public void outputTo(OutputStream paramOutputStream)
    throws IOException
  {
    outputTo(paramOutputStream, false);
  }

  public void outputWithSizeTo(OutputStream paramOutputStream)
    throws IOException
  {
    outputTo(paramOutputStream, true);
  }

  public int parse(InputStream paramInputStream, int paramInt)
    throws IOException
  {
    return parseInternal(paramInputStream, paramInt, true, new SimpleCounter(null));
  }

  public ProtoBuf parse(InputStream paramInputStream)
    throws IOException
  {
    parse(paramInputStream, 2147483647);
    return this;
  }

  public ProtoBuf parse(byte[] paramArrayOfByte)
    throws IOException
  {
    parse(new ByteArrayInputStream(paramArrayOfByte), paramArrayOfByte.length);
    return this;
  }

  public void remove(int paramInt1, int paramInt2)
  {
    int i = getCount(paramInt1);
    if (paramInt2 >= i)
      throw new ArrayIndexOutOfBoundsException();
    if (i == 1)
    {
      this.values.remove(paramInt1);
      return;
    }
    ((Vector)this.values.get(paramInt1)).removeElementAt(paramInt2);
  }

  public void setBool(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (paramBoolean);
    for (Boolean localBoolean = TRUE; ; localBoolean = FALSE)
    {
      setObject(paramInt1, paramInt2, localBoolean);
      return;
    }
  }

  public void setBool(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean);
    for (Boolean localBoolean = TRUE; ; localBoolean = FALSE)
    {
      setObject(paramInt, localBoolean);
      return;
    }
  }

  public void setBytes(int paramInt1, int paramInt2, byte[] paramArrayOfByte)
  {
    setObject(paramInt1, paramInt2, paramArrayOfByte);
  }

  public void setBytes(int paramInt, byte[] paramArrayOfByte)
  {
    setObject(paramInt, paramArrayOfByte);
  }

  public void setDouble(int paramInt, double paramDouble)
  {
    setLong(paramInt, Double.doubleToLongBits(paramDouble));
  }

  public void setDouble(int paramInt1, int paramInt2, double paramDouble)
  {
    setLong(paramInt1, paramInt2, Double.doubleToLongBits(paramDouble));
  }

  public void setFloat(int paramInt, float paramFloat)
  {
    setInt(paramInt, Float.floatToIntBits(paramFloat));
  }

  public void setFloat(int paramInt1, int paramInt2, float paramFloat)
  {
    setInt(paramInt1, paramInt2, Float.floatToIntBits(paramFloat));
  }

  public void setInt(int paramInt1, int paramInt2)
  {
    setLong(paramInt1, paramInt2);
  }

  public void setInt(int paramInt1, int paramInt2, int paramInt3)
  {
    setLong(paramInt1, paramInt2, paramInt3);
  }

  public void setLong(int paramInt1, int paramInt2, long paramLong)
  {
    setObject(paramInt1, paramInt2, Primitives.toLong(paramLong));
  }

  public void setLong(int paramInt, long paramLong)
  {
    setObject(paramInt, Primitives.toLong(paramLong));
  }

  public void setProtoBuf(int paramInt1, int paramInt2, ProtoBuf paramProtoBuf)
  {
    setObject(paramInt1, paramInt2, paramProtoBuf);
  }

  public void setProtoBuf(int paramInt, ProtoBuf paramProtoBuf)
  {
    setObject(paramInt, paramProtoBuf);
  }

  public void setString(int paramInt1, int paramInt2, String paramString)
  {
    setObject(paramInt1, paramInt2, paramString);
  }

  public void setString(int paramInt, String paramString)
  {
    setObject(paramInt, paramString);
  }

  void setType(ProtoBufType paramProtoBufType)
  {
    if ((!this.values.isEmpty()) || ((this.msgType != null) && (paramProtoBufType != null) && (paramProtoBufType != this.msgType)))
      throw new IllegalArgumentException();
    this.msgType = paramProtoBufType;
    this.wireTypes = null;
  }

  public byte[] toByteArray()
    throws IOException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    outputTo(localByteArrayOutputStream);
    return localByteArrayOutputStream.toByteArray();
  }

  private static class SimpleCounter
  {
    public int count = 0;
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.userfeedback.android.api.common.io.protocol.ProtoBuf
 * JD-Core Version:    0.6.2
 */