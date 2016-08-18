package com.lxhrainy.myjz.admin.task.service;

import java.util.List;

import com.lxhrainy.core.common.service.IBaseService;
import com.lxhrainy.myjz.admin.task.model.TaskProperties;
import com.lxhrainy.myjz.admin.task.model.TaskPublish;

/**
 * 任务属性值服务接口
 * @author xueyunteng
 * @date 2016-06-23
 */
public interface ITaskPropertiesService extends IBaseService<TaskProperties, Integer>{

	/**
	 * 根据pid获取子属性列表
	 * @param pid
	 * @return
	 */
	public List<TaskProperties> getListByPid(int pid);
	
	/**
	 * 判断名称是否存在
	 * @param name
	 * @return
	 */
	boolean isExistName(String name);
	
	/**
	 * 判断非指定id名称是否存在
	 * @param name
	 * @return
	 */
	boolean isExistName(int id, String name);

	/**
	 * 删除属性
	 * @param id
	 * @return 1 成功
	 * 		-1 该属性已删除或已被使用
	 */
	public int delById(int id);

	/**
	 * 获取任务发布属性集合实体列表
	 */
	List<TaskPublish> getTaskPublishList();

	/**
	 * 可拥有副属性的属性列表(只需获取单选框和下拉框的元素列表)
	 * @return
	 */
	public List<TaskProperties> getListSimpleChoose();
}
