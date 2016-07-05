package com.lxhrainy.myjz.admin.goods.service;

import java.util.List;

import com.lxhrainy.core.common.service.IBaseService;
import com.lxhrainy.myjz.admin.goods.model.GoodsType;

/**
 * 商品类目服务接口
 * @author xueyunteng
 * @date 2016-06-23
 */
public interface IGoodsTypeService extends IBaseService<GoodsType, Integer>{

	
	/**
	 * 获取指定下级菜单列表
	 * @param pid
	 * @return
	 */
	List<GoodsType> getListByPid(int pid);

}
