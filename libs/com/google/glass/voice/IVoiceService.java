package com.google.glass.voice;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.RemoteException;
import com.google.glass.voice.network.IVoiceInputCallback;
import com.google.glass.voice.network.IVoiceInputCallback.Stub;

public abstract interface IVoiceService extends IInterface
{
  public abstract void addListener(IVoiceServiceListener paramIVoiceServiceListener)
    throws RemoteException;

  public abstract void addVoiceInputCallback(IVoiceInputCallback paramIVoiceInputCallback)
    throws RemoteException;

  public abstract void endpointNetworkRecognizer()
    throws RemoteException;

  public abstract void loadConfig(VoiceConfig paramVoiceConfig)
    throws RemoteException;

  public abstract void reloadConfig(VoiceConfig paramVoiceConfig1, VoiceConfig paramVoiceConfig2)
    throws RemoteException;

  public abstract void removeListener(IVoiceServiceListener paramIVoiceServiceListener)
    throws RemoteException;

  public abstract void removeVoiceInputCallback(IVoiceInputCallback paramIVoiceInputCallback)
    throws RemoteException;

  public abstract void setConfig(VoiceConfig paramVoiceConfig, String paramString)
    throws RemoteException;

  public abstract void setWantAudioData(boolean paramBoolean)
    throws RemoteException;

  public abstract void unloadConfig(VoiceConfig paramVoiceConfig)
    throws RemoteException;

