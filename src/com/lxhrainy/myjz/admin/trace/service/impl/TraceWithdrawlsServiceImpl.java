package com.lxhrainy.myjz.admin.trace.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.myjz.admin.trace.dao.ITraceWithdrawlsDao;
import com.lxhrainy.myjz.admin.trace.model.TraceWithdrawls;
import com.lxhrainy.myjz.admin.trace.service.ITraceWithdrawlsService;

/**
 * 交易提现实现类
 * 
 * @author xueyunteng
 * @date 2016-07-31
 */

@Service
@Transactional(readOnly = true)
public class TraceWithdrawlsServiceImpl extends
		AbstractBaseServiceImpl<ITraceWithdrawlsDao, TraceWithdrawls, Integer>
		implements ITraceWithdrawlsService {

}
