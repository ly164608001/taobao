package com.lxhrainy.myjz.admin.user.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.myjz.admin.user.dao.IUserMoneyDao;
import com.lxhrainy.myjz.admin.user.model.UserMoney;
import com.lxhrainy.myjz.admin.user.service.IUserMoneyService;


/**
 * 用户账户信息服务实现类
 * @author xueyunteng
 * @date 2016-05-23
 */

@Service
@Transactional(readOnly = true)
public class UserMoneyServiceImpl extends
AbstractBaseServiceImpl<IUserMoneyDao, UserMoney, Integer>
implements IUserMoneyService {
	
	@Autowired
	IUserMoneyDao userMoneyDao;

	@Override
	public UserMoney getByUserId(Integer userid) {
		return userMoneyDao.getByUserId(userid);
	}

	@Override
	public boolean updateStatusByUserId(UserMoney model) {
		int result = userMoneyDao.updateStatusByUserId(model);
		if(result != -1){
			return true;
		}
		return false;
	}
	
}
