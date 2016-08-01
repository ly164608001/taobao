package com.lxhrainy.myjz.admin.adv.model;

import java.util.Date;

import com.lxhrainy.core.common.model.BaseModel;
import com.lxhrainy.core.sys.model.UserInfo;

/**
 * 广告信息Entity
 * 
 * @author xueyunteng
 * @version 2016-08-01
 */
public class AdvertInfo extends BaseModel {

	private static final long serialVersionUID = 1L;
	private String title; // 广告标题
	private String content; // 广告内容描述
	private Date time; // 创建时间
	private String url; // 跳转url
	private String img; // 背景图片
	private Integer status; // 状态(0:未发布；1：已发布)
	private UserInfo createuser; // 创建人
	private Integer deleted; // 删除标识

	public UserInfo getCreateuser() {
		return createuser;
	}

	public void setCreateuser(UserInfo createuser) {
		this.createuser = createuser;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
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

}