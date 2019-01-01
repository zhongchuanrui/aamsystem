package com.aim.action;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aim.service.ApplytimeService;


@Controller
@RequestMapping("/apply")
public class ApplytimeAction {
	
	@Resource(name="Applytimeserviceimpl")
	private ApplytimeService applytimeservice;

	@RequestMapping("/getcount")
	@ResponseBody
	public Map<String, Object> userLogin() {
		
		Map<String, Object> map = new HashMap<String, Object>();
				
		int officecount = applytimeservice.getApplyofficecount();
		int associationcount = applytimeservice.getApplyassociationcount();
		int alumnuscount = applytimeservice.getAlumnuscount();
		int activitycount = applytimeservice.getActivitycount();
		int all = officecount+associationcount+alumnuscount+activitycount;		
		map.put("officecount", officecount);
		map.put("associationcount", associationcount);
		map.put("alumnuscount", alumnuscount);
		map.put("activitycount", activitycount);
		map.put("all", all);
				
		return map;
	}
}
