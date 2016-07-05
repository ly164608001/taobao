package com.lxhrainy.myjz.admin.seller.model;

import java.util.Date;

import com.lxhrainy.core.common.model.BaseModel;
import com.lxhrainy.core.sys.model.UserInfo;
import com.lxhrainy.myjz.admin.goods.model.GoodsType;

/**
 * 店铺管理Entity
 * 
 * @author xueyunteng
 * @version 2016-07-04
 */
public class Shop extends BaseModel {

	private static final long serialVersionUID = 1L;
	private String name; // 店铺名称
	private Integer type; // 店铺类型 1 淘宝
	private String manager; // 掌柜号/1688企业名
	private String indexurl; // 店铺首页地址
	private Integer alltasknum; // 总发布任务
	private Integer status; // 状态 (是否启用)
	private UserInfo user; // 用户ID
	private Date createtime; // 创建时间
	private GoodsType goodsType; // 店铺品类(商品类目)

	public GoodsType getGoodsType() {
		return goodsType;
	}

	public void setGoodsType(GoodsType goodsType) {
		this.goodsType = goodsType;
	}

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

	public String getManager() {
		return manager;
	}

	public void setManager(String manager) {
		this.manager = manager;
	}

	public String getIndexurl() {
		return indexurl;
	}

	public void setIndexurl(String indexurl) {
		this.indexurl = indexurl;
	}

	public Integer getAlltasknum() {
		return alltasknum;
	}

	public void setAlltasknum(Integer alltasknum) {
		this.alltasknum = alltasknum;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
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