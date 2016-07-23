package com.lxhrainy.myjz.admin.buyer.service;

import com.lxhrainy.core.common.service.IBaseService;
import com.lxhrainy.myjz.admin.buyer.model.AccountVpnInfo;

/**
 * 淘宝小号Vpn信息服务接口
 * @author xueyunteng
 * @date 2016-06-23
 */
public interface IAccountVpnInfoService extends IBaseService<AccountVpnInfo, Integer>{

	/**
	 * 根据小号id获取vpn信息
	 * @param accountid
	 * @return
	 */
	AccountVpnInfo getByAccountid(int accountid);

}
