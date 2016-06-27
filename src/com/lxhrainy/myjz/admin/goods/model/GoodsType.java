package com.lxhrainy.myjz.admin.goods.model;

import com.lxhrainy.core.common.model.BaseModel;

/**
 * 商品类目信息
 * 
 * @author xueyunteng
 */
public class GoodsType extends BaseModel {

	private static final long serialVersionUID = 1L;
	/** 商品类目名称 **/
	private String typename;
	/** 上级类目ID **/
	private GoodsType parent;
	/** 状态(隐藏/显示) **/
	private Integer status;
	/** 排序 **/
	private Integer sort;
	/** 删除标识 **/
	private Integer deleted;

	public String getTypename() {
		return typename;
	}

	public void setTypename(String typename) {
		this.typename = typename;
	}

	public GoodsType getParent() {
		return parent;
	}

	public void setParent(GoodsType parent) {
		this.parent = parent;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
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