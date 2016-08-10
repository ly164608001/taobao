package com.lxhrainy.myjz.admin.order.model;

import com.lxhrainy.core.common.model.BaseModel;
import com.lxhrainy.myjz.admin.task.model.TaskPropertiesValue;

/**
 * 订单其他信息Entity
 * 
 * @author xueyunteng
 * @version 2016-08-08
 */
public class OrderOtherProperties extends BaseModel {

	private static final long serialVersionUID = 1L;
	private OrderInfo order; // 订单ID
	private TaskPropertiesValue propertiesval; // 属性值ID
	private String propertiesvalue; // 属性值

	public OrderInfo getOrder() {
		return order;
	}

	public void setOrder(OrderInfo order) {
		this.order = order;
	}

	public TaskPropertiesValue getPropertiesval() {
		return propertiesval;
	}

	public void setPropertiesval(TaskPropertiesValue propertiesval) {
		this.propertiesval = propertiesval;
	}

	public String getPropertiesvalue() {
		return propertiesvalue;
	}

	public void setPropertiesvalue(String propertiesvalue) {
		this.propertiesvalue = propertiesvalue;
	}

}