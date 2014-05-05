package de.tud.labAssist.model;

import java.util.ArrayList;

/**
 * Created by Ramon on 28.04.2014.
 */
public class MajorStep {

	private ArrayList<MinorStep> minorSteps;
	private String description;

	public MajorStep() {
		minorSteps = new ArrayList<>();
	}

	public MajorStep(String description) {
		setDescription(description);
	}

	public ArrayList<MinorStep> getMinorSteps() {
		return minorSteps;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public void addMinorStep(MinorStep minorStep) {
		minorSteps.add(minorStep);
	}
}

