package org.weinan.loveroom.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import org.weinan.loveroom.action.base.UserBaseAction;
import org.weinan.loveroom.vo.DocumentBean;
import org.weinan.loveroom.vo.LeavingMessageBean;

import com.opensymphony.xwork2.ActionContext;

public class MainAction extends UserBaseAction{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public String execute() throws Exception {
		List<DocumentBean> docs=new ArrayList<DocumentBean>();
		docs=mingNan.getAllDocument(); 
		for(DocumentBean d:docs) {
			d.setContent(readToString(d.getUrl()));
		}
		ActionContext ctx=ActionContext.getContext();
		List<LeavingMessageBean> data=new ArrayList<LeavingMessageBean>();
		data=mingNan.getAllLeavingMessage();
		List<LeavingMessageBean> leastlms=new ArrayList<LeavingMessageBean>();
		List<DocumentBean> leastdoc=new ArrayList<DocumentBean>();
		for(int i=1;i<=5;i++) {
			leastlms.add(data.get(data.size()-i));
			leastdoc.add(docs.get(i));
		}
		List<String> shortlms=new ArrayList<String>();
		List<String> shortContent=new ArrayList<String>();
		for(LeavingMessageBean l:leastlms) {
			int leangth=l.getComment().length();
			int endIndex=leangth>15? 15:leangth;
			String str=l.getComment().substring(0,endIndex)+"...";
			shortlms.add(str);
		}
		for(DocumentBean l:leastdoc) {
			int length=l.getContent().length();
			int endIndex=length>225?225:length;
			String str=l.getContent().substring(0, endIndex);
			//String str=l.getContent();
			if(str.indexOf("</p>")==-1) {
				str=str+"</p>";
			}
			shortContent.add(str);
		}
		ctx.getSession().put("shortlms", shortlms);
		ctx.getSession().put("leastdoc", leastdoc);
		ctx.getSession().put("shortContent", shortContent);
		return SUCCESS;
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
