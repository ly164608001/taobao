package com.lxhrainy.myjz.admin.user.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.myjz.admin.user.dao.IUserAccountDao;
import com.lxhrainy.myjz.admin.user.model.UserAccount;
import com.lxhrainy.myjz.admin.user.service.IUserAccountService;

/**
 * 用户银行卡账户实现类
 * 
 * @author xueyunteng
 * @date 2016-07-31
 */

@Service
@Transactional(readOnly = true)
public class UserAccountServiceImpl extends
		AbstractBaseServiceImpl<IUserAccountDao, UserAccount, Integer>
		implements IUserAccountService {

}
