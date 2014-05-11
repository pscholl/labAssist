package de.tud.labAssist.model.io;

import android.graphics.Typeface;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.style.CharacterStyle;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.util.Log;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import de.tud.labAssist.model.steps.MajorStep;
import de.tud.labAssist.model.steps.MajorStepBuilder;
import de.tud.labAssist.model.visitor.MarkdownVisitor;
import in.uncod.android.bypass.Document;
import in.uncod.android.bypass.Element;

/**
 * Created by Ramon on 10.05.2014.
 */
public class ReadInVisitor extends MarkdownVisitor {
	private static final String THIS = MarkdownVisitor.class.getSimpleName();

	private static final CharacterStyle styleBold = new StyleSpan(Typeface.BOLD);
	private static final CharacterStyle styleItalic = new StyleSpan(Typeface.ITALIC);
	private static final CharacterStyle styleStrike = new StrikethroughSpan();

	private static Pattern ANNOTATION_PATTERN = Pattern.compile("^\\[([^\\[\\]]*)\\]$");

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
		String s = e.getText();

		Matcher m = ANNOTATION_PATTERN.matcher(s);
		if (m.find()) {
			stepBuilder.addAnnotation(m.group(1));
		} else {
			stringBuilder.append(e.getText());
		}
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
		stepBuilder.addImage(e.getText());
	}

	@Override
	protected void visitListItem(Element e) {
		beginText(e);
	}


}
