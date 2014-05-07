package de.tud.labAssist.model.io;

import android.content.Context;
import android.graphics.Typeface;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.style.CharacterStyle;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.util.Log;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import de.tud.labAssist.model.steps.MajorStep;
import de.tud.labAssist.model.steps.MajorStepBuilder;
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
		doc.toString();

		List<MajorStep> steps = new ReadInVisitor().readIn(doc);

		return steps;
	}
}

class ReadInVisitor extends MarkdownVisitor {
	private static final String THIS = MarkdownVisitor.class.getSimpleName();

	private static final CharacterStyle styleBold = new StyleSpan(Typeface.BOLD);
	private static final CharacterStyle styleItalic = new StyleSpan(Typeface.ITALIC);
	private static final CharacterStyle styleStrike = new StrikethroughSpan();

	private ArrayList<MajorStep> steps;
	private MajorStepBuilder stepBuilder;
	private SpannableStringBuilder stringBuilder;
	private int currentCharCount;
	private int stepNr;

	public ReadInVisitor() {
		steps = new ArrayList<>();
		stepBuilder = new MajorStepBuilder();
	}

	public List<MajorStep> readIn(Document d) {
		stepNr = -1;

		visit(d);

		if (!stepBuilder.isEmpty())
			steps.add(stepBuilder.build());

		return steps;
	}

	@Override
	protected void visitHeader(Element e) {
		if (getLevel() != 0) {
			Log.w(THIS, "inner headers not supported");
			return;
		}

		if (!stepBuilder.isEmpty()) {
			if (!stepBuilder.hasHeader() && stepNr==-1) {
				//Protocol name,//TODO: show on first page?, protocol name as Headline
				steps.add(stepBuilder.build());
				stepNr++;
 			} else {
				steps.add(stepBuilder.build());
				stepNr++;
			}
		}

		stepBuilder.reset();
		stringBuilder = new SpannableStringBuilder();

		visitChildren(e);

		if (stringBuilder.toString().trim().equals("-donotshow"))
			return;

		//TODO: pictograms? move to StepBuilder, map statically / dynamically from information in .md file
		/*if (header.contains("chemical"))
			addImage("chemical");
		if (header.contains("culture"))
			addImage("bio");
		if (header.contains("tools") || header.contains("utensils"))
			addImage("tools");*/

		stepBuilder.setHeader(SpannableString.valueOf(stringBuilder));

	}

	private void beginText(Element e) {
		stringBuilder = new SpannableStringBuilder();
		currentCharCount = 0;

		visitChildren(e);

		stepBuilder.addParagraph(SpannableString.valueOf(stringBuilder));
	}

	@Override
	protected void visitParagraph(Element e) {
		beginText(e);
	}

	@Override
	protected void visitText(Element e) {
		stringBuilder.append(e.getText());
	}

	@Override
	protected void visitDoubleEmphasised(Element e) {
		stringBuilder.append(e.getText());
		int newLength = stringBuilder.length();
		stringBuilder.setSpan(styleBold, currentCharCount, newLength, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
		currentCharCount = newLength;

		super.visitDoubleEmphasised(e);
	}

	@Override
	protected void visitEmphasised(Element e) {
		stringBuilder.append(e.getText());
		int newLength = stringBuilder.length();
		stringBuilder.setSpan(styleItalic, currentCharCount, newLength, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
		currentCharCount = newLength;

		super.visitEmphasised(e);
	}

	@Override
	protected void visitStrikeThrough(Element e) {
		stringBuilder.append(e.getText());
		int newLength = stringBuilder.length();
		stringBuilder.setSpan(styleStrike, currentCharCount, newLength, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
		currentCharCount = newLength;

		super.visitStrikeThrough(e);
	}

	@Override
	protected void visitImage(Element e) {
		Log.w(THIS, "not supported yet");
		super.visitImage(e);
	}

	@Override
	protected void visitListItem(Element e) {
		beginText(e);
	}


}
