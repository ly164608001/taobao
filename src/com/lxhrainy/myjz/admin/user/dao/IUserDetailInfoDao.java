package com.lxhrainy.myjz.admin.user.dao;

import org.apache.ibatis.annotations.Param;

import com.lxhrainy.core.annotation.MyBatisDao;
import com.lxhrainy.core.common.dao.IBaseDao;
import com.lxhrainy.myjz.admin.user.model.UserDetailInfo;

/**
 * 个人信息接口
 * @author 薛云腾
 * @date 2016-05-28
 * @version 1.0
 */
@MyBatisDao
public interface IUserDetailInfoDao extends IBaseDao<UserDetailInfo> {

	/**
	 * 根据用户id获取详细信息
	 * @param userid
	 * @return
	 */
	UserDetailInfo getByUserid(@Param("userid")int userid);
	
}
