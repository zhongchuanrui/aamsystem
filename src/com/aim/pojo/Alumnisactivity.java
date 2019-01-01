package com.aim.pojo;

import java.io.Serializable;

public class Alumnisactivity implements Serializable {
	private static final long serialVersionUID = 1L;
	private int activity_id;// 活动编号
	private int activity_alumnusid;// 申请人id
	private String activity_name;// 活动名字
	private String activity_createtime;// 申请时间
	private String activity_starttime;// 开始时间
	private String activity_stoptime;// 结束时间
	private String activity_theme;// 主题
	private String activity_programme;// 方案
	private String activity_planner;// 策划人
	private String activity_participant;// 参与者
	private String activity_proposer;// 审核人
	private String activity_auditor;// 申请人
	private String activity_replyaremark;// 回复情况
	private int activity_state;// 活动状态
	public Alumnisactivity() {
	}

	public Alumnisactivity(int activity_id, int activity_alumnusid, String activity_name, String activity_createtime,
			 String activity_starttime, String activity_stoptime,String activity_theme, String activity_programme, String activity_planner,
			String activity_auditor, String activity_participant, String activity_proposer,
			String activity_replyaremark, int activity_state) {
		this.activity_id = activity_id;
		this.activity_alumnusid = activity_alumnusid;
		this.activity_name = activity_name;
		this.activity_createtime = activity_createtime;
		this.activity_starttime = activity_starttime;
		this.activity_stoptime = activity_stoptime;
		this.activity_theme = activity_theme;
		this.activity_programme = activity_programme;
		this.activity_planner = activity_planner;
		this.activity_auditor = activity_auditor;
		this.activity_participant = activity_participant;
		this.activity_proposer = activity_proposer;
		this.activity_replyaremark = activity_replyaremark;
		this.activity_state = activity_state;
	}

	public int getActivity_id() {
		return this.activity_id;
	}

	public void setActivity_id(int activity_id) {
		this.activity_id = activity_id;
	}

	public int getActivity_alumnusid() {
		return activity_alumnusid;
	}

	public void setActivity_alumnusid(int activity_alumnusid) {
		this.activity_alumnusid = activity_alumnusid;
	}

	public String getActivity_name() {
		return this.activity_name;
	}

	public void setActivity_name(String activity_name) {
		this.activity_name = activity_name;
	}

	public String getActivity_createtime() {
		return this.activity_createtime;
	}

	public String getActivity_starttime() {
		return activity_starttime;
	}

	public void setActivity_starttime(String activity_starttime) {
		this.activity_starttime = activity_starttime;
	}

	public String getActivity_stoptime() {
		return activity_stoptime;
	}

	public void setActivity_stoptime(String activity_stoptime) {
		this.activity_stoptime = activity_stoptime;
	}

	public void setActivity_createtime(String activity_createtime) {
		this.activity_createtime = activity_createtime;
	}

	public String getActivity_theme() {
		return this.activity_theme;
	}

	public void setActivity_theme(String activity_theme) {
		this.activity_theme = activity_theme;
	}

	public String getActivity_programme() {
		return this.activity_programme;
	}

	public void setActivity_programme(String activity_programme) {
		this.activity_programme = activity_programme;
	}

	public String getActivity_planner() {
		return this.activity_planner;
	}

	public void setActivity_planner(String activity_planner) {
		this.activity_planner = activity_planner;
	}

	public String getActivity_auditor() {
		return this.activity_auditor;
	}

	public void setActivity_auditor(String activity_auditor) {
		this.activity_auditor = activity_auditor;
	}

	public String getActivity_participant() {
		return this.activity_participant;
	}

	public void setActivity_participant(String activity_participant) {
		this.activity_participant = activity_participant;
	}

	public String getActivity_proposer() {
		return this.activity_proposer;
	}

	public void setActivity_proposer(String activity_proposer) {
		this.activity_proposer = activity_proposer;
	}

	public String getActivity_replyaremark() {
		return activity_replyaremark;
	}

	public void setActivity_replyaremark(String activity_replyaremark) {
		this.activity_replyaremark = activity_replyaremark;
	}

	public int getActivity_state() {
		return this.activity_state;
	}

	public void setActivity_state(int activity_state) {
		this.activity_state = activity_state;
	}
}
