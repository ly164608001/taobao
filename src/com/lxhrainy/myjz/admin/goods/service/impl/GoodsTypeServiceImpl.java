package com.lxhrainy.myjz.admin.goods.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.myjz.admin.goods.dao.IGoodsTypeDao;
import com.lxhrainy.myjz.admin.goods.model.GoodsType;
import com.lxhrainy.myjz.admin.goods.service.IGoodsTypeService;


/**
 * 商品类目服务实现类
 * @author xueyunteng
 * @date 2016-06-23
 */

@Service
@Transactional(readOnly = true)
public class GoodsTypeServiceImpl extends
AbstractBaseServiceImpl<IGoodsTypeDao, GoodsType, Integer>
implements IGoodsTypeService {

	@Autowired
	IGoodsTypeDao dao;
	
	/**
	 * 获取指定下级菜单列表
	 * @param pid
	 * @return
	 */
	public List<GoodsType> getListByPid(int pid) {
		return dao.getListByPid(pid);
	}
}
