package org.weinan.loveroom.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

@Entity
@Table(name="pic_inf")
@Cache(usage=CacheConcurrencyStrategy.READ_WRITE)
public class Picture implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id @Column(name="pic_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;
	@Column(name="url",nullable=false,length=50)
	private String url;
	@Column(name="date",nullable=false,length=50)
	private String date;
	@ManyToOne(targetEntity=User.class)
	@JoinColumn(name="sender",nullable=false)
	private User user;
	
	public Picture() {
		
	}
	public Picture(Integer id,String date,String url,User user) {
		this.id=id;
		this.date=date;
		this.url=url;
		this.user=user;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id=id;
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
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user=user;
	}

}
