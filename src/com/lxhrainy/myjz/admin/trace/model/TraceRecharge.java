package com.lxhrainy.myjz.admin.trace.model;

import java.util.Date;

import com.lxhrainy.core.common.model.BaseModel;
import com.lxhrainy.core.sys.model.UserInfo;

/**
 * 交易充值Entity
 * 
 * @author xueyunteng
 * @version 2016-08-08
 */
public class TraceRecharge extends BaseModel {

	private static final long serialVersionUID = 1L;
	private String payaccount; // 充值账户
	private String payno; // 充值交易号
	private Date createtime; // 充值时间
	private UserInfo createuser; // 充值人
	private UserInfo handleuser; // 充值人
	private Date handletime; // 充值时间
	private Double money; // 充值金额
	private Integer status; // 状态
	private String memo; // 充值说明
	private Integer channel; // 充值方式

	public String getPayaccount() {
		return payaccount;
	}

	public void setPayaccount(String payaccount) {
		this.payaccount = payaccount;
	}

	public String getPayno() {
		return payno;
	}

	public void setPayno(String payno) {
		this.payno = payno;
	}

	public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

	public UserInfo getCreateuser() {
		return createuser;
	}

	public void setCreateuser(UserInfo createuser) {
		this.createuser = createuser;
	}

	public UserInfo getHandleuser() {
		return handleuser;
	}

	public void setHandleuser(UserInfo handleuser) {
		this.handleuser = handleuser;
	}

	public Date getHandletime() {
		return handletime;
	}

	public void setHandletime(Date handletime) {
		this.handletime = handletime;
	}

	public Double getMoney() {
		return money;
	}

	public void setMoney(Double money) {
		this.money = money;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	public Integer getChannel() {
		return channel;
	}

	public void setChannel(Integer channel) {
		this.channel = channel;
	}

}