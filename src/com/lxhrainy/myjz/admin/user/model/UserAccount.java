package com.lxhrainy.myjz.admin.user.model;

import java.util.Date;

import com.lxhrainy.core.common.model.BaseModel;
import com.lxhrainy.core.sys.model.UserInfo;

/**
 * 用户银行卡Entity
 * 
 * @author xueyunteng
 * @version 2016-08-01
 */
public class UserAccount extends BaseModel {

	private static final long serialVersionUID = 1L;
	private UserInfo user; // 用户ID
	private Date createtime; // 创建时间
	private Integer bankid; // 所属银行
	private String accountname; // 银行开户名
	private String accountno; // 银行账号
	private String region; // 开户行(省/市)
	private Integer regionid; // 开户行(省/市id)
	private String bankname; // 支行名称

	public Integer getRegionid() {
		return regionid;
	}

	public void setRegionid(Integer regionid) {
		this.regionid = regionid;
	}

	public UserInfo getUser() {
		return user;
	}

	public void setUser(UserInfo user) {
		this.user = user;
	}

	public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

	public Integer getBankid() {
		return bankid;
	}

	public void setBankid(Integer bankid) {
		this.bankid = bankid;
	}

	public String getAccountname() {
		return accountname;
	}

	public void setAccountname(String accountname) {
		this.accountname = accountname;
	}

	public String getAccountno() {
		return accountno;
	}

	public void setAccountno(String accountno) {
		this.accountno = accountno;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public String getBankname() {
		return bankname;
	}

	public void setBankname(String bankname) {
		this.bankname = bankname;
	}

}