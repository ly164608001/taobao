package com.lxhrainy.myjz.admin.trace.oe;

import com.lxhrainy.core.common.oe.BaseVO;
import com.lxhrainy.myjz.admin.trace.model.TraceWithdrawls;

public class TraceWithdrawlsVO extends BaseVO{

	private TraceWithdrawls model;
	
	private Integer offsetid;
	
	private Integer count;
	
	public TraceWithdrawls getModel() {
		return model;
	}

	public void setModel(TraceWithdrawls model) {
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
