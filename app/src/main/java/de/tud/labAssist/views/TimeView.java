package de.tud.labAssist.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;

import de.tud.labAssist.model.Time;
import de.tud.labAssist.model.time.TimerManager;

/**
 * Created by Ramon on 17.07.2014.
 */
public class TimeView extends TextView implements TimerManager.TimerUpdateListener {
	private static final String THIS = TimeView.class.getSimpleName();

	public void setTime(Time time) {
		this.time = time;
	}

	private TimerManager timerManager;
	private Time time;

	public TimeView(Context context) {
		super(context);
	}

	public TimeView(Context context, AttributeSet attrs) {
		super(context, attrs);
	}

	public TimeView(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
	}

	@Override
	protected void onVisibilityChanged(View changedView, int visibility) {
		super.onVisibilityChanged(changedView, visibility);

		if (visibility == View.VISIBLE) {
			registerTimerUpdates();
		} else {
			unregisterTimerUpdates();
		}
	}

	private void unregisterTimerUpdates() {
		if (timerManager != null)
			timerManager.unregisterUi(time);
	}

	private void registerTimerUpdates() {
		if (timerManager != null)
			timerManager.registerUi(time, this);
	}

	public void setTimerManager(TimerManager timerManager) {
		this.timerManager = timerManager;
	}

	@Override
	public void timerFinished() {

	}

	@Override
	public void refreshTimer() {
		setText(time.toString());
	}
}
