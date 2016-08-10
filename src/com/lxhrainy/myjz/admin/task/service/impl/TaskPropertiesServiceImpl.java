package com.lxhrainy.myjz.admin.task.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.myjz.admin.task.dao.ITaskPropertiesDao;
import com.lxhrainy.myjz.admin.task.model.TaskProperties;
import com.lxhrainy.myjz.admin.task.service.ITaskPropertiesService;


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

}
