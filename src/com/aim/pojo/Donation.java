package com.aim.pojo;

import java.io.Serializable;

public class Donation
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  private int donation_id;
  private String donation_man;
  private int alumnus_id;
  private String donation_time;
  private String donation_compay;
  private String donation_detail;
  private int donation_state;
  private String donation_type;
  private double donation_money;
  private String donation_words;

  public Donation(int donation_id, String donation_man,int alumnus_id, String donation_time, String donation_compay, String donation_detail,int donation_state, String donation_type, double donation_money, String donation_words)
  {
    this.donation_id = donation_id;
    this.donation_man =donation_man;
    this.alumnus_id = alumnus_id;
    this.donation_time = donation_time;
    this.donation_compay = donation_compay;
    this.donation_detail = donation_detail;
    this.donation_state= donation_state;
    this.donation_type = donation_type;
    this.donation_money = donation_money;
    this.donation_words = donation_words;
  }

  public Donation()
  {
  }

  public int getDonation_id()
  {
    return this.donation_id;
  }

  public void setDonation_id(int donation_id) {
    this.donation_id = donation_id;
  }

  public String getDonation_man() {
	return donation_man;
}

public void setDonation_man(String donation_man) {
	this.donation_man = donation_man;
}

public int getAlumnus_id() {
    return this.alumnus_id;
  }

  public void setAlumnus_id(int alumnus_id) {
    this.alumnus_id = alumnus_id;
  }

  public String getDonation_time() {
    return this.donation_time;
  }

  public void setDonation_time(String donation_time) {
    this.donation_time = donation_time;
  }

  public String getDonation_compay() {
    return this.donation_compay;
  }

  public void setDonation_compay(String donation_compay) {
    this.donation_compay = donation_compay;
  }

  public String getDonation_detail() {
    return this.donation_detail;
  }

  public int getDonation_state() {
	return donation_state;
}

public void setDonation_state(int donation_state) {
	this.donation_state = donation_state;
}

public static long getSerialversionuid() {
	return serialVersionUID;
}

public void setDonation_detail(String donation_detail) {
    this.donation_detail = donation_detail;
  }

  public String getDonation_type() {
    return this.donation_type;
  }

  public void setDonation_type(String donation_type) {
    this.donation_type = donation_type;
  }

  public double getDonation_money() {
    return this.donation_money;
  }

  public void setDonation_money(double donation_money) {
    this.donation_money = donation_money;
  }

  public String getDonation_words() {
    return this.donation_words;
  }

  public void setDonation_words(String donation_words) {
    this.donation_words = donation_words;
  }
}