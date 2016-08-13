package com.lxhrainy.myjz.admin.task.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.myjz.admin.task.dao.ITaskPropertiesValueDao;
import com.lxhrainy.myjz.admin.task.model.TaskPropertiesValue;
import com.lxhrainy.myjz.admin.task.service.ITaskPropertiesValueService;
import com.lxhrainy.myjz.common.constant.Global;


/**
 * 任务属性值服务实现类
 * @author xueyunteng
 * @date 2016-06-23
 */

@Service
@Transactional(readOnly = true)
public class TaskPropertiesValueServiceImpl extends
AbstractBaseServiceImpl<ITaskPropertiesValueDao, TaskPropertiesValue, Integer>
implements ITaskPropertiesValueService {

	@Autowired
	private ITaskPropertiesValueDao dao;
	
	/**
	 * 根据属性删除对应属性值
	 * @param id
	 */
	@Transactional(readOnly = false)
	public void deleteByProperties(int propertiesid){
		dao.deleteByProperties(propertiesid);
	}

	/**
	 * 删除属性值
	 * @param id
	 * @return 1 成功
	 *      -1 属性值已被删除或该属性已被使用不可删除
	 */
	public int delById(int id) {
		TaskPropertiesValue model = this.getById(id);
		if(model == null || model.getProperties().getStatus() == Global.YES){
			return -1;
		}
		
		dao.deleteById(id);
		return 1;
	}
	
	
}
