package com.lxhrainy.myjz.admin.buyer.oe;

import com.lxhrainy.core.common.oe.BaseVO;
import com.lxhrainy.myjz.admin.buyer.model.AccountInfo;

public class AccountVO extends BaseVO {

	private AccountInfo model;
	
	private Integer offsetid;
	
	private Integer count;

	public AccountInfo getModel() {
		return model;
	}

	public void setModel(AccountInfo model) {
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
