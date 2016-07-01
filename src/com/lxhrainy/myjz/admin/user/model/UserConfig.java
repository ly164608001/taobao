package com.lxhrainy.myjz.admin.user.model;

import com.lxhrainy.core.common.model.BaseModel;
import com.lxhrainy.core.sys.model.UserInfo;
/**
 * 用户系统设置
 * @author Administrator
 *
 */
public class UserConfig extends BaseModel
{
	/**
	*/ 
	private static final long serialVersionUID = 1L;
	/**账号ID**/
	private UserInfo user;
	/**消息通知设置(NO：否；YES：是)**/
	private String message;
	/**消息通知设置(NO：否；YES：是)**/
	private String autoaudit;
	public UserInfo getUser() {
		return user;
	}
	public void setUser(UserInfo user) {
		this.user = user;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getAutoaudit() {
		return autoaudit;
	}
	public void setAutoaudit(String autoaudit) {
		this.autoaudit = autoaudit;
	}

}