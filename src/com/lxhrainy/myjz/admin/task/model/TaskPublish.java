package com.lxhrainy.myjz.admin.task.model;

import java.util.List;

import com.lxhrainy.core.common.model.BaseModel;

/**
 * 任务发布区域属性集合实体Entity
 * 
 * @author xueyunteng
 * @version 2016-08-08
 */
public class TaskPublish extends BaseModel {

	private static final long serialVersionUID = 1L;
	private Integer type; // 展示区域
	private List<TaskProperties> propertiesList; // 所在区域的属性列表

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public List<TaskProperties> getPropertiesList() {
		return propertiesList;
	}

	public void setPropertiesList(List<TaskProperties> propertiesList) {
		this.propertiesList = propertiesList;
	}

}