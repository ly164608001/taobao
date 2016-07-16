package com.lxhrainy.core.common.controller;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.servlet.ModelAndView;

import com.lxhrainy.core.interceptor.DateConvertEditor;
import com.lxhrainy.core.model.Client;
import com.lxhrainy.core.model.ClientManager;
import com.lxhrainy.core.sys.model.UserInfo;
import com.lxhrainy.core.utils.ContextHolderUtils;



public abstract class BaseController{
	
	
	public ModelAndView mv = new ModelAndView();
	
	@InitBinder
	public void initBinder(ServletRequestDataBinder binder) {
		binder.registerCustomEditor(Date.class, new DateConvertEditor());
	}

	protected UserInfo getCurrentUser() {
		HttpSession session = ContextHolderUtils.getSession();
		Client client = ClientManager.getInstance().getClient(session.getId());
		if(client == null){
			return null;
		}
		UserInfo currentUser = client.getUser();
		return currentUser;
	}
	
	protected HttpSession getSession() {
		return ContextHolderUtils.getSession();
	}
	
}