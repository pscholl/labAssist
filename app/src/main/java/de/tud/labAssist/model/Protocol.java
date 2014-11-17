package de.tud.labAssist.model;

import android.content.Context;

import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.IOException;
import java.util.List;

import de.tud.labAssist.model.io.MarkdownManager;
import de.tud.labAssist.model.steps.MajorStep;
import de.tud.labAssist.resources.ResourceCache;

/**
 * Created by Ramon on 04.11.2014.
 */
public class Protocol {
	private final List<MajorStep> steps;
	private final MarkdownManager.Document origin;

	public Protocol(List<MajorStep> steps, MarkdownManager.Document origin) {
		this.origin = origin;
		this.steps = steps;
	}

	public List<MajorStep> getSteps() {
		return steps;
	}

	public void saveState(Context context) {
		ObjectMapper mapper = ResourceCache.getJsonMapper();
		try {
			mapper.writeValue(origin.getStateOutput(context), this);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public void saveMarkdown() {
		throw new UnsupportedOperationException();
	}
}
