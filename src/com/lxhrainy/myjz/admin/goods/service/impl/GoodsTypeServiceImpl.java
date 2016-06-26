package com.lxhrainy.myjz.admin.goods.service.impl;

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

	
}
