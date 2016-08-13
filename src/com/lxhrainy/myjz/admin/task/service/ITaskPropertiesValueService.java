package com.lxhrainy.myjz.admin.task.service;

import com.lxhrainy.core.common.service.IBaseService;
import com.lxhrainy.myjz.admin.task.model.TaskPropertiesValue;

/**
 * 任务属性值服务接口
 * @author xueyunteng
 * @date 2016-06-23
 */
public interface ITaskPropertiesValueService extends IBaseService<TaskPropertiesValue, Integer>{

	/**
	 * 根据属性删除对应属性值
	 * @param id
	 */
	void deleteByProperties(int propertiesid);
	
	/**
	 * 删除属性值
	 * @param id
	 * @return 1 成功
	 *      -1 属性值已被删除或该属性已被使用不可删除
	 */
	public int delById(int id);

}
