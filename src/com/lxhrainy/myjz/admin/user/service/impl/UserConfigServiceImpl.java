package com.lxhrainy.myjz.admin.user.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.myjz.admin.user.dao.IUserConfigDao;
import com.lxhrainy.myjz.admin.user.model.UserConfig;
import com.lxhrainy.myjz.admin.user.service.IUserConfigService;


/**
 * 用户配置Service
 */

@Service
@Transactional(readOnly = true)
public class UserConfigServiceImpl extends
AbstractBaseServiceImpl<IUserConfigDao, UserConfig, Integer>
implements IUserConfigService {
	
	@Autowired
	IUserConfigDao userConfigDao;

	@Override
	@Transactional(readOnly = false)
	public boolean updateMsgSet(UserConfig config) {
		int result = userConfigDao.updateMsgSet(config);
		if(result != -1){
			return true;
		}
		return false;
	}
	
}
