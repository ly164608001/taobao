package com.lxhrainy.myjz.admin.user.oe;


import com.lxhrainy.core.common.oe.BaseVO;
import com.lxhrainy.myjz.admin.user.model.UserAuthInfo;
public class UserAuthInfoVO extends BaseVO
{
	private UserAuthInfo model;
	
	private String username;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public UserAuthInfo getModel() {
		return model;
	}

	public void setModel(UserAuthInfo model) {
		this.model = model;
	}

}