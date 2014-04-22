package de.tud.ess;

import android.content.Context;
import android.util.Log;

import com.google.glass.input.VoiceInputHelper;
import com.google.glass.voice.VoiceCommand;
import com.google.glass.voice.VoiceConfig;

import java.util.Arrays;

/**
 * Created by Ramon on 22.04.2014.
 */
public class VoiceDetection extends StubVoiceListener {

	private static final String THIS = VoiceDetection.class.getSimpleName();

	private final VoiceConfig mVoiceConfig;
	private final String[] mItems;
	private VoiceInputHelper mVoiceInputHelper;
	private VoiceDetectionListener mListener;
	private boolean mRunning = true;

	public VoiceDetection(Context context, String hotword, VoiceDetectionListener listener, String... phrases) {
		mVoiceInputHelper = new VoiceInputHelper(context, this, VoiceInputHelper.newUserActivityObserver(context));

		mVoiceConfig = new VoiceConfig(context.getPackageName(), new String[]{});
		mVoiceConfig.setShouldSaveAudio(false);

		mItems = Arrays.copyOf(phrases, phrases.length+1);
		mItems[0] = hotword;

		mVoiceConfig.setCustomPhrases(mItems);
		mVoiceInputHelper.setVoiceConfig(mVoiceConfig, false);

		mListener = listener;
	}

	/**
	 * If the VoiceService is ready, attach our listener to it
	 */
	@Override
	public void onVoiceServiceConnected() {
		super.onVoiceServiceConnected();
		mVoiceInputHelper.setVoiceConfig(mVoiceConfig, false);
	}

	@Override
	public VoiceConfig onVoiceCommand(VoiceCommand vc) {
		String literal = vc.getLiteral();

		if (mListener == null) {
			mVoiceInputHelper.removeVoiceServiceListener();
			return null;
		}

		if (literal.equals(mItems[0])) { // Hotword

			Log.i(THIS, "Hotword detected");
			mListener.onHotwordDetected();
		}

		for (int i=1; i< mItems.length; ++i) {
			String item = mItems[i];
			if (item.equals(literal)) {
				Log.i("labAssist", String.format("command %s", literal));
				mListener.onPhraseDetected(i-1, literal);
				return null;
			}
		}

		return null;
	}

	public void stop() {
		mRunning = false;
	}

	@Override
	public boolean isRunning() {
		return mRunning;
	}

	public interface VoiceDetectionListener {
		public void onHotwordDetected();
		public void onPhraseDetected(int index, String phrase);
	}
}
