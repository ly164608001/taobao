package com.lxhrainy.myjz.admin.task.model;

import java.util.Date;

import com.lxhrainy.core.common.model.BaseModel;
import com.lxhrainy.core.sys.model.UserInfo;

/**
 * 任务套餐Entity
 * 
 * @author xueyunteng
 * @version 2016-08-08
 */
public class TaskCombo extends BaseModel {

	private static final long serialVersionUID = 1L;
	private String name; // 模板名称
	private Integer sort; // 模板排序
	private Double price; // 模板价格
	private Date createtime; // 创建时间
	private UserInfo createuser; // 创建人

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getSort() {
		return sort;
	}

	public void setSort(Integer sort) {
		this.sort = sort;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

	public UserInfo getCreateuser() {
		return createuser;
	}

	public void setCreateuser(UserInfo createuser) {
		this.createuser = createuser;
	}

}