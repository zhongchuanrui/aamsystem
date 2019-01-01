package com.aim.pojo;

import java.io.Serializable;

public class Office implements Serializable {
	private static final long serialVersionUID = 1L;
	private int position_id;
	private int alumnus_id;
	private int association_id;
	private String position_name;
	private String positon_demand;
	private String positon_duty;
	private String position_power;
	private String positon_starttime;
	private String positon_retiretime;

	public Office(int position_id, int alumnus_id, int association_id, String position_name, String positon_demand,
			String positon_duty, String position_power, String positon_starttime, String positon_retiretime) {
		this.position_id = position_id;
		this.alumnus_id = alumnus_id;
		this.association_id = association_id;
		this.position_name = position_name;
		this.positon_demand = positon_demand;
		this.positon_duty = positon_duty;
		this.position_power = position_power;
		this.positon_starttime = positon_starttime;
		this.positon_retiretime = positon_retiretime;
	}

	public Office() {
	}

	public int getPosition_id() {
		return this.position_id;
	}

	public void setPosition_id(int position_id) {
		this.position_id = position_id;
	}

	public int getAlumnus_id() {
		return this.alumnus_id;
	}

	public void setAlumnus_id(int alumnus_id) {
		this.alumnus_id = alumnus_id;
	}

	public int getAssociation_id() {
		return this.association_id;
	}

	public void setAssociation_id(int association_id) {
		this.association_id = association_id;
	}

	public String getPosition_name() {
		return this.position_name;
	}

	public void setPosition_name(String position_name) {
		this.position_name = position_name;
	}

	public String getPositon_demand() {
		return this.positon_demand;
	}

	public void setPositon_demand(String positon_demand) {
		this.positon_demand = positon_demand;
	}

	public String getPositon_duty() {
		return this.positon_duty;
	}

	public void setPositon_duty(String positon_duty) {
		this.positon_duty = positon_duty;
	}

	public String getPosition_power() {
		return this.position_power;
	}

	public void setPosition_power(String position_power) {
		this.position_power = position_power;
	}

	public String getPositon_starttime() {
		return this.positon_starttime;
	}

	public void setPositon_starttime(String positon_starttime) {
		this.positon_starttime = positon_starttime;
	}

	public String getPositon_retiretime() {
		return this.positon_retiretime;
	}

	public void setPositon_retiretime(String positon_retiretime) {
		this.positon_retiretime = positon_retiretime;
	}
}