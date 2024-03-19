package com.mii.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.mii.model.Maid;

public interface MaidService {

	List<Maid> getAll();

	int addMaid(Maid maid, MultipartFile file1, MultipartFile file2, MultipartFile file3);

	Maid getById(long l);

	Maid updateMaid(Maid maid, MultipartFile file1);

	int deleteMaid(long l);

}
