package com.lxhrainy.myjz.admin.user.dao;

import com.lxhrainy.core.annotation.MyBatisDao;
import com.lxhrainy.core.common.dao.IBaseDao;
import com.lxhrainy.myjz.admin.user.model.UserAccount;

/**
 * 用户银行账户接口
 * @author 薛云腾
 * @date 2016-07-31
 * @version 1.0
 */
@MyBatisDao
public interface IUserAccountDao extends IBaseDao<UserAccount> {
	
}
