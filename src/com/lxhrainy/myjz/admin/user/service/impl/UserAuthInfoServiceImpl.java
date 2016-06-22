package com.lxhrainy.myjz.admin.user.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.myjz.admin.user.dao.IUserAuthInfoDao;
import com.lxhrainy.myjz.admin.user.model.UserAuthInfo;
import com.lxhrainy.myjz.admin.user.service.IUserAuthInfoService;


/**
 * 用户认证信息服务实现类
 * @author xueyunteng
 * @date 2016-05-23
 */

@Service
@Transactional(readOnly = true)
public class UserAuthInfoServiceImpl extends
AbstractBaseServiceImpl<IUserAuthInfoDao, UserAuthInfo, Integer>
implements IUserAuthInfoService {
	
	@Autowired
	IUserAuthInfoDao dao;

	@Override
	public UserAuthInfo getByUserId(Integer userid) {
		return dao.getByUserId(userid);
	}
	
}
