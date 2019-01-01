package com.aim.dao;

import java.util.List;

import com.aim.pojo.Admin;
import com.aim.pojo.Alumnus;

public interface LoginDao {
	Admin checkAdmin(String username, String password);

	Alumnus checkUser(String username, String password);

	String getPassword(String username);

	int modifyPassword(String newpassword, String username);

	Admin getAdmin(String username);

	int modifyAdminInfo(Admin admin);

	List<Admin> getAllAdmin();
	
	int modifylogintime(Admin admin);
	
    int getNickname(String nickname);
    
    int insertAlumnus(Alumnus alumnus);
	
}
