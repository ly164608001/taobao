package com.lxhrainy.myjz.admin.basic.model;

import com.lxhrainy.core.common.model.BaseModel;

/**
 * 银行基础信息Entity
 * 
 * @author xueyunteng
 * @version 2016-07-06
 */
public class BasicBank extends BaseModel {

	private static final long serialVersionUID = 1L;
	private String bankname;

	public String getBankname() {
		return bankname;
	}

	public void setBankname(String bankname) {
		this.bankname = bankname;
	}

}