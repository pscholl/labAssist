package de.tud.labAssist.model;

import android.content.Context;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;

import java.util.List;

import de.tud.labAssist.R;

/**
 * Created by Ramon on 13.05.2014.
 */
public class AnnotationAdapter extends BaseAdapter {
	private final LayoutInflater inflater;
	private final List<String> annotations;
	private final Context context;

	public AnnotationAdapter(Context context, List<String> annotations) {
		this.annotations = annotations;
		this.context = context;
		this.inflater = ((LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE));
	}

	@Override
	public int getCount() {
		return annotations.size();
	}

	@Override
	public String getItem(int position) {
		return annotations.get(position);
	}

	@Override
	public long getItemId(int position) {
		return position;
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		ImageView v;

		if (convertView != null) {
			v = (ImageView) convertView;
		} else {
			v = (ImageView) inflater.inflate(R.layout.image, parent, false);
		}

		String annotation = getItem(position);

		try {
			v.setImageResource(R.drawable.class.getField(annotation).getInt(null));
		} catch (Exception e) {
			Log.e("markdown", "unable to load image: " + annotation);
		}

		return v;
	}
}
