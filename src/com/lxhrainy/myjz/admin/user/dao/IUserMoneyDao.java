package com.lxhrainy.myjz.admin.user.dao;

import org.apache.ibatis.annotations.Param;

import com.lxhrainy.core.annotation.MyBatisDao;
import com.lxhrainy.core.common.dao.IBaseDao;
import com.lxhrainy.myjz.admin.user.model.UserMoney;

/**
 * 用户账户接口
 * @author 薛云腾
 * @date 2016-05-28
 * @version 1.0
 */
@MyBatisDao
public interface IUserMoneyDao extends IBaseDao<UserMoney> {

	/**
	 * 根据用户获取账户
	 * @param userid
	 * @return
	 */
	UserMoney getByUserId(@Param("userid")Integer userid);

	/**
	 * 更新状态
	 * @param model
	 * @return
	 */
	int updateStatusByUserId(@Param("model")UserMoney model);

	/**
	 * 更新交易密码
	 * @param userid
	 * @param newPassword 加密后的新密码
	 */
	void updatePaypassword(@Param("userid")int userid, @Param("newPassword")String newPassword);

	/**
	 * 添加指定用户的账户金额
	 * @param userid
	 * @param money
	 */
	void addMoney(@Param("userid")int userid, @Param("money")double money);

	/**
	 * 扣除指定用户的账户金额(总金额和冻结金额)
	 * @param userid
	 * @param money
	 */
	void subBothMoney(@Param("userid")int userid, @Param("money")double money);
	
}
