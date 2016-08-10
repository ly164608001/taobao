package com.lxhrainy.myjz.admin.order.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.myjz.admin.order.dao.IOrderOtherPropertiesDao;
import com.lxhrainy.myjz.admin.order.model.OrderOtherProperties;
import com.lxhrainy.myjz.admin.order.service.IOrderOtherPropertiesService;


/**
 * 订单服务实现类
 * @author xueyunteng
 * @date 2016-06-23
 */

@Service
@Transactional(readOnly = true)
public class OrderOtherPropertiesServiceImpl extends
AbstractBaseServiceImpl<IOrderOtherPropertiesDao, OrderOtherProperties, Integer>
implements IOrderOtherPropertiesService {

}
