package com.aim.pojo;

import java.util.Date;

public class User
{
  private long id;
  private String name;
  private String email;
  private int age;
  private Date hireDate;

  public long getId()
  {
    return this.id;
  }

  public void setId(long id) {
    this.id = id;
  }

  public String getName() {
    return this.name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getEmail() {
    return this.email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public int getAge() {
    return this.age;
  }

  public void setAge(int age) {
    this.age = age;
  }

  public Date getHireDate() {
    return this.hireDate;
  }

  public void setHireDate(Date hireDate) {
    this.hireDate = hireDate;
  }

  public String toString()
  {
    return "User [id=" + this.id + ", name=" + this.name + ", email=" + this.email + ", age=" + this.age + ", hireDate=" + this.hireDate + 
      "]";
  }
}