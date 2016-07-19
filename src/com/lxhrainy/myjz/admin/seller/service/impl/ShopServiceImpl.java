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
	 * @return 1 成功
	 *        -1 无该店铺
	 *        -2 非未激活状态
	 */
	@Transactional(readOnly = false)
	public int activate(int id) {
		int result = this.updateStatus(id, Global.YES);
		return result;
	}
	
	/**
	 * 取消激活店铺
	 * @param id
	 * @return 1 成功
	 *        -1 无该店铺
	 *        -2 非激活状态
	 */
	@Transactional(readOnly = false)
	public int cancelActivate(int id) {
		int result = this.updateStatus(id, Global.NO);
		return result;
	}
	
	/**
	 * 更新状态
	 * @param id
	 * @param newStatus
	 * @return 1 成功
	 *        -1 无该店铺
	 *        -2 非对应状态
	 */
	private int updateStatus(int id, int newStatus){
		Shop model = this.getById(id);
		if(model == null){
			return -1;
		}
		
		//判断状态
		int validStatus = 0;
		if(newStatus == Global.YES){
			validStatus = Global.NO;
		}else if(newStatus == Global.NO){
			validStatus = Global.YES;
		}
		
		Integer status = model.getStatus();
		if(status == null || status != validStatus){
			return -2;
		}
		
		dao.updateStatus(id,newStatus);
		return 1;
	}
	
}
