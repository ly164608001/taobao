package com.lxhrainy.myjz.admin.user.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.myjz.admin.user.dao.IUserContactsDao;
import com.lxhrainy.myjz.admin.user.model.UserContacts;
import com.lxhrainy.myjz.admin.user.service.IUserContactsService;


/**
 * 用户联系人服务实现类
 * @author xueyunteng
 * @date 2016-05-23
 */

@Service
@Transactional(readOnly = true)
public class UserContactsServiceImpl extends
AbstractBaseServiceImpl<IUserContactsDao, UserContacts, Integer>
implements IUserContactsService {
	
	@Autowired
	IUserContactsDao userContactsDao;
	
}
