package com.lxhrainy.myjz.admin.trace.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lxhrainy.core.annotation.MyBatisDao;
import com.lxhrainy.core.common.dao.IBaseDao;
import com.lxhrainy.myjz.admin.trace.model.TraceRecord;
import com.lxhrainy.myjz.admin.trace.oe.TraceRecordVO;

/**
 * 交易记录接口
 * @author 薛云腾
 * @date 2016-07-31
 * @version 1.0
 */
@MyBatisDao
public interface ITraceRecordDao extends IBaseDao<TraceRecord> {

	/**
	 * 手机端获取交易记录列表
	 * @param vo
	 * @return
	 */
	List<TraceRecord> getListForMobile(@Param("condition")TraceRecordVO vo);
	
}
