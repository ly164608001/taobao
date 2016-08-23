package com.lxhrainy.myjz.admin.task.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lxhrainy.core.annotation.MyBatisDao;
import com.lxhrainy.core.common.dao.IBaseDao;
import com.lxhrainy.myjz.admin.task.model.ComplainInfo;
import com.lxhrainy.myjz.admin.task.oe.ComplainInfoVO;


/**
 * 申诉信息
 * @author Administrator
 */
@MyBatisDao
public interface IComplainInfoDao extends IBaseDao<ComplainInfo> {

	/**
	 * 手机端获取申诉列表
	 * @param vo
	 * @return
	 */
	List<ComplainInfo> getListForMobile(@Param("condition")ComplainInfoVO vo);
	
}