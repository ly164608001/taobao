package com.lxhrainy.myjz.admin.buyer.model;

import com.lxhrainy.core.common.model.BaseModel;

/**
 * 淘宝等级信息Entity
 * 
 * @author xueyunteng
 * @version 2016-07-06
 */
public class LevelInfo extends BaseModel {

	private static final long serialVersionUID = 1L;
	private String name; // 等级名称
	private Integer type; // 等级类型(1 买家等级)
	private Integer deleted; // 删除标识
	private Integer mincredit; // 等级最低积分
	private Integer maxcredit; // 等级最高积分
	private String icon; // 等级对应图标
	private Integer iconnum; // 图标数

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public Integer getMincredit() {
		return mincredit;
	}

	public void setMincredit(Integer mincredit) {
		this.mincredit = mincredit;
	}

	public Integer getMaxcredit() {
		return maxcredit;
	}

	public void setMaxcredit(Integer maxcredit) {
		this.maxcredit = maxcredit;
	}

	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

	public Integer getIconnum() {
		return iconnum;
	}

	public void setIconnum(Integer iconnum) {
		this.iconnum = iconnum;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getDeleted() {
		return deleted;
	}

	public void setDeleted(Integer deleted) {
		this.deleted = deleted;
	}

}