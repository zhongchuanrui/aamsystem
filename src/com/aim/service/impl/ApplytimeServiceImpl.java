package com.aim.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.aim.dao.ApplytimeDao;
import com.aim.service.ApplytimeService;

@Service("Applytimeserviceimpl")
public class ApplytimeServiceImpl implements ApplytimeService {

	@Resource
	ApplytimeDao applytimedao;

	@Override
	public int getApplyofficecount() {
		return applytimedao.getApplyofficecount();
	}

	@Override
	public int getApplyassociationcount() {
		return applytimedao.getApplyassociationcount();
	}

	@Override
	public int getAlumnuscount() {
		return applytimedao.getAlumnuscount();
	}

	@Override
	public int getActivitycount() {
		
		return applytimedao.getActivitycount();
	}

}
