package com.lxhrainy.myjz.admin.user.oe;

import com.lxhrainy.core.common.oe.BaseVO;
import com.lxhrainy.myjz.admin.user.model.UserAccount;

public class UserAccountVO extends BaseVO{

	private UserAccount model;
	
	private Integer offsetid;
	
	private Integer count;

	public UserAccount getModel() {
		return model;
	}

	public void setModel(UserAccount model) {
		this.model = model;
	}

	public Integer getOffsetid() {
		return offsetid;
	}

	public void setOffsetid(Integer offsetid) {
		this.offsetid = offsetid;
	}

	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

}
