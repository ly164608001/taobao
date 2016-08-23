package com.lxhrainy.myjz.admin.task.oe;

import com.lxhrainy.core.common.oe.BaseVO;
import com.lxhrainy.myjz.admin.task.model.ComplainInfo;

public class ComplainInfoVO extends BaseVO {

	private ComplainInfo model;
	
	private Integer offsetid;
	
	private Integer count;

	public ComplainInfo getModel() {
		return model;
	}

	public void setModel(ComplainInfo model) {
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
