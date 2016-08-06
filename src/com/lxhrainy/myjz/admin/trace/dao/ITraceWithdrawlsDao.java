package com.lxhrainy.myjz.admin.trace.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lxhrainy.core.annotation.MyBatisDao;
import com.lxhrainy.core.common.dao.IBaseDao;
import com.lxhrainy.myjz.admin.trace.model.TraceWithdrawls;
import com.lxhrainy.myjz.admin.trace.oe.TraceWithdrawlsVO;

/**
 * 交易提现接口
 * @author 薛云腾
 * @date 2016-07-31
 * @version 1.0
 */
@MyBatisDao
public interface ITraceWithdrawlsDao extends IBaseDao<TraceWithdrawls> {

	/**
	 * 手机端获取提现列表
	 * @param vo
	 * @return
	 */
	List<TraceWithdrawls> getListForMobile(@Param("condition")TraceWithdrawlsVO vo);
	
}
