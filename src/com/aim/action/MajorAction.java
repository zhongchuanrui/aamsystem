package com.aim.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aim.pojo.Major;
import com.aim.service.MajorService;

@Controller
@RequestMapping("/major")
public class MajorAction {
	
	@Resource(name = "Majorserviceimpl")
	private MajorService majorservice;

	@RequestMapping("/getallmajor")
	@ResponseBody
	public List<Major> getAllMajor() {
		return majorservice.getAllMajor();
	}
	
	
	@RequestMapping("/getacademy")
	@ResponseBody
	public List<String> getAcademy() {
		return majorservice.getAcademy();
	}

}
