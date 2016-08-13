package com.lxhrainy.myjz.admin.trace.oe;

import java.util.Date;

import com.lxhrainy.core.common.oe.BaseVO;
import com.lxhrainy.myjz.admin.trace.model.TraceRecharge;

public class TraceRechargeVO extends BaseVO {

	private TraceRecharge model;
	private String searchkey;
	private Date beginTime;
	private Date endTime;

	public String getSearchkey() {
		return searchkey;
	}

	public void setSearchkey(String searchkey) {
		this.searchkey = searchkey;
	}

	public Date getBeginTime() {
		return beginTime;
	}

	public void setBeginTime(Date beginTime) {
		this.beginTime = beginTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public TraceRecharge getModel() {
		return model;
	}

	public void setModel(TraceRecharge model) {
		this.model = model;
	}

}
