package com.aim.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.aim.pojo.Acomment;
import com.aim.service.AcommentService;

@Controller
@RequestMapping("/acomment")
public class AcommentAction {

	@Resource(name = "Acommentserviceimpl")
	AcommentService acommentservice;
	
	
	@RequestMapping("/inesrtacomment")
	@ResponseBody
	public int insertAcomment(Acomment acomment) {
		
		Date d = new Date();    
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
        String dateNowStr = sdf.format(d);
        
        acomment.setAcomment_writetime(dateNowStr);
		
		
		return acommentservice.insertAcomment(acomment);
	}
		

}
