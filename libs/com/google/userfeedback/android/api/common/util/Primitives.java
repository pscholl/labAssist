package com.google.userfeedback.android.api.common.util;

public class Primitives
{
  private static PrimitiveConverter converter;

  static
  {
    resetConverter();
  }

  static void injectConverter(PrimitiveConverter paramPrimitiveConverter)
  {
    converter = paramPrimitiveConverter;
  }

  static void resetConverter()
  {
    converter = new J2meConverter(null);
  }

  public static Integer toInteger(int paramInt)
  {
    return converter.toInteger(paramInt);
  }

  public static Long toLong(long paramLong)
  {
    return converter.toLong(paramLong);
  }

  private static class J2meConverter extends Primitives.PrimitiveConverter
  {
    private Integer[] SMALL_INTS;
    private Long[] SMALL_LONGS;

    private J2meConverter()
    {
      Long[] arrayOfLong = new Long[16];
      arrayOfLong[0] = new Long(0L);
      arrayOfLong[1] = new Long(1L);
      arrayOfLong[2] = new Long(2L);
      arrayOfLong[3] = new Long(3L);
      arrayOfLong[4] = new Long(4L);
      arrayOfLong[5] = new Long(5L);
      arrayOfLong[6] = new Long(6L);
      arrayOfLong[7] = new Long(7L);
      arrayOfLong[8] = new Long(8L);
      arrayOfLong[9] = new Long(9L);
      arrayOfLong[10] = new Long(10L);
      arrayOfLong[11] = new Long(11L);
      arrayOfLong[12] = new Long(12L);
      arrayOfLong[13] = new Long(13L);
      arrayOfLong[14] = new Long(14L);
      arrayOfLong[15] = new Long(15L);
      this.SMALL_LONGS = arrayOfLong;
      Integer[] arrayOfInteger = new Integer[16];
      arrayOfInteger[0] = Integer.valueOf(0);
      arrayOfInteger[1] = Integer.valueOf(1);
      arrayOfInteger[2] = Integer.valueOf(2);
      arrayOfInteger[3] = Integer.valueOf(3);
      arrayOfInteger[4] = Integer.valueOf(4);
      arrayOfInteger[5] = Integer.valueOf(5);
      arrayOfInteger[6] = Integer.valueOf(6);
      arrayOfInteger[7] = Integer.valueOf(7);
      arrayOfInteger[8] = Integer.valueOf(8);
      arrayOfInteger[9] = Integer.valueOf(9);
      arrayOfInteger[10] = Integer.valueOf(10);
      arrayOfInteger[11] = Integer.valueOf(11);
      arrayOfInteger[12] = Integer.valueOf(12);
      arrayOfInteger[13] = Integer.valueOf(13);
      arrayOfInteger[14] = Integer.valueOf(14);
      arrayOfInteger[15] = Integer.valueOf(15);
      this.SMALL_INTS = arrayOfInteger;
    }

    public Integer toInteger(int paramInt)
    {
      if ((paramInt >= 0) && (paramInt < this.SMALL_INTS.length))
        return this.SMALL_INTS[paramInt];
      return Integer.valueOf(paramInt);
    }

    public Long toLong(long paramLong)
    {
      if ((paramLong >= 0L) && (paramLong < this.SMALL_LONGS.length))
        return this.SMALL_LONGS[((int)paramLong)];
      return new Long(paramLong);
    }
  }

  public static abstract class PrimitiveConverter
  {
    public abstract Integer toInteger(int paramInt);

    public abstract Long toLong(long paramLong);
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.userfeedback.android.api.common.util.Primitives
 * JD-Core Version:    0.6.2
 */