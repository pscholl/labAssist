package de.tud.labAssist;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.content.Intent;
import android.os.Bundle;

import de.tud.ess.Constants;
import de.tud.ess.VoiceDetection;
import de.tud.ess.VoiceMenuFragment;

public class Launcher extends Activity implements VoiceDetection.VoiceDetectionListener, VoiceMenuFragment.VoiceMenuListener {

	public static final String FILENAME = Constants.FILENAME;

	private static final String HOTWORD = "protocol";

	protected String[] mPaths;
	private VoiceDetection mVoiceDetection;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);

		mPaths = MarkdownManager.getMarkdownDocuments(this);
//		mVoiceMenu = new VoiceMenu(this, "protocol", mPaths);
		FragmentManager fm = getFragmentManager();
		Fragment f = fm.findFragmentByTag(Constants.VOICE_MENU_FRAGMENT);
		if (f == null)
			f = new VoiceMenuFragment();
		Bundle args = new Bundle();
		args.putString(VoiceMenuFragment.HOTWORD, HOTWORD);
		args.putStringArray(VoiceMenuFragment.PHRASES, mPaths);

		f.setArguments(args);

		fm.beginTransaction().replace(android.R.id.content, f, Constants.VOICE_MENU_FRAGMENT).commit();
	}

	@Override
	protected void onStart() {
		super.onStart();

		mVoiceDetection = new VoiceDetection(this, HOTWORD, this, mPaths);
	}

	@Override
	protected void onStop() {
		super.onStop();

		mVoiceDetection.stop();
		mVoiceDetection = null;
	}

	private void onItemSelected(String item) {
		if (item == null)
			return;

		for (String path : mPaths)
			if (item.equals(path)) {
				Intent i = new Intent();
				i.setClassName(this, LabAssist.class.getName());
				i.putExtra(FILENAME, item + ".md");
				startActivity(i);
				return;
			}
	}

	@Override
	public void onHotwordDetected() {

	}

	@Override
	public void onPhraseDetected(int index, String phrase) {
		onItemSelected(phrase);
	}

	@Override
	public void onPhraseSelected(String phrase) {
		onItemSelected(phrase);
	}
}
