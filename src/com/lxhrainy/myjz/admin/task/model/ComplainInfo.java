package com.lxhrainy.myjz.admin.task.model;

import java.util.Date;

import com.lxhrainy.core.common.model.BaseModel;
import com.lxhrainy.core.sys.model.UserInfo;
import com.lxhrainy.myjz.admin.order.model.OrderInfo;

public class ComplainInfo extends BaseModel{

	private static final long serialVersionUID = -3806589041244673354L;
	/**
	 * 卖家
	 */
	private UserInfo seller;
	/**
	 * 申诉用户
	 */
	private UserInfo createuser;
	/**
	 * 申诉时间
	 */
	private Date createtime;
	/**
	 * 任务
	 */
	private OrderInfo task;
	/**
	 * 申诉类型
	 */
	private ComplainType complainType;
	/**
	 * 申诉内容
	 */
	private String content;
	/**
	 * 申诉证据图片(最多三张,以“,”隔开保存)
	 */
	private String proveimage;
	/**
	 * 申诉状态
	 */
	private Integer status;
	/**
	 * 审核人
	 */
	private UserInfo audituser;
	/**
	 * 审核时间
	 */
	private Date audittime;
	
	public UserInfo getSeller() {
		return seller;
	}
	public void setSeller(UserInfo seller) {
		this.seller = seller;
	}
	public UserInfo getCreateuser() {
		return createuser;
	}
	public void setCreateuser(UserInfo createuser) {
		this.createuser = createuser;
	}
	public Date getCreatetime() {
		return createtime;
	}
	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}
	public OrderInfo getTask() {
		return task;
	}
	public void setTask(OrderInfo task) {
		this.task = task;
	}
	public ComplainType getComplainType() {
		return complainType;
	}
	public void setComplainType(ComplainType complainType) {
		this.complainType = complainType;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getProveimage() {
		return proveimage;
	}
	public void setProveimage(String proveimage) {
		this.proveimage = proveimage;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public UserInfo getAudituser() {
		return audituser;
	}
	public void setAudituser(UserInfo audituser) {
		this.audituser = audituser;
	}
	public Date getAudittime() {
		return audittime;
	}
	public void setAudittime(Date audittime) {
		this.audittime = audittime;
	}
}
