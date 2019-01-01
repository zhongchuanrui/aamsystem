package com.aim.action;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aim.pojo.Alumnisactivity;
import com.aim.service.ActivityService;

@Controller
@RequestMapping("/activity")
public class ActivityAction {

	@Resource(name = "Activityserviceimpl")
	private ActivityService activityservice;

	@RequestMapping("/getallactivity")
	@ResponseBody
	public List<Alumnisactivity> getAllActivity() {
		return activityservice.getAllActivity();
	}

	@RequestMapping("/getapplyactivity")
	@ResponseBody
	public List<Alumnisactivity> getApplyActivity() {
		return activityservice.getApplyActivity();
	}

	@RequestMapping("/getprepareactivity")
	@ResponseBody
	public List<Alumnisactivity> getPrepareActivity() {
		return activityservice.getPrepareActivity();
	}

	@RequestMapping("/getprogressactivity")
	@ResponseBody
	public List<Alumnisactivity> getProgressActivity() {
		return activityservice.getProgressActivity();
	}

	@RequestMapping("/getstopactivity")
	@ResponseBody
	public List<Alumnisactivity> getStopActivity() {
		return activityservice.getStopActivity();
	}

	@RequestMapping("/modifyactivity")
	@ResponseBody
	public int modifyActivity(String username, String activity_replyaremark, int check, int activity_id) {
		int state = 0;
		if (check == 1) {
			state = 2;
		}
		return activityservice.modifyActivity(username, activity_replyaremark, state, activity_id);
	}

	@RequestMapping("/deleteactivity")
	@ResponseBody
	public int deleteActivity(int activity_id) {
		return activityservice.deleteActivity(activity_id);
	}

}
