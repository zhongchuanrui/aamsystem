package com.aim.pojo;

import java.io.Serializable;

public class Alumnus implements Serializable {
	private static final long serialVersionUID = 1L;
	private int alumnus_id;
	private String alumnus_nickname;
	private String alumnus_password;
	private String alumnus_name;
	private String alumnus_registertime;
	private int associationid;
	private String alumnus_session;
	private String alumnus_birthday;
	private String alumnus_sex;
	private String alumnus_introduce;
	private String alumnus_weixin;
	private String alumnus_qq;
	private String alumnus_telephone;
	private String alumnus_academy;
	private String alumnus_major;
	private String alumnus_class;
	private String alumnus_graduationtime;
	private String alumnus_mastermajor;
	private String alumnus_masteryear;
	private String alumnus_address;
	private String alumnus_workplace;
	private String alumnus_workpost;
	private int alumnus_state;

	public int getAlumnus_state() {
		return alumnus_state;
	}

	public void setAlumnus_state(int alumnus_state) {
		this.alumnus_state = alumnus_state;
	}

	public Alumnus() {
	}

	public Alumnus(int alumnus_id, String alumnus_nickname, String alumnus_password, String alumnus_name,
			String alumnus_registertime,int associationid, String alumnus_session, String alumnus_birthday, String alumnus_sex,
			String alumnus_introduce, String alumnus_weixin, String alumnus_qq, String alumnus_telephone,String alumnus_academy,
			String alumnus_major, String alumnus_class, String alumnus_graduationtime, String alumnus_mastermajor,
			String alumnus_masteryear, String alumnus_address, String alumnus_workplace, String alumnus_workpost,
			int alumnus_state) {
		this.alumnus_id = alumnus_id;
		this.alumnus_nickname = alumnus_nickname;
		this.alumnus_password = alumnus_password;
		this.alumnus_name = alumnus_name;
		this.alumnus_registertime = alumnus_registertime;
		this.associationid = associationid;
		this.alumnus_session = alumnus_session;
		this.alumnus_birthday = alumnus_birthday;
		this.alumnus_sex = alumnus_sex;
		this.alumnus_introduce = alumnus_introduce;
		this.alumnus_weixin = alumnus_weixin;
		this.alumnus_qq = alumnus_qq;
		this.alumnus_telephone = alumnus_telephone;
		this.alumnus_academy = alumnus_academy;
		this.alumnus_major = alumnus_major;
		this.alumnus_class = alumnus_class;
		this.alumnus_graduationtime = alumnus_graduationtime;
		this.alumnus_mastermajor = alumnus_mastermajor;
		this.alumnus_masteryear = alumnus_masteryear;
		this.alumnus_address = alumnus_address;
		this.alumnus_workplace = alumnus_workplace;
		this.alumnus_workpost = alumnus_workpost;
		this.alumnus_state = alumnus_state;
	}

	public int getAlumnus_id() {
		return this.alumnus_id;
	}

	public void setAlumnus_id(int alumnus_id) {
		this.alumnus_id = alumnus_id;
	}

	public String getAlumnus_nickname() {
		return this.alumnus_nickname;
	}

	public void setAlumnus_nickname(String alumnus_nickname) {
		this.alumnus_nickname = alumnus_nickname;
	}

	public String getAlumnus_password() {
		return this.alumnus_password;
	}

	public void setAlumnus_password(String alumnus_password) {
		this.alumnus_password = alumnus_password;
	}

	public String getAlumnus_name() {
		return this.alumnus_name;
	}

	public void setAlumnus_name(String alumnus_name) {
		this.alumnus_name = alumnus_name;
	}

	public String getAlumnus_registertime() {
		return alumnus_registertime;
	}

	public void setAlumnus_registertime(String alumnus_registertime) {
		this.alumnus_registertime = alumnus_registertime;
	}

	public int getAssociationid() {
		return associationid;
	}

	public void setAssociationid(int associationid) {
		this.associationid = associationid;
	}

	public String getAlumnus_session() {
		return this.alumnus_session;
	}

	public void setAlumnus_session(String alumnus_session) {
		this.alumnus_session = alumnus_session;
	}

	public String getAlumnus_birthday() {
		return this.alumnus_birthday;
	}

	public void setAlumnus_birthday(String alumnus_birthday) {
		this.alumnus_birthday = alumnus_birthday;
	}

	public String getAlumnus_sex() {
		return this.alumnus_sex;
	}

	public void setAlumnus_sex(String alumnus_sex) {
		this.alumnus_sex = alumnus_sex;
	}

	public String getAlumnus_introduce() {
		return this.alumnus_introduce;
	}

	public void setAlumnus_introduce(String alumnus_introduce) {
		this.alumnus_introduce = alumnus_introduce;
	}

	public String getAlumnus_weixin() {
		return this.alumnus_weixin;
	}

	public void setAlumnus_weixin(String alumnus_weixin) {
		this.alumnus_weixin = alumnus_weixin;
	}

	public String getAlumnus_qq() {
		return this.alumnus_qq;
	}

	public void setAlumnus_qq(String alumnus_qq) {
		this.alumnus_qq = alumnus_qq;
	}

	public String getAlumnus_telephone() {
		return this.alumnus_telephone;
	}

	public void setAlumnus_telephone(String alumnus_telephone) {
		this.alumnus_telephone = alumnus_telephone;
	}

	public String getAlumnus_major() {
		return this.alumnus_major;
	}

	public void setAlumnus_major(String alumnus_major) {
		this.alumnus_major = alumnus_major;
	}

	public String getAlumnus_academy() {
		return alumnus_academy;
	}

	public void setAlumnus_academy(String alumnus_academy) {
		this.alumnus_academy = alumnus_academy;
	}

	public String getAlumnus_class() {
		return this.alumnus_class;
	}

	public void setAlumnus_class(String alumnus_class) {
		this.alumnus_class = alumnus_class;
	}

	public String getAlumnus_graduationtime() {
		return this.alumnus_graduationtime;
	}

	public void setAlumnus_graduationtime(String alumnus_graduationtime) {
		this.alumnus_graduationtime = alumnus_graduationtime;
	}

	public String getAlumnus_mastermajor() {
		return this.alumnus_mastermajor;
	}

	public void setAlumnus_mastermajor(String alumnus_mastermajor) {
		this.alumnus_mastermajor = alumnus_mastermajor;
	}

	public String getAlumnus_masteryear() {
		return this.alumnus_masteryear;
	}

	public void setAlumnus_masteryear(String alumnus_masteryear) {
		this.alumnus_masteryear = alumnus_masteryear;
	}

	public String getAlumnus_address() {
		return this.alumnus_address;
	}

	public void setAlumnus_address(String alumnus_address) {
		this.alumnus_address = alumnus_address;
	}

	public String getAlumnus_workplace() {
		return this.alumnus_workplace;
	}

	public void setAlumnus_workplace(String alumnus_workplace) {
		this.alumnus_workplace = alumnus_workplace;
	}

	public String getAlumnus_workpost() {
		return this.alumnus_workpost;
	}

	public void setAlumnus_workpost(String alumnus_workpost) {
		this.alumnus_workpost = alumnus_workpost;
	}
}