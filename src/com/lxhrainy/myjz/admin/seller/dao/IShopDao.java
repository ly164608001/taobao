package com.lxhrainy.myjz.admin.seller.dao;

import java.util.List;

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

	/**
	 * 根据用户获取店铺列表
	 * @param userid
	 * @return
	 */
	List<Shop> getListByUser(@Param("userid")int userid);
	
}