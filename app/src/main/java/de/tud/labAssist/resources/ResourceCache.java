package de.tud.labAssist.resources;

import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * Created by Ramon on 04.11.2014.
 */
public class ResourceCache {

	private static ObjectMapper mapper;

	public static ObjectMapper getJsonMapper() {
		if (mapper == null) {
			mapper = new ObjectMapper();
		}
		return mapper;
	}
}
