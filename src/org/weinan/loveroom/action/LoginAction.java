package org.weinan.loveroom.action;

import javax.servlet.http.HttpServletRequest;

import org.weinan.loveroom.action.base.UserBaseAction;
import org.weinan.loveroom.domain.User;
import org.weinan.loveroom.serviece.MingNan;

import com.opensymphony.xwork2.ActionContext;
import static org.weinan.loveroom.serviece.MingNan.*;

public class LoginAction extends UserBaseAction{

    private User user;
    private MingNan mingNan;
    private HttpServletRequest request;
    public LoginAction() {
    	System.out.println("��������");
   
    }
    public void setMingNan(MingNan mingNan) {
    	this.mingNan=mingNan;
    }

    public void setUser(User user) {
    	this.user=user;
    }
    public User getUser() {
    	return this.user;
    }

    public String execute()
    		throws Exception {
    	System.out.println("��������");
    	System.out.println(user.getUsername());
    	if(getUser()!=null) {
    		System.out.println(getUser());
    	}
    	ActionContext ctx=ActionContext.getContext();
    	if(mingNan!=null) {
    		System.out.println("��ʵ����ѽ");
    	}
    	else {
    		System.out.println(mingNan.toString());
    	}
    	if(mingNan.validLogin(getUser())==0||mingNan.validLogin(getUser())==1) {
    		System.out.println("��ֵ��");
    	}
    	int result=mingNan.validLogin(getUser());
    	if(result==LOGIN_SUC) {
    		ctx.getSession().put("user", user.getUsername());
    		addActionMessage("���ѳɹ�����ϵͳ");
    		System.out.println("��������");
    		return SUCCESS;
    	}
    	else if(result==LOGIN_FAIL) {
    		addActionMessage("�û���/���벻ƥ��");
    		System.out.println("��������");
    		return ERROR;
    	}
    //	System.out.println("${pageContext.request.contextPath}");
    	System.out.println("��������");
    	return ERROR;
    }
}
