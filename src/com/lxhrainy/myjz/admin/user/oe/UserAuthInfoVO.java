package com.lxhrainy.myjz.admin.user.oe;


import com.lxhrainy.core.common.oe.BaseVO;
import com.lxhrainy.myjz.admin.user.model.UserAuthInfo;
public class UserAuthInfoVO extends BaseVO
{
	private UserAuthInfo model;

	public UserAuthInfo getModel() {
		return model;
	}

	public void setModel(UserAuthInfo model) {
		this.model = model;
	}

}