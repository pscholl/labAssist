package de.tud.labAssist.model.steps;

import android.text.SpannableString;

/**
 * Created by Ramon on 28.04.2014.
 */
public class MinorStep {

	private SpannableString text;
	private boolean done;

	public MinorStep(SpannableString text, boolean done) {
		this.text = text;
		this.done = done;
	}

	public MinorStep(SpannableString text) {
		this(text, false);
	}

	public boolean isDone() {
		return done;
	}

	public void setDone(boolean done) {
		this.done = done;
	}

	public SpannableString getText() {
		return text;
	}

	public void setText(SpannableString text) {
		this.text = text;
	}

	@Override
	public String toString() {
		return getText().toString();
	}
}
