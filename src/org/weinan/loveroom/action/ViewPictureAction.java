package org.weinan.loveroom.action;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ViewPictureAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public boolean readPicture(String filePath) throws IOException,FileNotFoundException{
		File file=new File(filePath);
		File[] files=file.listFiles();
		List<String> paths=new ArrayList<String>();
		for(int i=0;i<files.length;i++) {
			File f=files[i];
			paths.add(f.getName());
			
		}
		ActionContext ctx=ActionContext.getContext();
		ctx.getSession().put("paths", paths);
		return true;
	}
	public String execute() throws Exception{
		if(readPicture("F:\\Download\\WorkSpace\\LoveRoom\\WebContent\\pictures"))
		 return SUCCESS;
		return ERROR;
	}

}
