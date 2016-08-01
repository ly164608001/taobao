package com.lxhrainy.myjz.admin.trace.model;

import java.util.Date;

import com.lxhrainy.core.common.model.BaseModel;
import com.lxhrainy.core.sys.model.UserInfo;

/**
 * 交易提现Entity
 * 
 * @author xueyunteng
 * @version 2016-07-31
 */
public class TraceWithdrawls extends BaseModel {

	private static final long serialVersionUID = 1L;
	private UserInfo user; // 提现人
	private Double money; // 提现金额
	private Double commission; // 手续费
	private Double arrivalmoney; // 到账金额
	private String withdrawalsaccount; // 提现账户
	private Integer status; // 提现状态
	private Date createtime; // 提现时间
	private Date finishtime; // 提现转账完成时间
	private String withdrawalno; // 交易提现编号
	private Integer type; // 交易提现类型

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

	public Double getCommission() {
		return commission;
	}

	public void setCommission(Double commission) {
		this.commission = commission;
	}

	public Double getArrivalmoney() {
		return arrivalmoney;
	}

	public void setArrivalmoney(Double arrivalmoney) {
		this.arrivalmoney = arrivalmoney;
	}

	public String getWithdrawalsaccount() {
		return withdrawalsaccount;
	}

	public void setWithdrawalsaccount(String withdrawalsaccount) {
		this.withdrawalsaccount = withdrawalsaccount;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

	public Date getFinishtime() {
		return finishtime;
	}

	public void setFinishtime(Date finishtime) {
		this.finishtime = finishtime;
	}

	public String getWithdrawalno() {
		return withdrawalno;
	}

	public void setWithdrawalno(String withdrawalno) {
		this.withdrawalno = withdrawalno;
	}

	public UserInfo getUser() {
		return user;
	}

	public void setUser(UserInfo user) {
		this.user = user;
	}

}