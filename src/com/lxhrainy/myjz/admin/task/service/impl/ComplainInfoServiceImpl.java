package com.lxhrainy.myjz.admin.task.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.myjz.admin.task.dao.IComplainInfoDao;
import com.lxhrainy.myjz.admin.task.model.ComplainInfo;
import com.lxhrainy.myjz.admin.task.oe.ComplainInfoVO;
import com.lxhrainy.myjz.admin.task.service.IComplainInfoService;


/**
 * 申诉类型
 * @author Administrator
 *
 */
@Service
@Transactional(readOnly = true)
public class ComplainInfoServiceImpl extends
AbstractBaseServiceImpl<IComplainInfoDao, ComplainInfo, Integer>
implements IComplainInfoService {

	@Override
	public List<ComplainInfo> getListForMobile(ComplainInfoVO vo) {
		return dao.getListForMobile(vo);
	}

}
