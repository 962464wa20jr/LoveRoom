package org.weinan.loveroom.domain;
import java.io.Serializable;
import java.sql.Date;
import java.util.HashSet;
import java.util.Set;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;
import javax.persistence.*;

@Entity
@Table(name="user_inf")
@Cache(usage=CacheConcurrencyStrategy.READ_WRITE)
public class User implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id @Column(name="user_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;
	@Column(name="username",nullable=false,length=50)
	private String username;
	@Column(name="password",nullable=false,length=50)
	private String password;
	@OneToMany(targetEntity=Picture.class,mappedBy="user")
	private Set<Picture> pictures=new HashSet<Picture>();
	@OneToMany(targetEntity=Document.class,mappedBy="user")
	private Set<Document> documents=new HashSet<Document>();
	@OneToMany(targetEntity=LeavingMessage.class,mappedBy="user")
	private Set<LeavingMessage> lmss=new HashSet<LeavingMessage>();
	
	public User() {
		
	}
	public User(Integer id,String username,String password,Set<Picture> pictures,
			Set<Document> documents,Set<LeavingMessage> lmss) {
		this.id=id;
		this.username=username;
		this.password=password;
		this.documents=documents;
		this.pictures=pictures;
		this.lmss=lmss;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id=id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username=username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password=password;
	}
	public Set<Document> getDocuments(){
		return documents;
	}
	public void setDocuments(Set<Document> documents) {
		this.documents=documents;
	}
	public Set<Picture> getPictures(){
		return pictures;
	}
	public void setPictures(Set<Picture> pictures) {
		this.pictures=pictures;
	}
	public Set<LeavingMessage> getLmss(){
		return lmss;
	}
	public void setLmss(Set<LeavingMessage> lmss) {
		this.lmss=lmss;
	}
	@Override
	public int hashCode()
	{
		final int prime = 31;
		int result = 1;
		result = prime * result + ((username == null) ? 0 : username.hashCode());
		result = prime * result + ((password == null) ? 0 : password.hashCode());
		return result;
	}
	// 根据name、pass来重写equals()方法，只要name、pass相同的用户即认为相等。
	@Override
	public boolean equals(Object obj)
	{
		if (this == obj) return true;
		if (obj == null) return false;
		if (getClass() != obj.getClass()) return false;
		User other = (User) obj;
		if (username == null)
		{
			if (other.username != null) return false;
		}
		else if (!username.equals(other.username)) return false;
		if (password == null)
		{
			if (other.password != null) return false;
		}
		else if (!password.equals(other.password)) return false;
		return true;
	}
	
	

}
