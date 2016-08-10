package com.lxhrainy.myjz.admin.order.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.myjz.admin.order.dao.IOrderBasicPropertiesDao;
import com.lxhrainy.myjz.admin.order.model.OrderBasicProperties;
import com.lxhrainy.myjz.admin.order.service.IOrderBasicPropertiesService;


/**
 * 订单服务实现类
 * @author xueyunteng
 * @date 2016-06-23
 */

@Service
@Transactional(readOnly = true)
public class OrderBasicPropertiesServiceImpl extends
AbstractBaseServiceImpl<IOrderBasicPropertiesDao, OrderBasicProperties, Integer>
implements IOrderBasicPropertiesService {

}
