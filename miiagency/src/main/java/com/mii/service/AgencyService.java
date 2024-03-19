package com.mii.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.mii.model.Agency;

public interface AgencyService {

	Agency getById(long l);

	Agency updateAgency(Agency agency);

	int deleteAgency(long l);

}
