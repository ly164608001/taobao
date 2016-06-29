package com.lxhrainy.core.oe;

import com.lxhrainy.core.common.oe.BaseVO;
import com.lxhrainy.core.sys.model.SysNotice;

public class SysNoticeVO extends BaseVO{

	private SysNotice model;
	
	private Integer offsetid;
	
	private Integer count;
	
	private Integer messageid;

	public SysNotice getModel() {
		return model;
	}

	public void setModel(SysNotice model) {
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

	public Integer getMessageid() {
		return messageid;
	}

	public void setMessageid(Integer messageid) {
		this.messageid = messageid;
	}

}
