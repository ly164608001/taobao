/**
 * 
 */
package com.lxhrainy.api.model;

/**
 * @author dyno
 *
 */
public class ApiParams {
	/**
	 * messageid  消息id
	 */
	private String messageid;
	/**
	 * 平台	android,ios
	 */
	private String platform; 
	/**
	 * 软件名	driver,user
	 */
	private String app; 
	/**
	 * 手机唯一编号	
	 */
	private String uuid;	
	/**
	 * 邀请人
	 */
	private String inviter;
	/**
	 * 友盟需要用到的token
	 */
	private String token;
	/**
	 * 获取个数 <br/>
	 * 	value : count
	 */
	private  String count;
	/**
	 *货源列表起始序号 <br/>
	 * 	value : offsetid
	 */
	private  String offsetid;
	/**
	 * 消息类型
	 * 0:网站公告;
	 * 1:我的通知
	 */
	private String messagetype;
	
	public String getMessageid() {
		return messageid;
	}
	public void setMessageid(String messageid) {
		this.messageid = messageid;
	}
	public String getPlatform() {
		return platform;
	}
	public void setPlatform(String platform) {
		this.platform = platform;
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
	public String getToken() {
		return token;
	}
	public void setToken(String token) {
		this.token = token;
	}
	public String getCount() {
		return count;
	}
	public void setCount(String count) {
		this.count = count;
	}
	public String getOffsetid() {
		return offsetid;
	}
	public void setOffsetid(String offsetid) {
		this.offsetid = offsetid;
	}
	public String getMessagetype() {
		return messagetype;
	}
	public void setMessagetype(String messagetype) {
		this.messagetype = messagetype;
	}
	
}
