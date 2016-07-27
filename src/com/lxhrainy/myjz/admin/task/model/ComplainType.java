package com.lxhrainy.myjz.admin.task.model;

import java.util.Date;

import com.lxhrainy.core.common.model.BaseModel;
import com.lxhrainy.core.sys.model.UserInfo;

public class ComplainType extends BaseModel{

	private static final long serialVersionUID = -3806589041244673354L;

	/**
	 * 投诉名称
	 */
	private String name;
	/**
	 * 创建人
	 */
	private UserInfo createuser;
	/**
	 * 创建时间
	 */
	private Date createtime;
	
	private Integer deleted;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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
