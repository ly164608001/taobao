package com.lxhrainy.myjz.admin.task.model;

import com.lxhrainy.core.common.model.BaseModel;

/**
 * 任务属性值Entity
 * 
 * @author xueyunteng
 * @version 2016-08-08
 */
public class TaskPropertiesValue extends BaseModel {

	private static final long serialVersionUID = 1L;
	private TaskProperties properties; // 属性ID
	private String label; // 选项名称
	private String keyvalue; // 值
	private String memo; // 备注
	private Integer isdefault; // 是否默认值

	public Integer getIsdefault() {
		return isdefault;
	}

	public void setIsdefault(Integer isdefault) {
		this.isdefault = isdefault;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public String getKeyvalue() {
		return keyvalue;
	}

	public void setKeyvalue(String keyvalue) {
		this.keyvalue = keyvalue;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	public TaskProperties getProperties() {
		return properties;
	}

	public void setProperties(TaskProperties properties) {
		this.properties = properties;
	}

}