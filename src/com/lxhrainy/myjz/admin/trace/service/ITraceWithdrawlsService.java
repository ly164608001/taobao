package com.lxhrainy.myjz.admin.trace.service;

import java.util.List;

import com.lxhrainy.core.common.service.IBaseService;
import com.lxhrainy.myjz.admin.trace.model.TraceWithdrawls;
import com.lxhrainy.myjz.admin.trace.oe.TraceWithdrawlsVO;

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

	/**
	 * 手机端获取提现列表
	 * @param vo
	 * @return
	 */
	List<TraceWithdrawls> getListForMobile(TraceWithdrawlsVO vo);

}
