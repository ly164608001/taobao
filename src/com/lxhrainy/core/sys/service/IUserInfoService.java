package com.lxhrainy.core.sys.service;

import com.lxhrainy.core.common.service.IBaseService;
import com.lxhrainy.core.sys.model.UserInfo;

/**
 * 用户服务接口
 * @author xueyunteng
 * @date 2016-05-23
 */
public interface IUserInfoService extends IBaseService<UserInfo, Integer>{

	/**
	 * 用户登录
	 * @param type 
	 * @return 存在返回用户信息 不存在返回null
	 */
	UserInfo checkUserLogin(String username,String password, Integer channel);
	
	/**
	 * 启用用户
	 */
	int ableUser(int id);
	
	/**
	 * 禁用用户
	 */
	int disableUser(int id);
	
	/**
	 * 重置用户密码
	 */
	int resetPassword(int id);

	/**
	 * 修改密码
	 */
	int modifyPassword(int userid, String oldpassword, String password);

	/**
	 * @Title: registerUser 
	 * @Description: 注册用户
	 * @param @param user
	 * @param @return    设定文件 
	 * @return int    返回类型 
	 * @throws
	 */
	int registerMember(UserInfo user);
	
	/**
	 * @Description:根据用户名获取用户
	 * @param username
	 * @param channel
	 * @return
	 */
	UserInfo getByUsername(String username);
	
	/**
	 * 更新用户个人信息
	 * @param userInfo
	 * @return
	 */
	void updateUserInfo(UserInfo userInfo);

	/**
	 * @Title: resetPwdFormUser 
	 * @Description: 用户找回密码操作
	 * @param user    设定文件 
	 * @return void    返回类型 
	 * @throws
	 */
	int resetPwdFormUser(UserInfo user);
	
	/**
	 * 获取用户个人资料
	 * @param userid
	 * @return
	 */
	UserInfo getPersonInfo(int userid);

	/**
	 * 判断用户名是否存在
	 * @param username
	 * @param type
	 * @return
	 */
	boolean isExistUserName(String username, Integer type);
}
