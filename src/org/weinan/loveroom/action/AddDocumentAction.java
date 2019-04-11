package org.weinan.loveroom.action;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;

import org.weinan.loveroom.action.base.UserBaseAction;
import org.weinan.loveroom.domain.Document;

import com.opensymphony.xwork2.ActionContext;

public class AddDocumentAction extends UserBaseAction{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Document document;
	private String content;
	private String editorValue;
	private HttpServletRequest request;
	private static String path="F:\\Download\\WorkSpace\\LoveRoom\\WebContent\\document\\";
	private static String filenameTemp;
	public Document getDocument() {
		return this.document;
	}
	public void setDocument(Document document) {
		this.document=document;
	}
	public String getEditorValue() {
		return this.editorValue;
	}
	public void setEditorValue(String editorValue) {
		this.editorValue=editorValue;
	}
	public String execute() throws Exception{
		AddDocumentAction.createTxtFile(document.getTitle());
		content=editorValue.substring(5, editorValue.length());
		AddDocumentAction.writeTxtFile(content);
		
		System.out.println(content);
		document.setUrl(filenameTemp);
		ActionContext ctx=ActionContext.getContext();
		String username=(String) ctx.getSession().get("user");
		mingNan.addDocument(document, username);
		return SUCCESS;
		
		
		
	}
    public static boolean createTxtFile(String name) throws IOException{
    	boolean flag=false;
    	filenameTemp=path+name+".txt";
    	File file=new File(filenameTemp);
    	if(!file.exists()) {
    		file.createNewFile();
    		flag=true;
    	}
    	return flag;
    }
    public static boolean writeTxtFile(String newStr) throws IOException{
    	boolean flag=false;
    	String filein=newStr+"\r\n";
    	String temp="";
    	FileInputStream fis=null;
    	InputStreamReader isr = null;
    	BufferedReader br=null;
    	
    	FileOutputStream fos=null;
    	PrintWriter pw=null;
    	try {
    		File file=new File(filenameTemp);
    		fis=new FileInputStream(file);
    		isr=new InputStreamReader(fis);
    		br=new BufferedReader(isr);
    		StringBuffer buf=new StringBuffer();
    		for(int j=1;(temp=br.readLine())!=null;j++) {
    			buf=buf.append(temp);
    			buf=buf.append(System.getProperty("line.separtor"));
    		}
    		buf.append(filein);
    		fos=new FileOutputStream(file);
    		pw=new PrintWriter(fos);
    		pw.write(buf.toString().toCharArray());
    		pw.flush();
    		flag=true;
    	}catch(IOException e1){
    		throw e1;
    	}finally {
    		if(pw!=null) {
    			pw.close();
    		}
    		if(fos!=null) {
    			fos.close();
    		}
    		if(br!=null) {
    			br.close();
    		}
    		if(isr!=null) {
    			isr.close();
    		}
    		if(fis!=null) {
    			fis.close();
    		}
    	}
    	return flag;
    }
}
