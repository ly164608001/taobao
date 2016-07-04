package com.lxhrainy.core.sys.model;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.lxhrainy.core.common.model.BaseModel;
import com.lxhrainy.myjz.admin.user.model.UserDetailInfo;

/**
 * 用户信息Entity
 * 
 * @author xueyunteng
 * @date 2016-04-15
 * @version 1.0
 */
public class UserInfo extends BaseModel {

	private static final long serialVersionUID = 1L;
	private String username; // 用户名(登录账号)
	private String icon; // 用户头像
	private String password; // MD5加密后的密码
	private String phone; // 联系电话
	private Date registertime; // 注册时间
	private Date lastlogintime; // 最后登录时间
	private String loginip; // 上次登录IP
	private Integer type; // 账号类型
	private Integer status; // 状态
	private Integer deleted; // 删除标识
	private Integer channel; // 来源
	private String inviter; //邀请者
	private UserDetailInfo detailInfo; // 用户详细信息
	
	private String app;
	
	private String uuid;

	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

	public UserDetailInfo getDetailInfo() {
		return detailInfo;
	}

	public void setDetailInfo(UserDetailInfo detailInfo) {
		this.detailInfo = detailInfo;
	}

	public UserInfo() {
		super();
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	public Date getRegistertime() {
		return registertime;
	}

	public void setRegistertime(Date registertime) {
		this.registertime = registertime;
	}

	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	public Date getLastlogintime() {
		return lastlogintime;
	}

	public void setLastlogintime(Date lastlogintime) {
		this.lastlogintime = lastlogintime;
	}

	public String getLoginip() {
		return loginip;
	}

	public void setLoginip(String loginip) {
		this.loginip = loginip;
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Integer getDeleted() {
		return deleted;
	}

	public void setDeleted(Integer deleted) {
		this.deleted = deleted;
	}

	public Integer getChannel() {
		return channel;
	}

	public void setChannel(Integer channel) {
		this.channel = channel;
	}

	public String getApp() {
		return app;
	}

	public void setApp(String app) {
		this.app = app;
	}

	public String getUuid() {
		return uuid;
	}

	public void setUuid(String uuid) {
		this.uuid = uuid;
	}

	public String getInviter() {
		return inviter;
	}

	public void setInviter(String inviter) {
		this.inviter = inviter;
	}

}