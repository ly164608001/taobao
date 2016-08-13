package com.lxhrainy.myjz.admin.trace.dao;

import org.apache.ibatis.annotations.Param;

import com.lxhrainy.core.annotation.MyBatisDao;
import com.lxhrainy.core.common.dao.IBaseDao;
import com.lxhrainy.myjz.admin.trace.model.TraceRecharge;

/**
 * 交易充值接口
 * @author 薛云腾
 * @date 2016-07-31
 * @version 1.0
 */
@MyBatisDao
public interface ITraceRechargeDao extends IBaseDao<TraceRecharge> {

	void updateStatus(@Param("model")TraceRecharge model);

}
