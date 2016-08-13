package com.lxhrainy.myjz.admin.task.dao;

import org.apache.ibatis.annotations.Param;

import com.lxhrainy.core.annotation.MyBatisDao;
import com.lxhrainy.core.common.dao.IBaseDao;
import com.lxhrainy.myjz.admin.task.model.TaskPropertiesValue;


/**
 * 任务属性值DAO接口
 * @author xueyunteng
 * @version 2016-08-10
 */
@MyBatisDao
public interface ITaskPropertiesValueDao extends IBaseDao<TaskPropertiesValue> {
	
	/**
	 * 根据属性删除对应属性值
	 * @param propertiesid
	 */
	void deleteByProperties(@Param("propertiesid")int propertiesid);
}