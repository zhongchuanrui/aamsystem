package com.aim.pojo;

import java.io.Serializable;

public class Applyoffice implements Serializable {
	private static final long serialVersionUID = 1L;
	private int reviewjob_id;
	private int reviewjob_alumnusid;
	private int reviewjob_associationid;
	private String reviewjob_name;
	private String reviewjob_time;
	private String reviewjob_job;
	private int reviewjob_state;
	private String reviewjob_data;
	private String replay_time;
	private String replay_man;
	private String replay_situation;
	private String replay_remark;

	public Applyoffice(int reviewjob_id, int reviewjob_alumnusid, int reviewjob_associationid, String reviewjob_name,
			String reviewjob_time, String reviewjob_job, int reviewjob_state, String reviewjob_data, String replay_time,
			String replay_man, String replay_situation, String replay_remark) {
		this.reviewjob_id = reviewjob_id;
		this.reviewjob_alumnusid = reviewjob_alumnusid;
		this.reviewjob_associationid = reviewjob_associationid;
		this.reviewjob_name = reviewjob_name;
		this.reviewjob_time = reviewjob_time;
		this.reviewjob_job = reviewjob_job;
		this.reviewjob_state = reviewjob_state;
		this.reviewjob_data = reviewjob_data;
		this.replay_time = replay_time;
		this.replay_man = replay_man;
		this.replay_situation = replay_situation;
		this.replay_remark = replay_remark;
	}

	public Applyoffice() {
	}

	public int getReviewjob_id() {
		return this.reviewjob_id;
	}

	public void setReviewjob_id(int reviewjob_id) {
		this.reviewjob_id = reviewjob_id;
	}

	public int getReviewjob_alumnusid() {
		return reviewjob_alumnusid;
	}

	public void setReviewjob_alumnusid(int reviewjob_alumnusid) {
		this.reviewjob_alumnusid = reviewjob_alumnusid;
	}

	public int getReviewjob_associationid() {
		return reviewjob_associationid;
	}

	public void setReviewjob_associationid(int reviewjob_associationid) {
		this.reviewjob_associationid = reviewjob_associationid;
	}

	public String getReviewjob_name() {
		return this.reviewjob_name;
	}

	public void setReviewjob_name(String reviewjob_name) {
		this.reviewjob_name = reviewjob_name;
	}

	public String getReviewjob_time() {
		return this.reviewjob_time;
	}

	public void setReviewjob_time(String reviewjob_time) {
		this.reviewjob_time = reviewjob_time;
	}

	public String getReviewjob_job() {
		return this.reviewjob_job;
	}

	public void setReviewjob_job(String reviewjob_job) {
		this.reviewjob_job = reviewjob_job;
	}

	public int getReviewjob_state() {
		return this.reviewjob_state;
	}

	public void setReviewjob_state(int reviewjob_state) {
		this.reviewjob_state = reviewjob_state;
	}

	public String getReviewjob_data() {
		return this.reviewjob_data;
	}

	public void setReviewjob_data(String reviewjob_data) {
		this.reviewjob_data = reviewjob_data;
	}

	public String getReplay_time() {
		return this.replay_time;
	}

	public void setReplay_time(String replay_time) {
		this.replay_time = replay_time;
	}

	public String getReplay_man() {
		return this.replay_man;
	}

	public void setReplay_man(String replay_man) {
		this.replay_man = replay_man;
	}

	public String getReplay_situation() {
		return this.replay_situation;
	}

	public void setReplay_situation(String replay_situation) {
		this.replay_situation = replay_situation;
	}

	public String getReplay_remark() {
		return this.replay_remark;
	}

	public void setReplay_remark(String replay_remark) {
		this.replay_remark = replay_remark;
	}
}