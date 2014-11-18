package de.tud.labAssist.model.io;

import android.graphics.Typeface;
import android.text.SpannableString;
import android.text.style.StyleSpan;

import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

import de.tud.labAssist.model.Protocol;
import de.tud.labAssist.model.steps.MajorStep;
import de.tud.labAssist.model.steps.MinorStep;

/**
 * Created by Ramon on 18.11.2014.
 */
public class MarkdownWriter {

	private final StringBuilder out;

	public MarkdownWriter() throws IOException {
		out = new StringBuilder();
	}

	public MarkdownWriter writeProtocol(Protocol protocol) {
		writeMajorSteps(protocol.getSteps());
		return this;
	}

	public void toStream(OutputStream outputStream) throws IOException {
		outputStream.write(out.toString().getBytes());
	}

	private void writeMajorSteps(List<MajorStep> steps) {
		for (MajorStep step : steps) {
			writeMajorStep(step);
		}
	}

	private void writeMajorStep(MajorStep step) {
		SpannableString header = step.getHeader();
		if (header != null && header.length() > 0) {
			writeHeader(step.getHeader());
		}
		writeMinorSteps(step.getMinorSteps());
		out.append('\n');
	}

	private void writeMinorSteps(List<MinorStep> minorSteps) {
		for (MinorStep step : minorSteps) {
			writeMinorStep(step);
		}
	}

	private void writeMinorStep(MinorStep step) {
		out.append(" - ");
		if (step.isDone()) {
			out.append("~~");
		}
		writeSpannableString(step.getText());
		if (step.isDone()) {
			out.append("~~");
		}
		//TODO annotations
		out.append('\n');
	}

	private void writeHeader(SpannableString header) {
		out.append("# ");
		writeSpannableString(header);
		out.append('\n');
	}

	private void writeSpannableString(SpannableString string) {

		int start = 0;
		int length = string.length();

		StyleSpan[] styles;

		int begin = string.nextSpanTransition(start, length, StyleSpan.class);
		int end = begin;

		if (begin != 0) {
			out.append(string.subSequence(start, begin));
		}

		while (end != length) {
			begin = end;
			end = string.nextSpanTransition(begin, length, StyleSpan.class);
			styles = string.getSpans(begin, end, StyleSpan.class);

			StringBuilder sb = new StringBuilder();
			for (StyleSpan style : styles) {
				if (style.getStyle() == Typeface.BOLD) {
					sb.append("**");
				} else if (style.getStyle() == Typeface.ITALIC) {
					sb.append("*");
				}
			}
			String cmdString = sb.toString();
			out.append(cmdString).append(string.subSequence(begin, end)).append(cmdString);
		}
	}
}
