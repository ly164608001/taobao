package com.lxhrainy.myjz.admin.task.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.myjz.admin.task.dao.ITipsDao;
import com.lxhrainy.myjz.admin.task.model.Tips;
import com.lxhrainy.myjz.admin.task.service.ITipsService;


/**
 * 提示信息
 * @author Administrator
 *
 */
@Service
@Transactional(readOnly = true)
public class TipsServiceImpl extends
AbstractBaseServiceImpl<ITipsDao, Tips, Integer>
implements ITipsService {

}
