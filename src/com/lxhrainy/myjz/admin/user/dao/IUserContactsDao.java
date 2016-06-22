package com.lxhrainy.myjz.admin.user.dao;

import com.lxhrainy.core.annotation.MyBatisDao;
import com.lxhrainy.core.common.dao.IBaseDao;
import com.lxhrainy.myjz.admin.user.model.UserContacts;

/**
 * 常用联系人接口
 * @author 薛云腾
 * @date 2016-05-28
 * @version 1.0
 */
@MyBatisDao
public interface IUserContactsDao extends IBaseDao<UserContacts> {
	
}
