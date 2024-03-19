package com.mii.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.mii.model.Agency;

public interface AgencyService {

	int addAgency(Agency agency, MultipartFile file);

	List<Agency> getAll();

	Agency getById(int id);

	int updateAgency(Agency agency);

	int deleteAgency(int id);

}
