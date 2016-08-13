package com.lxhrainy.myjz.admin.user.service;

import com.lxhrainy.core.common.service.IBaseService;
import com.lxhrainy.myjz.admin.user.model.UserMoney;

/**
 * 用户账户信息服务接口
 * @author xueyunteng
 * @date 2016-05-23
 */
public interface IUserMoneyService extends IBaseService<UserMoney, Integer>{

	/**
	 * @Title: getByUserId 
	 * @Description: 根据用户ID获取用户账户信息 
	 * @param @param id
	 * @param @return    设定文件 
	 * @return UserMoney    返回类型 
	 * @throws
	 */
	UserMoney getByUserId(Integer id);

	/**
	 * @Title: updateStatusByUserId 
	 * @Description: 根据用户ID更新账户状态
	 * @param model
	 * @return    设定文件 
	 * @return boolean    返回类型 
	 * @throws
	 */
	boolean updateStatusByUserId(UserMoney model);
	
	/**
	 * @Description: 验证交易密码是否正确
	 * @param userid 用户
	 * @param paypassword 交易密码
	 * @return boolean    返回类型 
	 */
	boolean validatePaypassword(int userid, String paypassword);

	/**
	 * @Description: 更新交易密码
	 * @param userid
	 * @param newPassword
	 * @return 1 成功 -1密码错误
	 */
	int updatePaypassword(int userid, String oldPassword, String newPassword);

	/**
	 * 冻结金额
	 * @param money 提现金额
	 * @param moneyInfo
	 * @return 1 成功
	 * 		-1 可用余额不足
	 */
	public int frozonMoney(UserMoney moneyInfo,double money);
	
	/**
	 * 对应用户账户进行加指定金额
	 * @param userid
	 * @param money
	 * @return
	 */
	public void recharge(int userid,double money);

	/**
	 * 对应用户账户进行扣除指定金额(扣除总金额和冻结金额)
	 * @param userid
	 * @param money
	 * @return
	 */
	void withdrawls(int userid, double money);
}
