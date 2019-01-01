package com.aim.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aim.pojo.Alumnus;
import com.aim.service.AlumnusService;

@Controller
@RequestMapping("/alumnus")
public class AlumnusAction {

	@Resource(name = "Alumnusserviceimpl")
	private AlumnusService alumnusService;

	@RequestMapping("/getAlumnus")
	@ResponseBody
	public List<Alumnus> getAlumnus() {
		return alumnusService.getAlumnus();
	}
	
	@RequestMapping("/getSearchAlumnus")
	@ResponseBody
	public List<Alumnus> getSearchAlumnus(Alumnus alumnus) {
		System.out.println(alumnus.getAlumnus_graduationtime());
		return alumnusService.getSearchAlumnus(alumnus);
	}
	
	@RequestMapping("/getnewalumnus")
	@ResponseBody
	public List<Alumnus> getNewAlumnus() {
		return alumnusService.getNewAlumnus();
	}
	
	@RequestMapping("/modifystate")
	@ResponseBody
	public int modifyState(int alumnus_id) {
		return alumnusService.modifyState(alumnus_id);
	}
	
	
	@RequestMapping("/getusersearchalumnus")
	@ResponseBody
	public Map<Object, Object> getUserSearchAlumnus(String alumnus_name,String alumnus_id,String alumnus_academy,String alumnus_major,
			String alumnus_session,String alumnus_class,String alumnus_address,String alumnus_workplace,
			int currpage) {
			
		Map<Object, Object> search =  new HashMap<Object, Object>();
		search.put("alumnus_name", alumnus_name);  
		search.put("alumnus_id", alumnus_id);  
		search.put("alumnus_academy", alumnus_academy);  
		search.put("alumnus_major", alumnus_major);  
		search.put("alumnus_session", alumnus_session);  
		search.put("alumnus_class", alumnus_class);  
		search.put("alumnus_address", alumnus_address);  
		search.put("alumnus_workplace", alumnus_workplace);  
		search.put("currpage", (currpage-1)*10);  	
		
		Map<Object, Object> result =  new HashMap<Object, Object>();
		result.put("alumnus", alumnusService.getUserSearchAlumnus(search));
		result.put("currpage", currpage);  
		
		int all =alumnusService.getAlumnusCount(search);
		
		if(all%10 ==0){
			result.put("totalpage", all/10);
		}else{			
			result.put("totalpage", all/10+1);
		}
			

		return result;
	}

	
	
	
}
