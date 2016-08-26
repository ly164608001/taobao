package com.lxhrainy.myjz.admin.order.oe;

import java.util.Date;

import com.lxhrainy.core.common.oe.BaseVO;
import com.lxhrainy.myjz.admin.order.model.OrderInfo;

public class OrderInfoVO extends BaseVO {

	private OrderInfo model;

	private Integer offsetid;

	private Integer count;

	private Integer status; // 查询使用状态
	private Date publicBegin;
	private Date publicEnd;

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public OrderInfo getModel() {
		return model;
	}

	public Date getPublicBegin() {
		return publicBegin;
	}

	public void setPublicBegin(Date publicBegin) {
		this.publicBegin = publicBegin;
	}

	public Date getPublicEnd() {
		return publicEnd;
	}

	public void setPublicEnd(Date publicEnd) {
		this.publicEnd = publicEnd;
	}

	public void setModel(OrderInfo model) {
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
