package de.tud.labAssist.model;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ListView;

import com.google.android.glass.widget.CardScrollAdapter;

import java.util.List;

import de.tud.labAssist.R;

/**
 * Created by Ramon on 02.05.2014.
 */
public class ProtocolAdapter extends CardScrollAdapter {
	private final LayoutInflater inflater;
	private final Context context;
	private List<MajorStep> steps;

	private static class ViewMem {
		public ListView listView;
		public ViewGroup footer;
	}


	public ProtocolAdapter(Context context, List<MajorStep> steps) {
		this.steps = steps;
		this.context = context;
		inflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
	}

	@Override
	public int getCount() {
		return steps.size();
	}

	@Override
	public Object getItem(int i) {
		return steps.get(i);
	}

	@Override
	public View getView(int i, View convertView, ViewGroup viewGroup) {
		View v = convertView;
		MajorStep step = steps.get(i);

		ViewMem mem;

		if (v == null) {
			v = inflater.inflate(R.layout.major_step, viewGroup, false);

			mem = new ViewMem();

			mem.listView = (ListView) v.findViewById(R.id.scrollView);
			mem.footer = (ViewGroup) v.findViewById(R.id.footer);

			v.setTag(mem);

		} else {
			mem = (ViewMem) v.getTag();
		}

		mem.listView.setAdapter(new ArrayAdapter<MinorStep>(context, android.R.layout.simple_list_item_1, step.getMinorSteps()));
		//TODO: many things, mainly footer
		return v;
	}

	@Override
	public int getPosition(Object o) {
		return steps.indexOf(o);
	}
}
