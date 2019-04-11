package org.weinan.loveroom.action.base;

import org.weinan.loveroom.serviece.MingNan;

import com.opensymphony.xwork2.ActionSupport;

public class UserBaseAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	protected  MingNan mingNan;
	public void setMingNan(MingNan mingNan) {
		this.mingNan=mingNan;
	}

}
