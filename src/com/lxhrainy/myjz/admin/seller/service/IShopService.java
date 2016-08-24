package com.lxhrainy.myjz.admin.seller.service;

import java.util.List;

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
	 * @return 1 成功
	 *        -1 无该店铺
	 *        -2 非未激活状态
	 */
	int activate(int id);
	
	/**
	 * 取消激活店铺
	 * @param id
	 * @return 1 成功
	 *        -1 无该店铺
	 *        -2 非激活状态
	 */
	public int cancelActivate(int id);
	
	/**
	 * 获取用户的店铺列表
	 * @param userid
	 * @return
	 */
	public List<Shop> getListByUser(int userid);

}
