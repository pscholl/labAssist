package de.tud.labAssist;

import android.app.Activity;
import android.app.FragmentManager;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;

import com.google.android.glass.view.WindowUtils;

import java.util.List;

import de.tud.ess.Constants;
import de.tud.ess.VoiceDetection;
import de.tud.ess.VoiceMenuDialogFragment;
import de.tud.labAssist.model.io.MarkdownManager;

public class LauncherActivity extends Activity implements VoiceDetection.VoiceDetectionListener {

	public static final String FILENAME = Constants.FILENAME;

	private static final String HOTWORD = "protocol";
	private static final String FRAGMENT_LOADED = "fragment_loaded";

	protected List<MarkdownManager.Document> mPaths;
	private VoiceDetection mVoiceDetection;
	

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);

		mPaths = MarkdownManager.findMarkdownDocuments(this);
		FragmentManager fm = getFragmentManager();

//		requestWindowFeature(WindowUtils.FEATURE_VOICE_COMMANDS);
		requestWindowFeature(WindowUtils.FLAG_DISABLE_HEAD_GESTURES);

		setContentView(R.layout.fragment_host);

		String[] names = new String[mPaths.size()];
		int i = 0;
		for (MarkdownManager.Document d: mPaths) {
			names[i++] = d.getName();
		}

		mVoiceDetection = new VoiceDetection(this, HOTWORD, this, true, names);

		VoiceMenuDialogFragment f = VoiceMenuDialogFragment.getInstance(fm, mVoiceDetection);
		if (savedInstanceState == null || !savedInstanceState.getBoolean(FRAGMENT_LOADED))
			fm.beginTransaction().replace(R.id.host, f, VoiceMenuDialogFragment.FRAGMENT_TAG).commit();
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
	public boolean onCreatePanelMenu(int featureId, Menu menu) {
		if (featureId == WindowUtils.FEATURE_VOICE_COMMANDS) {
//			return onCreateVoiceMenu(menu);//plugin voice menu here, if google updates this functionality with automatic scrolling
			return false;
		} else {
			return super.onCreatePanelMenu(featureId, menu);
		}
	}

	@Override
	protected void onSaveInstanceState(Bundle outState) {
		super.onSaveInstanceState(outState);
		outState.putBoolean(FRAGMENT_LOADED, true);
	}

	private void onItemSelected(int index, String item) {
		if (item == null)
			return;

		Intent intent = new Intent(this, LabAssistActivity.class);
		intent.putExtra(FILENAME, mPaths.get(index));
		startActivity(intent);
	}

	@Override
	public void onHotwordDetected() {

	}

	@Override
	public void onPhraseDetected(int index, String phrase) {
		onItemSelected(index, phrase);
	}
}
