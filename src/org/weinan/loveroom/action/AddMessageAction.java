package org.weinan.loveroom.action;

import org.weinan.loveroom.action.base.UserBaseAction;
import org.weinan.loveroom.domain.LeavingMessage;

import com.opensymphony.xwork2.ActionContext;
import org.weinan.loveroom.serviceImpl.*;
import org.weinan.loveroom.serviece.MingNan;

public class AddMessageAction extends UserBaseAction{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private LeavingMessage lmss;
	private MingNan mingNan;
	public void setMingNan(MingNan mingNan) {
		this.mingNan=mingNan;
	}
	public LeavingMessage getLmss() {
		return lmss;
	}
	public void setLmss(LeavingMessage lmss) {
		this.lmss=lmss;
	}
	public String execute() throws Exception{
		System.out.println("还没点就到这来了");
		ActionContext ctx=ActionContext.getContext();
		String username=(String)ctx.getSession().get("user");
		System.out.println(lmss.getComment());
		mingNan.addLeavingMessage(lmss, username);
		addActionMessage("新增留言成功!");
		return SUCCESS;
	}

}
