package com.lxhrainy.core.sys.service;

import java.util.List;

import com.lxhrainy.core.common.service.IBaseService;
import com.lxhrainy.core.sys.model.UserInfo;
import com.lxhrainy.myjz.admin.user.oe.UserInfoVO;

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
	 * 重置用户密码
	 */
	int resetPassword(int id);

	/**
	 * 修改密码
	 */
	int modifyPassword(int userid, String oldpassword, String password);

	/**
	 * @Title: registerUser 
	 * @Description: 前台用户注册
	 * @param @param user
	 * @param @return    设定文件 
	 * @return int     1 成功
	 * 					-2 用户名已存在
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
	int updateUserInfo(UserInfo userInfo);

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
	 * @Title: getMemberListByPage 
	 * @Description: 获取会员信息列表
	 * @param vo
	 * @return    设定文件 
	 * @return List<UserInfo>    返回类型 
	 * @throws
	 */
	List<UserInfo> getMemberListByPage(UserInfoVO vo);
	/**
	 * @Title: getMemberCountByCondition 
	 * @Description:获取会员总数
	 * @param vo
	 * @return    设定文件 
	 * @return int    返回类型 
	 * @throws
	 */
	int getMemberCountByCondition(UserInfoVO vo);

	/**
	 * @Title: updateUserStatus 
	 * @Description: 更新用户状态
	 * @param id
	 * @return    设定文件 
	 * @return boolean    返回类型 
	 * @throws
	 */
	boolean updateUserStatus(UserInfo user);

	/**
	 * @Title: getEstateListByPage 
	 * @Description:获取房地产商账户信息列表
	 * @param vo
	 * @return    设定文件 
	 * @return List<UserInfo>    返回类型 
	 * @throws
	 */
	List<UserInfo> getEstateListByPage(UserInfoVO vo);
	/**
	 * @Title: getEstateCountByCondition 
	 * @Description:获取房地产商总数
	 * @param vo
	 * @return    设定文件 
	 * @return int    返回类型 
	 * @throws
	 */
	int getEstateCountByCondition(UserInfoVO vo);
	
	/**
	 * 判断用户名是否已存在
	 * @param username
	 * @param type
	 * @return
	 */
	public boolean isExistUserName(String username, Integer type);

	/**
	 * 根据手机号码获取用户信息
	 * @param phone
	 * @return
	 */
	public UserInfo getByPhone(String phone) ;

	/**
	 * 修改用户密码
	 * @param userid
	 * @param password
	 */
	int updateUserPwd(Integer userid, String password);
}
