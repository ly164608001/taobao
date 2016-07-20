package com.lxhrainy.myjz.admin.buyer.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.myjz.admin.buyer.dao.IAccountBasicInfoDao;
import com.lxhrainy.myjz.admin.buyer.model.AccountBasicInfo;
import com.lxhrainy.myjz.admin.buyer.service.IAccountBasicInfoService;


/**
 * 淘宝小号基础信息Service
 * @author xueyunteng
 * @version 2016-07-06
 */
@Service
@Transactional(readOnly = true)
public class AccountBasicInfoService extends
AbstractBaseServiceImpl<IAccountBasicInfoDao, AccountBasicInfo, Integer>
implements IAccountBasicInfoService  {

	@Autowired
	IAccountBasicInfoDao dao;
	
	/**
	 * 根据小号id获取小号信息
	 * @param accountid
	 * @return
	 */
	public AccountBasicInfo getByAccountid(int accountid) {
		return dao.getByAccountid(accountid);
	}

}