package com.lxhrainy.myjz.admin.seller.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lxhrainy.core.annotation.MyBatisDao;
import com.lxhrainy.core.common.dao.IBaseDao;
import com.lxhrainy.myjz.admin.seller.model.Label;


/**
 * 标签管理DAO接口
 * @author xueyunteng
 * @version 2016-07-04
 */
@MyBatisDao
public interface ILabelDao extends IBaseDao<Label> {

	/**
	 * 根据用户和类型获取类别
	 * @param userid
	 * @param type
	 * @return
	 */
	List<Label> getListByUserAndType(@Param("userid")int userid,@Param("type")int type);
	
}