  public static abstract class Stub extends Binder
    implements IVoiceService
  {
    private static final String DESCRIPTOR = "com.google.glass.voice.IVoiceService";
    static final int TRANSACTION_addListener = 1;
    static final int TRANSACTION_addVoiceInputCallback = 7;
    static final int TRANSACTION_endpointNetworkRecognizer = 9;
    static final int TRANSACTION_loadConfig = 4;
    static final int TRANSACTION_reloadConfig = 5;
    static final int TRANSACTION_removeListener = 2;
    static final int TRANSACTION_removeVoiceInputCallback = 8;
    static final int TRANSACTION_setConfig = 3;
    static final int TRANSACTION_setWantAudioData = 10;
    static final int TRANSACTION_unloadConfig = 6;

    public Stub()
    {
      attachInterface(this, "com.google.glass.voice.IVoiceService");
    }

    public static IVoiceService asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null)
        return null;
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.glass.voice.IVoiceService");
      if ((localIInterface != null) && ((localIInterface instanceof IVoiceService)))
        return (IVoiceService)localIInterface;
      return new Proxy(paramIBinder);
    }

    public IBinder asBinder()
    {
      return this;
    }

    public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
      throws RemoteException
    {
      switch (paramInt1)
      {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.glass.voice.IVoiceService");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.google.glass.voice.IVoiceService");
        addListener(IVoiceServiceListener.Stub.asInterface(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 2:
        paramParcel1.enforceInterface("com.google.glass.voice.IVoiceService");
        removeListener(IVoiceServiceListener.Stub.asInterface(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 3:
        paramParcel1.enforceInterface("com.google.glass.voice.IVoiceService");
        if (paramParcel1.readInt() != 0);
        for (VoiceConfig localVoiceConfig5 = (VoiceConfig)VoiceConfig.CREATOR.createFromParcel(paramParcel1); ; localVoiceConfig5 = null)
        {
          setConfig(localVoiceConfig5, paramParcel1.readString());
          paramParcel2.writeNoException();
          return true;
        }
      case 4:
        paramParcel1.enforceInterface("com.google.glass.voice.IVoiceService");
        if (paramParcel1.readInt() != 0);
        for (VoiceConfig localVoiceConfig4 = (VoiceConfig)VoiceConfig.CREATOR.createFromParcel(paramParcel1); ; localVoiceConfig4 = null)
        {
          loadConfig(localVoiceConfig4);
          paramParcel2.writeNoException();
          return true;
        }
      case 5:
        paramParcel1.enforceInterface("com.google.glass.voice.IVoiceService");
        VoiceConfig localVoiceConfig2;
        if (paramParcel1.readInt() != 0)
        {
          localVoiceConfig2 = (VoiceConfig)VoiceConfig.CREATOR.createFromParcel(paramParcel1);
          if (paramParcel1.readInt() == 0)
            break label326;
        }
        for (VoiceConfig localVoiceConfig3 = (VoiceConfig)VoiceConfig.CREATOR.createFromParcel(paramParcel1); ; localVoiceConfig3 = null)
        {
          reloadConfig(localVoiceConfig2, localVoiceConfig3);
          paramParcel2.writeNoException();
          return true;
          localVoiceConfig2 = null;
          break;
        }
      case 6:
        paramParcel1.enforceInterface("com.google.glass.voice.IVoiceService");
        if (paramParcel1.readInt() != 0);
        for (VoiceConfig localVoiceConfig1 = (VoiceConfig)VoiceConfig.CREATOR.createFromParcel(paramParcel1); ; localVoiceConfig1 = null)
        {
          unloadConfig(localVoiceConfig1);
          paramParcel2.writeNoException();
          return true;
        }
      case 7:
        paramParcel1.enforceInterface("com.google.glass.voice.IVoiceService");
        addVoiceInputCallback(IVoiceInputCallback.Stub.asInterface(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 8:
        paramParcel1.enforceInterface("com.google.glass.voice.IVoiceService");
        removeVoiceInputCallback(IVoiceInputCallback.Stub.asInterface(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 9:
        label326: paramParcel1.enforceInterface("com.google.glass.voice.IVoiceService");
        endpointNetworkRecognizer();
        paramParcel2.writeNoException();
        return true;
      case 10:
      }
      paramParcel1.enforceInterface("com.google.glass.voice.IVoiceService");
      if (paramParcel1.readInt() != 0);
      for (boolean bool = true; ; bool = false)
      {
        setWantAudioData(bool);
        paramParcel2.writeNoException();
        return true;
      }
    }

    private static class Proxy
      implements IVoiceService
    {
      private IBinder mRemote;

      Proxy(IBinder paramIBinder)
      {
        this.mRemote = paramIBinder;
      }

      public void addListener(IVoiceServiceListener paramIVoiceServiceListener)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.voice.IVoiceService");
          if (paramIVoiceServiceListener != null);
          for (IBinder localIBinder = paramIVoiceServiceListener.asBinder(); ; localIBinder = null)
          {
            localParcel1.writeStrongBinder(localIBinder);
            this.mRemote.transact(1, localParcel1, localParcel2, 0);
            localParcel2.readException();
            return;
          }
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public void addVoiceInputCallback(IVoiceInputCallback paramIVoiceInputCallback)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.voice.IVoiceService");
          if (paramIVoiceInputCallback != null);
          for (IBinder localIBinder = paramIVoiceInputCallback.asBinder(); ; localIBinder = null)
          {
            localParcel1.writeStrongBinder(localIBinder);
            this.mRemote.transact(7, localParcel1, localParcel2, 0);
            localParcel2.readException();
            return;
          }
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public IBinder asBinder()
      {
        return this.mRemote;
      }

      public void endpointNetworkRecognizer()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.voice.IVoiceService");
          this.mRemote.transact(9, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public String getInterfaceDescriptor()
      {
        return "com.google.glass.voice.IVoiceService";
      }

      public void loadConfig(VoiceConfig paramVoiceConfig)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.voice.IVoiceService");
          if (paramVoiceConfig != null)
          {
            localParcel1.writeInt(1);
            paramVoiceConfig.writeToParcel(localParcel1, 0);
          }
          while (true)
          {
            this.mRemote.transact(4, localParcel1, localParcel2, 0);
            localParcel2.readException();
            return;
            localParcel1.writeInt(0);
          }
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public void reloadConfig(VoiceConfig paramVoiceConfig1, VoiceConfig paramVoiceConfig2)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        while (true)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.glass.voice.IVoiceService");
            if (paramVoiceConfig1 != null)
            {
              localParcel1.writeInt(1);
              paramVoiceConfig1.writeToParcel(localParcel1, 0);
              if (paramVoiceConfig2 != null)
              {
                localParcel1.writeInt(1);
                paramVoiceConfig2.writeToParcel(localParcel1, 0);
                this.mRemote.transact(5, localParcel1, localParcel2, 0);
                localParcel2.readException();
              }
            }
            else
            {
              localParcel1.writeInt(0);
              continue;
            }
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
          localParcel1.writeInt(0);
        }
      }

      public void removeListener(IVoiceServiceListener paramIVoiceServiceListener)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.voice.IVoiceService");
          if (paramIVoiceServiceListener != null);
          for (IBinder localIBinder = paramIVoiceServiceListener.asBinder(); ; localIBinder = null)
          {
            localParcel1.writeStrongBinder(localIBinder);
            this.mRemote.transact(2, localParcel1, localParcel2, 0);
            localParcel2.readException();
            return;
          }
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public void removeVoiceInputCallback(IVoiceInputCallback paramIVoiceInputCallback)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.voice.IVoiceService");
          if (paramIVoiceInputCallback != null);
          for (IBinder localIBinder = paramIVoiceInputCallback.asBinder(); ; localIBinder = null)
          {
            localParcel1.writeStrongBinder(localIBinder);
            this.mRemote.transact(8, localParcel1, localParcel2, 0);
            localParcel2.readException();
            return;
          }
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public void setConfig(VoiceConfig paramVoiceConfig, String paramString)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.voice.IVoiceService");
          if (paramVoiceConfig != null)
          {
            localParcel1.writeInt(1);
            paramVoiceConfig.writeToParcel(localParcel1, 0);
          }
          while (true)
          {
            localParcel1.writeString(paramString);
            this.mRemote.transact(3, localParcel1, localParcel2, 0);
            localParcel2.readException();
            return;
            localParcel1.writeInt(0);
          }
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public void setWantAudioData(boolean paramBoolean)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.voice.IVoiceService");
          int i = 0;
          if (paramBoolean)
            i = 1;
          localParcel1.writeInt(i);
          this.mRemote.transact(10, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public void unloadConfig(VoiceConfig paramVoiceConfig)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.glass.voice.IVoiceService");
          if (paramVoiceConfig != null)
          {
            localParcel1.writeInt(1);
            paramVoiceConfig.writeToParcel(localParcel1, 0);
          }
          while (true)
          {
            this.mRemote.transact(6, localParcel1, localParcel2, 0);
            localParcel2.readException();
            return;
            localParcel1.writeInt(0);
          }
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
    }
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.IVoiceService
 * JD-Core Version:    0.6.2
 */