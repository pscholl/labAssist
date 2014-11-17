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
import java.util.HashMap;

import de.tud.ess.CameraService;
import de.tud.ess.HeadImageView;
import de.tud.ess.VoiceDetection;
import de.tud.ess.VoiceMenuDialogFragment;
import de.tud.labAssist.model.Protocol;
import de.tud.labAssist.model.ProtocolAdapter;
import de.tud.labAssist.model.StepListener;
import de.tud.labAssist.model.io.MarkdownManager;
import de.tud.labAssist.model.steps.MajorStep;
import de.tud.labAssist.model.time.TimerManager;
import de.tud.labAssist.views.VerticalBars;

public class LabAssistActivity extends Activity implements VoiceDetection.VoiceDetectionListener, StepListener {
	private static final String TAG = LabAssistActivity.class.getSimpleName();

	protected static final int NEXT_SLIDE = 0;
	protected static final int PREVIOUS_SLIDE = 1;
	private static final int START_VIDEO_RECORDING = 2;
	private static final int STOP_VIDEO_RECORDING = 3;
	private static final int MARK_AS_DONE = 4;
	private static final int ZOOM_IN = 5;
	private static final int ZOOM_OUT = 6;
	private static final int BAR_CHANGED = 7;
	public static final int CHECK = 8;
	protected static final String OK_GLASS = "ok glass";
	protected static final String[] VOICE_COMMANDS = new String[]{ "next slide", "previous slide", "start video recording", "stop video recording", "mark as done", "enlarge image", "zoom out", "bar changed", "check"};

	protected static final float SCALE_STEP = 0.5F;
	protected CardScrollView mCardScrollView;
	protected boolean mAttentionChallenge = false;
	protected TextView mBarText;
	protected Intent mBackgroundCamIntent;
	private AudioManager mAudio;
	private VoiceDetection mVoiceDetection;
	private boolean mVoiceMenuVisible = false;
	private VoiceMenuDialogFragment mVoiceMenu;
	private Protocol protocol;
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

		mVoiceDetection = new VoiceDetection(this, OK_GLASS, this, true, VOICE_COMMANDS);

		mCardScrollView = (CardScrollView) findViewById(R.id.protocol_pager);

		TimerManager timerManager = new TimerManager();

		try {
			protocol = doc.read(this, timerManager);
			protocolAdapter = new ProtocolAdapter(this, protocol, timerManager);
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
	protected void onStop() {
		super.onStop();

		protocol.saveState(this);
	}

	@Override
	public void onHotwordDetected() {
		FragmentManager fm = getFragmentManager();
		mVoiceMenu = VoiceMenuDialogFragment.getInstance(fm, mVoiceDetection);
		mVoiceMenu.show(fm, VoiceMenuDialogFragment.FRAGMENT_TAG);
		mVoiceMenuVisible = true;
	}

	@Override
	public void onPhraseDetected(int index, String phrase) {
		if (mVoiceMenuVisible)
			mVoiceMenu.dismiss();

		onItemSelected(index, phrase);
	}

	private void onItemSelected(int phraseID, String literal) {
		try {
			int cur = mCardScrollView.getSelectedItemPosition();
			MajorStep step = protocolAdapter.getItem(cur);
			HeadImageView im = (HeadImageView) mCardScrollView
					.getSelectedView().findViewById(R.id.imview);

			switch (phraseID) {
				case NEXT_SLIDE:
					mCardScrollView.animate(cur + 1, CardScrollView.Animation.NAVIGATION);
					break;
				case PREVIOUS_SLIDE:
					mCardScrollView.animate(cur - 1, CardScrollView.Animation.NAVIGATION);
					break;
				case MARK_AS_DONE:
					markAsDone(step);
					break;
				case ZOOM_IN:
					im.setScaleFactor(im.getScaleFactor() + SCALE_STEP);
					break;
				case ZOOM_OUT:
					im.setScaleFactor(im.getScaleFactor() - SCALE_STEP);
					break;
				case START_VIDEO_RECORDING:
					startBackgroundCam();
					break;
				case STOP_VIDEO_RECORDING:
					stopBackgroundCam();
				default:
					mAudio.playSoundEffect(Sounds.ERROR);
			}
		} catch (Exception e) {
			Log.e(TAG, e.toString());
		}
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

	protected void updateVoiceMenu(MajorStep step) {
		boolean hasImage = step.hasZoomAbleImage();
		mVoiceDetection.setEnabled(ZOOM_IN, hasImage);
		mVoiceDetection.setEnabled(ZOOM_OUT, hasImage);

		boolean isCheckable = step.hasCheckableItems();
		mVoiceDetection.setEnabled(CHECK, isCheckable);

		mVoiceDetection.setEnabled(BAR_CHANGED, mAttentionChallenge);

		mVoiceDetection.update();
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
			updateVoiceMenu(step);
		}

		@Override
		public void onNothingSelected(AdapterView<?> parent) {
		}
	}

}