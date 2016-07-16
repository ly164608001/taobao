package com.lxhrainy.myjz.admin.user.dao;

import org.apache.ibatis.annotations.Param;

import com.lxhrainy.core.annotation.MyBatisDao;
import com.lxhrainy.core.common.dao.IBaseDao;
import com.lxhrainy.myjz.admin.user.model.UserAuthInfo;

/**
 * 用户认证信息接口
 * @author 薛云腾
 * @date 2016-05-28
 * @version 1.0
 */
@MyBatisDao
public interface IUserAuthInfoDao extends IBaseDao<UserAuthInfo> {

	/**
	 * @Title: getByUserId 
	 * @Description:根据用户ID获取用户认证信息
	 * @param userid
	 * @return    设定文件 
	 * @return UserAuthInfo    返回类型 
	 * @throws
	 */
	UserAuthInfo getByUserId(@Param("userid")Integer userid);

	/**
	 * @Title: auditUser 
	 * @Description:实名认证身份信息审核
	 * @param model
	 * @return    设定文件 
	 * @return int    返回类型 
	 * @throws
	 */
	int auditUser(@Param("model")UserAuthInfo model);

	/**
	 * @Title: auditUserPaid 
	 * @Description: 审核用户的打款信息
	 * @param model
	 * @return    设定文件 
	 * @return int    返回类型 
	 * @throws
	 */
	int auditUserPaid(@Param("model")UserAuthInfo model);
	
}
