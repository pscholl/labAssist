package de.tud.labAssist.model.steps;

import android.text.SpannableString;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Ramon on 05.05.2014.
 */
public class MajorStepBuilder {
	private List<String> images;
	private List<SpannableString> paragraphs;
	private SpannableString header;

	public MajorStepBuilder() {
		reset();
	}


	public void addImage() {

	}

	public void addParagraph(SpannableString paragraph) {
		paragraphs.add(paragraph);
	}

	public void setHeader(SpannableString header) {
		this.header = header;
	}

	public MajorStep build() {
		return new MajorStep(header, paragraphs);
	}

	public void reset() {
		paragraphs = new ArrayList<>();
		images = new ArrayList<>();
	}

	public boolean isEmpty() {
		return paragraphs.size()==0 && images.size()==0 && !hasHeader();
	}

	public boolean hasHeader() {
		return header != null && header.length()>0;
	}
}
