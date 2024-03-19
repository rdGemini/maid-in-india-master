package com.mii.serviceimpl;

import java.io.File;
import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.mii.dao.MaidDao;
import com.mii.model.Agency;
import com.mii.model.Maid;
import com.mii.service.MaidService;
import com.mii.util.FTPUtils;
import com.mii.util.FileUtils;
import com.mii.util.Mailer;
import com.mii.util.PasswordEncode;
import com.mii.util.RandomString;

@Service("maidService")
@Transactional
@SessionAttributes("agency")
public class MaidServiceImpl implements MaidService{

	@Autowired
	MaidDao maidDao;
	 
	@Autowired
	HttpSession session;
	
	private static String UPLOADED_FOLDER1 ="E:\\Tools\\Tomcat 9.0\\webapps\\miiagency\\resources\\images\\maid\\profilePicture"+File.separator;
	private static String UPLOADED_FOLDER2 ="E:\\Tools\\Tomcat 9.0\\webapps\\miiagency\\resources\\images\\maid\\idProof"+File.separator;
	private static String UPLOADED_FOLDER3 ="E:\\Tools\\Tomcat 9.0\\webapps\\miiagency\\resources\\images\\maid\\backgroundCheck"+File.separator;
	
	@Override
	public int addMaid(Maid maid, MultipartFile file1, MultipartFile file2, MultipartFile file3) {
		String newPP= FileUtils.getFileName(file1.getOriginalFilename());
		String newIP= FileUtils.getFileName(file2.getOriginalFilename());
		String newBC= FileUtils.getFileName(file3.getOriginalFilename());
		maid.setProfilePicture(newPP);
		maid.setIdProof(newIP);
		maid.setBackgroundCheck(newBC);
		Agency ad = (Agency) session.getAttribute("agency");
		maid.setAgencyId(ad.getAgencyId());
		/*maid.setCreatedBy(ad.getAdminId());
		maid.setCreatedDate(new Date(System.currentTimeMillis()));
		maid.setModifiedBy(ad.getAdminId());
		maid.setModifiedDate(new Date(System.currentTimeMillis()));*/
		String password = RandomString.getAlphaNumericString(8);
		/*int result = maidDao.emailCheck(maid);
		if(result!=0)
		{
			return 1;
		}*/
		if (maid != null) {
			//agency.setPassword(password);
			//agency.setPassword(PasswordEncrypt.passwordEncrypt(agency.getPassword()));
			maid.setPassword(PasswordEncode.passwordEncode(password));
		}
		Maid m = maidDao.saveObject(maid);
		if(m!=null)
		{
			Mailer.send("maidinindia03@gmail.com", "mii@41926", maid.getEmailId(), "Hello,How r u?", password);
			FileUtils.uploadImageFile(file1, UPLOADED_FOLDER1+newPP);
			FileUtils.uploadImageFile(file2, UPLOADED_FOLDER2+newIP);
			FileUtils.uploadImageFile(file3, UPLOADED_FOLDER3+newBC);	
			FTPUtils.uploadOnFTP(UPLOADED_FOLDER1+newPP, newPP);
			FTPUtils.uploadOnFTP(UPLOADED_FOLDER2+newIP, newIP);
			FTPUtils.uploadOnFTP(UPLOADED_FOLDER3+newBC, newBC);
		}
		return 0;
	}
	
	@Override
	public List<Maid> getAll() {
		Agency a = (Agency) session.getAttribute("agency");
		List<Maid> maidList = maidDao.getActive(a.getAgencyId());
		for(Maid m : maidList)
		{
			String newPP = m.getProfilePicture();
			String newIP = m.getIdProof();
			String newBC = m.getBackgroundCheck();
			File ProfileImage = new File(UPLOADED_FOLDER1+newPP);
			//File IdProofImage = new File(UPLOADED_FOLDER2+newIP);
			//File BackgroundCheckImage = new File(UPLOADED_FOLDER3+newBC);
			if(!ProfileImage.exists())
			{
				FTPUtils.download(newPP, UPLOADED_FOLDER1+newPP);
			}
			/*
			 * if(!IdProofImage.exists()) { FTPUtils.download(newIP,
			 * UPLOADED_FOLDER2+newIP); } if(!BackgroundCheckImage.exists()) {
			 * FTPUtils.download(newBC, UPLOADED_FOLDER3+newBC); }
			 */
		}
		return  maidList;
	}

	@Override
	public Maid getById(int id) {
		Maid maid = maidDao.getFullObjById(id);
		String newPP = maid.getProfilePicture();
		String newIP = maid.getIdProof();
		String newBC = maid.getBackgroundCheck();
		File ProfileImage = new File(UPLOADED_FOLDER1+newPP);
		//File IdProofImage = new File(UPLOADED_FOLDER2+newIP);
		//File BackgroundCheckImage = new File(UPLOADED_FOLDER3+newBC);
		if(!ProfileImage.exists())
		{
			FTPUtils.download(newPP, UPLOADED_FOLDER1+newPP);
		}
		/*
		 * if(!IdProofImage.exists()) { FTPUtils.download(newIP,
		 * UPLOADED_FOLDER2+newIP); } if(!BackgroundCheckImage.exists()) {
		 * FTPUtils.download(newBC, UPLOADED_FOLDER3+newBC); }
		 */
		return maid;
	}

	@Override
	public int updateMaid(Maid maid, MultipartFile file1) {
		Maid oldmaid = maidDao.getFullObjById((int)maid.getMaidId());
		Agency ad = (Agency) session.getAttribute("agency");
		//agency.setIdProof(file2.getOriginalFilename());
		maid.setAgencyId(ad.getAgencyId());
		maid.setModifiedBy(ad.getAgencyId());
		maid.setModifiedDate(new Date(System.currentTimeMillis()));
		//System.out.println(file1.getOriginalFilename());
		if(file1.getOriginalFilename()=="")
		{
			maid.setProfilePicture(oldmaid.getProfilePicture());
			maid.setProfilePictureImage(oldmaid.getProfilePictureImage());
		}
		else
		{
			
			//String s = file1.getOriginalFilename();
			String newPP = FileUtils.getFileName(file1.getOriginalFilename());
			FileUtils.uploadImageFile(file1, UPLOADED_FOLDER1+newPP);
			FTPUtils.uploadOnFTP(UPLOADED_FOLDER1+newPP, newPP);
			maid.setProfilePicture(newPP);
		}
		/*
		 * if(!oldmaid.getProfilePicture().equals(file1.getOriginalFilename())) {
		 * 
		 * //String s = file1.getOriginalFilename(); String newPP =
		 * FileUtils.getFileName(file1.getOriginalFilename());
		 * FileUtils.uploadImageFile(file1, UPLOADED_FOLDER1+newPP);
		 * FTPUtils.uploadOnFTP(UPLOADED_FOLDER1+newPP, newPP);
		 * maid.setProfilePicture(newPP); }
		 *///maid.setIdProof(FileUtils.getFileName(file2.getOriginalFilename()));
		//maid.setBackgroundCheck(FileUtils.getFileName(file3.getOriginalFilename()));
		maidDao.updateObject(maid);
		return 0;	

	}

	@Override
	public int deleteMaid(int id) {
		Maid maid = maidDao.getFullObjById(id);
		if(maid!=null)
		{
			maid.setIsDeleted(1);
			maidDao.updateObject(maid);
		}
		return 0;
	}

}
