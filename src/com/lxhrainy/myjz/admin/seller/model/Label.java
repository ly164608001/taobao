package com.lxhrainy.myjz.admin.seller.model;


import java.util.Date;

import com.lxhrainy.core.common.model.BaseModel;
import com.lxhrainy.core.sys.model.UserInfo;


/**
 * 标签管理Entity
 * @author xueyunteng
 * @version 2016-07-04
 */
public class Label extends BaseModel {
	
	private static final long serialVersionUID = 1L;
	private String name;		// 标签名称
	private Integer type;		// 类型(1：收货地址；2：好评内容)
	private Integer sort;		// 排序
	private UserInfo user;		// 用户ID
	private Date createtime;	// 创建时间

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}
	
	public Integer getSort() {
		return sort;
	}

	public void setSort(Integer sort) {
		this.sort = sort;
	}
	
	
	public UserInfo getUser() {
		return user;
	}

	public void setUser(UserInfo user) {
		this.user = user;
	}

	public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}
	
}