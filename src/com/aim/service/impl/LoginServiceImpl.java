package com.aim.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.aim.dao.LoginDao;
import com.aim.pojo.Admin;
import com.aim.pojo.Alumnus;
import com.aim.service.LoginService;

@Service("loginserviceimpl")
public class LoginServiceImpl implements LoginService {

	@Resource
	private LoginDao loginDao;

	@Override
	public Alumnus checkUser(String username, String password) {
		return loginDao.checkUser(username, password);
	}

	@Override
	public Admin checkAdmin(String username, String password) {
		return loginDao.checkAdmin(username, password);
	}

	@Override
	public String getPassword(String username) {
		
		return loginDao.getPassword(username);
	}

	@Override
	public int modifyPassword(String newpassword, String username) {
		
		return loginDao.modifyPassword(newpassword, username);
	}

	@Override
	public Admin getAdmin(String username) {
		
		return loginDao.getAdmin(username);
	}

	@Override
	public int modifyAdminInfo(Admin admin) {
		return loginDao.modifyAdminInfo(admin);
	}

	@Override
	public List<Admin> getAllAdmin() {
		return loginDao.getAllAdmin();
	}

	@Override
	public int modifylogintime(Admin admin) {
		return loginDao.modifylogintime(admin);
	}

	@Override
	public int getNickname(String nickname) {
		return loginDao.getNickname(nickname);
	}

	@Override
	public int insertAlumnus(Alumnus alumnus) {
		return loginDao.insertAlumnus(alumnus);
	}

}
