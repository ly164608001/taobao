package com.lxhrainy.myjz.admin.buyer.dao;

import org.apache.ibatis.annotations.Param;

import com.lxhrainy.core.annotation.MyBatisDao;
import com.lxhrainy.core.common.dao.IBaseDao;
import com.lxhrainy.myjz.admin.buyer.model.AccountVpnInfo;


/**
 * 淘宝小号vpn信息DAO接口
 * @author xueyunteng
 * @version 2016-06-28
 */
@MyBatisDao
public interface IAccountVpnInfoDao extends IBaseDao<AccountVpnInfo> {

	/**
	 * 根据小号id获取vpn信息
	 * @param accountid
	 * @return
	 */
	AccountVpnInfo getByAccountid(@Param("accountid")int accountid);
	
}