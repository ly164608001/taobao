package com.lxhrainy.myjz.admin.seller.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.myjz.admin.seller.dao.IShopDao;
import com.lxhrainy.myjz.admin.seller.model.Shop;
import com.lxhrainy.myjz.admin.seller.service.IShopService;
import com.lxhrainy.myjz.common.constant.Global;


/**
 * 店铺服务实现类
 * @author xueyunteng
 * @date 2016-07-04
 */

@Service
@Transactional(readOnly = true)
public class ShopServiceImpl extends
AbstractBaseServiceImpl<IShopDao, Shop, Integer>
implements IShopService {

	/**
	 * 激活店铺
	 * @param id
	 */
	@Transactional(readOnly = false)
	public void activate(int id) {
		dao.updateStatus(id,Global.YES);
	}
	
}
