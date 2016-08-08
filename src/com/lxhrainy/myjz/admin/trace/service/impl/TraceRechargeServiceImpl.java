package com.lxhrainy.myjz.admin.trace.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.myjz.admin.trace.dao.ITraceRechargeDao;
import com.lxhrainy.myjz.admin.trace.model.TraceRecharge;
import com.lxhrainy.myjz.admin.trace.service.ITraceRechargeService;

/**
 * 交易充值实现类
 * 
 * @author xueyunteng
 * @date 2016-07-31
 */

@Service
@Transactional(readOnly = true)
public class TraceRechargeServiceImpl extends
		AbstractBaseServiceImpl<ITraceRechargeDao, TraceRecharge, Integer>
		implements ITraceRechargeService {

}
