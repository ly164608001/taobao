package com.lxhrainy.myjz.admin.helpcenter.model;

import com.lxhrainy.core.common.model.BaseModel;

/**
 * 帮助文档Entity
 * 
 * @author xueyunteng
 * @version 2016-06-28
 */
public class HelpDocument extends BaseModel {

	private static final long serialVersionUID = 1L;
	private String title; 	 // 文档名
	private HelpMenu menu; // 文档类目
	private String href; 	 // 文档生成页面的连接
	private Integer deleted; // 删除标识
	private Integer sort; 	 // 排序
	private Integer status;  // 状态 (显示隐藏)

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public HelpMenu getMenu() {
		return menu;
	}

	public void setMenuid(HelpMenu menu) {
		this.menu = menu;
	}

	public String getHref() {
		return href;
	}

	public void setHref(String href) {
		this.href = href;
	}

	public Integer getDeleted() {
		return deleted;
	}

	public void setDeleted(Integer deleted) {
		this.deleted = deleted;
	}

	public Integer getSort() {
		return sort;
	}

	public void setSort(Integer sort) {
		this.sort = sort;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

}