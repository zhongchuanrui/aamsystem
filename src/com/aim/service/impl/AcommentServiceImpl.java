package com.aim.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.aim.dao.AcommentDao;
import com.aim.pojo.Acomment;
import com.aim.service.AcommentService;

@Service("Acommentserviceimpl")
public class AcommentServiceImpl implements AcommentService {
	
	@Resource
	AcommentDao acommentdao;

	@Override
	public int insertAcomment(Acomment acomment) {
		return acommentdao.insertAcomment(acomment);
	}

}
