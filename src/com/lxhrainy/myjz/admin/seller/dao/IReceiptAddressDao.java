package com.lxhrainy.myjz.admin.seller.dao;

import org.apache.ibatis.annotations.Param;

import com.lxhrainy.core.annotation.MyBatisDao;
import com.lxhrainy.core.common.dao.IBaseDao;
import com.lxhrainy.myjz.admin.seller.model.ReceiptAddress;


/**
 * 收获地址管理DAO接口
 * @author xueyunteng
 * @version 2016-07-05
 */
@MyBatisDao
public interface IReceiptAddressDao extends IBaseDao<ReceiptAddress> {

	/**
	 * 删除指定状态地址
	 * @param status
	 */
	int deleteByStatus(@Param("status")int status);
	
}