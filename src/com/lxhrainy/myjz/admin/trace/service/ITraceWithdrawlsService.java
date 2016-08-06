package com.lxhrainy.myjz.admin.trace.service;

import com.lxhrainy.core.common.service.IBaseService;
import com.lxhrainy.myjz.admin.trace.model.TraceWithdrawls;

/**
 * 交易记录服务接口
 * @author xueyunteng
 * @date 2016-07-31
 */
public interface ITraceWithdrawlsService extends IBaseService<TraceWithdrawls, Integer>{

	/**
	 * 提现申请
	 * @param model
	 * @return 1 成功
	 *        -1 可用余额不足
	 */
	int applyWithdrawls(TraceWithdrawls model);

}
