package com.lxhrainy.myjz.admin.trace.model;

import java.util.Date;

import com.lxhrainy.core.common.model.BaseModel;
import com.lxhrainy.core.sys.model.UserInfo;

/**
 * 交易记录Entity
 * 
 * @author xueyunteng
 * @version 2016-07-31
 */
public class TraceRecord extends BaseModel {

	private static final long serialVersionUID = 1L;
	private String traceno; // 交易编号
	private UserInfo user; // 所属用户
	private Integer type; // 交易类型 1收入(任务奖金、充值) 2支出(提现、任务支出)
	private Double money; // 交易金额
	private Date tracetime; // 交易时间
	private Integer orderid; // 订单(金额增加变动关联任务)
	private String memo; // 备注

	public UserInfo getUser() {
		return user;
	}

	public void setUser(UserInfo user) {
		this.user = user;
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public Double getMoney() {
		return money;
	}

	public void setMoney(Double money) {
		this.money = money;
	}

	public Date getTracetime() {
		return tracetime;
	}

	public void setTracetime(Date tracetime) {
		this.tracetime = tracetime;
	}

	public Integer getOrderid() {
		return orderid;
	}

	public void setOrderid(Integer orderid) {
		this.orderid = orderid;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	public String getTraceno() {
		return traceno;
	}

	public void setTraceno(String traceno) {
		this.traceno = traceno;
	}

}