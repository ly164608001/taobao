package com.lxhrainy.myjz.admin.seller.dao;

import org.apache.ibatis.annotations.Param;

import com.lxhrainy.core.annotation.MyBatisDao;
import com.lxhrainy.core.common.dao.IBaseDao;
import com.lxhrainy.myjz.admin.seller.model.Shop;


/**
 * 标签管理DAO接口
 * @author xueyunteng
 * @version 2016-07-04
 */
@MyBatisDao
public interface IShopDao extends IBaseDao<Shop> {

	/**
	 * 更新店铺状态
	 * @param id
	 * @param status
	 */
	void updateStatus(@Param("id")int id, @Param("status")int status);
	
}