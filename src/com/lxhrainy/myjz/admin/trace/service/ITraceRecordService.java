package com.lxhrainy.myjz.admin.trace.service;

import java.util.List;

import com.lxhrainy.core.common.service.IBaseService;
import com.lxhrainy.myjz.admin.trace.model.TraceRecord;
import com.lxhrainy.myjz.admin.trace.oe.TraceRecordVO;

/**
 * 交易记录服务接口
 * @author xueyunteng
 * @date 2016-07-31
 */
public interface ITraceRecordService extends IBaseService<TraceRecord, Integer>{

	/**
	 * 手机端获取交易记录列表
	 * @param vo
	 * @return
	 */
	List<TraceRecord> getListForMobile(TraceRecordVO vo);

}
