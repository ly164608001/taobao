package com.lxhrainy.myjz.admin.task.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.myjz.admin.task.dao.IComplainTypeDao;
import com.lxhrainy.myjz.admin.task.model.ComplainType;
import com.lxhrainy.myjz.admin.task.service.IComplainTypeService;


/**
 * 申诉类型
 * @author Administrator
 *
 */
@Service
@Transactional(readOnly = true)
public class ComplainTypeServiceImpl extends
AbstractBaseServiceImpl<IComplainTypeDao, ComplainType, Integer>
implements IComplainTypeService {

}
