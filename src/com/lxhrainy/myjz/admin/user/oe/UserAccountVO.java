package com.lxhrainy.myjz.admin.user.oe;

import com.lxhrainy.core.common.oe.BaseVO;
import com.lxhrainy.myjz.admin.user.model.UserAccount;

public class UserAccountVO extends BaseVO{

	private UserAccount model;

	public UserAccount getModel() {
		return model;
	}

	public void setModel(UserAccount model) {
		this.model = model;
	}

}
