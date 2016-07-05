package com.lxhrainy.myjz.admin.seller.model;

import java.util.Date;

import com.lxhrainy.core.common.model.BaseModel;
import com.lxhrainy.core.sys.model.UserInfo;

/**
 * 收获地址管理Entity
 * 
 * @author xueyunteng
 * @version 2016-07-05
 */
public class ReceiptAddress extends BaseModel {

	private static final long serialVersionUID = 1L;
	private UserInfo user; // 用户ID
	private Date createtime; // 创建时间
	private Date updatetime; // 修改时间
	private Label label; // 标签ID
	private String name; // 姓名
	private String phone; // 电话
	private String code; // 邮编
	private String address; // 收货地址
	private Integer status; // 状态(0：未使用；1已使用)

	public UserInfo getUser() {
		return user;
	}

	public void setUser(UserInfo user) {
		this.user = user;
	}

	public Label getLabel() {
		return label;
	}

	public void setLabel(Label label) {
		this.label = label;
	}

	public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

	public Date getUpdatetime() {
		return updatetime;
	}

	public void setUpdatetime(Date updatetime) {
		this.updatetime = updatetime;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

}