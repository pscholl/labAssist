package de.tud.labAssist.model.steps;

import android.text.SpannableString;

import java.util.List;

/**
 * Created by Ramon on 28.04.2014.
 */
public class MajorStep {

	private List<SpannableString> minorSteps;
	private SpannableString description;

	public MajorStep(SpannableString description, List<SpannableString> minorSteps) {
		this.minorSteps = minorSteps;
		this.description = description;
	}

	public List<SpannableString> getMinorSteps() {
		return minorSteps;
	}

	public SpannableString getHeader() {
		return description;
	}

	public void setDescription(SpannableString description) {
		this.description = description;
	}

	public void addMinorStep(SpannableString minorStep) {
		minorSteps.add(minorStep);
	}
}

