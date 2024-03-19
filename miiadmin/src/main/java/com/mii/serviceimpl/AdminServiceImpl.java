package com.mii.serviceimpl;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.disk.DiskFileItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.mii.util.FTPUtils;
import com.mii.dao.AdminDao;
import com.mii.model.Admin;
import com.mii.service.AdminService;
import com.mii.util.FileUtils;
import com.mii.util.Mailer;
import com.mii.util.PasswordEncode;
import com.mii.util.PasswordEncrypt;
import com.mii.util.RandomString;
import com.mii.util.Email;

@Service("adminService")
@Transactional
@SessionAttributes("admin")
public class AdminServiceImpl implements AdminService {

	@Autowired
	AdminDao adminDao;
	
	@Autowired
	HttpSession session;
	
	//@Autowired
//	ServletContext context;
	
	String absolutePath1 = "";//context.getRealPath("resources/images/profilePicture");
	String absolutePath2 = "";//context.getRealPath("resources/images/idProof");
	//File uploadedFile = new File(absolutePath1, "your_file_name");
	
	private static String UPLOADED_FOLDER1 ="E:\\Tools\\Tomcat 9.0\\webapps\\miiadmin\\resources\\images\\profilePicture"+File.separator; 
			
		
	
	private static String UPLOADED_FOLDER2 ="E:\\Tools\\Tomcat 9.0\\webapps\\miiadmin\\resources\\images\\idProof"+File.separator;
			 
			
	
	@Override
	public int addAdmin(Admin admin, MultipartFile file1, MultipartFile file2) {
		
		String newPP = FileUtils.getFileName(file1.getOriginalFilename());
		String newIP = FileUtils.getFileName(file2.getOriginalFilename());
		admin.setProfilePicture(newPP);
		admin.setIdProof(newIP);
		admin.setProfileImage(file1);
		admin.setIdProofImage(file2);
		Admin ad = (Admin) session.getAttribute("admin");
		admin.setCreatedBy(ad.getAdminId());
		admin.setCreatedDate(new Date(System.currentTimeMillis()));
		admin.setModifiedBy(ad.getAdminId());
		admin.setModifiedDate(new Date(System.currentTimeMillis()));
		//admin.setAddress(admin.getAddress1(),admin.getAddress2());
		String password = RandomString.getAlphaNumericString(8);
		int result = adminDao.emailCheck(admin);
		if(result!=0)
		{
			return 1;
		}
		if (admin != null) {
			admin.setPassword(PasswordEncode.passwordEncode(password));
		}
		Admin a = adminDao.saveObject(admin);
		if(a!=null)
		{
			Mailer.send("maidinindia03@gmail.com", "mii@41926", admin.getEmailId(), "Hello,How r u?", password);
			FileUtils.uploadImageFile(file1, UPLOADED_FOLDER1+newPP);
			FileUtils.uploadImageFile(file2, UPLOADED_FOLDER2+newIP);
			FTPUtils.uploadOnFTP(UPLOADED_FOLDER1+newPP, newPP);
			FTPUtils.uploadOnFTP(UPLOADED_FOLDER2+newIP, newIP);
		}
		return 0;
	}

	@Override
	public Admin editAdmin(int id) {
		return null;
		//return adminDao.editAdmin(id);
	}

	@Override
	public int deleteAdmin(int id) {
		Admin admin= adminDao.getFullObjById(id);
		if(admin!=null)
		{
			admin.setIsDeleted(1);
			adminDao.updateObject(admin);
		}
		return 0;
	}

	@Override
	public List<Admin> getAll()
	{
		List<Admin> adminList = adminDao.getActive();
		for(Admin a : adminList)
		{
			String newPP = a.getProfilePicture();
			String newIP = a.getIdProof();
			File ProfileImage = new File(UPLOADED_FOLDER1+newPP);
			//File IdProofImage = new File(UPLOADED_FOLDER2+newIP);
			if(!ProfileImage.exists())
			{
				FTPUtils.download(newPP, UPLOADED_FOLDER1+newPP);
			}
			/*
			 * if(!IdProofImage.exists()) { FTPUtils.download(newIP,
			 * UPLOADED_FOLDER2+newIP); }
			 */
		}
		return  adminList;
	}

	@Override
	public int updateAdmin(Admin admin,MultipartFile file1,MultipartFile file2) {
		//admin.setProfilePicture(FileUtils.getFileName(file1.getOriginalFilename()));
		//admin.setIdProof(FileUtils.getFileName(file2.getOriginalFilename()));
		//admin.setPassword(pass);
		Admin oldad = adminDao.getFullObjById((int)admin.getAdminId());
		Admin ad = (Admin) session.getAttribute("admin");
		//admin.setIdProof(file2.getOriginalFilename());
		admin.setModifiedBy(ad.getAdminId());
		admin.setModifiedDate(new Date(System.currentTimeMillis()));
		//System.out.println(file1.getOriginalFilename());
		if(file1.getOriginalFilename()=="")
		{
			admin.setProfilePicture(oldad.getProfilePicture());
			admin.setProfileImage(oldad.getProfileImage());
		}
		else
		{
			
			//String s = file1.getOriginalFilename();
			String newPP = FileUtils.getFileName(file1.getOriginalFilename());
			FileUtils.uploadImageFile(file1, UPLOADED_FOLDER1+newPP);
			FTPUtils.uploadOnFTP(UPLOADED_FOLDER1+newPP, newPP);
			admin.setProfilePicture(newPP);
		}
		adminDao.updateObject(admin);
		return 0;
	}

	@Override
	public Admin getById(int id) {
		Admin admin = adminDao.getFullObjById(id);
		String newPP = admin.getProfilePicture();
		//String newIP = admin.getIdProof();
		File ProfileImage = new File(UPLOADED_FOLDER1+newPP);
		//File IdProofImage = new File(UPLOADED_FOLDER2+newIP);
		if(!ProfileImage.exists())
		{
			FTPUtils.download(newPP, UPLOADED_FOLDER1+newPP);
		}
		/*
		 * if(!IdProofImage.exists()) { FTPUtils.download(newIP,
		 * UPLOADED_FOLDER2+newIP); }
		 */
		return admin;
	}

	
}
