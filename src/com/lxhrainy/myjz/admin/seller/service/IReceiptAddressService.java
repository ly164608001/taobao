package com.lxhrainy.myjz.admin.seller.service;

import com.lxhrainy.core.common.service.IBaseService;
import com.lxhrainy.myjz.admin.seller.model.ReceiptAddress;

/**
 * 收获地址服务接口
 * @author xueyunteng
 * @date 2016-07-05
 */
public interface IReceiptAddressService extends IBaseService<ReceiptAddress, Integer>{

	/**
	 * 删除指定状态地址
	 * @param status
	 */
	int deleteByStatus(int status);

}
