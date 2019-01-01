package com.aim.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.aim.dao.MajorDao;
import com.aim.pojo.Major;
import com.aim.service.MajorService;

@Service("Majorserviceimpl")
public class MajorServiceImpl implements MajorService {

	@Resource
	MajorDao majordao;

	@Override
	public List<Major> getAllMajor() {
		return majordao.getAllMajor();
	}

	@Override
	public List<String> getAcademy() {
		return majordao.getAcademy();
	}

}
