package com.lxhrainy.myjz.admin.task.model;


import com.lxhrainy.core.common.model.BaseModel;

/**
 * 任务套餐属性Entity
 * @author xueyunteng
 * @version 2016-08-08
 */
public class TaskComboProperties extends BaseModel {
	
	private static final long serialVersionUID = 1L;
	private Integer templateid;		// 模板ID
	private Integer propertiesid;		// 属性ID
	private Integer propertiesvalue;		// 属性值
	
	public Integer getTemplateid() {
		return templateid;
	}

	public void setTemplateid(Integer templateid) {
		this.templateid = templateid;
	}
	
	public Integer getPropertiesid() {
		return propertiesid;
	}

	public void setPropertiesid(Integer propertiesid) {
		this.propertiesid = propertiesid;
	}
	
	public Integer getPropertiesvalue() {
		return propertiesvalue;
	}

	public void setPropertiesvalue(Integer propertiesvalue) {
		this.propertiesvalue = propertiesvalue;
	}
	
}