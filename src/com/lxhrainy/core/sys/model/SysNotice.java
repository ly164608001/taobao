package com.lxhrainy.core.sys.model;

import java.util.Date;

import com.lxhrainy.core.common.model.BaseModel;
/**
 * sys_notice
 * 消息
 * @author Administrator
 *
 */
public class SysNotice extends BaseModel
{
	private static final long serialVersionUID = -6204157405024392L;
	/**消息内容**/
	private String content;
	/**消息类型**/
	private Integer type;
	/**接收用户**/
	private UserInfo user;
	/**来源**/
	private Integer source;
	/**消息标题**/
	private String title;
	/**消息封面**/
	private String img;
	/**消息跳转地址**/
	private String url;
	/**备注**/
	private String memo;
	/**创建者**/
	private UserInfo createuser;
	/**消息发送时间**/
	private Date createtime;
	/**删除标记**/
	private Integer deleted;
	/**状态**/
	private Integer status;
	
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public UserInfo getUser() {
		return user;
	}
	public void setUser(UserInfo user) {
		this.user = user;
	}
	public Integer getSource() {
		return source;
	}
	public void setSource(Integer source) {
		this.source = source;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
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
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}

}