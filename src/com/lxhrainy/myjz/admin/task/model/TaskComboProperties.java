package com.lxhrainy.myjz.admin.task.model;

import com.lxhrainy.core.common.model.BaseModel;

/**
 * 任务套餐属性Entity
 * 
 * @author xueyunteng
 * @version 2016-08-08
 */
public class TaskComboProperties extends BaseModel {

	private static final long serialVersionUID = 1L;
	private Integer templateid; // 模板ID
	private TaskProperties properties; // 属性ID
	private TaskPropertiesValue propertiesvalue; // 属性值

	public Integer getTemplateid() {
		return templateid;
	}

	public void setTemplateid(Integer templateid) {
		this.templateid = templateid;
	}

	public TaskProperties getProperties() {
		return properties;
	}

	public void setProperties(TaskProperties properties) {
		this.properties = properties;
	}

	public TaskPropertiesValue getPropertiesvalue() {
		return propertiesvalue;
	}

	public void setPropertiesvalue(TaskPropertiesValue propertiesvalue) {
		this.propertiesvalue = propertiesvalue;
	}

}