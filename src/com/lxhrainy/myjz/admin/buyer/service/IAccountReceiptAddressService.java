package com.lxhrainy.myjz.admin.buyer.service;

import com.lxhrainy.core.common.service.IBaseService;
import com.lxhrainy.myjz.admin.buyer.model.AccountReceiptAddress;

/**
 * 买号收获地址服务接口
 * @author xueyunteng
 * @date 2016-06-23
 */
public interface IAccountReceiptAddressService extends IBaseService<AccountReceiptAddress, Integer>{

	/**
	 * 获取买号收获地址
	 * @param accountid
	 * @return
	 */
	public AccountReceiptAddress getByAccountid(int accountid);
}
