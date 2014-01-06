package com.google.glass.wifi;

import android.net.wifi.ScanResult;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.userevent.UserEventAction;
import com.google.glass.userevent.UserEventHelper;
import com.google.glass.util.Stopwatch;
import com.google.glass.util.WifiHelper;
import com.google.glass.util.WifiHelper.WifiScanCallback;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class WifiScanner
{
  public static final int SCAN_COUNTS_PER_REFRESH = 3;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private boolean activeScan;
  private final Map<String, ScanResult> cumulativeScanResults = new HashMap();
  private boolean isContinuous;
  private int scanCount = 0;
  private volatile boolean stopScanning = false;
  private Stopwatch timer;
  private final UserEventHelper userEventHelper;
  private final WifiCumulativeScannerCallback wifiCumulativeScannerCallback;
  private final WifiHelper wifiHelper;
  private final WifiHelper.WifiScanCallback wifiScanCallback = new WifiHelper.WifiScanCallback()
  {
    public void onScanResultsAvailable(List<ScanResult> paramAnonymousList)
    {
      boolean bool = true;
      WifiScanner.access$008(WifiScanner.this);
      FormattingLogger localFormattingLogger = WifiScanner.logger;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(WifiScanner.this.scanCount);
      arrayOfObject[bool] = WifiScanner.this.timer;
      localFormattingLogger.d("Scan results received, scanCount=%s %s", arrayOfObject);
      WifiScanner.this.addCumulativeScanResults(paramAnonymousList);
      if (WifiScanner.this.stopScanning)
      {
        WifiScanner.logger.d("aborting scan", new Object[0]);
        WifiScanner.access$402(WifiScanner.this, false);
        return;
      }
      if ((!WifiScanner.this.isContinuous) && (WifiScanner.this.scanCount == 3));
      while (true)
      {
        if (WifiScanner.this.wifiCumulativeScannerCallback != null)
          WifiScanner.this.wifiCumulativeScannerCallback.onCumulativeScanResultsAvailable(bool);
        if (bool)
          break;
        WifiScanner.this.wifiHelper.startScan(WifiScanner.this.activeScan, this);
        return;
        bool = false;
      }
    }
  };

  public WifiScanner(WifiHelper paramWifiHelper, UserEventHelper paramUserEventHelper, WifiCumulativeScannerCallback paramWifiCumulativeScannerCallback)
  {
    this.wifiHelper = paramWifiHelper;
    this.userEventHelper = paramUserEventHelper;
    this.wifiCumulativeScannerCallback = paramWifiCumulativeScannerCallback;
  }

  private List<ScanResult> addAndReturnCumulativeScanResults(List<ScanResult> paramList)
  {
    addCumulativeScanResults(paramList);
    ArrayList localArrayList = new ArrayList(this.cumulativeScanResults.values());
    Collections.sort(localArrayList, WifiHelper.SCAN_RESULT_COMPARATOR);
    return localArrayList;
  }

  private void addCumulativeScanResults(List<ScanResult> paramList)
  {
    if (paramList != null)
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        ScanResult localScanResult = (ScanResult)localIterator.next();
        this.cumulativeScanResults.put(localScanResult.BSSID, localScanResult);
      }
    }
  }

  public void clear()
  {
    this.scanCount = 0;
    this.stopScanning = false;
    this.cumulativeScanResults.clear();
  }

  public List<ScanResult> fetchLastestCumulativeScanResults()
  {
    List localList = this.wifiHelper.getScanResults();
    FormattingLogger localFormattingLogger = logger;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(this.scanCount);
    localFormattingLogger.d("Scan results fetched, scanCount=%s", arrayOfObject);
    return addAndReturnCumulativeScanResults(localList);
  }

  public void startScan(boolean paramBoolean)
  {
    startScan(paramBoolean, false);
  }

  public void startScan(boolean paramBoolean1, boolean paramBoolean2)
  {
    this.isContinuous = paramBoolean2;
    clear();
    this.activeScan = paramBoolean1;
    this.timer = new Stopwatch("Scan time").start();
    logger.d("Starting WifiScan", new Object[0]);
    this.wifiHelper.startScan(paramBoolean1, this.wifiScanCallback);
  }

  public void stopScanning()
  {
    this.stopScanning = true;
    if (this.timer != null)
    {
      this.userEventHelper.log(UserEventAction.CONNECTIVITY_WIFI_SCANNING_STOPPED, UserEventHelper.createEventTuple("l", Long.valueOf(this.timer.getTotalElapsedMilliseconds()), new Object[0]));
      FormattingLogger localFormattingLogger = logger;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = this.timer;
      localFormattingLogger.d("Request to stop Wifi scanning %s", arrayOfObject);
    }
  }

  public static abstract interface WifiCumulativeScannerCallback
  {
    public abstract void onCumulativeScanResultsAvailable(boolean paramBoolean);
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.wifi.WifiScanner
 * JD-Core Version:    0.6.2
 */