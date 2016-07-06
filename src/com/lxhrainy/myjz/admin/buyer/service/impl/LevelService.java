package com.lxhrainy.myjz.admin.buyer.service.impl;


import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.myjz.admin.buyer.dao.ILevelDao;
import com.lxhrainy.myjz.admin.buyer.model.LevelInfo;
import com.lxhrainy.myjz.admin.buyer.service.ILevelService;


/**
 * 淘宝等级Service
 * @author xueyunteng
 * @version 2016-07-06
 */
@Service
@Transactional(readOnly = true)
public class LevelService extends
AbstractBaseServiceImpl<ILevelDao, LevelInfo, Integer>
implements ILevelService  {

	
}