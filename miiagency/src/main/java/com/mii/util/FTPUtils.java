package com.mii.util;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.net.URLConnection;
import org.apache.commons.net.ftp.FTP;
import org.apache.commons.net.ftp.FTPClient;
import org.springframework.web.multipart.MultipartFile;

public class FTPUtils {
	
	private static final int BUFFER_SIZE = 4096;

	public static void download(String remoteFilename, String downloadFileName) {
		String server = "praxware.com";
		int port = 21;
		String user = "bijesh@praxware.com";
		String pass = "Bijesh@123";
		FTPClient ftpClient = new FTPClient();
		try {

			ftpClient.connect(server, port);
			ftpClient.login(user, pass);
			ftpClient.enterLocalPassiveMode();
			ftpClient.setFileType(FTP.BINARY_FILE_TYPE);

			//String remoteFile1 = "1.jpg";
			//File downloadFile1 = new File("E:/testFiles/1212.jpg");
		
			OutputStream outputStream1 = new BufferedOutputStream(new FileOutputStream(downloadFileName));
			boolean success = ftpClient.retrieveFile(remoteFilename, outputStream1);
			outputStream1.close();

			if (success) {
				System.out.println("File #1 has been downloaded successfully.");
			}

		} catch (IOException ex) {
			System.out.println("Error: " + ex.getMessage());
			ex.printStackTrace();
		} finally {
			try {
				if (ftpClient.isConnected()) {
					ftpClient.logout();
					ftpClient.disconnect();
				}
			} catch (IOException ex) {
				ex.printStackTrace();
			}
		}
	}

	public static void uploadOnFTP(String localFilename, String uploadFileName) {
		String server = "praxware.com";
		int port = 21;
		String user = "bijesh@praxware.com";
		String pass = "Bijesh@123";

		FTPClient ftpClient = new FTPClient();
		try {

			ftpClient.connect(server, port);
			ftpClient.login(user, pass);
			ftpClient.enterLocalPassiveMode();

			ftpClient.setFileType(FTP.BINARY_FILE_TYPE);

			// APPROACH #1: uploads first file using an InputStream
			//File firstLocalFile = new File("E:/testFiles/1.jpg");
			File firstLocalFile = new File(localFilename);
			
			//String firstRemoteFile = "1.jpg";
			InputStream inputStream = new FileInputStream(firstLocalFile);

			System.out.println("Start uploading first file");
			boolean done = ftpClient.storeFile(uploadFileName, inputStream);
			inputStream.close();
			if (done) {
				System.out.println("The first file is uploaded successfully.");
			}

			inputStream.close();

			/*boolean completed = ftpClient.completePendingCommand();
			if (completed) {
				System.out.println("The second file is uploaded successfully.");
			}*/

		} catch (IOException ex) {
			System.out.println("Error: " + ex.getMessage());
			ex.printStackTrace();
		} finally {
			try {
				if (ftpClient.isConnected()) {
					ftpClient.logout();
					ftpClient.disconnect();
				}
			} catch (IOException ex) {
				ex.printStackTrace();
			}
		}
	}
	public static void main(String[] args) {
		//uploadOnFTP();
		//download();
	}
}