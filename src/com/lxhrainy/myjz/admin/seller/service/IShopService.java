package com.lxhrainy.myjz.admin.seller.service;

import com.lxhrainy.core.common.service.IBaseService;
import com.lxhrainy.myjz.admin.seller.model.Shop;

/**
 * 店铺服务接口
 * @author xueyunteng
 * @date 2016-07-04
 */
public interface IShopService extends IBaseService<Shop, Integer>{

	/**
	 * 激活店铺
	 * @param id
	 */
	void activate(int id);

}
