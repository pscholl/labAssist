package de.tud.labAssist.model.steps;

import android.text.SpannableString;

import de.tud.labAssist.model.StepListener;
import de.tud.labAssist.model.Time;
import de.tud.labAssist.model.time.TimerManager;

/**
 * A Minor step annotated with a time
 *
 * Created by Ramon on 10.05.2014.
 */
public class TimedMinorStep extends MinorStep implements TimerManager.TimerFinishedListener {

	private StepListener stepListener;

	public enum State {New, Waiting, Complete}

	private final Time time;
	private final TimerManager timerManager;
	private State state;

	public TimedMinorStep(SpannableString text, boolean done, Time time, TimerManager timerManager) {
		super(text, done);
		this.time = time;
		state = (done)? State.Complete : State.New;
		this.timerManager = timerManager;
	}

	public TimedMinorStep(SpannableString text, Time time, TimerManager timerManager) {
		super(text);
		this.time = time;
		this.timerManager = timerManager;
	}

	public void setStepListener(StepListener stepListener) {
		this.stepListener = stepListener;
	}

	public Time getTime() {
		return time;
	}

	public State getState() {
		return state;
	}

	@Override
	public void setDone(boolean done) {
		if (done) {

			if (time.isActive()) {
				time.reset();
//				timerManager.unregisterLogic();
				state = State.Complete;
			}
			state = State.Waiting;
			time.start();
			timerManager.registerLogic(time, this);
		} else {
			state = State.New;
			time.reset();
		}
	}

	@Override
	public void timerFinished() {
		state = State.Complete;
		if (stepListener != null)
			stepListener.stepComplete();
	}
}
