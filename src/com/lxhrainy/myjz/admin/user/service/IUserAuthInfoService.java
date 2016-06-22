package com.lxhrainy.myjz.admin.user.service;

import com.lxhrainy.core.common.service.IBaseService;
import com.lxhrainy.myjz.admin.user.model.UserAuthInfo;

/**
 * 用户认证信息服务接口
 * @author xueyunteng
 * @date 2016-05-23
 */
public interface IUserAuthInfoService extends IBaseService<UserAuthInfo, Integer>{

	/**
	 * @Title: getByUserId 
	 * @Description: 获取用户的认证信息
	 * @param userid
	 * @return    设定文件 
	 * @return UserAuthInfo    返回类型 
	 * @throws
	 */
	UserAuthInfo getByUserId(Integer userid);

}
