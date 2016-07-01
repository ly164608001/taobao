package com.lxhrainy.myjz.admin.user.dao;

import org.apache.ibatis.annotations.Param;

import com.lxhrainy.core.annotation.MyBatisDao;
import com.lxhrainy.core.common.dao.IBaseDao;
import com.lxhrainy.myjz.admin.user.model.UserConfig;

/**
 * 用户系统设置
 * @author Administrator
 */
@MyBatisDao
public interface IUserConfigDao extends IBaseDao<UserConfig> {

	int updateMsgSet(@Param("config")UserConfig config);
	
}
