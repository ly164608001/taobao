package com.lxhrainy.myjz.admin.task.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lxhrainy.core.annotation.MyBatisDao;
import com.lxhrainy.core.common.dao.IBaseDao;
import com.lxhrainy.myjz.admin.task.model.TaskProperties;


/**
 * 任务属性DAO接口
 * @author xueyunteng
 * @version 2016-08-10
 */
@MyBatisDao
public interface ITaskPropertiesDao extends IBaseDao<TaskProperties> {

	int getCountByName(@Param("name")String name);

	/**
	 * 获取非指定id的同名个数
	 * @param id
	 * @param name
	 * @return
	 */
	int getCountByOtherName(@Param("id")int id, @Param("name")String name);

	/**
	 * 获取所有属性及属性的值列表
	 * @return
	 */
	List<TaskProperties> getAllWithValuelist();
	
	List<TaskProperties> getListByPid(@Param("pid")int pid);
	List<TaskProperties>  getListByValue(@Param("valueid")int valueid);
	
	/**
	 * 获取单选属性：如单选框和下拉框，能成为所属属性的属性 
	 * @return
	 */
	List<TaskProperties> getListSimpleChoose();
	
	
}