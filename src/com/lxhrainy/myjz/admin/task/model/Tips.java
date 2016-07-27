package com.lxhrainy.myjz.admin.task.model;

import java.util.Date;

import com.lxhrainy.core.common.model.BaseModel;
import com.lxhrainy.core.sys.model.UserInfo;

public class Tips extends BaseModel{

	private static final long serialVersionUID = -3806589041244673354L;

	/**
	 * 提示标题
	 */
	private String title;
	/**
	 * 提示内容key
	 */
	private String keyword;
	/**
	 * 提示内容
	 */
	private String content;
	/**
	 * 创建人
	 */
	private UserInfo createuser;
	/**
	 * 创建时间
	 */
	private Date createtime;
	
	private Integer deleted;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
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

	public Integer getDeleted() {
		return deleted;
	}

	public void setDeleted(Integer deleted) {
		this.deleted = deleted;
	}
}
