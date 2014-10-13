package de.tud.labAssist;

import android.app.Activity;
import android.app.FragmentManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.WindowManager.LayoutParams;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.TextView;
import android.widget.Toast;

import com.google.android.glass.media.Sounds;
import com.google.android.glass.view.WindowUtils;
import com.google.android.glass.widget.CardScrollView;

import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

import de.tud.ess.CameraService;
import de.tud.ess.HeadImageView;
import de.tud.ess.VoiceDetection;
import de.tud.ess.VoiceMenuDialogFragment;
import de.tud.labAssist.model.ProtocolAdapter;
import de.tud.labAssist.model.StepListener;
import de.tud.labAssist.model.io.MarkdownManager;
import de.tud.labAssist.model.steps.MajorStep;
import de.tud.labAssist.model.time.TimerManager;
import de.tud.labAssist.views.VerticalBars;

public class LabAssistActivity extends Activity implements VoiceDetection.VoiceDetectionListener, StepListener {
	private static final String TAG = LabAssistActivity.class.getSimpleName();

	protected static final String NEXT = "next slide";
	protected static final String PREVIOUS = "previous";
	protected static final String[] STATIC_VOICECOMMANDS = new String[]
			//{ NEXT, PREVIOUS, TOGGLEREC  };
			{NEXT, PREVIOUS};
	protected static final String DONE = "mark as done";
	protected static final String CHECK = "check this step";
	protected static final String ZOOM_IN = "enlarge image";
	protected static final String ZOOM_OUT = "scale down";
	protected static final String BAR = "bar changed";
	protected static final String TOGGLEREC = "toggle video recording";
	protected static final String OKGLASS = "ok glass";

	protected static final float SCALE_STEP = 0.5F;
	protected CardScrollView mCardScrollView;
	protected boolean mAttentionChallenge = false;
	protected TextView mBarText;
	protected Intent mBackgroundCamIntent;
	protected String mBarColor = "";
	protected String mBarPosition = "";
	private AudioManager mAudio;
	private VoiceDetection mVoiceDetection;
	private String[] mPhrases;
	private boolean mVoiceMenuVisible = false;
	private VoiceMenuDialogFragment mVoiceMenu;
	private ProtocolAdapter protocolAdapter;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		Log.d(TAG, "labAssistActivity");

		requestWindowFeature(WindowUtils.FLAG_DISABLE_HEAD_GESTURES);
		getWindow().addFlags(LayoutParams.FLAG_KEEP_SCREEN_ON);

		//TODO: workaround, precaching drawables
		HashMap<String, Drawable> pictograms = new HashMap<>();
		pictograms.put("incubate", getResources().getDrawable(R.drawable.incubate));
		pictograms.put("combine", getResources().getDrawable(R.drawable.combine));
		pictograms.put("bio", getResources().getDrawable(R.drawable.bio));
		pictograms.put("chemical", getResources().getDrawable(R.drawable.chemical));
//		pictograms.put("separate", getResources().getDrawable(R.drawable.separate));
		pictograms.put("dispense", getResources().getDrawable(R.drawable.dispense));
		ProtocolAdapter.setPictograms(pictograms);

		Intent intent = getIntent();
		if (intent == null) {
			Log.e(TAG, String.format("missing argument for '%s'", LauncherActivity.FILENAME));
			Toast.makeText(this, "no document supplied", Toast.LENGTH_LONG).show();
			return;
		}

		MarkdownManager.Document doc = (MarkdownManager.Document) getIntent().getExtras().getSerializable(LauncherActivity.FILENAME);

//		if (file.contains("Lego")) {//TODO: remove!!
//			setContentView(R.layout.barlayout);
//			mAttentionChallenge = true;
//			mBarText = (TextView) findViewById(R.id.bartext);
//		} else
		setContentView(R.layout.protocol_pager);

		mVoiceDetection = new VoiceDetection(this, OKGLASS, this);

		mCardScrollView = (CardScrollView) findViewById(R.id.protocol_pager);

		TimerManager timerManager = new TimerManager();

		try {
			protocolAdapter = new ProtocolAdapter(this, doc.read(this, timerManager), timerManager);
		} catch (IOException e) {
			Log.e(TAG, "Could not open file", e);
			throw new RuntimeException("Could not open file", e);
		}

		mCardScrollView.setAdapter(protocolAdapter);
		mCardScrollView.setOnItemClickListener(new LabOnClickListener());
		mCardScrollView.setOnItemSelectedListener(new VoiceConfigChanger());

		mAudio = (AudioManager) getSystemService(Context.AUDIO_SERVICE);

