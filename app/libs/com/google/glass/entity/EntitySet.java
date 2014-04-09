package com.google.glass.entity;

import com.google.googlex.glass.common.proto.TimelineNano.Entity;
import com.google.googlex.glass.common.proto.TimelineNano.TimelineItem;
import java.util.List;

public enum EntitySet
{
  static
  {
    // Byte code:
    //   0: new 18	com/google/glass/entity/EntitySet$1
    //   3: dup
    //   4: ldc 19
    //   6: iconst_0
    //   7: invokespecial 23	com/google/glass/entity/EntitySet$1:<init>	(Ljava/lang/String;I)V
    //   10: putstatic 25	com/google/glass/entity/EntitySet:MESSAGING_CONTACTS	Lcom/google/glass/entity/EntitySet;
    //   13: new 27	com/google/glass/entity/EntitySet$2
    //   16: dup
    //   17: ldc 28
    //   19: iconst_1
    //   20: invokespecial 29	com/google/glass/entity/EntitySet$2:<init>	(Ljava/lang/String;I)V
    //   23: putstatic 31	com/google/glass/entity/EntitySet:PHONE_CALL_CONTACTS	Lcom/google/glass/entity/EntitySet;
    //   26: new 33	com/google/glass/entity/EntitySet$3
    //   29: dup
    //   30: ldc 34
    //   32: iconst_2
    //   33: invokespecial 35	com/google/glass/entity/EntitySet$3:<init>	(Ljava/lang/String;I)V
    //   36: putstatic 37	com/google/glass/entity/EntitySet:VIDEO_CALL_CONTACTS	Lcom/google/glass/entity/EntitySet;
    //   39: new 39	com/google/glass/entity/EntitySet$4
    //   42: dup
    //   43: ldc 40
    //   45: iconst_3
    //   46: invokespecial 41	com/google/glass/entity/EntitySet$4:<init>	(Ljava/lang/String;I)V
    //   49: putstatic 43	com/google/glass/entity/EntitySet:SHARE_TARGETS	Lcom/google/glass/entity/EntitySet;
    //   52: new 45	com/google/glass/entity/EntitySet$5
    //   55: dup
    //   56: ldc 46
    //   58: iconst_4
    //   59: invokespecial 47	com/google/glass/entity/EntitySet$5:<init>	(Ljava/lang/String;I)V
    //   62: putstatic 49	com/google/glass/entity/EntitySet:SEND_TARGETS	Lcom/google/glass/entity/EntitySet;
    //   65: new 51	com/google/glass/entity/EntitySet$6
    //   68: dup
    //   69: ldc 52
    //   71: iconst_5
    //   72: invokespecial 53	com/google/glass/entity/EntitySet$6:<init>	(Ljava/lang/String;I)V
    //   75: putstatic 55	com/google/glass/entity/EntitySet:PLUS_SHARE_TARGETS	Lcom/google/glass/entity/EntitySet;
    //   78: bipush 6
    //   80: anewarray 2	com/google/glass/entity/EntitySet
    //   83: astore_0
    //   84: aload_0
    //   85: iconst_0
    //   86: getstatic 25	com/google/glass/entity/EntitySet:MESSAGING_CONTACTS	Lcom/google/glass/entity/EntitySet;
    //   89: aastore
    //   90: aload_0
    //   91: iconst_1
    //   92: getstatic 31	com/google/glass/entity/EntitySet:PHONE_CALL_CONTACTS	Lcom/google/glass/entity/EntitySet;
    //   95: aastore
    //   96: aload_0
    //   97: iconst_2
    //   98: getstatic 37	com/google/glass/entity/EntitySet:VIDEO_CALL_CONTACTS	Lcom/google/glass/entity/EntitySet;
    //   101: aastore
    //   102: aload_0
    //   103: iconst_3
    //   104: getstatic 43	com/google/glass/entity/EntitySet:SHARE_TARGETS	Lcom/google/glass/entity/EntitySet;
    //   107: aastore
    //   108: aload_0
    //   109: iconst_4
    //   110: getstatic 49	com/google/glass/entity/EntitySet:SEND_TARGETS	Lcom/google/glass/entity/EntitySet;
    //   113: aastore
    //   114: aload_0
    //   115: iconst_5
    //   116: getstatic 55	com/google/glass/entity/EntitySet:PLUS_SHARE_TARGETS	Lcom/google/glass/entity/EntitySet;
    //   119: aastore
    //   120: aload_0
    //   121: putstatic 57	com/google/glass/entity/EntitySet:$VALUES	[Lcom/google/glass/entity/EntitySet;
    //   124: return
  }

  public abstract List<TimelineNano.Entity> getEntities(TimelineNano.TimelineItem paramTimelineItem);
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.entity.EntitySet
 * JD-Core Version:    0.6.2
 */