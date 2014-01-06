package com.google.userfeedback.android.api;

public class UserFeedbackCrashBuilder
{
  private String exceptionClassName;
  private String exceptionMessage;
  private String stackTrace;
  private String throwClassName;
  private String throwFileName;
  private int throwLineNumber;
  private String throwMethodName;

  static
  {
    if (!UserFeedbackCrashBuilder.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  private UserFeedbackCrashBuilder()
  {
    setExceptionClassName(null);
    setThrowFileName(null);
    setThrowLineNumber(-1);
    setThrowClassName(null);
    setThrowMethodName(null);
    setStackTrace(null);
    setExceptionMessage(null);
  }

  public static UserFeedbackCrashBuilder newInstance()
  {
    return new UserFeedbackCrashBuilder();
  }

  public UserFeedbackCrashData build()
  {
    assert (this.exceptionClassName != null);
    assert (this.throwFileName != null);
    assert (this.throwClassName != null);
    assert (this.throwMethodName != null);
    assert (this.stackTrace != null);
    return new UserFeedbackCrashData(this.exceptionClassName, this.throwFileName, this.throwLineNumber, this.throwClassName, this.throwMethodName, this.stackTrace, this.exceptionMessage);
  }

  public UserFeedbackCrashBuilder setExceptionClassName(String paramString)
  {
    this.exceptionClassName = paramString;
    return this;
  }

  public UserFeedbackCrashBuilder setExceptionMessage(String paramString)
  {
    this.exceptionMessage = paramString;
    return this;
  }

  public UserFeedbackCrashBuilder setStackTrace(String paramString)
  {
    this.stackTrace = paramString;
    return this;
  }

  public UserFeedbackCrashBuilder setThrowClassName(String paramString)
  {
    this.throwClassName = paramString;
    return this;
  }

  public UserFeedbackCrashBuilder setThrowFileName(String paramString)
  {
    this.throwFileName = paramString;
    return this;
  }

  public UserFeedbackCrashBuilder setThrowLineNumber(int paramInt)
  {
    this.throwLineNumber = paramInt;
    return this;
  }

  public UserFeedbackCrashBuilder setThrowMethodName(String paramString)
  {
    this.throwMethodName = paramString;
    return this;
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.userfeedback.android.api.UserFeedbackCrashBuilder
 * JD-Core Version:    0.6.2
 */