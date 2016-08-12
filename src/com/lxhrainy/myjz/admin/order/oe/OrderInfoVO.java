package com.lxhrainy.myjz.admin.order.oe;

import com.lxhrainy.core.common.oe.BaseVO;
import com.lxhrainy.myjz.admin.buyer.model.AccountInfo;
import com.lxhrainy.myjz.admin.order.model.OrderInfo;

public class OrderInfoVO extends BaseVO {

	private OrderInfo model;
	
	private Integer offsetid;
	
	private Integer count;

	public OrderInfo getModel() {
		return model;
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
