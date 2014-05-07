package de.tud.labAssist;

import android.app.Activity;
import android.app.FragmentManager;
import android.content.Context;
import android.content.Intent;
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
import com.google.android.glass.widget.CardScrollView;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.Scanner;

import de.tud.ess.BearingLocalizer;
import de.tud.ess.BearingLocalizer.BearingLocalizerListener;
import de.tud.ess.HeadImageView;
import de.tud.ess.VerticalBars;
import de.tud.ess.VoiceDetection;
import de.tud.ess.VoiceMenuDialogFragment;
import de.tud.labAssist.model.steps.MajorStep;
import de.tud.labAssist.model.ProtocolAdapter;
import de.tud.labAssist.model.io.MarkdownManager;

public class LabAssistActivity extends Activity implements VoiceDetection.VoiceDetectionListener {
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
	protected static final String CAM_SERVICE = "de.tud.ess.CameraService";
	protected static final int ANIMATE_GOTO = 2;
	protected static final float SCALE_STEP = 0.5F;
	private static final String TAG = "labAssist";
	protected CardScrollView mCardScrollView;
//	protected VoiceMenu mVoiceMenu;
	protected boolean mAttentionChallenge = false;
	protected TextView mBarText;
	protected Process mLogcat;
	protected BearingLocalizer mBearinglocalizer;
	protected Intent mBackgroundCamIntent;
	protected boolean mBackgroundCamRunning = false;
	protected Method mAnimateFunc;
	protected String mBarColor = "";
	protected String mBarPosition = "";
	private AudioManager mAudio;
	private VoiceDetection mVoiceDetection;
	private String[] mPhrases;
	private boolean mVoiceMenuVisible = false;
	private VoiceMenuDialogFragment mVoiceMenu;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);

    /* start a logcat instance that logs the current run on the sdcard */
