package com.lxhrainy.myjz.admin.trace.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.myjz.admin.trace.dao.ITraceRecordDao;
import com.lxhrainy.myjz.admin.trace.model.TraceRecord;
import com.lxhrainy.myjz.admin.trace.oe.TraceRecordVO;
import com.lxhrainy.myjz.admin.trace.service.ITraceRecordService;

/**
 * 交易记录实现类
 * 
 * @author xueyunteng
 * @date 2016-07-31
 */

@Service
@Transactional(readOnly = true)
public class TraceRecordServiceImpl extends
		AbstractBaseServiceImpl<ITraceRecordDao, TraceRecord, Integer>
		implements ITraceRecordService {

	@Override
	public List<TraceRecord> getListForMobile(TraceRecordVO vo) {
		return dao.getListForMobile(vo);
	}
	
}
