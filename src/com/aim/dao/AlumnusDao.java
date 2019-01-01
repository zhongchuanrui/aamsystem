package com.aim.dao;

import java.util.List;
import java.util.Map;

import com.aim.pojo.Alumnus;

public interface AlumnusDao {
	List<Alumnus> getAlumnus();

	List<Alumnus> getSearchAlumnus(Alumnus alumnus);

	List<Alumnus> getNewAlumnus();
	
	int modifyState(int alumnus_id);
	
	List<Alumnus> getUserSearchAlumnus(Map<Object, Object> search);
	
	int getAlumnusCount(Map<Object, Object> search);
}
