package de.tud.labAssist.model;

import android.content.Context;
import android.content.res.TypedArray;
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
import de.tud.labAssist.model.time.TimerManager;
import de.tud.labAssist.views.TimeView;

/**
 * Created by Ramon on 13.05.2014.
 */
public class MinorStepAdapter extends BaseAdapter {

	private final List<MinorStep> minorSteps;
	private final Context context;
	private final LayoutInflater inflater;
	private int timedStepDone;
	private int timedStepNotDone;
	private TimerManager timerManager;

	public MinorStepAdapter(Context context, List<MinorStep> minorSteps, TimerManager timerManager) {
		this.context = context;
		this.minorSteps = minorSteps;
		this.timerManager = timerManager;
		inflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);

		resolveResources();
	}

	private void resolveResources() {
		TypedArray a = context.getTheme().obtainStyledAttributes(R.styleable.TimedStep);
		this.timedStepDone = a.getColor(R.styleable.TimedStep_barelyVisibleText, R.color.transparent_text);
		this.timedStepNotDone = a.getColor(R.styleable.TimedStep_normalText, android.R.color.primary_text_dark);
		a.recycle();
	}

	@Override
	public boolean hasStableIds() {
		return true;
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

	private static class ViewMem {
		public TextView text;
		public TimeView time;
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {

		MinorStep step = getItem(position);

		int type = getItemViewType(position);

		SpannableStringBuilder strikkenText = new SpannableStringBuilder();
		strikkenText.append(step.getText());
		strikkenText.setSpan(new StrikethroughSpan(), 0, strikkenText.length(), Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);

		if (type == 0) {
			TextView text;

			if (convertView != null) {
				text = (TextView) convertView;
			} else {
				convertView = inflater.inflate(R.layout.minor_step, parent, false);
				text = (TextView) convertView;
			}

			if (step.isDone()) {
				text.setText(strikkenText);
			} else {
				text.setText(step.getText());
			}
		} else {
			ViewMem mem;

			if (convertView == null) {
				convertView = inflater.inflate(R.layout.minor_step_timed, parent, false);

				mem = new ViewMem();

				mem.text = (TextView) convertView.findViewById(R.id.minor_text);
				mem.time = (TimeView) convertView.findViewById(R.id.minor_time);

				mem.time.setTimerManager(timerManager);

				convertView.setTag(mem);
			} else {
				mem = (ViewMem) convertView.getTag();
			}

			TimedMinorStep ts = ((TimedMinorStep) step);
			mem.time.setText(ts.getTime().toString());
			mem.time.setTime(ts.getTime());

			if (ts.getState() == TimedMinorStep.State.Complete) {
//				mem.text.setTextColor(timedStepDone);
				mem.text.setText(strikkenText);
				mem.time.setVisibility(View.INVISIBLE);
			} else if (ts.getState() == TimedMinorStep.State.Waiting){
//				mem.text.setTextColor(timedStepNotDone);
				mem.text.setText(ts.getText());
				mem.time.setVisibility(View.VISIBLE);
			} else {
				mem.text.setText(ts.getText());
				mem.time.setVisibility(View.INVISIBLE);
			}
		}

		return convertView;
	}
}
