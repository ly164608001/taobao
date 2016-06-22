package com.lxhrainy.core.sys.dao;

import org.apache.ibatis.annotations.Param;

import com.lxhrainy.core.annotation.MyBatisDao;
import com.lxhrainy.core.common.dao.IBaseDao;
import com.lxhrainy.core.sys.model.UserInfo;

/**
 * 用户DAO接口
 * @author 薛云腾
 * @date 2016-05-28
 * @version 1.0
 */
@MyBatisDao
public interface IUserInfoDao extends IBaseDao<UserInfo> {

	/**
	 * 更新状态
	 * @param id
	 */
	void updateStatus(@Param("id") int id,@Param("status")int status);

	/**
	 * 根据用户名获取用户信息
	 * @param username
	 * @param password
	 * @return
	 */
	UserInfo checkUserLogin(@Param("username") String username, @Param("password") String password, @Param("channel") Integer channel);


	/**
	 * @Title: getByName 
	 * @Description:根据用户名获取用户信息
	 * @param @param username
	 * @param @return    设定文件 
	 * @return UserInfo    返回类型 
	 * @throws
	 */
	UserInfo getByName(@Param("username")String username);

	/**
	 * 密码修改
	 * @param userid
	 * @param password
	 */
	int updatePassword(@Param("id")int userid, @Param("password")String password);
	
	/**
	 * 获取用户个人资料
	 * @param id
	 * @return
	 */
	UserInfo getPersonInfo(@Param("id")int id);
	
}
