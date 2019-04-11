package org.weinan.loveroom.domain;
import java.io.Serializable;
import java.sql.Date;
import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;
import javax.persistence.*;

@Entity
@Table(name="Document_inf")
@Cache(usage=CacheConcurrencyStrategy.READ_WRITE)
public class Document implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id @Column(name="Doc_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;
	@Column(name="write_date",nullable=false,length=50)
	private String date;
	@Column(name="url",nullable=false,length=255)
	private String url;
	@Column(name="title",nullable=false,length=50)
	private String title;
	@ManyToOne(targetEntity=User.class)
	@JoinColumn(name="writer",nullable=false)
	private User user;
	
	public Document() {
		
	}
	public Document(Integer id, String date,String url,String title,User user) {
		this.id=id;
		this.date=date;
		this.url=url;
		this.title=title;
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
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title=title;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user=user;
	}
}
