package com.lxhrainy.myjz.admin.user.service;

import java.util.List;

import com.lxhrainy.core.common.service.IBaseService;
import com.lxhrainy.myjz.admin.user.model.UserAccount;
import com.lxhrainy.myjz.admin.user.oe.UserAccountVO;

/**
 * 用户银行账户服务接口
 * @author xueyunteng
 * @date 2016-07-31
 */
public interface IUserAccountService extends IBaseService<UserAccount, Integer>{

	/**
	 * 获取用户银行卡列表
	 * @param userid
	 * @return
	 */
	List<UserAccount> getListByUser(int userid);

	/**
	 * 手机端获取银行卡列表
	 * @param vo
	 * @return
	 */
	List<UserAccount> getListForMobile(UserAccountVO vo);

}
