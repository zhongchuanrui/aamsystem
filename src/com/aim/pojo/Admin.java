package com.aim.pojo;

import java.io.Serializable;

public class Admin implements Serializable {

	private static final long serialVersionUID = 1L;

	public Admin() {
	}

	public Admin(int admin_id, String admin_name, String admin_password, int admin_age, String admin_sex,
			String admin_phone, String admin_power, String admin_logintime, int admin_state) {
		this.admin_id = admin_id;
		this.admin_name = admin_name;
		this.admin_password = admin_password;
		this.admin_age = admin_age;
		this.admin_sex = admin_sex;
		this.admin_phone = admin_phone;
		this.admin_power = admin_power;
		this.admin_logintime = admin_logintime;
		this.admin_state = admin_state;
	}

	private int admin_id;
	private String admin_name;
	private String admin_password;
	private int admin_age;
	private String admin_sex;
	private String admin_phone;
	private String admin_power;
	private String admin_logintime;
	private int admin_state;

	public int getAdmin_id() {
		return admin_id;
	}

	public void setAdmin_id(int admin_id) {
		this.admin_id = admin_id;
	}

	public String getAdmin_name() {
		return admin_name;
	}

	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}

	public String getAdmin_password() {
		return admin_password;
	}

	public void setAdmin_password(String admin_password) {
		this.admin_password = admin_password;
	}

	public int getAdmin_age() {
		return admin_age;
	}

	public void setAdmin_age(int admin_age) {
		this.admin_age = admin_age;
	}

	public String getAdmin_sex() {
		return admin_sex;
	}

	public void setAdmin_sex(String admin_sex) {
		this.admin_sex = admin_sex;
	}

	public String getAdmin_phone() {
		return admin_phone;
	}

	public void setAdmin_phone(String admin_phone) {
		this.admin_phone = admin_phone;
	}

	public String getAdmin_power() {
		return admin_power;
	}

	public void setAdmin_power(String admin_power) {
		this.admin_power = admin_power;
	}

	public String getAdmin_logintime() {
		return admin_logintime;
	}

	public void setAdmin_logintime(String admin_logintime) {
		this.admin_logintime = admin_logintime;
	}

	public int getAdmin_state() {
		return admin_state;
	}

	public void setAdmin_state(int admin_state) {
		this.admin_state = admin_state;
	}

}
