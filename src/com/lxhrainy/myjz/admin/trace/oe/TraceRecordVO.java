package com.lxhrainy.myjz.admin.trace.oe;

import java.util.Date;

import com.lxhrainy.core.common.oe.BaseVO;
import com.lxhrainy.myjz.admin.trace.model.TraceRecord;

public class TraceRecordVO extends BaseVO {

	private TraceRecord model;
	private Date beginTime;
	private Date endTime;

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

	public TraceRecord getModel() {
		return model;
	}

	public void setModel(TraceRecord model) {
		this.model = model;
	}

}
