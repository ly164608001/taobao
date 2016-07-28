package com.lxhrainy.myjz.admin.user.service;

import com.lxhrainy.core.common.service.IBaseService;
import com.lxhrainy.myjz.admin.user.model.UserDetailInfo;

/**
 * 用户详细信息服务接口
 * @author xueyunteng
 * @date 2016-05-23
 */
public interface IUserDetailInfoService extends IBaseService<UserDetailInfo, Integer>{

	/**
	 * 根据用户id获取详细信息
	 * @param userid
	 * @return
	 */
	UserDetailInfo getByUserid(int userid);

}
