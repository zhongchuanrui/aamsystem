package com.aim.service;

import java.util.List;

import com.aim.pojo.Admin;
import com.aim.pojo.Alumnus;

public interface LoginService {

	Admin checkAdmin(String username, String password);

	Alumnus checkUser(String username, String password);

	String getPassword(String username);

	int modifyPassword(String newpassword, String username);

	int modifyAdminInfo(Admin admin);

	Admin getAdmin(String username);

	List<Admin> getAllAdmin();

	int modifylogintime(Admin admin);

	int getNickname(String nickname);

	int insertAlumnus(Alumnus alumnus);
}
