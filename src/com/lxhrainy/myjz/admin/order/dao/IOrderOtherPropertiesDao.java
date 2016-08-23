package com.lxhrainy.myjz.admin.order.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lxhrainy.core.annotation.MyBatisDao;
import com.lxhrainy.core.common.dao.IBaseDao;
import com.lxhrainy.myjz.admin.order.model.OrderOtherProperties;


/**
 * 订单任务其他属性DAO接口
 * @author xueyunteng
 * @version 2016-08-10
 */
@MyBatisDao
public interface IOrderOtherPropertiesDao extends IBaseDao<OrderOtherProperties> {
	
	/**
	 * 批量插入
	 * @param list
	 */
	void insertBatch(@Param("list")List<OrderOtherProperties> list);
}