package com.lxhrainy.myjz.admin.task.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.myjz.admin.task.dao.ITaskPropertiesValueDao;
import com.lxhrainy.myjz.admin.task.model.TaskPropertiesValue;
import com.lxhrainy.myjz.admin.task.service.ITaskPropertiesValueService;


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

}
