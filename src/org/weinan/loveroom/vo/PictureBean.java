package org.weinan.loveroom.vo;

import java.io.Serializable;

public class PictureBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String date;
	private String url;
	public PictureBean() {
		
	}
	public PictureBean(String url,String date) {
		this.url=url;
		this.date=date;
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
    
}
