package de.tud.labAssist.model.io;

import android.content.Context;
import android.util.Log;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import de.tud.labAssist.model.MajorStep;
import de.tud.labAssist.model.MinorStep;
import de.tud.labAssist.model.visitor.MarkdownVisitor;
import in.uncod.android.bypass.Bypass;
import in.uncod.android.bypass.Document;
import in.uncod.android.bypass.Element;

/**
 * Created by Ramon on 22.04.2014.
 */
public class MarkdownManager {

	public static String[] getMarkdownDocuments(Context context) {
		List<String> paths = new LinkedList<>();

		try {
			for (String path : context.getAssets().list(""))
				if (path.trim().endsWith(".md"))
					paths.add(path.trim().substring(0, path.trim().length() - 3));

			File dir = context.getExternalFilesDir(null);
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

	public static List<MajorStep> getProtocol(String md) {

		Bypass bp = new Bypass();
		Document doc = bp.processMarkdown(md);

		List<MajorStep> steps = new ReadInVisitor().readIn(doc);

		return steps;
	}
}

class ReadInVisitor extends MarkdownVisitor {
	protected ArrayList<MajorStep> steps;
	private MajorStep currentStep;

	public ReadInVisitor() {
		steps = new ArrayList<>();
	}

	public List<MajorStep> readIn(Document d) {
		visit(d);
		return steps;
	}

	@Override
	protected boolean visitHeader(Element e) {
		if (getLevel() == 0) {

			currentStep = new MajorStep(e.getText());
			steps.add(currentStep);
		} else {
			currentStep.addMinorStep(new MinorStep(e.getText()));
		}

		return true;
	}
}
