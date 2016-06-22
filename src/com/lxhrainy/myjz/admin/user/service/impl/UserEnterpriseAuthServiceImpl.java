package com.lxhrainy.myjz.admin.user.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.myjz.admin.user.dao.IUserEnterpriseAuthDao;
import com.lxhrainy.myjz.admin.user.model.UserEnterpriseAuth;
import com.lxhrainy.myjz.admin.user.service.IUserEnterpriseAuthService;


/**
 * 用户企业认证信息服务实现类
 * @author xueyunteng
 * @date 2016-05-23
 */
@Service
@Transactional(readOnly = true)
public class UserEnterpriseAuthServiceImpl extends
AbstractBaseServiceImpl<IUserEnterpriseAuthDao, UserEnterpriseAuth, Integer>
implements IUserEnterpriseAuthService {
	
	@Autowired
	IUserEnterpriseAuthDao userEnterpriseAuthDao;
	
}
