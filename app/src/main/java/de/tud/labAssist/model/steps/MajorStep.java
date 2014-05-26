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
	 * @return true if this major step is now completely done
	 */
	public boolean markNextAsDone() {
		boolean allDone = true;
		boolean changedOne = false;

		for(MinorStep m: minorSteps) {
			boolean current = m.isDone();
			if (!current && !changedOne) {
				m.setDone(true);
				current = true;
				changedOne = true;
			}

			allDone &= current;
		}

		return allDone;
	}

	public boolean hasCheckableItems() {
		return true;
	}

	public boolean hasZoomAbleImage() {
		return false;
	}
}

