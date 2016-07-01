package com.lxhrainy.myjz.admin.user.service;

import com.lxhrainy.core.common.service.IBaseService;
import com.lxhrainy.myjz.admin.user.model.UserConfig;

/**
 * 用户配置Service
 * @author xueyunteng
 * @date 2016-05-23
 */
public interface IUserConfigService extends IBaseService<UserConfig, Integer>{

	/**
	 * @Title: 
	 * @Description: 修改用户消息配置
	 * @param user
	 * @param @return    设定文件 
	 * @return UserMoney    返回类型 
	 * @throws
	 */
	boolean updateMsgSet(UserConfig config);

}
