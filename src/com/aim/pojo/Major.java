package com.aim.pojo;

public class Major {

	private int major_id;
	private String major_academy;
	private String major_major;
	private String major_class;
	private String major_session;
	
	public Major() {
	}

	public Major(int major_id, String major_academy, String major_major, String major_class, String major_session) {
		
		this.major_id = major_id;
		this.major_academy = major_academy;
		this.major_major = major_major;
		this.major_class = major_class;
		this.major_session = major_session;
	}

	public int getMajor_id() {
		return major_id;
	}

	public void setMajor_id(int major_id) {
		this.major_id = major_id;
	}

	public String getMajor_academy() {
		return major_academy;
	}

	public void setMajor_academy(String major_academy) {
		this.major_academy = major_academy;
	}

	public String getMajor_major() {
		return major_major;
	}

	public void setMajor_major(String major_major) {
		this.major_major = major_major;
	}

	public String getMajor_class() {
		return major_class;
	}

	public void setMajor_class(String major_class) {
		this.major_class = major_class;
	}

	public String getMajor_session() {
		return major_session;
	}

	public void setMajor_session(String major_session) {
		this.major_session = major_session;
	}
}
