package com.lxhrainy.myjz.admin.buyer.model;

import java.util.Date;

import com.lxhrainy.core.common.model.BaseModel;
import com.lxhrainy.core.sys.model.SysArea;

/**
 * 小号收获地址Entity
 * 
 * @author xueyunteng
 * @version 2016-07-06
 */
public class AccountReceiptAddress extends BaseModel {

	private static final long serialVersionUID = 1L;
	private AccountInfo account; // 小号ID
	private String region; // 省市区(福建省,福州市,晋安区)
	private String address; // 详细地址
	private String receiptname; // 收货人姓名
	private String receiptphone; // 收货人手机号
	private Date createtime; // 创建时间
	private Date updatetime; // 修改时间
	private SysArea area; // 所选最低层次的区域id

	public SysArea getArea() {
		return area;
	}

	public void setArea(SysArea area) {
		this.area = area;
	}

	public AccountInfo getAccount() {
		return account;
	}

	public void setAccount(AccountInfo account) {
		this.account = account;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getReceiptname() {
		return receiptname;
	}

	public void setReceiptname(String receiptname) {
		this.receiptname = receiptname;
	}

	public String getReceiptphone() {
		return receiptphone;
	}

	public void setReceiptphone(String receiptphone) {
		this.receiptphone = receiptphone;
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

}