package de.tud.labAssist.model.steps;

import android.text.SpannableString;

import java.util.List;

/**
 * Created by Ramon on 28.04.2014.
 */
public class MajorStep {

	private final List<MinorStep> minorSteps;
	private final SpannableString description;
	private final List<String> annotations;

	public MajorStep(SpannableString description, List<MinorStep> minorSteps, List<String> annotations) {
		this.minorSteps = minorSteps;
		this.description = description;
		this.annotations = annotations;
	}

	public List<MinorStep> getMinorSteps() {
		return minorSteps;
	}

	public SpannableString getHeader() {
		return description;
	}

	public List<String> getAnnotations() {
		return annotations;
	}


	/**
	 * Mark the first not already done MinorStep as done
	 */
	public void markAsDone() {
		for(MinorStep m: minorSteps) {
			if (!m.isDone()) {
				m.setDone(true);
				break;
			}
		}
	}

	public boolean hasCheckableItems() {
		return true;
	}

	public boolean hasZoomAbleImage() {
		return false;
	}
}

