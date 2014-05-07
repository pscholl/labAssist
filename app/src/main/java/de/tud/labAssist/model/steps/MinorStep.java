package de.tud.labAssist.model.steps;

/**
 * Created by Ramon on 28.04.2014.
 */
public class MinorStep {

	private String text;
	private boolean done;

	public MinorStep(String text) {
		this.text = text;
	}

	public boolean isDone() {
		return done;
	}

	public void setDone(boolean done) {
		this.done = done;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	@Override
	public String toString() {
		return getText();
	}
}
