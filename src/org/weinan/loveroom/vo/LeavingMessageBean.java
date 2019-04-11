package org.weinan.loveroom.vo;

import java.io.Serializable;

import org.weinan.loveroom.domain.User;

public class LeavingMessageBean implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String comment;
	private String date;
	private User user;
	private String month;
	private int day;
	public LeavingMessageBean() {
		
	}
	public LeavingMessageBean(String comment,String date,User user) {
		this.comment=comment;
		this.date=date;
		this.user=user;
		
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
	public User getUser() {
		return this.user;
	}
	public void setUser(User user) {
		this.user=user;
	}
	
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date=date;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment=comment;
	}

}
