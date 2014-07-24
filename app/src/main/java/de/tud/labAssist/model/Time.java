package de.tud.labAssist.model;

/**
 * Created by Ramon on 10.05.2014.
 */
public class Time {
	private final long millis;

	private Long startTimestamp;

	public Time(int seconds, int minutes, int hours) {
		millis = (((hours * 60 + minutes) * 60) + seconds) * 1000;
	}

	public int getHours() {
		return (int)(millis / (60 * 60 * 1000));
	}

	public int getMinutes() {
		return (int) ((millis % (60*60*1000)) / (60 * 1000));
	}

	public int getSeconds() {
		return (int) ((millis % (60*1000)) / 1000);
	}

	public void start() {
		startTimestamp = System.currentTimeMillis();
	}

	public long getPassedTime() {
		return (startTimestamp != null)? System.currentTimeMillis() - startTimestamp : 0;
	}

	public long getRemainingTime() {
		return millis - getPassedTime();
	}

	public int getRemainingHours() {
		return (int)(getRemainingTime() / (60 * 60 * 1000));
	}

	public int getRemainingMinutes() {
		return (int) ((getRemainingTime() % (60*60*1000)) / (60 * 1000));
	}

	public int getRemainingSeconds() {
		return (int) ((getRemainingTime() % (60*1000)) / 1000);
	}


	@Override
	public String toString() {
		return getRemainingMinutes() +" hours, "+ getRemainingMinutes() +" minutes, "+ getRemainingSeconds() +" seconds";
	}

	public boolean isFinished() {
		return getPassedTime() >= millis;
	}

	public boolean isActive() {
		return startTimestamp != null && !isFinished();
	}

	public long getFinishedAt() {
		return startTimestamp+millis;
	}

	public void reset() {
		startTimestamp = null;
	}
}
