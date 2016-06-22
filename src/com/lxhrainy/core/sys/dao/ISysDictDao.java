package com.lxhrainy.core.sys.dao;

import java.util.List;

import com.lxhrainy.core.annotation.MyBatisDao;
import com.lxhrainy.core.common.dao.IBaseDao;
import com.lxhrainy.core.sys.model.SysDict;

/**
 * 字典DAO接口
 * @author lxhrainy
 * @date 2016-04-15
 * @version 1.0
 */
@MyBatisDao
public interface ISysDictDao extends IBaseDao<SysDict> {

	public List<String> findTypeList(SysDict dict);
	
}
