package com.aim.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.aim.dao.AlumnusDao;
import com.aim.pojo.Alumnus;
import com.aim.service.AlumnusService;


@Service("Alumnusserviceimpl")
public class AlumnusServiceImpl implements AlumnusService {
	@Resource
	private AlumnusDao alumnusDao;

	@Override
	public List<Alumnus> getAlumnus() {
		
		return alumnusDao.getAlumnus();
	}

	@Override
	public List<Alumnus> getSearchAlumnus(Alumnus alumnus) {
		return alumnusDao.getSearchAlumnus(alumnus);
	}

	@Override
	public List<Alumnus> getNewAlumnus() {
		return alumnusDao.getNewAlumnus();
	}

	@Override
	public int modifyState(int alumnus_id) {
		
		return alumnusDao.modifyState(alumnus_id);
	}

	@Override
	public List<Alumnus> getUserSearchAlumnus(Map<Object, Object> search) {
		return alumnusDao.getUserSearchAlumnus(search);
	}

	@Override
	public int getAlumnusCount(Map<Object, Object> search) {
		return alumnusDao.getAlumnusCount(search);
	}

}
