package com.lxhrainy.myjz.admin.trace.dao;

import com.lxhrainy.core.annotation.MyBatisDao;
import com.lxhrainy.core.common.dao.IBaseDao;
import com.lxhrainy.myjz.admin.trace.model.TraceRecord;

/**
 * 交易记录接口
 * @author 薛云腾
 * @date 2016-07-31
 * @version 1.0
 */
@MyBatisDao
public interface ITraceRecordDao extends IBaseDao<TraceRecord> {
	
}
