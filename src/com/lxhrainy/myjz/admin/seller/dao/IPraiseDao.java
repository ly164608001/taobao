package com.lxhrainy.myjz.admin.seller.dao;

import org.apache.ibatis.annotations.Param;

import com.lxhrainy.core.annotation.MyBatisDao;
import com.lxhrainy.core.common.dao.IBaseDao;
import com.lxhrainy.myjz.admin.seller.model.Praise;


/**
 * 好评内容管理DAO接口
 * @author xueyunteng
 * @version 2016-07-05
 */
@MyBatisDao
public interface IPraiseDao extends IBaseDao<Praise> {

	/**
	 * 删除指定状态好评内容
	 * @param status
	 */
	int deleteByStatus(@Param("status")int status);
	
}