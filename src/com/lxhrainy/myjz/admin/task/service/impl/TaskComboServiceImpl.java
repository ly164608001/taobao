package com.lxhrainy.myjz.admin.task.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.myjz.admin.task.dao.ITaskComboDao;
import com.lxhrainy.myjz.admin.task.model.TaskCombo;
import com.lxhrainy.myjz.admin.task.service.ITaskComboService;


/**
 * 任务套餐服务实现类
 * @author xueyunteng
 * @date 2016-06-23
 */

@Service
@Transactional(readOnly = true)
public class TaskComboServiceImpl extends
AbstractBaseServiceImpl<ITaskComboDao, TaskCombo, Integer>
implements ITaskComboService {

}
