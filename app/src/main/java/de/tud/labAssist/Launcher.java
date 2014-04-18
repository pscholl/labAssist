package de.tud.labAssist;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.widget.FrameLayout;

import java.io.File;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

import de.tud.ess.VoiceMenu;
import de.tud.ess.VoiceMenu.VoiceMenuListener;

public class Launcher extends Activity implements VoiceMenuListener {

	public static final String FILENAME = "filename";
	protected VoiceMenu mVoiceMenu;
	protected String[] mPaths;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);

		mPaths = getMarkdownDocuments();
		mVoiceMenu = new VoiceMenu(this, "protocol", mPaths);
		setContentView(new FrameLayout(this));
	}

	@Override
	protected void onResume() {
		super.onResume();
		mVoiceMenu.setListener(this);
		mVoiceMenu.show();
	}

	@Override
	protected void onPause() {
		mVoiceMenu.setListener(null);
		mVoiceMenu.shutdown();
		super.onPause();
	}

	protected String[] getMarkdownDocuments() {
		List<String> paths = new LinkedList<>();

		try {
			for (String path : getAssets().list(""))
				if (path.trim().endsWith(".md"))
					paths.add(path.trim().substring(0, path.trim().length() - 3));

			File dir = getExternalFilesDir(null);
			if (dir == null)
				return paths.toArray(new String[paths.size()]);

			Log.e("labLauncher", String.format("External directory is %s", dir.toString()));

			for (String path : dir.list())
				if (path.trim().endsWith(".md"))
					paths.add(path.trim().substring(0, path.trim().length() - 3));

			return paths.toArray(new String[paths.size()]);
		} catch (IOException e) {
			Log.e("LabLauncher", e.toString());
			return new String[0];
		}
	}

	@Override
	public void onItemSelected(String item) {
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
}
