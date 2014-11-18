package de.tud.labAssist.model;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;

import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import de.tud.labAssist.model.io.MarkdownManager;
import de.tud.labAssist.model.io.MarkdownWriter;
import de.tud.labAssist.model.steps.MajorStep;
import de.tud.labAssist.resources.FileLocations;
import de.tud.labAssist.resources.ResourceCache;

/**
 * Created by Ramon on 04.11.2014.
 */
public class Protocol {
	private static final String THIS = Protocol.class.getSimpleName();
	private final List<MajorStep> steps;
	private final MarkdownManager.Document origin;
	public final int version = 1;

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
			Log.e(THIS, "Failed to save Protocol state", e);
		}
	}

	public void exportMarkdown(Context context) {
		File export = new File(FileLocations.getExportDir(context), origin.getName()+".export.md");
		try {
			FileOutputStream outputStream = new FileOutputStream(export);
			new MarkdownWriter().writeProtocol(this).toStream(outputStream);
			outputStream.close();

			Intent mediaScannerIntent = new Intent(Intent.ACTION_MEDIA_SCANNER_SCAN_FILE);
			Uri fileContentUri = Uri.fromFile(export);
			mediaScannerIntent.setData(fileContentUri);
			context.sendBroadcast(mediaScannerIntent);
		} catch (IOException e) {
			Log.e(THIS, "Failed to export Protocol", e);
		}
	}
}
