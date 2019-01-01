package com.aim.pojo;

import java.io.Serializable;

public class Alumniassociation implements Serializable {
	private static final long serialVersionUID = 1L;
	private int association_id;
	private String association_name;
	private String association_contactman;
	private String association_phone;
	private String association_createtime;
	private String association_province;
	private String association_address;
	private String association_attribute;
	private String association_about;
	private String association_chairman;
	private String association_vicechairman;
	private int association_number;
	private String association_work;
	private String association_duty;

	public Alumniassociation(int association_id, String association_name, String association_contactman,
			String association_phone, String association_createtime, String association_address,
			String association_province, String association_attribute, String association_about,
			String association_chairman, String association_vicechairman, int association_number,
			String association_work, String association_duty) {
		this.association_id = association_id;
		this.association_name = association_name;
		this.association_contactman = association_contactman;
		this.association_phone = association_phone;
		this.association_createtime = association_createtime;
		this.association_province = association_province;
		this.association_address = association_address;
		this.association_attribute = association_attribute;
		this.association_about = association_about;
		this.association_chairman = association_chairman;
		this.association_vicechairman = association_vicechairman;
		this.association_number = association_number;
		this.association_work = association_work;
		this.association_duty = association_duty;
	}

	public Alumniassociation() {
	}

	public int getAssociation_id() {
		return this.association_id;
	}

	public void setAssociation_id(int association_id) {
		this.association_id = association_id;
	}

	public String getAssociation_name() {
		return this.association_name;
	}

	public void setAssociation_name(String association_name) {
		this.association_name = association_name;
	}

	public String getAssociation_province() {
		return association_province;
	}

	public void setAssociation_province(String association_province) {
		this.association_province = association_province;
	}

	public String getAssociation_contactman() {
		return association_contactman;
	}

	public void setAssociation_contactman(String association_contactman) {
		this.association_contactman = association_contactman;
	}

	public String getAssociation_phone() {
		return association_phone;
	}

	public void setAssociation_phone(String association_phone) {
		this.association_phone = association_phone;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String getAssociation_createtime() {
		return this.association_createtime;
	}

	public void setAssociation_createtime(String association_createtime) {
		this.association_createtime = association_createtime;
	}

	public String getAssociation_attribute() {
		return this.association_attribute;
	}

	public void setAssociation_attribute(String association_attribute) {
		this.association_attribute = association_attribute;
	}

	public String getAssociation_about() {
		return this.association_about;
	}

	public void setAssociation_about(String association_about) {
		this.association_about = association_about;
	}

	public String getAssociation_chairman() {
		return this.association_chairman;
	}

	public void setAssociation_chairman(String association_chairman) {
		this.association_chairman = association_chairman;
	}

	public String getAssociation_vicechairman() {
		return this.association_vicechairman;
	}

	public void setAssociation_vicechairman(String association_vicechairman) {
		this.association_vicechairman = association_vicechairman;
	}

	public int getAssociation_number() {
		return association_number;
	}

	public void setAssociation_number(int association_number) {
		this.association_number = association_number;
	}

	public String getAssociation_work() {
		return this.association_work;
	}

	public void setAssociation_work(String association_work) {
		this.association_work = association_work;
	}

	public String getAssociation_duty() {
		return this.association_duty;
	}

	public void setAssociation_duty(String association_duty) {
		this.association_duty = association_duty;
	}

	public String getAssociation_address() {
		return association_address;
	}

	public void setAssociation_address(String association_address) {
		this.association_address = association_address;
	}
}