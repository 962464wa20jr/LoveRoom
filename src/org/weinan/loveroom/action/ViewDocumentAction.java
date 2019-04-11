package org.weinan.loveroom.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import org.weinan.loveroom.action.base.UserBaseAction;
import org.weinan.loveroom.domain.Document;
import org.weinan.loveroom.vo.DocumentBean;

import com.opensymphony.xwork2.ActionContext;

public class ViewDocumentAction extends UserBaseAction{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private List<String> filename;
	private String filenameTemp;
	private List<String> title=new ArrayList<String>();
	private List<String> content=new ArrayList<String>();
	public String execute() throws Exception{
		//String filePath="F:\\Download\\WorkSpace\\LoveRoom\\WebContent\\document\\";
		List<DocumentBean> docs=new ArrayList<DocumentBean>();
		docs=mingNan.getAllDocument(); 
		for(DocumentBean d:docs) {
			d.setContent(readToString(d.getUrl()));
		}
		ActionContext ctx=ActionContext.getContext();
		ctx.getSession().put("docs", docs);
		/*for(String s:readDocument(filePath)) {
			System.out.println(s);
			filenameTemp=filePath+s;
			System.out.println(filenameTemp);
			System.out.println(readToString(filenameTemp));
			String str=readToString(filenameTemp);
			content.add(str);
		}
		ActionContext ctx=ActionContext.getContext();
		ctx.getSession().put("content", content);
		ctx.getSession().put("title", title);
		System.out.println(content.get(0));*/
		return SUCCESS;
	}
	public List<String> readDocument(String filePath) throws IOException,FileNotFoundException{
		File file=new File(filePath);
		File[] files=file.listFiles();
		filename=new ArrayList<String>();
		for(int i=0;i<files.length;i++) {
			File f=files[i];
			filename.add(f.getName());
			String str=f.getName().substring(0, f.getName().length()-4);
			title.add(str);
		}
		return filename;
	}
	public String readToString(String fileName) {  
        String encoding = "gbk";  
        File file = new File(fileName);  
        Long filelength = file.length();  
        byte[] filecontent = new byte[filelength.intValue()];  
        try {  
            FileInputStream in = new FileInputStream(file);  
            in.read(filecontent);  
            in.close();  
        } catch (FileNotFoundException e) {  
            e.printStackTrace();  
        } catch (IOException e) {  
            e.printStackTrace();  
        }  
        try {  
            return new String(filecontent, encoding);  
        } catch (UnsupportedEncodingException e) {  
            System.err.println("The OS does not support " + encoding);  
            e.printStackTrace();  
            return null;  
        }  
    }

}
