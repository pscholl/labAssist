package de.tud.ess;

import android.app.Activity;
import android.content.Context;
import android.media.AudioManager;
import android.util.Log;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;

import com.google.android.glass.media.Sounds;
import com.google.glass.input.VoiceInputHelper;
import com.google.glass.util.PowerHelper;
import com.google.glass.voice.VoiceCommand;
import com.google.glass.voice.VoiceConfig;

import de.tud.labAssist.R;

public class VoiceMenu extends StubVoiceListener {

	protected static final int MARGIN = 20;
	protected VoiceInputHelper mVoiceInputHelper;
	protected Activity mContext;
	protected VoiceConfig mVoiceConfig;
	protected PowerHelper mPower;
	protected String[] mItems;
	protected HeadListView mScroll;
	protected VoiceMenuListener mListener;
	protected ViewGroup mRoot;
	protected String mActivationWord;
	protected ViewGroup mLayout;
	protected boolean mShowing = false;
	protected AudioManager mAudio;

	public VoiceMenu(Activity c, String hotword, String... items) {
		mContext = c;
		mVoiceInputHelper = new VoiceInputHelper(
				mContext, this,
				VoiceInputHelper.newUserActivityObserver(mContext));

		mActivationWord = hotword;
		mVoiceConfig = new VoiceConfig(
				c.getApplication().getPackageName(), new String[]{});
		mVoiceConfig.setShouldSaveAudio(false);
		setCommands(items);

		mPower = new PowerHelper(mContext);
		mAudio = (AudioManager) mContext.getSystemService(Context.AUDIO_SERVICE);
	}

	@Override
	public void onVoiceServiceConnected() {
		super.onVoiceServiceConnected();
		mVoiceInputHelper.setVoiceConfig(mVoiceConfig, false);
	}

	public void setListener(VoiceMenuListener m) {
		mListener = m;

		if (mListener != null)
			mVoiceInputHelper.addVoiceServiceListener();
		else
			mVoiceInputHelper.removeVoiceServiceListener();
	}

	@Override
	public VoiceConfig onVoiceCommand(VoiceCommand vc) {
		String literal = vc.getLiteral();
		mPower.stayAwake(6000);

		if (mListener == null) {
			mVoiceInputHelper.removeVoiceServiceListener();
			shutdown();
			return mVoiceConfig;
		}

		if (literal.equals(mActivationWord)) {
			show();
			Log.e("labAssist", String.format("command %s", literal));
			mListener.onItemSelected(mActivationWord);
		}

		for (String item : mItems) {
			if (item.equals(literal)) {
				Log.e("labAssist", String.format("command %s", literal));
				mListener.onItemSelected(item);
				shutdown();
				return mVoiceConfig;
			}
		}

		return null;
	}

	public void shutdown() {
		if (mScroll != null) {
			mScroll.deactivate();
			mRoot.removeView(mLayout);
			mScroll = null;
			mLayout = null;
			mShowing = false;
		}
	}

	public void show() {
		if (mShowing)
			return;

		mRoot = (ViewGroup) mContext.getWindow().getDecorView().getRootView();

		mLayout = (ViewGroup) mContext.getLayoutInflater().inflate(R.layout.voice_menu, mRoot);
		TextView tv = (TextView) mLayout.findViewById(R.id.hotword_text);
		tv.setText(mActivationWord + ",");
		mScroll = (HeadListView) mLayout.findViewById(R.id.hotword_chooser);

		mScroll.setAdapter(new VoiceMenuAdapter(mContext, mItems));

//		mLayout = new RelativeLayout(mContext);
//		mRoot.bringChildToFront(mLayout);
//		mLayout.setBackgroundColor(0xDD000000);
//		ViewGroup.LayoutParams p = new ViewGroup.LayoutParams(
//				ViewGroup.LayoutParams.MATCH_PARENT,
//				ViewGroup.LayoutParams.MATCH_PARENT);
//		mRoot.addView(mLayout, p);
//
//		TextView tv = new TextView(mContext);
//		tv.setText(mActivationWord + ", ");
//		tv.setGravity(Gravity.LEFT);
//		tv.setId(R.id.hotword_text);
//		tv.setTextSize(30);
//		tv.setTextColor(0xFFFFFFFF);
//
//		RelativeLayout.LayoutParams params;
//		params = new RelativeLayout.LayoutParams(
//				RelativeLayout.LayoutParams.WRAP_CONTENT,
//				RelativeLayout.LayoutParams.MATCH_PARENT);
//		params.addRule(RelativeLayout.ALIGN_PARENT_LEFT);
//		params.addRule(RelativeLayout.ALIGN_PARENT_TOP);
//		params.setMargins(MARGIN, MARGIN, MARGIN, MARGIN);
//		mLayout.addView(tv, params);
//
//		mScroll = new HeadListView(mContext);
//		mScroll.setAdapter(new VoiceMenuAdapter(mContext, mItems));
//		mScroll.setSelector(new StateListDrawable()); // disable selector view
//		mScroll.setDivider(new StateListDrawable());
//		params = new RelativeLayout.LayoutParams(
//				RelativeLayout.LayoutParams.WRAP_CONTENT,
//				RelativeLayout.LayoutParams.MATCH_PARENT);
//		params.addRule(RelativeLayout.ALIGN_PARENT_TOP);
//		params.addRule(RelativeLayout.RIGHT_OF, 1);
//		params.setMargins(0, MARGIN, MARGIN, MARGIN);
//		mLayout.addView(mScroll, params);

		mShowing = true;
		mScroll.activate();
		mScroll.requestFocus();

		mScroll.setOnKeyListener(new OnKeyListener() {
			@Override // catch the TAP event
			public boolean onKey(View v, int keyCode, KeyEvent event) {
				if (keyCode == KeyEvent.KEYCODE_DPAD_CENTER && mListener != null && mScroll != null) {
					mListener.onItemSelected((String) mScroll.getSelectedItem());
					if (mAudio != null)
						mAudio.playSoundEffect(Sounds.TAP);
					shutdown();
					return true;
				}
				return false;
			}
		});
	}

	public void setCommands(String[] items) {
		mItems = items;
		String[] hotwords = new String[items.length + 1];
		for (int i = 0; i < items.length; i++)
			hotwords[i + 1] = items[i];
		hotwords[0] = mActivationWord;

		mVoiceConfig.setCustomPhrases(hotwords);
		mVoiceInputHelper.setVoiceConfig(mVoiceConfig, false);
	}

	public interface VoiceMenuListener {
		void onItemSelected(String item);
	}

	public class VoiceMenuAdapter extends ArrayAdapter<String> {

		protected Context mContext;
		protected String[] mItems;

		public VoiceMenuAdapter(Context c, String[] items) {
			super(c, android.R.layout.simple_list_item_1, items);
			mContext = c;
			mItems = items;
		}

		@Override
		public View getView(int position, View convertView, ViewGroup parent) {
			TextView tv = new TextView(mContext);

			tv.setText(mItems[position]);
			tv.setGravity(Gravity.LEFT);
			tv.setTextSize(30);
			tv.setTextColor(0xFFFFFFFF);

			return tv;
		}
	}
}