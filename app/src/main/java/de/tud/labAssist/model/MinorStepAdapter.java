package de.tud.labAssist.model;

import android.content.Context;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.style.StrikethroughSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

import java.util.List;

import de.tud.labAssist.R;
import de.tud.labAssist.model.steps.MinorStep;
import de.tud.labAssist.model.steps.TimedMinorStep;

/**
 * Created by Ramon on 13.05.2014.
 */
public class MinorStepAdapter extends BaseAdapter {

	private final List<MinorStep> minorSteps;
	private final Context context;
	private final LayoutInflater inflater;

	public MinorStepAdapter(Context context, List<MinorStep> minorSteps) {
		this.context = context;
		this.minorSteps = minorSteps;
		inflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
	}

	@Override
	public int getCount() {
		return minorSteps.size();
	}

	@Override
	public int getViewTypeCount() {
		return 2;
	}

	@Override
	public MinorStep getItem(int position) {
		return minorSteps.get(position);
	}

	@Override
	public long getItemId(int position) {
		return position;
	}

	@Override
	public int getItemViewType(int position) {
		return (minorSteps.get(position) instanceof TimedMinorStep)? 1 : 0;
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		TextView text;

		MinorStep step = getItem(position);

//		if (getItemViewType(position) == 0) {

			if (convertView != null) {
				text = (TextView) convertView;
			} else {
				text = (TextView) inflater.inflate(R.layout.minor_step, parent, false);
			}
//		} else {
//			TextView time;
//
//			if (convertView == null) {
//				convertView = inflater.inflate(R.layout.minor_step_timed, parent, false);
//			}
//
//			text = (TextView) convertView.findViewById(R.id.minor_text);
//			time = (TextView) convertView.findViewById(R.id.minor_time);
//
//			TimedMinorStep ts = ((TimedMinorStep) step);
//			time.setText(ts.getTime().toString());
//		}

		SpannableStringBuilder textBuilder = new SpannableStringBuilder();

		textBuilder.append(getItem(position).getText());

		if (step.isDone()) {
			textBuilder.setSpan(new StrikethroughSpan(), 0, textBuilder.length(), Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
		}


		text.setText(textBuilder);

		return text;
	}
}
