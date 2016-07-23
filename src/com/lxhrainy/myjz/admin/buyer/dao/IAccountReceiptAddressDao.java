package com.lxhrainy.myjz.admin.buyer.dao;

import org.apache.ibatis.annotations.Param;

import com.lxhrainy.core.annotation.MyBatisDao;
import com.lxhrainy.core.common.dao.IBaseDao;
import com.lxhrainy.myjz.admin.buyer.model.AccountReceiptAddress;


/**
 * 买号收获地址DAO接口
 * @author xueyunteng
 * @version 2016-06-28
 */
@MyBatisDao
public interface IAccountReceiptAddressDao extends IBaseDao<AccountReceiptAddress> {
	
	/**
	 * 获取买号收获地址
	 * @param accountid
	 * @return
	 */
	AccountReceiptAddress getByAccountid(@Param("accountid")int accountid);
}