package com.lxhrainy.core.common.controller;

import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;

import com.lxhrainy.core.model.Client;
import com.lxhrainy.core.model.ClientManager;
import com.lxhrainy.core.sys.model.UserInfo;
import com.lxhrainy.core.utils.ContextHolderUtils;



public abstract class BaseController {
	
	
	public ModelAndView mv = new ModelAndView();

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