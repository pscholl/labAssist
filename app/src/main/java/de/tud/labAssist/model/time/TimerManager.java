package de.tud.labAssist.model.time;

import android.os.Handler;
import android.os.Message;
import android.util.Log;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import de.tud.labAssist.model.Time;

/**
 * Created by Ramon on 17.07.2014.
 */
public class TimerManager {

	private static final int REFRESH_TIMERS = 37;
	private static final int REFRESH_INTERVAL = 1000;
	private static final String THIS = TimerManager.class.getSimpleName();
	private Handler handler = new Handler() {
		@Override
		public void handleMessage(Message msg) {
			switch (msg.what) {
				case REFRESH_TIMERS:
					refreshTimers();
					if (numUiListeners > 0) {
						msg = obtainMessage(REFRESH_TIMERS);
						sendMessageDelayed(msg, REFRESH_INTERVAL);
					}
					break;
			}
		}
	};

	private int numUiListeners = 0;

	private Map<Time, TimerListeners> timers = new HashMap<>();

	public void registerUi(Time time, TimerUpdateListener uiListener) {

		Log.v(THIS, "UI "+ uiListener +" registered for timer "+ time);

		TimerListeners listeners = ensureGet(time);
		listeners.uiListener = uiListener;

		if (numUiListeners == 0)
			startHandler();

		numUiListeners++;
	}

	private void startHandler() {
		handler.sendEmptyMessageDelayed(REFRESH_TIMERS, REFRESH_INTERVAL);
	}

	private TimerListeners ensureGet(Time time) {
		TimerListeners listeners = timers.get(time);
		if (listeners == null) {
			listeners = new TimerListeners();
			timers.put(time, listeners);
		}

		return listeners;
	}

	public void unregisterUi(Time time) {
		Log.v(THIS, "UI unregistered for timer "+ time);

		if (!timers.containsKey(time)) {
			return;
		}

		final TimerListeners listeners = timers.get(time);
		if (listeners.logicListener == null)
			timers.remove(time);
		else
			listeners.uiListener = null;

		numUiListeners--;
	}

	public void registerLogic(Time time, final TimerFinishedListener logicListener) {
		Log.v(THIS, "Logic registered for Timer "+ time);

		if (!time.isActive())
			return;

//		TimerListeners listeners = ensureGet(time);
//		listeners.logicListener = logicListener;

		handler.postAtTime(new Runnable() {
			@Override
			public void run() {
				logicListener.timerFinished();

			}
		}, time.getFinishedAt());
	}

//	public void unregisterLogic(Time time) {
//		if (!timers.containsKey(time)) {
//			return;
//		}
//
//		final TimerListeners listeners = timers.get(time);
//		if (listeners.uiListener == null)
//			timers.remove(time);
//		else
//			listeners.logicListener = null;
//	}

	private void refreshTimers() {
		Iterator<Time> it = timers.keySet().iterator();
		Time timer;
		while (it.hasNext()) {
			timer = it.next();

			TimerListeners listeners = timers.get(timer);

			if (listeners.uiListener == null)
				continue;

			listeners.uiListener.refreshTimer();

			if (timer.isFinished()) {
				listeners.uiListener.timerFinished();
				it.remove();//TODO make logicListeners cancelable
			}
		}
	}

	public interface TimerUpdateListener extends TimerFinishedListener {
		void refreshTimer();
	}

	public interface TimerFinishedListener {
		void timerFinished();
	}

	private static class TimerListeners {
		public TimerUpdateListener uiListener;
		public TimerFinishedListener logicListener;
	}

}
