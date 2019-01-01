package com.aim.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.aim.dao.AlumnusAssociationDao;
import com.aim.pojo.Alumniassociation;
import com.aim.pojo.Office;
import com.aim.service.AlumnusAssociationService;

@Service("Alumnusassociationserviceimpl")
public class AlumnusAssociationServiceImpl implements AlumnusAssociationService{

	@Resource
	AlumnusAssociationDao AlumnusAssociationdao;
	
	@Override
	public int insertAssociation(Alumniassociation alumniassociation) {
		return AlumnusAssociationdao.insertAssociation(alumniassociation);
	}

	@Override
	public List<Alumniassociation> getAllAssociation() {
		return AlumnusAssociationdao.getAllAssociation();
	}

	@Override
	public List<Office> getAllOffice() {
		return AlumnusAssociationdao.getAllOffice();
	}

	@Override
	public List<Alumniassociation> getSearchAssociation(String association_province) {
		return AlumnusAssociationdao.getSearchAssociation(association_province);
	}

}
