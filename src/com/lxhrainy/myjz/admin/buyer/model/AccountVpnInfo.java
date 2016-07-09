package com.lxhrainy.myjz.admin.buyer.model;


import java.util.Date;
import com.lxhrainy.core.common.model.BaseModel;

/**
 * 小号vpn信息Entity
 * 
 * @author xueyunteng
 * @version 2016-07-06
 */
public class AccountVpnInfo extends BaseModel {

	private static final long serialVersionUID = 1L;
	private AccountInfo account; // 小号ID
	private String password; // 旺旺号登录密码
	private String alipayaccount; // 旺旺号绑定的支付宝账号
	private String paypassword; // 旺旺号绑定的支付宝支付密码
	private String phone; // 旺旺号绑定的手机卡
	private String name; // VPN名称
	private String line; // VPN接点/线路
	private String loginip; // 旺旺号登录Ip
	private String region; // 旺旺号登录省市区
	private String computername; // 旺旺号/VPN所在电脑名称
	private String mcs; // 旺旺号/VPN所在电脑MAC
	private String address; // 旺旺号登录详细地址
	private String memo; // 备注
	private Date createtime; // 创建时间
	private Date updatetime; // 修改时间

	public AccountInfo getAccount() {
		return account;
	}

	public void setAccount(AccountInfo account) {
		this.account = account;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAlipayaccount() {
		return alipayaccount;
	}

	public void setAlipayaccount(String alipayaccount) {
		this.alipayaccount = alipayaccount;
	}

	public String getPaypassword() {
		return paypassword;
	}

	public void setPaypassword(String paypassword) {
		this.paypassword = paypassword;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLine() {
		return line;
	}

	public void setLine(String line) {
		this.line = line;
	}

	public String getLoginip() {
		return loginip;
	}

	public void setLoginip(String loginip) {
		this.loginip = loginip;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public String getComputername() {
		return computername;
	}

	public void setComputername(String computername) {
		this.computername = computername;
	}

	public String getMcs() {
		return mcs;
	}

	public void setMcs(String mcs) {
		this.mcs = mcs;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

	public Date getUpdatetime() {
		return updatetime;
	}

	public void setUpdatetime(Date updatetime) {
		this.updatetime = updatetime;
	}

}