package com.lxhrainy.core.sys.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lxhrainy.core.annotation.MyBatisDao;
import com.lxhrainy.core.common.dao.IBaseDao;
import com.lxhrainy.core.oe.SysNoticeVO;
import com.lxhrainy.core.sys.model.SysNotice;

/**
 * 区域DAO接口
 * @author lxhrainy
 * @date 2016-04-15
 * @version 1.0
 */
@MyBatisDao
public interface ISysNoticeDao extends IBaseDao<SysNotice> {

	/**
	 * 获取手机端所需的消息列表
	 * @param vo
	 * @return
	 */
	List<SysNotice> getListForMobile(@Param("condition")SysNoticeVO vo);

	/**
	 * 更新消息状态
	 * @param vo
	 * @return
	 */
	int updateFromMobile(@Param("condition")SysNoticeVO vo);
	
}
