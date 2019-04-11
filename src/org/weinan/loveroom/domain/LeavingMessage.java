package org.weinan.loveroom.domain;
import java.io.Serializable;
import java.sql.Date;
import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;
import javax.persistence.*;
@Entity
@Table(name="LM_inf")
@Cache(usage=CacheConcurrencyStrategy.READ_WRITE)
public class LeavingMessage implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id @Column(name="LM_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;
	@Column(name="date",nullable=false,length=50)
	private  String date;
	@Column(name="comment",nullable=false,length=255)
	private String comment;
	@ManyToOne(targetEntity=User.class)
	@JoinColumn(name="writer",nullable=false)
	private User user;
	
	public LeavingMessage() {
		
	}
	public LeavingMessage(Integer id,String date,String comment,User user) {
		this.id=id;
		this.date=date;
		this.comment=comment;
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
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment=comment;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user=user;
	}
	

}
