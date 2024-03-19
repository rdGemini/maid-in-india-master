package com.mii.service;

import java.util.List;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import com.mii.model.Admin;

public interface AdminService {
	
	public int addAdmin(Admin admin, MultipartFile file1, MultipartFile file2);
	public Admin editAdmin(int id);
	int deleteAdmin(int id);
	public List<Admin> getAll();
	public int updateAdmin(Admin admin, MultipartFile file1, MultipartFile file2);
	public Admin getById(int id);
	
	
	
}
