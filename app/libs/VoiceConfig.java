package com.google.glass.voice;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.common.base.Objects;
import com.google.common.base.Strings;
import com.google.glass.predicates.Assert;
import java.util.Arrays;

public class VoiceConfig
  implements Parcelable
{
  public static final Parcelable.Creator<VoiceConfig> CREATOR = new Parcelable.Creator()
  {
    public VoiceConfig createFromParcel(Parcel paramAnonymousParcel)
    {
      int i = 1;
      VoiceConfig localVoiceConfig = new VoiceConfig();
      localVoiceConfig.setName(paramAnonymousParcel.readString());
      if (paramAnonymousParcel.readByte() == i)
      {
        int k = i;
        localVoiceConfig.setShouldSaveAudio(k);
        localVoiceConfig.setCustomPhrases(paramAnonymousParcel.createStringArray());
        localVoiceConfig.setSensitivity(VoiceConfig.Sensitivity.values()[paramAnonymousParcel.readInt()]);
        if (paramAnonymousParcel.readByte() != i) {
          break label107;
        }
      }
      for (;;)
      {
        localVoiceConfig.setShouldAllowScreenOff(i);
        localVoiceConfig.setOpenEndedMode(OpenEndedMode.values()[paramAnonymousParcel.readInt()]);
        localVoiceConfig.setLetterToSoundModel(VoiceConfig.LetterToSoundModel.values()[paramAnonymousParcel.readInt()]);
        return localVoiceConfig;
        int m = 0;
        break;
        label107:
        int j = 0;
      }
    }
    
    public VoiceConfig[] newArray(int paramAnonymousInt)
    {
      return new VoiceConfig[paramAnonymousInt];
    }
  };
  private static final String[] EMPTY = new String[0];
  public static final VoiceConfig OFF = new VoiceConfig();
  private static VoiceConfig notificationConfig;
  private static VoiceConfig okGlassConfig;
  private boolean allowScreenOff;
  private String[] customPhrases;
  private LetterToSoundModel letterToSoundModel;
  private String name;
  private OpenEndedMode openEndedMode;
  private Sensitivity sensitivity;
  private boolean shouldSaveAudio;
  
  public VoiceConfig() {}
  
  public VoiceConfig(VoiceConfig paramVoiceConfig)
  {
    this(paramVoiceConfig.getName(), paramVoiceConfig.getCustomPhrases());
    setShouldSaveAudio(paramVoiceConfig.shouldSaveAudio());
    setShouldAllowScreenOff(paramVoiceConfig.shouldAllowScreenOff());
    setSensitivity(paramVoiceConfig.getSensitivity());
    setOpenEndedMode(paramVoiceConfig.getOpenEndedMode());
    setLetterToSoundModel(paramVoiceConfig.getLetterToSoundModel());
  }
  
  public VoiceConfig(String paramString, String[] paramArrayOfString)
  {
    this();
    setName(paramString);
    setCustomPhrases(paramArrayOfString);
  }
  
  public static VoiceConfig forMixedMode(String paramString, String[] paramArrayOfString, OpenEndedMode paramOpenEndedMode)
  {
    return new VoiceConfig(paramString, paramArrayOfString).setOpenEndedMode(paramOpenEndedMode);
  }
  
  public static VoiceConfig forOpenEnded(OpenEndedMode paramOpenEndedMode)
  {
    return new VoiceConfig().setOpenEndedMode(paramOpenEndedMode);
  }
  
  public static final VoiceConfig getGuardConfig(Context paramContext)
  {
    if (okGlassConfig == null)
    {
      VoiceConfig localVoiceConfig = new VoiceConfig();
      String[] arrayOfString = new String[1];
      arrayOfString[0] = VoiceCommandLiteral.OK_GLASS.getString(paramContext);
      okGlassConfig = localVoiceConfig.setCustomPhrases(arrayOfString).setShouldSaveAudio(true);
    }
    return okGlassConfig;
  }
  
  public static final VoiceConfig getNotificationConfig(Context paramContext)
  {
    if (notificationConfig == null)
    {
      VoiceConfig localVoiceConfig = new VoiceConfig();
      String[] arrayOfString = new String[3];
      arrayOfString[0] = VoiceCommandLiteral.READ_ALOUD.getString(paramContext);
      arrayOfString[1] = VoiceCommandLiteral.REPLY.getString(paramContext);
      arrayOfString[2] = VoiceCommandLiteral.PLAY_PAUSE_VIDEO.getString(paramContext);
      notificationConfig = localVoiceConfig.setCustomPhrases(arrayOfString);
    }
    return notificationConfig;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    VoiceConfig localVoiceConfig;
    do
    {
      return true;
      if (paramObject == null) {
        return false;
      }
      if (getClass() != paramObject.getClass()) {
        return false;
      }
      localVoiceConfig = (VoiceConfig)paramObject;
      if (!getName().equals(localVoiceConfig.getName())) {
        return false;
      }
      if (!Arrays.equals(getCustomPhrases(), localVoiceConfig.getCustomPhrases())) {
        return false;
      }
      if (shouldSaveAudio() != localVoiceConfig.shouldSaveAudio()) {
        return false;
      }
      if (getSensitivity() != localVoiceConfig.getSensitivity()) {
        return false;
      }
      if (shouldAllowScreenOff() != localVoiceConfig.shouldAllowScreenOff()) {
        return false;
      }
      if (getOpenEndedMode() != localVoiceConfig.getOpenEndedMode()) {
        return false;
      }
    } while (getLetterToSoundModel() == localVoiceConfig.getLetterToSoundModel());
    return false;
  }
  
  public String[] getCustomPhrases()
  {
    if (this.customPhrases == null) {
      return EMPTY;
    }
    return this.customPhrases;
  }
  
  public LetterToSoundModel getLetterToSoundModel()
  {
    if (this.letterToSoundModel == null) {
      return LetterToSoundModel.GENERIC;
    }
    return this.letterToSoundModel;
  }
  
  public String getName()
  {
    return Strings.nullToEmpty(this.name);
  }
  
  public OpenEndedMode getOpenEndedMode()
  {
    if (this.openEndedMode == null) {
      return OpenEndedMode.NONE;
    }
    return this.openEndedMode;
  }
  
  public Sensitivity getSensitivity()
  {
    if (this.sensitivity == null) {
      return Sensitivity.NORMAL;
    }
    return this.sensitivity;
  }
  
  public int hashCode()
  {
    Object[] arrayOfObject = new Object[7];
    arrayOfObject[0] = getName();
    arrayOfObject[1] = Boolean.valueOf(shouldAllowScreenOff());
    arrayOfObject[2] = Integer.valueOf(Arrays.hashCode(getCustomPhrases()));
    arrayOfObject[3] = getSensitivity();
    arrayOfObject[4] = Boolean.valueOf(shouldSaveAudio());
    arrayOfObject[5] = getOpenEndedMode();
    arrayOfObject[6] = getLetterToSoundModel();
    return Objects.hashCode(arrayOfObject);
  }
  
  boolean isHotword()
  {
    return getCustomPhrases().length > 0;
  }
  
  public boolean isSearch()
  {
    return (getOpenEndedMode() == OpenEndedMode.NAVIGATION) || (getOpenEndedMode() == OpenEndedMode.VOICE_SEARCH);
  }
  
  public VoiceConfig setCustomPhrases(String... paramVarArgs)
  {
    Assert.assertNotNull(paramVarArgs);
    if (paramVarArgs.length > 0) {
      this.customPhrases = paramVarArgs;
    }
    return this;
  }
  
  public VoiceConfig setLetterToSoundModel(LetterToSoundModel paramLetterToSoundModel)
  {
    this.letterToSoundModel = ((LetterToSoundModel)Assert.assertNotNull(paramLetterToSoundModel));
    return this;
  }
  
  public VoiceConfig setName(String paramString)
  {
    this.name = ((String)Assert.assertNotNull(paramString));
    return this;
  }
  
  VoiceConfig setOpenEndedMode(OpenEndedMode paramOpenEndedMode)
  {
    this.openEndedMode = ((OpenEndedMode)Assert.assertNotNull(paramOpenEndedMode));
    return this;
  }
  
  public VoiceConfig setSensitivity(Sensitivity paramSensitivity)
  {
    this.sensitivity = ((Sensitivity)Assert.assertNotNull(paramSensitivity));
    return this;
  }
  
  public VoiceConfig setShouldAllowScreenOff(boolean paramBoolean)
  {
    this.allowScreenOff = paramBoolean;
    return this;
  }
  
  public VoiceConfig setShouldSaveAudio(boolean paramBoolean)
  {
    this.shouldSaveAudio = paramBoolean;
    return this;
  }
  
  public boolean shouldAllowScreenOff()
  {
    return this.allowScreenOff;
  }
  
  public boolean shouldSaveAudio()
  {
    return this.shouldSaveAudio;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("VoiceConfig [");
    if (getCustomPhrases().length != 0)
    {
      localStringBuilder.append("getCustomPhrases()=");
      localStringBuilder.append(Arrays.toString(getCustomPhrases()));
    }
    if (shouldSaveAudio())
    {
      localStringBuilder.append(", shouldSaveAudio()=");
      localStringBuilder.append(shouldSaveAudio());
    }
    if (shouldAllowScreenOff())
    {
      localStringBuilder.append(", shouldAllowScreenOff()=");
      localStringBuilder.append(shouldAllowScreenOff());
    }
    if (getOpenEndedMode() != OpenEndedMode.NONE)
    {
      localStringBuilder.append(", getOpenEndedMode()=");
      localStringBuilder.append(getOpenEndedMode());
    }
    if (getLetterToSoundModel() != LetterToSoundModel.GENERIC)
    {
      localStringBuilder.append(", getLetterToSpeechModel()=");
      localStringBuilder.append(getLetterToSoundModel());
    }
    if (getSensitivity() != Sensitivity.NORMAL)
    {
      localStringBuilder.append(", getSensitivity()=");
      localStringBuilder.append(getSensitivity());
    }
    if (!TextUtils.isEmpty(getName()))
    {
      localStringBuilder.append(", getName()=");
      localStringBuilder.append(getName());
    }
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = 1;
    paramParcel.writeString(getName());
    int j;
    if (shouldSaveAudio())
    {
      j = i;
      paramParcel.writeByte((byte)j);
      paramParcel.writeStringArray(getCustomPhrases());
      paramParcel.writeInt(getSensitivity().ordinal());
      if (!shouldAllowScreenOff()) {
        break label88;
      }
    }
    for (;;)
    {
      paramParcel.writeByte((byte)i);
      paramParcel.writeInt(getOpenEndedMode().ordinal());
      paramParcel.writeInt(getLetterToSoundModel().ordinal());
      return;
      j = 0;
      break;
      label88:
      i = 0;
    }
  }
  
  public static enum LetterToSoundModel
  {
    static
    {
      LetterToSoundModel[] arrayOfLetterToSoundModel = new LetterToSoundModel[2];
      arrayOfLetterToSoundModel[0] = GENERIC;
      arrayOfLetterToSoundModel[1] = NAMES;
      $VALUES = arrayOfLetterToSoundModel;
    }
    
    private LetterToSoundModel() {}
  }
  
  public static enum Sensitivity
  {
    static
    {
      CONSERVATIVE = new Sensitivity("CONSERVATIVE", 1);
      Sensitivity[] arrayOfSensitivity = new Sensitivity[2];
      arrayOfSensitivity[0] = NORMAL;
      arrayOfSensitivity[1] = CONSERVATIVE;
      $VALUES = arrayOfSensitivity;
    }
    
    private Sensitivity() {}
  }
}


/* Location:           C:\Users\Ramon\git\labAssist\app\libs\GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.VoiceConfig
 * JD-Core Version:    0.7.0.1
 */