		mBackgroundCamIntent = new Intent(this, CameraService.class);
		mBackgroundCamIntent.putExtra("height", 50);
		mBackgroundCamIntent.putExtra("width", 70);
		mBackgroundCamIntent.putExtra("y", 640 - 50);
		mBackgroundCamIntent.putExtra("rate", 5.f);
	}

	@Override
	protected void onDestroy() {
		super.onDestroy();
	}

	@Override
	protected void onResume() {
		super.onResume();
		mCardScrollView.activate();
		mVoiceDetection.start();

		Log.v(TAG, "onResume");
	}

	@Override
	protected void onPause() {
		super.onPause();
		mVoiceDetection.stop();
		mCardScrollView.deactivate();

//		Log.v(TAG, "onPause");
	}

	@Override
	public void onHotwordDetected() {
		FragmentManager fm = getFragmentManager();
		mVoiceMenu = VoiceMenuDialogFragment.getInstance(fm, OKGLASS, mPhrases);
		mVoiceMenu.show(fm, VoiceMenuDialogFragment.FRAGMENT_TAG);
		mVoiceMenuVisible = true;
	}

	@Override
	public void onPhraseDetected(int index, String phrase) {
		if (mVoiceMenuVisible)
			mVoiceMenu.dismiss();

		onItemSelected(index, phrase);
	}

	private void onItemSelected(int index, String literal) {//TODO unify, use index, let the list of detectable keywords be constant
		try {
			int cur = mCardScrollView.getSelectedItemPosition();
			MajorStep step = protocolAdapter.getItem(cur);
			HeadImageView im = (HeadImageView) mCardScrollView
					.getSelectedView().findViewById(R.id.imview);

			if (PREVIOUS.equalsIgnoreCase(literal))
				mCardScrollView.animate(cur - 1, CardScrollView.Animation.NAVIGATION);
			else if (NEXT.equalsIgnoreCase(literal))
				mCardScrollView.animate(cur + 1, CardScrollView.Animation.NAVIGATION);
			else if (CHECK.equalsIgnoreCase(literal) || DONE.equalsIgnoreCase(literal))
				markAsDone(step);
			else if (ZOOM_IN.equalsIgnoreCase(literal))
				im.setScaleFactor(im.getScaleFactor() + SCALE_STEP);
			else if (ZOOM_OUT.equalsIgnoreCase(literal))
				im.setScaleFactor(im.getScaleFactor() - SCALE_STEP);
			else if (BAR.equalsIgnoreCase(literal))
				toggleBarText(true, true);
			else if (TOGGLEREC.equalsIgnoreCase(literal))
				toggleBackgroundCam();
			else
				mAudio.playSoundEffect(Sounds.ERROR);
		} catch (Exception e) {
			Log.e(TAG, e.toString());
		}
	}

	protected void toggleBackgroundCam() {// remembering state should not be necessary, service should be able to handle multiple starts / stops, bind if you need to know if it is running, and to share our priority

	}

	private void startBackgroundCam() {
		startService(mBackgroundCamIntent);
	}

	private void stopBackgroundCam() {
		stopService(mBackgroundCamIntent);
	}

	protected void toggleBarText(boolean color, boolean bar) {
		VerticalBars v = (VerticalBars) findViewById(R.id.bars);
		updateBarText(color ? v.getCurrentColor() : null,
				bar ? v.getCurrentBar() : null);
	}

	protected void updateBarText(String color, String position) {
		if (mBarText == null) {
			Log.e(TAG, "setting barText without a view");
			return;
		}

		String[] cur = mBarText.getText().toString().split("-");
		String mBarColor = "", mBarPosition = "";

		if (cur.length == 1)
			mBarColor = cur[0];
		else if (cur.length == 2) {
			mBarColor = cur[0];
			mBarPosition = cur[1];
		}

		if (color != null) {
			mBarColor = color;
			Log.e(TAG, String.format("user gave new color: %s", color));
		}

		if (position != null) {
			mBarPosition = position;
			Log.e(TAG, String.format("user gave new position: %s", position));
		}

		mBarText.setText(String.format("%s - %s", mBarColor.trim(), mBarPosition.trim()));
	}

	protected void recreateVoiceMenu(MajorStep step) { //TODO: always use all Commands, just ignore and hide those not applicable right now (-> prevent recreating VoiceConfig)
		List<String> c = new LinkedList<>(Arrays.asList(STATIC_VOICECOMMANDS));

		if (step.hasZoomAbleImage()) {
			c.add(ZOOM_IN);
			c.add(ZOOM_OUT);
		}
		if (step.hasCheckableItems()) {
			c.add(CHECK);
			c.add(DONE);
		}
		if (mAttentionChallenge) {
			c.add(BAR);
		}

		mPhrases = c.toArray(new String[c.size()]);
		mVoiceDetection.changePhrases(mPhrases);
	}

	@Override
	public void stepComplete() {
		scrollToNextMajorStep();
	}

	private class LabOnClickListener implements OnItemClickListener {
		@Override
		public void onItemClick(AdapterView<?> parent, View view, int cur, long id) {
			MajorStep step = protocolAdapter.getItem(cur);

			mAudio.playSoundEffect(Sounds.TAP);
			if (step.hasZoomAbleImage()) {
//				HeadImageView v = (HeadImageView) view.findViewById(R.id.imview);//TODO: reimplement
//				v.setScaleFactor(v.getScaleFactor() + SCALE_STEP);
				Log.d(TAG, "zoomed in (via tap)");
//			} else if (step.hasAction()) {
//				step.action();
			} else if (step.hasCheckableItems()) {
				markAsDone(step);
			}

		}

	}

	private void markAsDone(MajorStep step) {
		step.markNextAsDone(this);
		protocolAdapter.notifyDataSetChanged();
	}

	private void scrollToNextMajorStep() {
//		callAnimateTo(mCardScrollView.getSelectedItemPosition() + 1, ANIMATE_GOTO);
		mCardScrollView.animate(mCardScrollView.getSelectedItemPosition()+1, CardScrollView.Animation.NAVIGATION);
	}

	public class VoiceConfigChanger implements OnItemSelectedListener {
		@Override
		public void onItemSelected(AdapterView<?> parent, View view, int position,//TODO: remove
								   long id) {
			MajorStep step = (MajorStep) parent.getItemAtPosition(position);
			recreateVoiceMenu(step);
		}

		@Override
		public void onNothingSelected(AdapterView<?> parent) {
		}
	}

}