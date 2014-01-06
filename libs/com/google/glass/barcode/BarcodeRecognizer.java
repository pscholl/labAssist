package com.google.glass.barcode;

import com.google.android.libraries.barhopper.Barcode;

public abstract interface BarcodeRecognizer
{
  public abstract Barcode recognize(byte[] paramArrayOfByte, int paramInt1, int paramInt2);
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.barcode.BarcodeRecognizer
 * JD-Core Version:    0.6.2
 */