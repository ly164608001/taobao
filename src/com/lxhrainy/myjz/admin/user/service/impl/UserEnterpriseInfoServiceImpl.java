package com.lxhrainy.myjz.admin.user.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.myjz.admin.user.dao.IUserEnterpriseInfoDao;
import com.lxhrainy.myjz.admin.user.model.UserEnterpriseInfo;
import com.lxhrainy.myjz.admin.user.service.IUserEnterpriseInfoService;


/**
 * 企业信息服务实现类
 * @author xueyunteng
 * @date 2016-05-23
 */
@Service
@Transactional(readOnly = true)
public class UserEnterpriseInfoServiceImpl extends
AbstractBaseServiceImpl<IUserEnterpriseInfoDao, UserEnterpriseInfo, Integer>
implements IUserEnterpriseInfoService {
	
	@Autowired
	IUserEnterpriseInfoDao userEnterpriseInfoDao;
	
}
