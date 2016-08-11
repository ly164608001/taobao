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

	/**
	 * 认证提交申请
	 * @param model
	 * @return 1 成功
	 * 			-1 已有认证信息
	 */
	@Transactional(readOnly = false)
	public int applyCertification(UserAuthInfo model) {
		if(getByUserId(model.getUser().getId()) != null){
			return -1;
		}
		
		dao.insert(model);
		return 1;
	}
	
	@Override
	public UserAuthInfo getByUserId(Integer userid) {
		return dao.getByUserId(userid);
	}

	@Override
	@Transactional(readOnly=false)
	public boolean auditUser(UserAuthInfo model) {
		int result = dao.auditUser(model);
		if(result != -1){
			return true;
		}
		return false;
	}

	@Override
	@Transactional(readOnly=false)
	public boolean auditUserPaid(UserAuthInfo model) {
		int result = dao.auditUserPaid(model);
		if(result != -1){
			return true;
		}
		return false;
	}
	
}
