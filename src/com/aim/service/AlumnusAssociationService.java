package com.aim.service;

import java.util.List;

import com.aim.pojo.Alumniassociation;
import com.aim.pojo.Office;

public interface AlumnusAssociationService {
	int insertAssociation(Alumniassociation alumniassociation);

	List<Alumniassociation> getAllAssociation();
	
	List<Alumniassociation> getSearchAssociation(String association_province);

	List<Office> getAllOffice();
}
