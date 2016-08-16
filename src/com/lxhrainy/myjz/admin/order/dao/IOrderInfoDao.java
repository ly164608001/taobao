package com.lxhrainy.myjz.admin.order.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lxhrainy.core.annotation.MyBatisDao;
import com.lxhrainy.core.common.dao.IBaseDao;
import com.lxhrainy.core.sys.model.UserInfo;
import com.lxhrainy.myjz.admin.order.model.OrderInfo;
import com.lxhrainy.myjz.admin.order.oe.OrderInfoVO;
import com.lxhrainy.myjz.admin.task.model.TaskStatistics;


/**
 * 订单任务DAO接口
 * @author xueyunteng
 * @version 2016-08-10
 */
@MyBatisDao
public interface IOrderInfoDao extends IBaseDao<OrderInfo> {

	/**
	 * 手机端获取订单列表
	 * @param vo
	 * @return
	 */
	List<OrderInfo> getListForMobile(@Param("condition")OrderInfoVO vo);

	/**
	 * 统计任务数
	 * @param user
	 * @return
	 */
	List<TaskStatistics> statisticsTask(@Param("user")UserInfo user);
	
}