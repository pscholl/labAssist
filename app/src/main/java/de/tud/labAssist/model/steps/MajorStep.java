package de.tud.labAssist.model.steps;

import android.text.SpannableString;

import java.util.List;

import de.tud.labAssist.model.StepListener;

/**
 * Created by Ramon on 28.04.2014.
 */
public class MajorStep {

	private final List<MinorStep> minorSteps;
	private final SpannableString description;
	private final List<String> annotations;
	private int completedSteps;

	public MajorStep(SpannableString description, List<MinorStep> minorSteps, List<String> annotations) {
		this.minorSteps = minorSteps;
		this.completedSteps = 0;

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
	public void markNextAsDone(final StepListener majorStepListener) {
		if (isComplete())
			return;

		MinorStep step = minorSteps.get(completedSteps);
		if (step instanceof TimedMinorStep) {
			((TimedMinorStep) step).setStepListener(new StepListener() {
				@Override
				public void stepComplete() {
					completedSteps++;
					if (majorStepListener != null && isComplete()) {
						majorStepListener.stepComplete();
					}

				}
			});

			step.setDone(true);
		} else {

			step.setDone(true);

			completedSteps++;

			if (isComplete() && majorStepListener != null)
				majorStepListener.stepComplete();
		}
	}

	public boolean isComplete() {
		return completedSteps == minorSteps.size();
	}

	public boolean hasCheckableItems() {
		return true;
	}

	public boolean hasZoomAbleImage() {
		return false;
	}
}

