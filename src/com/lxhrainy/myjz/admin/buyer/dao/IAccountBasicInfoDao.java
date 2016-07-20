package com.lxhrainy.myjz.admin.buyer.dao;

import org.apache.ibatis.annotations.Param;

import com.lxhrainy.core.annotation.MyBatisDao;
import com.lxhrainy.core.common.dao.IBaseDao;
import com.lxhrainy.myjz.admin.buyer.model.AccountBasicInfo;


/**
 * 淘宝小号基础信息DAO接口
 * @author xueyunteng
 * @version 2016-06-28
 */
@MyBatisDao
public interface IAccountBasicInfoDao extends IBaseDao<AccountBasicInfo> {

	/**
	 * 根据小号id获取小号信息
	 * @param accountid
	 * @return
	 */
	AccountBasicInfo getByAccountid(@Param("accountid")int accountid);
	
}