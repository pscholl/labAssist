package de.tud.labAssist;

import android.app.Activity;
import android.app.FragmentManager;
import android.content.Intent;
import android.os.Bundle;

import de.tud.ess.Constants;
import de.tud.ess.VoiceDetection;
import de.tud.ess.VoiceMenuDialogFragment;
import de.tud.labAssist.model.io.MarkdownManager;

public class LauncherActivity extends Activity implements VoiceDetection.VoiceDetectionListener, VoiceMenuDialogFragment.VoiceMenuListener {

	public static final String FILENAME = Constants.FILENAME;

	private static final String HOTWORD = "protocol";
	private static final String FRAGMENT_LOADED = "fragment_loaded";

	protected String[] mPaths;
	private VoiceDetection mVoiceDetection;
	

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);

		mPaths = MarkdownManager.getMarkdownDocuments(this);
//		mVoiceMenu = new VoiceMenu(this, "protocol", mPaths);
		FragmentManager fm = getFragmentManager();

		setContentView(R.layout.fragment_host);

		VoiceMenuDialogFragment f = VoiceMenuDialogFragment.getInstance(fm, HOTWORD, mPaths);
		if (savedInstanceState == null || !savedInstanceState.getBoolean(FRAGMENT_LOADED))
			fm.beginTransaction().replace(R.id.host, f, VoiceMenuDialogFragment.FRAGMENT_TAG).commit();
//		f.show(fm, Constants.VOICE_MENU_FRAGMENT);
//		mVoiceMenu = new VoiceMenu(this, "protocol", mPaths);
		mVoiceDetection = new VoiceDetection(this, HOTWORD, this, mPaths);
	}

	@Override
	protected void onStart() {
		super.onStart();

//		mVoiceMenu.setListener(this);
//		mVoiceMenu.show();
		mVoiceDetection.start();
	}

	@Override
	protected void onStop() {
		super.onStop();

		mVoiceDetection.stop();
	}

	@Override
	protected void onSaveInstanceState(Bundle outState) {
		super.onSaveInstanceState(outState);
		outState.putBoolean(FRAGMENT_LOADED, true);
	}

	private void onItemSelected(String item) {
		if (item == null)
			return;

		for (String path : mPaths)
			if (item.equals(path)) {
				Intent i = new Intent();
				i.setClassName(this, LabAssistActivity.class.getName());
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
