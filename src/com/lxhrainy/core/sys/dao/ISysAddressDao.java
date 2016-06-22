package com.lxhrainy.core.sys.dao;

import com.lxhrainy.core.annotation.MyBatisDao;
import com.lxhrainy.core.common.dao.IBaseDao;
import com.lxhrainy.core.sys.model.SysAddress;

/**
 * 区域DAO接口
 * @author lxhrainy
 * @date 2016-04-15
 * @version 1.0
 */
@MyBatisDao
public interface ISysAddressDao extends IBaseDao<SysAddress> {
	
	/**
	 * 找到所有子节点
	 * @param entity
	 * @return
	 */
	/*public List<SysAddress> findByParentIdsLike(SysAddress entity);*/

	/**
	 * 更新所有父节点字段
	 * @param entity
	 * @return
	 */
	/*public int updateParentIds(SysAddress entity);*/
	
}
