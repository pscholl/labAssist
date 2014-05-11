package de.tud.labAssist.model;

/**
 * Created by Ramon on 10.05.2014.
 */
public class Time {
	public final int seconds, minutes, hours;

	public Time(int seconds, int minutes, int hours) {
		this.hours = hours;
		this.minutes = minutes;
		this.seconds = seconds;
	}

	@Override
	public String toString() {
		return hours +" hours, "+ minutes +" minutes, "+ seconds +" seconds";
	}
}
