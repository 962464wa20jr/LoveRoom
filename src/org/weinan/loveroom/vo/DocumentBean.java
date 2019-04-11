package org.weinan.loveroom.vo;

import java.io.Serializable;

import org.weinan.loveroom.domain.User;

public class DocumentBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String date;
	private String url;
	private String title;
	private String month;
	private int day;
	private String year;
	private String content;
	private User user;
  public DocumentBean() {
	  
  }
  public DocumentBean(String date,String url,String title,User user) {
	  this.date=date;
	  this.url=url;
	  this.title=title;
	  this.user=user;
  }
  public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date=date;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url=url;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title=title;
	}
	public String getMonth() {
		return this.month;
	}
	public void setMonth(String month) {
		this.month=month;
	}
	public int getDay() {
		return this.day;
	}
	public void setDay(int day) {
		this.day=day;
	}
	public String getYear() {
		return this.year;
	}
	public void setYear(String year) {
		this.year=year;
	}
	public String getContent() {
		return this.content;
	}
	public void setContent(String content) {
		this.content=content;
	}
	public User getUser() {
		return this.user;
	}
	public void setUser(User user) {
		this.user=user;
	}
	

}
