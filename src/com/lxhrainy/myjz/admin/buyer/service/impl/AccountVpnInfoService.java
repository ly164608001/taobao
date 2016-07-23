package com.lxhrainy.myjz.admin.buyer.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.myjz.admin.buyer.dao.IAccountVpnInfoDao;
import com.lxhrainy.myjz.admin.buyer.model.AccountVpnInfo;
import com.lxhrainy.myjz.admin.buyer.service.IAccountVpnInfoService;


/**
 * 淘宝小号Vpn信息Service
 * @author xueyunteng
 * @version 2016-07-06
 */
@Service
@Transactional(readOnly = true)
public class AccountVpnInfoService extends
AbstractBaseServiceImpl<IAccountVpnInfoDao, AccountVpnInfo, Integer>
implements IAccountVpnInfoService  {

	@Autowired
	IAccountVpnInfoDao dao;
	
	/**
	 * 根据小号id获取Vpn信息
	 * @param accountid
	 * @return
	 */
	public AccountVpnInfo getByAccountid(int accountid) {
		return dao.getByAccountid(accountid);
	}

}