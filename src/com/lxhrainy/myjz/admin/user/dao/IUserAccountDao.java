package com.lxhrainy.myjz.admin.user.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lxhrainy.core.annotation.MyBatisDao;
import com.lxhrainy.core.common.dao.IBaseDao;
import com.lxhrainy.myjz.admin.user.model.UserAccount;
import com.lxhrainy.myjz.admin.user.oe.UserAccountVO;

/**
 * 用户银行账户接口
 * @author 薛云腾
 * @date 2016-07-31
 * @version 1.0
 */
@MyBatisDao
public interface IUserAccountDao extends IBaseDao<UserAccount> {

	List<UserAccount> getListByUser(@Param("userid")int userid);

	/**
	 * 手机端获取银行卡列表
	 * @param vo
	 * @return
	 */
	List<UserAccount> getListForMobile(@Param("condition")UserAccountVO vo);
	
}
