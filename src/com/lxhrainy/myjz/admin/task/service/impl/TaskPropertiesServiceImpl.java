package com.lxhrainy.myjz.admin.task.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.myjz.admin.task.dao.ITaskPropertiesDao;
import com.lxhrainy.myjz.admin.task.model.TaskProperties;
import com.lxhrainy.myjz.admin.task.model.TaskPublish;
import com.lxhrainy.myjz.admin.task.service.ITaskPropertiesService;
import com.lxhrainy.myjz.admin.task.service.ITaskPropertiesValueService;
import com.lxhrainy.myjz.common.constant.Global;


/**
 * 任务属性服务实现类
 * @author xueyunteng
 * @date 2016-06-23
 */

@Service
@Transactional(readOnly = true)
public class TaskPropertiesServiceImpl extends
AbstractBaseServiceImpl<ITaskPropertiesDao, TaskProperties, Integer>
implements ITaskPropertiesService {

	@Autowired
	private ITaskPropertiesDao dao;
	@Autowired
	private ITaskPropertiesValueService valueService;
	
	/**
	 * 判断名称是否存在
	 * @param name
	 * @return
	 */
	public boolean isExistName(String name) {
		int cnt = dao.getCountByName(name);
		return cnt > 0;
	}
	
	/**
	 * 判断非指定id名称是否存在
	 * @param name
	 * @return
	 */
	public boolean isExistName(int id, String name){
		int cnt = dao.getCountByOtherName(id,name);
		return cnt > 0;
	}

	/**
	 * 删除属性
	 * @param id
	 * @return 1 成功
	 * 		-1 该属性已删除或已被使用
	 */
	@Transactional(readOnly = false)
	public int delById(int id){
		TaskProperties model = this.getById(id);
		if(model == null || model.getStatus().intValue() == Global.YES){
			return -1;
		}
		
		//删除属性值
		valueService.deleteByProperties(id);
		dao.deleteById(id);
		return 1;
	}
	
	/**
	 * 获取任务发布属性集合实体列表
	 */
	public List<TaskPublish> getTaskPublishList(){
		List<TaskPublish> resultList = new ArrayList<TaskPublish>();
		//获取所有属性及属性的值列表
		//然后对属性进行分类返回结果
		return resultList;
	}
	
}
