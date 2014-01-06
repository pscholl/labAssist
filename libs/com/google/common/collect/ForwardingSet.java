package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.util.Collection;
import java.util.Set;
import javax.annotation.Nullable;

@GwtCompatible
public abstract class ForwardingSet<E> extends ForwardingCollection<E>
  implements Set<E>
{
  protected abstract Set<E> delegate();

  public boolean equals(@Nullable Object paramObject)
  {
    return (paramObject == this) || (delegate().equals(paramObject));
  }

  public int hashCode()
  {
    return delegate().hashCode();
  }

  protected boolean standardEquals(@Nullable Object paramObject)
  {
    return Sets.equalsImpl(this, paramObject);
  }

  protected int standardHashCode()
  {
    return Sets.hashCodeImpl(this);
  }

  protected boolean standardRemoveAll(Collection<?> paramCollection)
  {
    return Sets.removeAllImpl(this, (Collection)Preconditions.checkNotNull(paramCollection));
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.collect.ForwardingSet
 * JD-Core Version:    0.6.2
 */