package com.lxhrainy.core.sys.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lxhrainy.core.annotation.MyBatisDao;
import com.lxhrainy.core.common.dao.IBaseDao;
import com.lxhrainy.core.sys.model.UserInfo;
import com.lxhrainy.myjz.admin.user.oe.UserInfoVO;

/**
 * 用户DAO接口
 * @author 薛云腾
 * @date 2016-05-28
 * @version 1.0
 */
@MyBatisDao
public interface IUserInfoDao extends IBaseDao<UserInfo> {

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

	/**
	 * @Title: getMemberCountByCondition 
	 * @Description: 获取会员总数 
	 * @param vo
	 * @return    设定文件 
	 * @return int    返回类型 
	 * @throws
	 */
	int getMemberCountByCondition(@Param("condition")UserInfoVO vo);

	/**
	 * @Title: findMemberListByPage 
	 * @Description: 获取会员信息列表 
	 * @param vo
	 * @return    设定文件 
	 * @return List<UserInfo>    返回类型 
	 * @throws
	 */
	List<UserInfo> findMemberListByPage(@Param("condition")UserInfoVO vo);

	/**
	 * @Title: updateUserStatus 
	 * @Description: 更新用户状态
	 * @param user
	 * @return    设定文件 
	 * @return int    返回类型 
	 * @throws
	 */
	int updateUserStatus(@Param("user")UserInfo user);

	/**
	 * @Title: findEstateListByPage 
	 * @Description: 获取房地产商用户列表
	 * @param vo
	 * @return    设定文件 
	 * @return List<UserInfo>    返回类型 
	 * @throws
	 */
	List<UserInfo> findEstateListByPage(@Param("condition")UserInfoVO vo);

	/**
	 * @Title: getEstateCountByCondition 
	 * @Description: 获取房地产商用户总数
	 * @param vo
	 * @return    设定文件 
	 * @return int    返回类型 
	 * @throws
	 */
	int getEstateCountByCondition(@Param("condition")UserInfoVO vo);
	
}
