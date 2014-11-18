package de.tud.labAssist.resources;

import android.content.Context;
import android.os.Environment;

import java.io.File;

/**
 * Created by Ramon on 04.11.2014.
 */
public class FileLocations {
	public static File getStateOutputDir(Context context) {
		return context.getExternalFilesDir("Protocols");
	}

	public static File getExportDir(Context context) {
		File dir = Environment.getExternalStoragePublicDirectory("ProtocolExport");
		dir.mkdirs();

		return dir;
	}
}