//		String now = new SimpleDateFormat("yyyy-MMM-dd-HH-mm-ss").format(new Date());
//		String path = new File(getExternalFilesDir(null), "logcat_" + now + ".log").toString();
//		try {
//			mLogcat = Runtime.getRuntime().exec(new String[]{
//					"logcat", "-c"});
//			mLogcat.waitFor();
//			mLogcat = Runtime.getRuntime().exec(new String[]{
//					"logcat", "-v", "time", "-f", path, "-r", "1024", "-s", TAG});
//		} catch (Exception e) {
//			Log.e(TAG, "logcat execution failed: " + e.toString());
//			e.printStackTrace();
//		}
//		Log.e(TAG, path);
		Intent intent = getIntent();
		if (intent == null) {
			Log.e(TAG, String.format("missing argument for '%s'", LauncherActivity.FILENAME));
			Toast.makeText(this, "no document supplied", Toast.LENGTH_LONG).show();
			return;
		}

		String file = getIntent().getExtras().getString(LauncherActivity.FILENAME);
		String mdown = null;

		try {
			mdown = toString(getAssets().open(file));
		} catch (IOException e) {
			File ext = getExternalFilesDir(null);
			if (ext == null) {
				Log.e(TAG, "external storage not mounted");
				return;
			}
			try {
				mdown = toString(new FileInputStream(new File(ext, file)));
			} catch (FileNotFoundException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		}

		if (file.contains("Lego")) {//TODO: remove!!
			setContentView(R.layout.barlayout);
			mAttentionChallenge = true;
			mBarText = (TextView) findViewById(R.id.bartext);
//      mBarText.setTypeface(RobotoTypefaces.getTypeface(this, RobotoTypefaces.WEIGHT_THIN));
		} else
			setContentView(R.layout.protocol_pager);

		mVoiceDetection = new VoiceDetection(this, OKGLASS, this);

//		LabMarkdown lm = new LabMarkdown(this, mdown);

		mCardScrollView = (CardScrollView) findViewById(R.id.protocol_pager);
		mCardScrollView.setAdapter(new ProtocolAdapter(this, MarkdownManager.getProtocol(mdown)));
		mCardScrollView.setOnItemClickListener(new LabOnClickListener());
		mCardScrollView.setOnItemSelectedListener(new VoiceConfigChanger());

		mAudio = (AudioManager) getSystemService(Context.AUDIO_SERVICE);

//		mBackgroundCamIntent = new Intent();
//		mBackgroundCamIntent.setClassName("de.tud.ess", CAM_SERVICE);
//		mBackgroundCamIntent.putExtra("height", 50);
//		mBackgroundCamIntent.putExtra("width", 70);
//		mBackgroundCamIntent.putExtra("y", 640 - 50);
//		mBackgroundCamIntent.putExtra("rate", 5.f);
//
//		mBackgroundCamRunning = false;
		//toggleBackgroundCam();
	}

	@Override
	protected void onDestroy() {
		super.onDestroy();

		if (mLogcat != null) {
			mLogcat.destroy();
			mLogcat = null;
		}
	}

	private String toString(InputStream is) {
		Scanner scanner = new Scanner(is, "UTF-8").useDelimiter("\\A");
		String str = scanner.hasNext() ? scanner.next() : "";
		scanner.close();
		return str;
	}

	@Override
	protected void onResume() {
		super.onResume();
		mCardScrollView.activate();
		mVoiceDetection.start();

		getWindow().addFlags(LayoutParams.FLAG_KEEP_SCREEN_ON);

		mBearinglocalizer = new BearingLocalizer(getApplicationContext(),
				new BearingLocalizerListener() {
					@Override
					public void leftBearing() {
						Log.e(TAG, "left");
					}

					@Override
					public void enteredBearing() {
						Log.e(TAG, "enter");
					}
				}
		);

		Log.v(TAG, "onResume");
	}

	@Override
	protected void onPause() {
		super.onPause();
//		mVoiceMenu.setListener(null);
		mVoiceDetection.stop();
		mCardScrollView.deactivate();
		mBearinglocalizer.deactivate();
		mBearinglocalizer = null;

		if (mBackgroundCamRunning)
			toggleBackgroundCam();


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

		onItemSelected(phrase);
	}

	protected void callAnimateTo(int position, int animate) {
		if (mAnimateFunc == null)
			for (Method m : mCardScrollView.getClass().getDeclaredMethods())
				if (m.getName().equals("animateToSelection")) {
					mAnimateFunc = m;
					break;
				}

		try {
			mAnimateFunc.invoke(mCardScrollView, position, animate);
		} catch (Exception e) {
			Log.e(TAG, e.toString());
		}

		//Log.e(TAG, String.format("switch to item (%d)", position));
	}

	protected void markAsDone(MajorStep step, int pos) {
		boolean done = /*step.markAsDone();*/ false;
		mCardScrollView.getAdapter().getView(pos, mCardScrollView.getSelectedView(), null);
		if (done)
			callAnimateTo(pos + 1, ANIMATE_GOTO);

		Log.e(TAG, String.format("marked item %d as done (%b)", pos, done));
	}

	private void onItemSelected(String literal) {
		try {
			int cur = mCardScrollView.getSelectedItemPosition();
			MajorStep step = (MajorStep) mCardScrollView
					.getItemAtPosition(cur);
			HeadImageView im = (HeadImageView) mCardScrollView
					.getSelectedView().findViewById(R.id.imview);

			if (PREVIOUS.equals(literal))
				callAnimateTo(cur - 1, ANIMATE_GOTO);
			else if (NEXT.equals(literal))
				callAnimateTo(cur + 1, ANIMATE_GOTO);
			else if (CHECK.equals(literal) || DONE.equals(literal))
				markAsDone(step, cur);
			else if (ZOOM_IN.equals(literal))
				im.setScaleFactor(im.getScaleFactor() + SCALE_STEP);
			else if (ZOOM_OUT.equals(literal))
				im.setScaleFactor(im.getScaleFactor() - SCALE_STEP);
			else if (BAR.equals(literal))
				toggleBarText(true, true);
			else if (OKGLASS.equals(literal))
				toggleBarText(true, true);
			else if (TOGGLEREC.equals(literal))
				toggleBackgroundCam();
			else
				mAudio.playSoundEffect(Sounds.ERROR);
		} catch (Exception e) {
			Log.e(TAG, e.toString());
		}
	}

	protected void toggleBackgroundCam() {
		if (mBackgroundCamRunning)
			stopService(mBackgroundCamIntent);
		else
			startService(mBackgroundCamIntent);

		mBackgroundCamRunning = !mBackgroundCamRunning;
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

	protected void recreateVoiceMenu(MajorStep step) { //TODO: always use accept all Commands, just ingore and hide thos not applicable right now (-> prevent recreating VoiceConfig)
		List<String> c = new LinkedList<>(Arrays.asList(STATIC_VOICECOMMANDS));

//		if (step.hasZoomAbleImage()) {
//			c.add(ZOOM_IN);
//			c.add(ZOOM_OUT);
//		}
//		if (step.hasCheckableItems()) {
//			c.add(CHECK);
//			c.add(DONE);
//		}
		if (mAttentionChallenge) {
			c.add(BAR);
		}

//		mVoiceMenu.setCommands(c.toArray(new String[c.size()]));
		mPhrases = c.toArray(new String[c.size()]);
		mVoiceDetection.changePhrases(mPhrases);
	}

	public class LabOnClickListener implements OnItemClickListener {
		@Override
		public void onItemClick(AdapterView<?> parent, View view, int cur, long id) {
			MajorStep step = (MajorStep) mCardScrollView.getItemAtPosition(cur);

			mAudio.playSoundEffect(Sounds.TAP);
//			if (step.hasZoomAbleImage()) {
//				HeadImageView v = (HeadImageView) view.findViewById(R.id.imview);
//				v.setScaleFactor(v.getScaleFactor() + SCALE_STEP);
//				Log.e(TAG, "zoomed in (via tap)");
//			} else if (step.hasCheckableItems())
//				markAsDone(step, cur);
		}

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