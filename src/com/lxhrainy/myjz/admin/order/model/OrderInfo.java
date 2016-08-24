package com.lxhrainy.myjz.admin.order.model;

import java.util.Date;

import com.lxhrainy.core.common.model.BaseModel;
import com.lxhrainy.core.sys.model.UserInfo;
import com.lxhrainy.myjz.admin.seller.model.Shop;

/**
 * 订单信息Entity
 * 
 * @author xueyunteng
 * @version 2016-08-08
 */
public class OrderInfo extends BaseModel {

	private static final long serialVersionUID = 1L;
	private String orderno; // 订单编号
	private Date createtime; // 订单创建时间
	private Date paytime; // 付款时间
	private UserInfo createuser; // 创建人
	private Date publictime; // 任务发布时间
	private Integer istime; // 是否定时发布
	private Integer status; // 订单状态
	private Double bond; // 担保金
	private UserInfo receiveruser; // 接单人
	private Date receivetime; // 接单时间
	private Shop shop; // 店铺ID
	private Integer searchroad; // 搜索入口
	private String type; // 手机/电脑单类型
	private Integer targetsubtype;// 任务目标副类型(0:常规单;1:流量单;)

	public Date getPaytime() {
		return paytime;
	}

	public void setPaytime(Date paytime) {
		this.paytime = paytime;
	}

	public UserInfo getCreateuser() {
		return createuser;
	}

	public void setCreateuser(UserInfo createuser) {
		this.createuser = createuser;
	}

	public UserInfo getReceiveruser() {
		return receiveruser;
	}

	public void setReceiveruser(UserInfo receiveruser) {
		this.receiveruser = receiveruser;
	}

	public Shop getShop() {
		return shop;
	}

	public void setShop(Shop shop) {
		this.shop = shop;
	}

	public String getOrderno() {
		return orderno;
	}

	public void setOrderno(String orderno) {
		this.orderno = orderno;
	}

	public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

	public Date getPublictime() {
		return publictime;
	}

	public void setPublictime(Date publictime) {
		this.publictime = publictime;
	}

	public Integer getIstime() {
		return istime;
	}

	public void setIstime(Integer istime) {
		this.istime = istime;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Double getBond() {
		return bond;
	}

	public void setBond(Double bond) {
		this.bond = bond;
	}

	public Date getReceivetime() {
		return receivetime;
	}

	public void setReceivetime(Date receivetime) {
		this.receivetime = receivetime;
	}

	public Integer getSearchroad() {
		return searchroad;
	}

	public void setSearchroad(Integer searchroad) {
		this.searchroad = searchroad;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Integer getTargetsubtype() {
		return targetsubtype;
	}

	public void setTargetsubtype(Integer targetsubtype) {
		this.targetsubtype = targetsubtype;
	}

}