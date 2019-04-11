package org.weinan.loveroom.action;

import java.util.ArrayList;
import java.util.List;

import org.weinan.loveroom.serviece.MingNan;
import org.weinan.loveroom.vo.LeavingMessageBean;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ViewMessageAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private MingNan mingNan;
	public void setMingNan(MingNan mingNan) {
		this.mingNan=mingNan;
	}
	public String execute() throws Exception {
		ActionContext ctx=ActionContext.getContext();
		List<LeavingMessageBean> data=new ArrayList<LeavingMessageBean>();
		data=mingNan.getAllLeavingMessage();
		ctx.getSession().put("lmss", data);
		return SUCCESS;
	}

}
