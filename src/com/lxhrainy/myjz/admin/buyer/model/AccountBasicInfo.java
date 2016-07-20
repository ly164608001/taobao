package com.lxhrainy.myjz.admin.buyer.model;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.lxhrainy.core.common.model.BaseModel;


/**
 * 小号基础信息Entity
 * @author xueyunteng
 * @version 2016-07-06
 */
public class AccountBasicInfo extends BaseModel {
	
	private static final long serialVersionUID = 1L;
	private AccountInfo account; // accountid
	private Integer sex;		// 性别
	private Date birthday;		// 生日
	
	public AccountInfo getAccount() {
		return account;
	}

	public void setAccount(AccountInfo account) {
		this.account = account;
	}

	public Integer getSex() {
		return sex;
	}

	public void setSex(Integer sex) {
		this.sex = sex;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	
}