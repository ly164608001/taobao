package com.lxhrainy.myjz.admin.trace.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.myjz.admin.trace.dao.ITraceWithdrawlsDao;
import com.lxhrainy.myjz.admin.trace.model.TraceWithdrawls;
import com.lxhrainy.myjz.admin.trace.oe.TraceWithdrawlsVO;
import com.lxhrainy.myjz.admin.trace.service.ITraceWithdrawlsService;
import com.lxhrainy.myjz.admin.user.model.UserMoney;
import com.lxhrainy.myjz.admin.user.service.IUserMoneyService;
import com.lxhrainy.myjz.common.constant.Global;

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

	@Autowired
	private IUserMoneyService moneyService;
	@Autowired
	private ITraceWithdrawlsDao dao;
	
	/**
	 * 提现申请
	 * @param model
	 * @return 1 成功
	 * 		   -1 可用余额不足
	 */
	@Transactional(readOnly = false)
	public int applyWithdrawls(TraceWithdrawls model) {
		UserMoney moneyInfo = moneyService.getByUserId(model.getUser().getId());
		//冻结金额
		int frozenResult = moneyService.frozonMoney(moneyInfo, model.getMoney());
		if(frozenResult == -1){
			return -1;
		}
		
		//插入交易申请表
		model.setCreatetime(new Date());
		model.setStatus(Global.AUDIT_INIT);
		dao.insert(model);
		return 1;
	}

	@Override
	public List<TraceWithdrawls> getListForMobile(TraceWithdrawlsVO vo) {
		return dao.getListForMobile(vo);
	}

	@Override
	public int passWithdrawls(TraceWithdrawls model) {
		return 1;
	}
	
}
