package com.lxhrainy.myjz.admin.trace.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.myjz.admin.trace.dao.ITraceRechargeDao;
import com.lxhrainy.myjz.admin.trace.model.TraceRecharge;
import com.lxhrainy.myjz.admin.trace.service.ITraceRechargeService;
import com.lxhrainy.myjz.admin.user.service.IUserMoneyService;
import com.lxhrainy.myjz.common.constant.Global;

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

	@Autowired
	private IUserMoneyService moneyService;
	
	/**
	 * 审核并处理充值申请
	 * @param id
	 * @return 1 成功
	 *  	-1 无该充值申请记录或不为待处理状态
	 */
	@Transactional(readOnly = false)
	public int passRecharge(TraceRecharge model) {
		TraceRecharge oldModel = this.getById(model.getId());
		if(oldModel == null || oldModel.getStatus().intValue() != Global.AUDIT_INIT){
			return -1;
		}
		
		//充值用户账户余额新增
		double rechargeMoney = oldModel.getMoney();
		moneyService.recharge(oldModel.getCreateuser().getId(),rechargeMoney);
		//更新充值记录状态
		dao.updateStatus(model);
		
		//TODO:记录交易记录表
		return 1;
	}
	
	
}
