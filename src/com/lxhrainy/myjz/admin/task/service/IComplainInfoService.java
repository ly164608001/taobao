package com.lxhrainy.myjz.admin.task.service;

import java.util.List;

import com.lxhrainy.core.common.service.IBaseService;
import com.lxhrainy.myjz.admin.task.model.ComplainInfo;
import com.lxhrainy.myjz.admin.task.oe.ComplainInfoVO;

/**
 * 申诉信息Service
 * @author Administrator
 *
 */
public interface IComplainInfoService extends IBaseService<ComplainInfo, Integer>{

	/**
	 * 手机端获取申诉列表信息
	 * @param vo
	 * @return
	 */
	List<ComplainInfo> getListForMobile(ComplainInfoVO vo);

}
