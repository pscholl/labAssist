package de.tud.labAssist.model;

/**
 * Created by Ramon on 28.04.2014.
 */
public class MinorStep {

	private String text;

	public MinorStep(String text) {
		this.text = text;
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
