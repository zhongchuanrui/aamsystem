package com.aim.pojo;

import java.io.Serializable;

public class News
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  private int news_id;
  private String news_title;
  private String news_time;
  private String news_content;
  private String news_person;
  private int news_state;

  public int getNews_state() {
	return news_state;
}

public void setNews_state(int news_state) {
	this.news_state = news_state;
}

public News(int news_id, String news_title, String news_time, String news_content, String news_person,int news_state)
  {
    this.news_id = news_id;
    this.news_title = news_title;
    this.news_time = news_time;
    this.news_content = news_content;
    this.news_person = news_person;
    this.news_state = news_state;
  }

  public News()
  {
  }

  public int getNews_id()
  {
    return this.news_id;
  }
  public void setNews_id(int news_id) {
    this.news_id = news_id;
  }
  public String getNews_title() {
    return this.news_title;
  }
  public void setNews_title(String news_title) {
    this.news_title = news_title;
  }
  public String getNews_time() {
    return this.news_time;
  }
  public void setNews_time(String news_time) {
    this.news_time = news_time;
  }
  public String getNews_content() {
    return this.news_content;
  }
  public void setNews_content(String news_content) {
    this.news_content = news_content;
  }
  public String getNews_person() {
    return this.news_person;
  }
  public void setNews_person(String news_person) {
    this.news_person = news_person;
  }

  public static long getSerialversionuid() {
    return 1L;
  }
}