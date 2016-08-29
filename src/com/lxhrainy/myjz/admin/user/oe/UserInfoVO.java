package com.lxhrainy.myjz.admin.user.oe;

import com.lxhrainy.core.common.oe.BaseVO;
import com.lxhrainy.core.sys.model.UserInfo;

public class UserInfoVO extends BaseVO {

	private UserInfo model;
	private Integer showAdmin; // 是否显示管理员

	public Integer getShowAdmin() {
		return showAdmin;
	}

	public void setShowAdmin(Integer showAdmin) {
		this.showAdmin = showAdmin;
	}

	public UserInfo getModel() {
		return model;
	}

	public void setModel(UserInfo model) {
		this.model = model;
	}

}
