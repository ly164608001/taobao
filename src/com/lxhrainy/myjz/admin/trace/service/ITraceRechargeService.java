package com.lxhrainy.myjz.admin.trace.service;

import com.lxhrainy.core.common.service.IBaseService;
import com.lxhrainy.myjz.admin.trace.model.TraceRecharge;

/**
 * 充值服务接口
 * @author xueyunteng
 * @date 2016-07-31
 */
public interface ITraceRechargeService extends IBaseService<TraceRecharge, Integer>{

	/**
	 * 审核并处理充值申请
	 * @param id
	 * @return 1 成功
	 *  	-1 无该充值申请记录或不为待处理状态
	 */
	int passRecharge(TraceRecharge model);

}
