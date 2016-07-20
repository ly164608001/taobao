package com.lxhrainy.myjz.admin.buyer.service;

import com.lxhrainy.core.common.service.IBaseService;
import com.lxhrainy.myjz.admin.buyer.model.AccountBasicInfo;

/**
 * 淘宝小号基础信息服务接口
 * @author xueyunteng
 * @date 2016-06-23
 */
public interface IAccountBasicInfoService extends IBaseService<AccountBasicInfo, Integer>{

	/**
	 * 根据小号id获取小号信息
	 * @param accountid
	 * @return
	 */
	AccountBasicInfo getByAccountid(int accountid);

}
