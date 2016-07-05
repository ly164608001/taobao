package com.lxhrainy.myjz.admin.goods.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lxhrainy.core.annotation.MyBatisDao;
import com.lxhrainy.core.common.dao.IBaseDao;
import com.lxhrainy.myjz.admin.goods.model.GoodsType;

/**
 * 商品类目接口
 * @author 薛云腾
 * @date 2016-06-23
 * @version 1.0
 */
@MyBatisDao
public interface IGoodsTypeDao extends IBaseDao<GoodsType> {

	/**
	 * 获取指定下级菜单列表
	 * @param pid
	 * @return
	 */
	List<GoodsType> getListByPid(@Param("pid")int pid);
	
}
