package com.lxhrainy.myjz.admin.seller.model;

import java.util.Date;

import com.lxhrainy.core.common.model.BaseModel;
import com.lxhrainy.core.sys.model.UserInfo;

/**
 * 好评内容点评Entity
 * 
 * @author xueyunteng
 * @version 2016-07-05
 */
public class Praise extends BaseModel {

	private static final long serialVersionUID = 1L;
	private UserInfo user; // 用户ID
	private Date createtime; // 创建时间
	private Date updatetime; // 修改时间
	private Label label; // 标签ID
	private String content; // 好评内容
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

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

}