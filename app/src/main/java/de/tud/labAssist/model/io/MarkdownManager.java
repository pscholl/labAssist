package de.tud.labAssist.model.io;

import android.content.Context;
import android.util.Log;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;
import java.util.Scanner;

import de.tud.labAssist.model.steps.MajorStep;
import de.tud.labAssist.model.time.TimerManager;
import in.uncod.android.bypass.Bypass;

/**
 * Created by Ramon on 22.04.2014.
 */
public class MarkdownManager {

	private static final String TAG = MarkdownManager.class.getSimpleName();

	public static abstract class Document implements Serializable {

		public abstract String getName();

		public abstract List<MajorStep> read(Context context, TimerManager timerManager) throws IOException;
	}

	public static class ExternalDocument extends Document implements Serializable {

		private final String path;
		private final String name;

		public ExternalDocument(String path, String name) {
			this.path = path;
			this.name = name;
		}

		@Override
		public String getName() {
			return name;
		}

		@Override
		public List<MajorStep> read(Context context, TimerManager timerManager) throws FileNotFoundException {
			return getProtocol(MarkdownManager.toString(new FileInputStream(path)), timerManager);
		}
	}

	public static class AssetDocument extends Document {

		private final String name;

		public AssetDocument(String name) {
			this.name = name;
		}

		@Override
		public String getName() {
			return name;
		}

		@Override
		public List<MajorStep> read(Context context, TimerManager timerManager) throws IOException {
			return getProtocol(MarkdownManager.toString(context.getAssets().open(name + ".md")), timerManager);
		}
	}

	public static List<Document> findMarkdownDocuments(Context context) {
		List<Document> paths = new LinkedList<>();

		try {
			for (String path : context.getAssets().list(""))
				if (path.trim().endsWith(".md")) {
					String name = path.trim().substring(0, path.trim().length() - 3);
					paths.add(new AssetDocument(name));
				}

			File dir = context.getExternalFilesDir(null);
			if (dir == null)
				return paths;

			Log.i(TAG, String.format("External directory is %s", dir.toString()));

			for (String path : dir.list()) {
				if (path.trim().endsWith(".md")) {
					String name = path.trim().substring(0, path.trim().length() - 3);
					paths.add(new ExternalDocument(path, name));
				}
			}

			return paths;
		} catch (IOException e) {
			Log.e(TAG, "Failed to find markdown docs", e);
			return paths;
		}
	}

	private static String toString(InputStream is) {
		Scanner scanner = new Scanner(is, "UTF-8").useDelimiter("\\A");
		String str = scanner.hasNext() ? scanner.next() : "";
		scanner.close();
		return str;
	}

	private static List<MajorStep> getProtocol(String md, TimerManager timerManager) {

		Bypass bp = new Bypass();
		in.uncod.android.bypass.Document doc = bp.processMarkdown(md);

		List<MajorStep> steps = new ReadInVisitor(timerManager).readIn(doc);

		return steps;
	}
}

