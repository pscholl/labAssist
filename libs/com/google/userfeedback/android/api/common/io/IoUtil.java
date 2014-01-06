package com.google.userfeedback.android.api.common.io;

public class IoUtil
{
  public static String decodeUtf8(byte[] paramArrayOfByte, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    StringBuffer localStringBuffer = new StringBuffer(paramInt2 - paramInt1);
    int i = paramInt1;
    int j;
    label94: int i1;
    int i3;
    int i4;
    int i5;
    label176: int i7;
    if (i < paramInt2)
    {
      j = i + 1;
      int k = 0xFF & paramArrayOfByte[i];
      if (k <= 127)
        localStringBuffer.append((char)k);
      while (true)
      {
        i = j;
        break;
        if (k < 245)
          break label94;
        if (!paramBoolean)
          throw new IllegalArgumentException("Invalid UTF8");
        localStringBuffer.append((char)k);
      }
      int m = 224;
      int n = 1;
      i1 = 128;
      int i2 = 31;
      if (k >= m)
      {
        m = 0x80 | m >> 1;
        if (n == 1);
        for (int i8 = 4; ; i8 = 5)
        {
          i1 <<= i8;
          n++;
          i2 >>= 1;
          break;
        }
      }
      i3 = k & i2;
      i4 = 0;
      i5 = j;
      if (i4 < n)
      {
        i3 <<= 6;
        if (i5 >= paramInt2)
        {
          if (paramBoolean)
            break label375;
          throw new IllegalArgumentException("Invalid UTF8");
        }
        if ((!paramBoolean) && ((0xC0 & paramArrayOfByte[i5]) != 128))
          throw new IllegalArgumentException("Invalid UTF8");
        i7 = i5 + 1;
        i3 |= 0x3F & paramArrayOfByte[i5];
      }
    }
    while (true)
    {
      i4++;
      i5 = i7;
      break label176;
      if (((!paramBoolean) && (i3 < i1)) || ((i3 >= 55296) && (i3 <= 57343)))
        throw new IllegalArgumentException("Invalid UTF8");
      if (i3 <= 65535)
      {
        localStringBuffer.append((char)i3);
        j = i5;
        break;
      }
      int i6 = i3 - 65536;
      localStringBuffer.append((char)(0xD800 | i6 >> 10));
      localStringBuffer.append((char)(0xDC00 | i6 & 0x3FF));
      j = i5;
      break;
      return localStringBuffer.toString();
      label375: i7 = i5;
    }
  }

  public static int encodeUtf8(String paramString, byte[] paramArrayOfByte, int paramInt)
  {
    int i = paramString.length();
    int j = 0;
    if (j < i)
    {
      int k = paramString.charAt(j);
      int n;
      if ((k >= 55296) && (k <= 57343) && (j + 1 < i))
      {
        int m = paramString.charAt(j + 1);
        if ((m & 0xFC00 ^ k & 0xFC00) == 1024)
        {
          j++;
          if ((m & 0xFC00) != 55296)
            break label139;
          n = m;
          m = k;
          label92: k = 65536 + ((n & 0x3FF) << 10 | m & 0x3FF);
        }
      }
      if (k <= 127)
      {
        if (paramArrayOfByte != null)
          paramArrayOfByte[paramInt] = ((byte)k);
        paramInt++;
      }
      while (true)
      {
        j++;
        break;
        label139: n = k;
        break label92;
        if (k <= 2047)
        {
          if (paramArrayOfByte != null)
          {
            paramArrayOfByte[paramInt] = ((byte)(0xC0 | k >> 6));
            paramArrayOfByte[(paramInt + 1)] = ((byte)(0x80 | k & 0x3F));
          }
          paramInt += 2;
        }
        else if (k <= 65535)
        {
          if (paramArrayOfByte != null)
          {
            paramArrayOfByte[paramInt] = ((byte)(0xE0 | k >> 12));
            paramArrayOfByte[(paramInt + 1)] = ((byte)(0x80 | 0x3F & k >> 6));
            paramArrayOfByte[(paramInt + 2)] = ((byte)(0x80 | k & 0x3F));
          }
          paramInt += 3;
        }
        else
        {
          if (paramArrayOfByte != null)
          {
            paramArrayOfByte[paramInt] = ((byte)(0xF0 | k >> 18));
            paramArrayOfByte[(paramInt + 1)] = ((byte)(0x80 | 0x3F & k >> 12));
            paramArrayOfByte[(paramInt + 2)] = ((byte)(0x80 | 0x3F & k >> 6));
            paramArrayOfByte[(paramInt + 3)] = ((byte)(0x80 | k & 0x3F));
          }
          paramInt += 4;
        }
      }
    }
    return paramInt;
  }

  public static byte[] encodeUtf8(String paramString)
  {
    byte[] arrayOfByte = new byte[encodeUtf8(paramString, null, 0)];
    encodeUtf8(paramString, arrayOfByte, 0);
    return arrayOfByte;
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.userfeedback.android.api.common.io.IoUtil
 * JD-Core Version:    0.6.2
 */