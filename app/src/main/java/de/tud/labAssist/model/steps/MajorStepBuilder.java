package de.tud.labAssist.model.steps;

import android.graphics.Typeface;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.style.StyleSpan;
import android.util.Log;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import de.tud.labAssist.model.Time;
import de.tud.labAssist.model.time.TimerManager;

/**
 * Created by Ramon on 05.05.2014.
 */
public class MajorStepBuilder {
	private static final Pattern TIME_PATTERN = Pattern.compile("(\\d+)(\\.(\\d)+)?[ ]?(minutes|min|seconds|sec|s|hours|h)");
	private static final String THIS = MajorStepBuilder.class.getSimpleName();


	private List<String> images;
	private List<SpannableString> paragraphs;
	private SpannableString header;
	private List<String> annotations;
	private TimerManager timerManager;

	public MajorStepBuilder(TimerManager timerManager) {
		this.timerManager = timerManager;
		reset();
	}


	public void addImage(String url) {
		images.add(url);
	}

	public void addParagraph(SpannableString paragraph) {
		paragraphs.add(paragraph);
	}

	public void setHeader(SpannableString header) {
		this.header = header;
	}

	public MajorStep build() {


		List<MinorStep> minors = generateMinorSteps(true);

		return new MajorStep(header, minors, annotations);
	}

	private List<MinorStep> generateMinorSteps(boolean highlightTimes) {
		List<MinorStep> minors = new ArrayList<>(paragraphs.size());

		for (SpannableString ss: paragraphs) {
			Matcher m = TIME_PATTERN.matcher(ss.toString());

			int sec=0, min=0, h=0;

			while (m.find()) {
				StringBuilder sb = new StringBuilder();
				sb.append(m.group(1));
				if (m.group(2) != null && m.group(2).length()>0)
					sb.append('.').append(m.group(3));

				double tmp = Double.parseDouble(sb.toString());
				double floor = Math.floor(tmp);

				switch (m.group(4).charAt(0)) {
					case 'm': min += floor;
						break;
					case 's': sec += floor;
						break;
					case 'h': h += floor;
				}

				if (highlightTimes) {
					ss.setSpan(new StyleSpan(Typeface.BOLD_ITALIC), m.start(), m.end(), Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
				}
			}

			if (sec > 0 || min > 0 || h > 0) {
				Time t = new Time(sec, min, h);

				Log.i(THIS, "Detected Time: " + t.toString());

				minors.add(new TimedMinorStep(ss, t, timerManager));
			} else {
				minors.add(new MinorStep(ss));
			}
		}

		return minors;
	}

	public void reset() {
		paragraphs = new ArrayList<>();
		images = new ArrayList<>();
		annotations = new ArrayList<>();
	}

	public boolean isEmpty() {
		return paragraphs.size()==0 && images.size()==0 && !hasHeader();
	}

	public boolean hasHeader() {
		return header != null && header.length()>0;
	}

	public void addAnnotation(String annotation) {
		annotations.add(annotation);
	}
}
