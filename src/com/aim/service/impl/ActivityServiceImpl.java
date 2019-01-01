package com.aim.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.aim.dao.ActivityDao;
import com.aim.pojo.Alumnisactivity;
import com.aim.service.ActivityService;

@Service("Activityserviceimpl")
public class ActivityServiceImpl implements ActivityService {
	
	@Resource(name="")
	private ActivityDao activitydao;

	@Override
	public List<Alumnisactivity> getAllActivity() {
		return activitydao.getAllActivity();
	}

	@Override
	public List<Alumnisactivity> getApplyActivity() {
		return activitydao.getApplyActivity();
	}

	@Override
	public List<Alumnisactivity> getPrepareActivity() {
		return activitydao.getPrepareActivity();
	}

	@Override
	public List<Alumnisactivity> getProgressActivity() {
		return activitydao.getProgressActivity();
	}

	@Override
	public List<Alumnisactivity> getStopActivity() {
		return activitydao.getStopActivity();
	}

	@Override
	public int modifyActivity(String username, String activity_replyaremark, int state,int activity_id) {
		return activitydao.modifyActivity(username, activity_replyaremark, state,activity_id);
	}

	@Override
	public int deleteActivity(int activity_id) {
		return activitydao.deleteActivity(activity_id);
	}

}
