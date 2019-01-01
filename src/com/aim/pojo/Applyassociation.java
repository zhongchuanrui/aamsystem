package com.aim.pojo;

import java.io.Serializable;

public class Applyassociation implements Serializable {
	private static final long serialVersionUID = 1L;
	private int apply_id;
	private int alumnus_id;
	private int apply_associationid;
	private String apply_time;
	private String apply_session;
	private String apply_address;
	private String apply_data;
	private int apply_state;
	private String reply_time;
	private String reply_man;
	private String reply_situation;
	private String replay_remark;

	public Applyassociation(int apply_id, int alumnus_id, int apply_associationid, String apply_time,
			String apply_session, String apply_address, String apply_data, int apply_state, String reply_time,
			String reply_man, String reply_situation, String replay_remark) {
		this.apply_id = apply_id;
		this.alumnus_id = alumnus_id;
		this.apply_associationid = apply_associationid;
		this.apply_time = apply_time;
		this.apply_session = apply_session;
		this.apply_address = apply_address;
		this.apply_data = apply_data;
		this.apply_state = apply_state;
		this.reply_time = reply_time;
		this.reply_man = reply_man;
		this.reply_situation = reply_situation;
		this.replay_remark = replay_remark;
	}

	public Applyassociation() {
	}

	public int getApply_id() {
		return this.apply_id;
	}

	public void setApply_id(int apply_id) {
		this.apply_id = apply_id;
	}

	public int getAlumnus_id() {
		return alumnus_id;
	}

	public void setAlumnus_id(int alumnus_id) {
		this.alumnus_id = alumnus_id;
	}

	public String getApply_time() {
		return this.apply_time;
	}

	public void setApply_time(String apply_time) {
		this.apply_time = apply_time;
	}

	public String getApply_session() {
		return this.apply_session;
	}

	public void setApply_session(String apply_session) {
		this.apply_session = apply_session;
	}

	public String getApply_address() {
		return this.apply_address;
	}

	public void setApply_address(String apply_address) {
		this.apply_address = apply_address;
	}

	public String getApply_data() {
		return this.apply_data;
	}

	public void setApply_data(String apply_data) {
		this.apply_data = apply_data;
	}

	public int getApply_state() {
		return this.apply_state;
	}

	public void setApply_state(int apply_state) {
		this.apply_state = apply_state;
	}

	public String getReply_time() {
		return this.reply_time;
	}

	public void setReply_time(String reply_time) {
		this.reply_time = reply_time;
	}

	public String getReply_man() {
		return this.reply_man;
	}

	public void setReply_man(String reply_man) {
		this.reply_man = reply_man;
	}

	public String getReply_situation() {
		return this.reply_situation;
	}

	public void setReply_situation(String reply_situation) {
		this.reply_situation = reply_situation;
	}

	public String getReplay_remark() {
		return this.replay_remark;
	}

	public void setReplay_remark(String replay_remark) {
		this.replay_remark = replay_remark;
	}

	public int getApply_associationid() {
		return apply_associationid;
	}

	public void setApply_associationid(int apply_associationid) {
		this.apply_associationid = apply_associationid;
	}
}