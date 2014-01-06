package com.google.glass.entity;

import android.app.LoaderManager;
import android.app.LoaderManager.LoaderCallbacks;
import android.content.Context;
import android.content.Loader;
import android.database.Cursor;
import android.database.MergeCursor;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.glass.widget.CardScrollAdapter;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.collect.Lists;
import com.google.glass.common.R.id;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.widget.SliderView;
import com.google.glass.widget.horizontalscroll.ViewRecycler;
import com.google.googlex.glass.common.proto.TimelineNano.Entity;
import java.util.List;

public abstract class CursorEntityListFragment extends EntityListFragment
  implements LoaderManager.LoaderCallbacks<Cursor>
{
  private static final String[] COLUMNS = { "display_name", "protobuf_blob" };
  private static final int CURSOR_LOADER_ID = 0;
  private static final int NO_IDX = -1;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private EntityAdapter adapter;
  private int displayNameIdx = -1;
  private Cursor prependCursor;
  private int protobuffIdx = -1;

  private void setCursor(Cursor paramCursor)
  {
    if (paramCursor != null)
    {
      this.displayNameIdx = paramCursor.getColumnIndexOrThrow("display_name");
      this.protobuffIdx = paramCursor.getColumnIndexOrThrow("protobuf_blob");
      if ((this.displayNameIdx == -1) || (this.protobuffIdx == -1))
        throw new IllegalStateException("Cursor columns were not retrieved yet");
    }
    this.adapter.setCursor(paramCursor);
    if (paramCursor != null)
    {
      int i = paramCursor.getCount();
      this.sliderView.setCount(i);
      if (i == 0)
        logger.w("Cursor had no data", new Object[0]);
    }
  }

  protected abstract void bindView(View paramView, Cursor paramCursor);

  protected abstract Loader<Cursor> createCursorLoader(String[] paramArrayOfString);

  protected abstract List<TimelineNano.Entity> createPrependEntitySet();

  public final CardScrollAdapter getAdapter()
  {
    return this.adapter;
  }

  protected String getDisplayName(Cursor paramCursor)
  {
    return paramCursor.getString(this.displayNameIdx);
  }

  protected int getPrependCursorSize()
  {
    if (this.prependCursor == null)
      return 0;
    return this.prependCursor.getCount();
  }

  protected byte[] getProtoBuff(Cursor paramCursor)
  {
    return paramCursor.getBlob(this.protobuffIdx);
  }

  protected abstract View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup);

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.prependCursor = new EntityListCursor(COLUMNS, createPrependEntitySet());
    this.adapter = new EntityAdapter(getActivity());
    getLoaderManager().initLoader(0, null, this);
  }

  public final Loader<Cursor> onCreateLoader(int paramInt, Bundle paramBundle)
  {
    return createCursorLoader(COLUMNS);
  }

  public void onDestroy()
  {
    super.onDestroy();
    getLoaderManager().destroyLoader(0);
    Cursor localCursor = this.adapter.getCursor();
    if (localCursor != null)
      localCursor.close();
  }

  public void onLoadFinished(Loader<Cursor> paramLoader, Cursor paramCursor)
  {
    if (this.prependCursor != null)
    {
      Cursor[] arrayOfCursor = new Cursor[2];
      arrayOfCursor[0] = this.prependCursor;
      arrayOfCursor[1] = paramCursor;
      paramCursor = new MergeCursor(arrayOfCursor);
    }
    setCursor(paramCursor);
  }

  public void onLoaderReset(Loader<Cursor> paramLoader)
  {
    setCursor(null);
  }

  protected void recycleView(View paramView)
  {
  }

  protected boolean showFastScrollLabel(int paramInt)
  {
    if ((this.prependCursor != null) && (paramInt < this.prependCursor.getCount()))
      return false;
    return super.showFastScrollLabel(paramInt);
  }

  @VisibleForTesting
  class EntityAdapter extends CardScrollAdapter
    implements ViewRecycler
  {
    private Context context;
    private Cursor cursor;
    private final List<View> recycledViews = Lists.newLinkedList();

    @VisibleForTesting
    EntityAdapter(Context arg2)
    {
      Object localObject;
      this.context = localObject;
    }

    private Cursor getCursor()
    {
      return this.cursor;
    }

    public int findIdPosition(Object paramObject)
    {
      return -1;
    }

    public int findItemPosition(Object paramObject)
    {
      return -1;
    }

    public int getCount()
    {
      if (this.cursor != null)
        return this.cursor.getCount();
      return 0;
    }

    public Object getItem(int paramInt)
    {
      return null;
    }

    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      this.cursor.moveToPosition(paramInt);
      View localView;
      if (paramView != null)
        localView = paramView;
      while (true)
      {
        CursorEntityListFragment.this.bindView(localView, this.cursor);
        return localView;
        if (!this.recycledViews.isEmpty())
        {
          localView = (View)this.recycledViews.remove(0);
        }
        else
        {
          localView = CursorEntityListFragment.this.newView(this.context, this.cursor, paramViewGroup);
          localView.setTag(R.id.tag_horizontal_scroll_item_view_recycler, this);
        }
      }
    }

    public boolean isEmpty()
    {
      return getCount() == 0;
    }

    public void recycleView(View paramView)
    {
      CursorEntityListFragment.this.recycleView(paramView);
      this.recycledViews.add(paramView);
    }

    @VisibleForTesting
    void setCursor(Cursor paramCursor)
    {
      this.cursor = paramCursor;
      notifyDataSetChanged();
    }
  }
}

/* Location:           /home/phil/workspace/labAssist/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.entity.CursorEntityListFragment
 * JD-Core Version:    0.6.2
 */