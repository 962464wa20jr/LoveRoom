package org.weinan.loveroom.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

import org.weinan.loveroom.action.base.UserBaseAction;
import org.weinan.loveroom.domain.Picture;

import com.opensymphony.xwork2.ActionContext;

public class AddPictureAction extends UserBaseAction{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private File upload;//文件域
	private String uploadContentType;//文件类型
	private String uploadFileName;//文件名
	private String savePath;//在struts.xml文件中配置
	private Picture picture;
	public Picture getPicture() {
		return picture;
	}
	public void setPicture(Picture picture) {
		this.picture=picture;
	}
	public String getSavePath() throws Exception {
		return savePath;
	}
	public void setSavePath(String savePath) {
		this.savePath=savePath;
	}
	public File getUpload() {
		return upload;
	}
	public void setUpload(File upload) {
		this.upload=upload;
	}
	public String getUploadContenType() {
		return uploadContentType;
	}
	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType=uploadContentType;
	}
	public String getUploadFileName() {
		return uploadFileName;
	}
	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName=uploadFileName;
	}
	public String execute() throws Exception{
		FileOutputStream fos=new FileOutputStream(getSavePath()+"\\"+getUploadFileName());
		FileInputStream fis=new FileInputStream(getUpload());
		byte[] buffer=new byte[1024];
		int len=0;
		while((len=fis.read(buffer))>0) {
			fos.write(buffer, 0, len);
		}
		 ActionContext ctx=ActionContext.getContext();
		 String username=(String) ctx.getSession().get("user");
		 mingNan.addPictrue(picture, username);
		 picture.setUrl(getSavePath());
		return SUCCESS;
	}
	
	

}
