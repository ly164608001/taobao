package com.lxhrainy.core.sys.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.core.sys.dao.ISysAreaDao;
import com.lxhrainy.core.sys.model.SysArea;
import com.lxhrainy.core.sys.service.ISysAreaService;

/**
 * @ClassName: OrderServiceImpl 
 * @Description: 订单Service实现类
 * @author lxhrainy 
 * @date 2016年5月20日 上午11:32:34
 */
@Service("sysAreaService")
@Transactional(readOnly = true)
public class SysAreaImpl extends AbstractBaseServiceImpl<ISysAreaDao, SysArea, Integer>
	implements ISysAreaService{
	
}
