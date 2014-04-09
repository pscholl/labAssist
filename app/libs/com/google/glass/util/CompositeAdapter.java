package com.google.glass.util;

import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.glass.widget.CardScrollAdapter;
import com.google.glass.predicates.Assert;

public class CompositeAdapter extends CardScrollAdapter
{
  private final DataSetObserver dataSetObserver = new DataSetObserver()
  {
    public void onChanged()
    {
      CompositeAdapter.this.notifyDataSetChanged();
    }

    public void onInvalidated()
    {
      CompositeAdapter.this.notifyDataSetInvalidated();
    }
  };
  private final CardScrollAdapter first;
  private final CardScrollAdapter second;

  public CompositeAdapter(CardScrollAdapter paramCardScrollAdapter1, CardScrollAdapter paramCardScrollAdapter2)
  {
    Assert.assertNotNull(paramCardScrollAdapter1);
    Assert.assertNotNull(paramCardScrollAdapter2);
    this.first = paramCardScrollAdapter1;
    this.second = paramCardScrollAdapter2;
    paramCardScrollAdapter1.registerDataSetObserver(this.dataSetObserver);
    paramCardScrollAdapter2.registerDataSetObserver(this.dataSetObserver);
  }

  public int findIdPosition(Object paramObject)
  {
    int i = this.first.findIdPosition(paramObject);
    if (i >= 0)
      return i;
    int j = this.second.findIdPosition(paramObject);
    if (j >= 0)
      return j + this.first.getCount();
    return j;
  }

  public int findItemPosition(Object paramObject)
  {
    int i = this.first.findItemPosition(paramObject);
    if (i >= 0)
      return i;
    int j = this.second.findItemPosition(paramObject);
    if (j >= 0)
      return j + this.first.getCount();
    return j;
  }

  public int getCount()
  {
    return this.first.getCount() + this.second.getCount();
  }

  public Object getItem(int paramInt)
  {
    if (paramInt < this.first.getCount())
      return this.first.getItem(paramInt);
    return this.second.getItem(paramInt - this.first.getCount());
  }

  public int getItemViewType(int paramInt)
  {
    if (paramInt < this.first.getCount())
      return this.first.getItemViewType(paramInt);
    return this.second.getItemViewType(paramInt - this.first.getCount());
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramInt < this.first.getCount())
      return this.first.getView(paramInt, paramView, paramViewGroup);
    return this.second.getView(paramInt - this.first.getCount(), paramView, paramViewGroup);
  }

  public int getViewTypeCount()
  {
    return this.first.getViewTypeCount() + this.second.getViewTypeCount();
  }

  public boolean hasStableIds()
  {
    return (this.first.hasStableIds()) && (this.second.hasStableIds());
  }

  public boolean isEmpty()
  {
    return (this.first.isEmpty()) && (this.second.isEmpty());
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.CompositeAdapter
 * JD-Core Version:    0.6.2
 */