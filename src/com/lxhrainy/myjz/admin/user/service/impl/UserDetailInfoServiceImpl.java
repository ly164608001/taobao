package com.lxhrainy.myjz.admin.user.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.myjz.admin.user.dao.IUserDetailInfoDao;
import com.lxhrainy.myjz.admin.user.model.UserDetailInfo;
import com.lxhrainy.myjz.admin.user.service.IUserDetailInfoService;


/**
 * 用户详细信息服务实现类
 * @author xueyunteng
 * @date 2016-05-23
 */

@Service
@Transactional(readOnly = true)
public class UserDetailInfoServiceImpl extends
AbstractBaseServiceImpl<IUserDetailInfoDao, UserDetailInfo, Integer>
implements IUserDetailInfoService {
	
	@Autowired
	IUserDetailInfoDao userDetailInfoDao;
	
}
