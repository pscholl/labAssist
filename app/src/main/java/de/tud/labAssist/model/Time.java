package de.tud.labAssist.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Created by Ramon on 10.05.2014.
 */
public class Time {
	@JsonProperty
	private final long millis;

	@JsonProperty
	private Long startTimestamp;

	public Time(int seconds, int minutes, int hours) {
		millis = (((hours * 60 + minutes) * 60) + seconds) * 1000;
	}

	@JsonIgnore
	public int getHours() {
		return (int)(millis / (60 * 60 * 1000));
	}

	@JsonIgnore
	public int getMinutes() {
		return (int) ((millis % (60*60*1000)) / (60 * 1000));
	}

	@JsonIgnore
	public int getSeconds() {
		return (int) ((millis % (60*1000)) / 1000);
	}

	public void start() {
		startTimestamp = System.currentTimeMillis();
	}

	@JsonIgnore
	public long getPassedTime() {
		return (startTimestamp != null)? System.currentTimeMillis() - startTimestamp : 0;
	}

	@JsonIgnore
	public long getRemainingTime() {
		return millis - getPassedTime();
	}

	@JsonIgnore
	public int getRemainingHours() {
		return (int)(getRemainingTime() / (60 * 60 * 1000));
	}

	@JsonIgnore
	public int getRemainingMinutes() {
		return (int) ((getRemainingTime() % (60*60*1000)) / (60 * 1000));
	}

	@JsonIgnore
	public int getRemainingSeconds() {
		return (int) ((getRemainingTime() % (60*1000)) / 1000);
	}


	@Override
	public String toString() {
		return getRemainingMinutes() +" hours, "+ getRemainingMinutes() +" minutes, "+ getRemainingSeconds() +" seconds";
	}

	@JsonIgnore
	public boolean isFinished() {
		return getPassedTime() >= millis;
	}

	@JsonIgnore
	public boolean isActive() {
		return startTimestamp != null && !isFinished();
	}

	@JsonIgnore
	public Long getFinishedAt() {
		if (startTimestamp != null) {
			return startTimestamp + millis;
		} else {
			return null;
		}
	}

	public void reset() {
		startTimestamp = null;
	}
}
