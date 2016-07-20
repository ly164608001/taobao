package com.lxhrainy.myjz.admin.user.service;

import com.lxhrainy.core.common.service.IBaseService;
import com.lxhrainy.myjz.admin.user.model.UserMoney;

/**
 * 用户账户信息服务接口
 * @author xueyunteng
 * @date 2016-05-23
 */
public interface IUserMoneyService extends IBaseService<UserMoney, Integer>{

	/**
	 * @Title: getByUserId 
	 * @Description: 根据用户ID获取用户账户信息 
	 * @param @param id
	 * @param @return    设定文件 
	 * @return UserMoney    返回类型 
	 * @throws
	 */
	UserMoney getByUserId(Integer id);

	/**
	 * @Title: updateStatusByUserId 
	 * @Description: 根据用户ID更新账户状态
	 * @param model
	 * @return    设定文件 
	 * @return boolean    返回类型 
	 * @throws
	 */
	boolean updateStatusByUserId(UserMoney model);
	
	/**
	 * @Description: 验证交易密码是否正确
	 * @param userid 用户
	 * @param paypassword 交易密码
	 * @return boolean    返回类型 
	 */
	boolean validatePaypassword(int userid, String paypassword);

}
