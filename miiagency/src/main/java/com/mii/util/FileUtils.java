package com.mii.util;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

/**
 * The Class FileUtils.
 *
 * @author Bijesh on Jul 24, 2019 1:02:41 AM
 */
public class FileUtils {

	/** The Constant dateFormat. */
	private static final SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMdd_HHmmss");

	/**
	 * Upload file.
	 *
	 * @param file     the file
	 * @param filePath the file path
	 */
	public static void uploadFile(MultipartFile file, String filePath) {
		byte[] bytes;
		BufferedOutputStream stream;
		try {
			bytes = file.getBytes();
			stream = new BufferedOutputStream(new FileOutputStream(new File(filePath)));
			stream.write(bytes);
			stream.flush();
			stream.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void uploadImageFile(MultipartFile file, String filePath) {

		
		try {
			// Get the file and save it somewhere
			byte[] bytes = file.getBytes();
			Path path = Paths.get(filePath /*+ FileUtils.getFileName(file.getOriginalFilename())*/);
			Files.write(path, bytes);

		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * Gets the file name.
	 *
	 * @param fileName the file name
	 * @return the file name
	 */
	public static String getFileName(String fileName) {
		Date date = new Date();
		try {
			return dateFormat.format(date) + "_" + fileName;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dateFormat.format(date) + "_";
	}

}
