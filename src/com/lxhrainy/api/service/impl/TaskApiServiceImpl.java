/**
 * 
 */
package com.lxhrainy.api.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.api.model.ApiParams;
import com.lxhrainy.api.service.ITaskApiService;
import com.lxhrainy.api.util.ResultJson;
import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.core.sys.dao.IUserInfoDao;
import com.lxhrainy.core.sys.model.UserInfo;

/**
 * 业务数据
 * @author dyno
 *
 */
@Service
@Transactional
public class TaskApiServiceImpl extends AbstractBaseServiceImpl<IUserInfoDao, UserInfo, Integer> implements ITaskApiService  {

	@Override
	public ResultJson taskList(ApiParams params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson taskAction(ApiParams params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson getTask(ApiParams params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson complain(ApiParams params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson taskActionInfo(ApiParams params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson complainList(ApiParams params) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
