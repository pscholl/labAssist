package de.tud.labAssist.model.steps;

import android.text.SpannableString;

import de.tud.labAssist.model.Time;

/**
 * Created by Ramon on 10.05.2014.
 */
public class TimedMinorStep extends MinorStep {

	private final Time time;

	public TimedMinorStep(SpannableString text, boolean done, Time time) {
		super(text, done);
		this.time = time;
	}

	public TimedMinorStep(SpannableString text, Time time) {
		super(text);
		this.time = time;
	}

	public Time getTime() {
		return time;
	}
}
