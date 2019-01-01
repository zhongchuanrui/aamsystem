package com.aim.dao;

import java.util.List;
import com.aim.pojo.Alumnisactivity;

public interface ActivityDao {
	List<Alumnisactivity> getAllActivity();

	List<Alumnisactivity> getApplyActivity();

	List<Alumnisactivity> getPrepareActivity();

	List<Alumnisactivity> getProgressActivity();

	List<Alumnisactivity> getStopActivity();

	int modifyActivity(String username, String activity_replyaremark, int state, int activity_id);
	
	int deleteActivity(int activity_id);

}
