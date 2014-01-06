package com.google.glass.logging;

import android.net.TrafficStats;
import android.text.TextUtils;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class PerformanceUtil
{
  private static final String BATTERY_TEMPERATURE_FILE = "/sys/class/power_supply/bq27520-0/temp";
  private static final String BOARD_TEMPERATURE_FILE = "/sys/devices/platform/notle_pcb_sensor.0/temperature";
  public static final long BOARD_TEMPERATURE_WARNING_THRESHOLD = 55000L;
  private static final String CAPACITY_FILE_EVT2 = "/sys/class/power_supply/bq27520-0/capacity";
  private static final String CHARGE_FILE_EVT2 = "/sys/class/power_supply/bq27520-0/charge_now";
  private static final String CHARGE_WHEN_FULL_FILE_EVT2 = "/sys/class/power_supply/bq27520-0/charge_full";
  private static final String CPU_FREQUENCY_SCALING_GOVERNOR_FILE = "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor";
  private static final String CPU_FREQUENCY_TIME_FILE = "/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state";
  private static final String REPORTED_SOC_FILE_EVT2 = "/sys/class/power_supply/bq27520-0/capacity";
  private static final long UNKNOWN = -1L;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();

  public static long getBatteryCapacity()
  {
    return readLongValue("/sys/class/power_supply/bq27520-0/capacity");
  }

  public static long getBatteryChargeWhenFullUah()
  {
    return readLongValue("/sys/class/power_supply/bq27520-0/charge_full");
  }

  public static long getBatteryStateOfChargeUah()
  {
    return readLongValue("/sys/class/power_supply/bq27520-0/charge_now");
  }

  public static long getBatteryTemperature()
  {
    return 100L * readLongValue("/sys/class/power_supply/bq27520-0/temp");
  }

  public static long getBoardTemperature()
  {
    return readLongValue("/sys/devices/platform/notle_pcb_sensor.0/temperature");
  }

  public static int getFrequencyScalingGovernor()
  {
    String str = readStringValue("/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor").trim();
    if (TextUtils.isEmpty(str))
      return -1;
    try
    {
      int i = ScalingGovernor.valueOf(str.toUpperCase()).getId();
      return i;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      logger.e(localIllegalArgumentException, "Failed to convert name to ScalingGovernor: %s", new Object[] { str });
    }
    return -1;
  }

  public static void getFrequencyStats(Map<Long, Long> paramMap)
  {
    if (!readLongToLongMapFile("/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state", paramMap))
    {
      logger.e("Failed to read time spent at different cpu frequencies from file: %s", new Object[] { "/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state" });
      paramMap.clear();
    }
    while (true)
    {
      return;
      Iterator localIterator = paramMap.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        localEntry.setValue(Long.valueOf(10L * ((Long)localEntry.getValue()).longValue()));
      }
    }
  }

  public static long getReportedBatteryStateOfChargePercent()
  {
    return readLongValue("/sys/class/power_supply/bq27520-0/capacity");
  }

  public static long getTotalBytesSent()
  {
    return TrafficStats.getTotalTxBytes();
  }

  // ERROR //
  private static boolean readLongToLongMapFile(String paramString, Map<Long, Long> paramMap)
  {
    // Byte code:
    //   0: invokestatic 174	com/google/glass/predicates/Assert:assertNotUiThread	()V
    //   3: new 176	java/io/File
    //   6: dup
    //   7: aload_0
    //   8: invokespecial 179	java/io/File:<init>	(Ljava/lang/String;)V
    //   11: astore_2
    //   12: aload_2
    //   13: invokevirtual 182	java/io/File:exists	()Z
    //   16: ifne +23 -> 39
    //   19: getstatic 46	com/google/glass/logging/PerformanceUtil:logger	Lcom/google/glass/logging/FormattingLogger;
    //   22: ldc 184
    //   24: iconst_1
    //   25: anewarray 4	java/lang/Object
    //   28: dup
    //   29: iconst_0
    //   30: aload_0
    //   31: aastore
    //   32: invokeinterface 112 3 0
    //   37: iconst_0
    //   38: ireturn
    //   39: aload_2
    //   40: invokevirtual 187	java/io/File:canRead	()Z
    //   43: ifne +23 -> 66
    //   46: getstatic 46	com/google/glass/logging/PerformanceUtil:logger	Lcom/google/glass/logging/FormattingLogger;
    //   49: ldc 189
    //   51: iconst_1
    //   52: anewarray 4	java/lang/Object
    //   55: dup
    //   56: iconst_0
    //   57: aload_0
    //   58: aastore
    //   59: invokeinterface 112 3 0
    //   64: iconst_0
    //   65: ireturn
    //   66: aconst_null
    //   67: astore_3
    //   68: new 191	java/io/BufferedReader
    //   71: dup
    //   72: new 193	java/io/FileReader
    //   75: dup
    //   76: aload_2
    //   77: invokespecial 196	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   80: invokespecial 199	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   83: astore 4
    //   85: aload 4
    //   87: invokevirtual 202	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   90: astore 13
    //   92: aload 13
    //   94: ifnull +229 -> 323
    //   97: aload 13
    //   99: invokestatic 81	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   102: ifeq +57 -> 159
    //   105: getstatic 46	com/google/glass/logging/PerformanceUtil:logger	Lcom/google/glass/logging/FormattingLogger;
    //   108: ldc 204
    //   110: iconst_1
    //   111: anewarray 4	java/lang/Object
    //   114: dup
    //   115: iconst_0
    //   116: aload_0
    //   117: aastore
    //   118: invokeinterface 112 3 0
    //   123: aload 4
    //   125: ifnull -88 -> 37
    //   128: aload 4
    //   130: invokevirtual 207	java/io/BufferedReader:close	()V
    //   133: iconst_0
    //   134: ireturn
    //   135: astore 17
    //   137: getstatic 46	com/google/glass/logging/PerformanceUtil:logger	Lcom/google/glass/logging/FormattingLogger;
    //   140: aload 17
    //   142: ldc 209
    //   144: iconst_1
    //   145: anewarray 4	java/lang/Object
    //   148: dup
    //   149: iconst_0
    //   150: aload_0
    //   151: aastore
    //   152: invokeinterface 101 4 0
    //   157: iconst_0
    //   158: ireturn
    //   159: aload 13
    //   161: ldc 211
    //   163: invokevirtual 215	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   166: astore 14
    //   168: aload 14
    //   170: arraylength
    //   171: iconst_2
    //   172: if_icmpeq +62 -> 234
    //   175: getstatic 46	com/google/glass/logging/PerformanceUtil:logger	Lcom/google/glass/logging/FormattingLogger;
    //   178: ldc 217
    //   180: iconst_2
    //   181: anewarray 4	java/lang/Object
    //   184: dup
    //   185: iconst_0
    //   186: aload_0
    //   187: aastore
    //   188: dup
    //   189: iconst_1
    //   190: aload 13
    //   192: aastore
    //   193: invokeinterface 112 3 0
    //   198: aload 4
    //   200: ifnull -163 -> 37
    //   203: aload 4
    //   205: invokevirtual 207	java/io/BufferedReader:close	()V
    //   208: iconst_0
    //   209: ireturn
    //   210: astore 16
    //   212: getstatic 46	com/google/glass/logging/PerformanceUtil:logger	Lcom/google/glass/logging/FormattingLogger;
    //   215: aload 16
    //   217: ldc 209
    //   219: iconst_1
    //   220: anewarray 4	java/lang/Object
    //   223: dup
    //   224: iconst_0
    //   225: aload_0
    //   226: aastore
    //   227: invokeinterface 101 4 0
    //   232: iconst_0
    //   233: ireturn
    //   234: aload_1
    //   235: aload 14
    //   237: iconst_0
    //   238: aaload
    //   239: invokestatic 220	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   242: invokestatic 152	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   245: aload 14
    //   247: iconst_1
    //   248: aaload
    //   249: invokestatic 220	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   252: invokestatic 152	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   255: invokeinterface 224 3 0
    //   260: pop
    //   261: goto -176 -> 85
    //   264: astore 11
    //   266: aload 4
    //   268: astore_3
    //   269: getstatic 46	com/google/glass/logging/PerformanceUtil:logger	Lcom/google/glass/logging/FormattingLogger;
    //   272: aload 11
    //   274: ldc 226
    //   276: iconst_1
    //   277: anewarray 4	java/lang/Object
    //   280: dup
    //   281: iconst_0
    //   282: aload_0
    //   283: aastore
    //   284: invokeinterface 101 4 0
    //   289: aload_3
    //   290: ifnull -253 -> 37
    //   293: aload_3
    //   294: invokevirtual 207	java/io/BufferedReader:close	()V
    //   297: iconst_0
    //   298: ireturn
    //   299: astore 12
    //   301: getstatic 46	com/google/glass/logging/PerformanceUtil:logger	Lcom/google/glass/logging/FormattingLogger;
    //   304: aload 12
    //   306: ldc 209
    //   308: iconst_1
    //   309: anewarray 4	java/lang/Object
    //   312: dup
    //   313: iconst_0
    //   314: aload_0
    //   315: aastore
    //   316: invokeinterface 101 4 0
    //   321: iconst_0
    //   322: ireturn
    //   323: aload 4
    //   325: ifnull +8 -> 333
    //   328: aload 4
    //   330: invokevirtual 207	java/io/BufferedReader:close	()V
    //   333: iconst_1
    //   334: ireturn
    //   335: astore 18
    //   337: getstatic 46	com/google/glass/logging/PerformanceUtil:logger	Lcom/google/glass/logging/FormattingLogger;
    //   340: aload 18
    //   342: ldc 209
    //   344: iconst_1
    //   345: anewarray 4	java/lang/Object
    //   348: dup
    //   349: iconst_0
    //   350: aload_0
    //   351: aastore
    //   352: invokeinterface 101 4 0
    //   357: goto -24 -> 333
    //   360: astore 5
    //   362: getstatic 46	com/google/glass/logging/PerformanceUtil:logger	Lcom/google/glass/logging/FormattingLogger;
    //   365: aload 5
    //   367: ldc 228
    //   369: iconst_1
    //   370: anewarray 4	java/lang/Object
    //   373: dup
    //   374: iconst_0
    //   375: aload_0
    //   376: aastore
    //   377: invokeinterface 101 4 0
    //   382: aload_3
    //   383: ifnull -346 -> 37
    //   386: aload_3
    //   387: invokevirtual 207	java/io/BufferedReader:close	()V
    //   390: iconst_0
    //   391: ireturn
    //   392: astore 8
    //   394: getstatic 46	com/google/glass/logging/PerformanceUtil:logger	Lcom/google/glass/logging/FormattingLogger;
    //   397: aload 8
    //   399: ldc 209
    //   401: iconst_1
    //   402: anewarray 4	java/lang/Object
    //   405: dup
    //   406: iconst_0
    //   407: aload_0
    //   408: aastore
    //   409: invokeinterface 101 4 0
    //   414: iconst_0
    //   415: ireturn
    //   416: astore 9
    //   418: getstatic 46	com/google/glass/logging/PerformanceUtil:logger	Lcom/google/glass/logging/FormattingLogger;
    //   421: aload 9
    //   423: ldc 230
    //   425: iconst_1
    //   426: anewarray 4	java/lang/Object
    //   429: dup
    //   430: iconst_0
    //   431: aload_0
    //   432: aastore
    //   433: invokeinterface 101 4 0
    //   438: aload_3
    //   439: ifnull -402 -> 37
    //   442: aload_3
    //   443: invokevirtual 207	java/io/BufferedReader:close	()V
    //   446: iconst_0
    //   447: ireturn
    //   448: astore 10
    //   450: getstatic 46	com/google/glass/logging/PerformanceUtil:logger	Lcom/google/glass/logging/FormattingLogger;
    //   453: aload 10
    //   455: ldc 209
    //   457: iconst_1
    //   458: anewarray 4	java/lang/Object
    //   461: dup
    //   462: iconst_0
    //   463: aload_0
    //   464: aastore
    //   465: invokeinterface 101 4 0
    //   470: iconst_0
    //   471: ireturn
    //   472: astore 6
    //   474: aload_3
    //   475: ifnull +7 -> 482
    //   478: aload_3
    //   479: invokevirtual 207	java/io/BufferedReader:close	()V
    //   482: aload 6
    //   484: athrow
    //   485: astore 7
    //   487: getstatic 46	com/google/glass/logging/PerformanceUtil:logger	Lcom/google/glass/logging/FormattingLogger;
    //   490: aload 7
    //   492: ldc 209
    //   494: iconst_1
    //   495: anewarray 4	java/lang/Object
    //   498: dup
    //   499: iconst_0
    //   500: aload_0
    //   501: aastore
    //   502: invokeinterface 101 4 0
    //   507: goto -25 -> 482
    //   510: astore 6
    //   512: aload 4
    //   514: astore_3
    //   515: goto -41 -> 474
    //   518: astore 9
    //   520: aload 4
    //   522: astore_3
    //   523: goto -105 -> 418
    //   526: astore 5
    //   528: aload 4
    //   530: astore_3
    //   531: goto -169 -> 362
    //   534: astore 11
    //   536: aconst_null
    //   537: astore_3
    //   538: goto -269 -> 269
    //
    // Exception table:
    //   from	to	target	type
    //   128	133	135	java/io/IOException
    //   203	208	210	java/io/IOException
    //   85	92	264	java/io/FileNotFoundException
    //   97	123	264	java/io/FileNotFoundException
    //   159	198	264	java/io/FileNotFoundException
    //   234	261	264	java/io/FileNotFoundException
    //   293	297	299	java/io/IOException
    //   328	333	335	java/io/IOException
    //   68	85	360	java/io/IOException
    //   386	390	392	java/io/IOException
    //   68	85	416	java/lang/NumberFormatException
    //   442	446	448	java/io/IOException
    //   68	85	472	finally
    //   269	289	472	finally
    //   362	382	472	finally
    //   418	438	472	finally
    //   478	482	485	java/io/IOException
    //   85	92	510	finally
    //   97	123	510	finally
    //   159	198	510	finally
    //   234	261	510	finally
    //   85	92	518	java/lang/NumberFormatException
    //   97	123	518	java/lang/NumberFormatException
    //   159	198	518	java/lang/NumberFormatException
    //   234	261	518	java/lang/NumberFormatException
    //   85	92	526	java/io/IOException
    //   97	123	526	java/io/IOException
    //   159	198	526	java/io/IOException
    //   234	261	526	java/io/IOException
    //   68	85	534	java/io/FileNotFoundException
  }

  private static long readLongValue(String paramString)
  {
    String str = readStringValue(paramString);
    if (TextUtils.isEmpty(str))
      return -1L;
    try
    {
      long l = Long.parseLong(str);
      return l;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      logger.e(localNumberFormatException, "Error reading the value as long from file: %s", new Object[] { paramString });
    }
    return -1L;
  }

  private static String readStringValue(String paramString)
  {
    return readSystemFile(paramString);
  }

  // ERROR //
  private static String readSystemFile(String paramString)
  {
    // Byte code:
    //   0: invokestatic 174	com/google/glass/predicates/Assert:assertNotUiThread	()V
    //   3: new 176	java/io/File
    //   6: dup
    //   7: aload_0
    //   8: invokespecial 179	java/io/File:<init>	(Ljava/lang/String;)V
    //   11: astore_1
    //   12: aload_1
    //   13: invokevirtual 182	java/io/File:exists	()Z
    //   16: ifne +27 -> 43
    //   19: getstatic 46	com/google/glass/logging/PerformanceUtil:logger	Lcom/google/glass/logging/FormattingLogger;
    //   22: ldc 184
    //   24: iconst_1
    //   25: anewarray 4	java/lang/Object
    //   28: dup
    //   29: iconst_0
    //   30: aload_0
    //   31: aastore
    //   32: invokeinterface 112 3 0
    //   37: aconst_null
    //   38: astore 10
    //   40: aload 10
    //   42: areturn
    //   43: aload_1
    //   44: invokevirtual 187	java/io/File:canRead	()Z
    //   47: ifne +23 -> 70
    //   50: getstatic 46	com/google/glass/logging/PerformanceUtil:logger	Lcom/google/glass/logging/FormattingLogger;
    //   53: ldc 189
    //   55: iconst_1
    //   56: anewarray 4	java/lang/Object
    //   59: dup
    //   60: iconst_0
    //   61: aload_0
    //   62: aastore
    //   63: invokeinterface 112 3 0
    //   68: aconst_null
    //   69: areturn
    //   70: aconst_null
    //   71: astore_2
    //   72: new 191	java/io/BufferedReader
    //   75: dup
    //   76: new 193	java/io/FileReader
    //   79: dup
    //   80: aload_1
    //   81: invokespecial 196	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   84: invokespecial 199	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   87: astore_3
    //   88: aload_3
    //   89: invokevirtual 202	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   92: astore 10
    //   94: aload 10
    //   96: invokestatic 81	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   99: ifeq +56 -> 155
    //   102: getstatic 46	com/google/glass/logging/PerformanceUtil:logger	Lcom/google/glass/logging/FormattingLogger;
    //   105: ldc 204
    //   107: iconst_1
    //   108: anewarray 4	java/lang/Object
    //   111: dup
    //   112: iconst_0
    //   113: aload_0
    //   114: aastore
    //   115: invokeinterface 112 3 0
    //   120: aload_3
    //   121: ifnull +7 -> 128
    //   124: aload_3
    //   125: invokevirtual 207	java/io/BufferedReader:close	()V
    //   128: aconst_null
    //   129: areturn
    //   130: astore 12
    //   132: getstatic 46	com/google/glass/logging/PerformanceUtil:logger	Lcom/google/glass/logging/FormattingLogger;
    //   135: aload 12
    //   137: ldc 209
    //   139: iconst_1
    //   140: anewarray 4	java/lang/Object
    //   143: dup
    //   144: iconst_0
    //   145: aload_0
    //   146: aastore
    //   147: invokeinterface 101 4 0
    //   152: goto -24 -> 128
    //   155: aload_3
    //   156: ifnull -116 -> 40
    //   159: aload_3
    //   160: invokevirtual 207	java/io/BufferedReader:close	()V
    //   163: aload 10
    //   165: areturn
    //   166: astore 11
    //   168: getstatic 46	com/google/glass/logging/PerformanceUtil:logger	Lcom/google/glass/logging/FormattingLogger;
    //   171: aload 11
    //   173: ldc 209
    //   175: iconst_1
    //   176: anewarray 4	java/lang/Object
    //   179: dup
    //   180: iconst_0
    //   181: aload_0
    //   182: aastore
    //   183: invokeinterface 101 4 0
    //   188: aload 10
    //   190: areturn
    //   191: astore 4
    //   193: getstatic 46	com/google/glass/logging/PerformanceUtil:logger	Lcom/google/glass/logging/FormattingLogger;
    //   196: aload 4
    //   198: ldc 226
    //   200: iconst_1
    //   201: anewarray 4	java/lang/Object
    //   204: dup
    //   205: iconst_0
    //   206: aload_0
    //   207: aastore
    //   208: invokeinterface 101 4 0
    //   213: aload_2
    //   214: ifnull +7 -> 221
    //   217: aload_2
    //   218: invokevirtual 207	java/io/BufferedReader:close	()V
    //   221: aconst_null
    //   222: areturn
    //   223: astore 7
    //   225: getstatic 46	com/google/glass/logging/PerformanceUtil:logger	Lcom/google/glass/logging/FormattingLogger;
    //   228: aload 7
    //   230: ldc 209
    //   232: iconst_1
    //   233: anewarray 4	java/lang/Object
    //   236: dup
    //   237: iconst_0
    //   238: aload_0
    //   239: aastore
    //   240: invokeinterface 101 4 0
    //   245: goto -24 -> 221
    //   248: astore 8
    //   250: getstatic 46	com/google/glass/logging/PerformanceUtil:logger	Lcom/google/glass/logging/FormattingLogger;
    //   253: aload 8
    //   255: ldc 228
    //   257: iconst_1
    //   258: anewarray 4	java/lang/Object
    //   261: dup
    //   262: iconst_0
    //   263: aload_0
    //   264: aastore
    //   265: invokeinterface 101 4 0
    //   270: aload_2
    //   271: ifnull -50 -> 221
    //   274: aload_2
    //   275: invokevirtual 207	java/io/BufferedReader:close	()V
    //   278: goto -57 -> 221
    //   281: astore 9
    //   283: getstatic 46	com/google/glass/logging/PerformanceUtil:logger	Lcom/google/glass/logging/FormattingLogger;
    //   286: aload 9
    //   288: ldc 209
    //   290: iconst_1
    //   291: anewarray 4	java/lang/Object
    //   294: dup
    //   295: iconst_0
    //   296: aload_0
    //   297: aastore
    //   298: invokeinterface 101 4 0
    //   303: goto -82 -> 221
    //   306: astore 5
    //   308: aload_2
    //   309: ifnull +7 -> 316
    //   312: aload_2
    //   313: invokevirtual 207	java/io/BufferedReader:close	()V
    //   316: aload 5
    //   318: athrow
    //   319: astore 6
    //   321: getstatic 46	com/google/glass/logging/PerformanceUtil:logger	Lcom/google/glass/logging/FormattingLogger;
    //   324: aload 6
    //   326: ldc 209
    //   328: iconst_1
    //   329: anewarray 4	java/lang/Object
    //   332: dup
    //   333: iconst_0
    //   334: aload_0
    //   335: aastore
    //   336: invokeinterface 101 4 0
    //   341: goto -25 -> 316
    //   344: astore 5
    //   346: aload_3
    //   347: astore_2
    //   348: goto -40 -> 308
    //   351: astore 8
    //   353: aload_3
    //   354: astore_2
    //   355: goto -105 -> 250
    //   358: astore 4
    //   360: aload_3
    //   361: astore_2
    //   362: goto -169 -> 193
    //
    // Exception table:
    //   from	to	target	type
    //   124	128	130	java/io/IOException
    //   159	163	166	java/io/IOException
    //   72	88	191	java/io/FileNotFoundException
    //   217	221	223	java/io/IOException
    //   72	88	248	java/io/IOException
    //   274	278	281	java/io/IOException
    //   72	88	306	finally
    //   193	213	306	finally
    //   250	270	306	finally
    //   312	316	319	java/io/IOException
    //   88	120	344	finally
    //   88	120	351	java/io/IOException
    //   88	120	358	java/io/FileNotFoundException
  }

  static enum ScalingGovernor
  {
    private final int id;

    static
    {
      CONSERVATIVE = new ScalingGovernor("CONSERVATIVE", 3, 3);
      PERFORMANCE = new ScalingGovernor("PERFORMANCE", 4, 4);
      HOTPLUG = new ScalingGovernor("HOTPLUG", 5, 5);
      USERSPACE = new ScalingGovernor("USERSPACE", 6, 6);
      ScalingGovernor[] arrayOfScalingGovernor = new ScalingGovernor[7];
      arrayOfScalingGovernor[0] = INTERACTIVE;
      arrayOfScalingGovernor[1] = ONDEMAND;
      arrayOfScalingGovernor[2] = POWERSAVE;
      arrayOfScalingGovernor[3] = CONSERVATIVE;
      arrayOfScalingGovernor[4] = PERFORMANCE;
      arrayOfScalingGovernor[5] = HOTPLUG;
      arrayOfScalingGovernor[6] = USERSPACE;
    }

    private ScalingGovernor(int paramInt)
    {
      this.id = paramInt;
    }

    public int getId()
    {
      return this.id;
    }
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.logging.PerformanceUtil
 * JD-Core Version:    0.6.2
 */