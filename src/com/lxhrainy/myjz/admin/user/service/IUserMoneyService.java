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

}
