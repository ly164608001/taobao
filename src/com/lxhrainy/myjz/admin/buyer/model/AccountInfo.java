package com.lxhrainy.myjz.admin.buyer.model;

import java.util.Date;

import com.lxhrainy.core.common.model.BaseModel;
import com.lxhrainy.core.sys.model.UserInfo;

/**
 * 淘宝小号信息Entity
 * 
 * @author xueyunteng
 * @version 2016-07-06
 */
public class AccountInfo extends BaseModel {

	private static final long serialVersionUID = 1L;
	private String accountno; // 淘宝旺旺号
	private Integer identification; // 是否实名认证(0：否；1：是)
	private String credit; // 信誉等级
	private LevelInfo level; // 买号等级
	private String levelpic; // 等级截图图片地址
	private Integer receivednum; // 已接任务数
	private Integer auditstatus; // 状态(0：待审核；1通过；-1审核失败；)
	private Integer status; // 状态(1：启用；0隐藏)
	private Integer sort; // 排序
	private Date createtime; // 创建时间
	private UserInfo createuser; // 创建人
	private UserInfo audituser; // 审核人
	private Date audittime; // 审核时间

	public String getAccountno() {
		return accountno;
	}

	public void setAccountno(String accountno) {
		this.accountno = accountno;
	}

	public Integer getIdentification() {
		return identification;
	}

	public void setIdentification(Integer identification) {
		this.identification = identification;
	}

	public String getCredit() {
		return credit;
	}

	public void setCredit(String credit) {
		this.credit = credit;
	}

	public LevelInfo getLevel() {
		return level;
	}

	public void setLevel(LevelInfo level) {
		this.level = level;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String getLevelpic() {
		return levelpic;
	}

	public void setLevelpic(String levelpic) {
		this.levelpic = levelpic;
	}

	public Integer getReceivednum() {
		return receivednum;
	}

	public void setReceivednum(Integer receivednum) {
		this.receivednum = receivednum;
	}

	public Integer getAuditstatus() {
		return auditstatus;
	}

	public void setAuditstatus(Integer auditstatus) {
		this.auditstatus = auditstatus;
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

	public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

	public UserInfo getCreateuser() {
		return createuser;
	}

	public void setCreateuser(UserInfo createuser) {
		this.createuser = createuser;
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