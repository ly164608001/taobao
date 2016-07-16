package com.lxhrainy.myjz.admin.helpcenter.model;

import com.lxhrainy.core.common.model.BaseModel;

/**
 * 帮助类目信息
 * 
 * @author xueyunteng
 */
public class HelpMenu extends BaseModel {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/** 菜单名称 **/
	private String name;
	/** 上级类目 **/
	private HelpMenu parent;
	/** 所有父类目id 以，分割 **/
	private String pids;
	/** 文档类型 **/
	private Integer type;
	/** 文档链接 **/
	private String url;
	/** 排序 **/
	private Integer sort;
	/** 删除标识 **/
	private Integer deleted;

	public String getPids() {
		return pids;
	}

	public void setPids(String pids) {
		this.pids = pids;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public HelpMenu getParent() {
		return parent;
	}

	public void setParent(HelpMenu parent) {
		this.parent = parent;
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Integer getSort() {
		return sort;
	}

	public void setSort(Integer sort) {
		this.sort = sort;
	}

	public Integer getDeleted() {
		return deleted;
	}

	public void setDeleted(Integer deleted) {
		this.deleted = deleted;
	}

}