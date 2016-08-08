package com.lxhrainy.myjz.admin.order;

import com.lxhrainy.core.common.model.BaseModel;
import com.lxhrainy.core.sys.model.UserInfo;

/**
 * 订单基本属性Entity
 * 
 * @author xueyunteng
 * @version 2016-08-08
 */
public class OrderBasicProperties extends BaseModel {

	private static final long serialVersionUID = 1L;
	private UserInfo order; // 订单ID

	public UserInfo getOrder() {
		return order;
	}

	public void setOrder(UserInfo order) {
		this.order = order;
	}

}