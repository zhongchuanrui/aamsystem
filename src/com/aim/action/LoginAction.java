package com.aim.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aim.pojo.Admin;
import com.aim.pojo.Alumnus;
import com.aim.service.LoginService;

@Controller
@RequestMapping("/login")
public class LoginAction {

	@Resource(name = "loginserviceimpl")
	private LoginService loginService;

	@RequestMapping("/user")
	@ResponseBody
	public Alumnus userLogin(String username, String password,HttpSession session) {
		
		Alumnus alumnus =loginService.checkUser(username, password);
		
         if (alumnus != null) {			
			session.setAttribute("alumnusname", username);
			session.setAttribute("alumnus_id", alumnus.getAlumnus_id());
			session.setAttribute("password", password);		
		}
		
		return alumnus;
	}

	@RequestMapping("/admin")
	@ResponseBody
	public Admin adminLogin(String username, String password, HttpSession session) {
		
		Date d = new Date();    
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
        String dateNowStr = sdf.format(d);   
		
		if (loginService.checkAdmin(username, password) != null) {
			
			session.setAttribute("username", username);
			session.setAttribute("password", password);
			Admin admin =loginService.checkAdmin(username, password);
			admin.setAdmin_logintime(dateNowStr);
			loginService.modifylogintime(admin);
		
		}

		return loginService.checkAdmin(username, password);
	}

	@RequestMapping("/modifypassword")
	@ResponseBody
	public int modifyPassword(String username, String oldpassword, String newpassword) {
		
		
		if (loginService.checkAdmin(username, oldpassword).getAdmin_id() > 0) {
			
			return loginService.modifyPassword(newpassword, username);
		}

		return 0;
	}

	@RequestMapping("/modifyadmininfo")
	@ResponseBody
	public Admin modifyAdminInfo(Admin admin) {

		if (loginService.modifyAdminInfo(admin) > 0) {
			return loginService.getAdmin(admin.getAdmin_name());
		}

		return new Admin();
	}

	@RequestMapping("/getadmin")
	@ResponseBody
	public Admin getAdmin(String admin_name) {
		System.out.println(admin_name);
		return loginService.getAdmin(admin_name);
	}

	@RequestMapping("/getalladmin")
	@ResponseBody
	public List<Admin> getAllAdmin() {
		return loginService.getAllAdmin();
	}
	
	
	@RequestMapping("/getnickname")
	@ResponseBody
	public int getNickname(String nickname) {
		return loginService.getNickname(nickname);
	}
	
	@RequestMapping("/insertalumnus")
	@ResponseBody
	public int insertAlumnus(Alumnus alumnus) {
		
		Date d = new Date();    
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
        String dateNowStr = sdf.format(d);   
        alumnus.setAlumnus_registertime(dateNowStr);
		
		return loginService.insertAlumnus(alumnus);
	}

}
