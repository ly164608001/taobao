package com.lxhrainy.core.model;

import java.util.List;
import java.util.Map;

import com.lxhrainy.core.sys.model.SysMenu;
import com.lxhrainy.core.sys.model.UserInfo;

/**
 * @ClassName: Client 
 * @Description: 在线用户对象
 * @author lxhrainy 
 * @date 2016年5月19日 下午2:12:17
 */
public class Client implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	
	private UserInfo user;
	private Map<String, SysMenu> frontFunctions;
	private Map<Integer, List<SysMenu>> frontFunctionMap; 
	
	
	/**
	 * 用户IP
	 */
	private java.lang.String ip;
	/**
	 *登录时间
	 */
	private java.util.Date logindatetime;


	public java.lang.String getIp() {
		return ip;
	}

	public void setIp(java.lang.String ip) {
		this.ip = ip;
	}

	public java.util.Date getLogindatetime() {
		return logindatetime;
	}

	public void setLogindatetime(java.util.Date logindatetime) {
		this.logindatetime = logindatetime;
	}

	public UserInfo getUser() {
		return user;
	}

	public void setUser(UserInfo user) {
		this.user = user;
	}

	public Map<String, SysMenu> getFrontFunctions() {
		return frontFunctions;
	}

	public void setFrontFunctions(Map<String, SysMenu> frontFunctions) {
		this.frontFunctions = frontFunctions;
	}

	public Map<Integer, List<SysMenu>> getFrontFunctionMap() {
		return frontFunctionMap;
	}

	public void setFrontFunctionMap(Map<Integer, List<SysMenu>> frontFunctionMap) {
		this.frontFunctionMap = frontFunctionMap;
	}

}
