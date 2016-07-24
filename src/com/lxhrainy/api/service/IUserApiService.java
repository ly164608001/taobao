package com.lxhrainy.api.service;

import com.lxhrainy.api.model.ApiParams;
import com.lxhrainy.api.util.ResultJson;
import com.lxhrainy.core.common.service.IBaseService;
import com.lxhrainy.core.sys.model.UserInfo;

public interface IUserApiService extends IBaseService<UserInfo, Integer>{
	/**
	 * 获取广告列表
	 * @param params
	 */
	public ResultJson adlist(ApiParams params);
	/**
	 * 获取消息列表
	 * @param params
	 * @param response
	 */
	public ResultJson msglist(ApiParams params);
	/**
	 * 消息已读
	 * @param params
	 * @return
	 */
	public ResultJson msgread(ApiParams params);
	/**
	 * 消息删除
	 * @param params
	 * @return
	 */
	public ResultJson msgdel(ApiParams params);
	/**
	 * 消息通知设置
	 * @param params
	 * @return
	 */
	public ResultJson msgset(ApiParams params);
	
	/**
	 * 获取条数信息
	 * @param params
	 * @return
	 */
	public ResultJson getNumbers(ApiParams params);
	
	/**
	 * 获取系统配置信息
	 * @param params
	 * @return
	 */
	public ResultJson getSysConfig(ApiParams params);
	
	/**
	 * 获取滚动通知列表
	 * @param params
	 * @return
	 */
	public ResultJson noticelist(ApiParams params);
	
	
	
	
	
	
	
	
	
	/**
	 * 获取买号列表
	 * @param params
	 * @return
	 */
	public ResultJson buyerAccountList(ApiParams params);
	
	/**
	 * 买号添加或升级
	 * @param params
	 * @return
	 */
	public ResultJson buyerAccountAdd(ApiParams params);
	
	/**
	 * 获取提现手续费
	 * @param params
	 * @return
	 */
	public ResultJson withdrawFee(ApiParams params);
	
	/**
	 * 申请提现
	 * @param params
	 * @return
	 */
	public ResultJson withdrawal(ApiParams params);
	
	/**
	 * 提现列表
	 * @param params
	 * @return
	 */
	public ResultJson withdrawList(ApiParams params);
	
	/**
	 * 提现列表
	 * @param params
	 * @return
	 */
	public ResultJson incomeList(ApiParams params);
	
	/**
	 * 银行卡列表
	 * @param params
	 * @return
	 */
	public ResultJson bankcardList(ApiParams params);
	/**
	 * 新增银行卡
	 * @param params
	 * @return
	 */
	public ResultJson bankcardAdd(ApiParams params);
	/**
	 * 删除银行卡
	 * @param params
	 * @return
	 */
	public ResultJson bankcardDele(ApiParams params);
	
	
	
	
	
	/**
	 * 实名认证
	 * @param params
	 * @return
	 */
	public ResultJson certificate(ApiParams params);
	/**
	 * 实名认证信息
	 * @param params
	 * @return
	 */
	public ResultJson certificateInfo(ApiParams params);
	/**
	 * 重置密码
	 * @param params  电话号码,验证码,身份证号,新密码
	 */
	public ResultJson forgetPassword(ApiParams params);
	
	/**
	 * 用户注册
	 * @param user :
	 * 		username 用户名（必须）
	 *		password 密码（必须）
	 *		inviter 邀请人账号	
	 *		captcha 验证码（必须）
	 * @param response
	 */
	public ResultJson register(ApiParams mobileUser);
	
	/**
	 * 获取用户信息
	 * @param user
	 * @return
	 */
	public ResultJson userInfo(ApiParams user);
	
	/**
	 * 用户登录
	 * @param user
	 */
	public ResultJson login(ApiParams mobileUser);
	
	/**
	 * 修改用户信息
	 * @param params
	 * @param response
	 * @return
	 */
	public ResultJson editUserInfo(ApiParams params);
	
	/**
	 * 获取手机验证码
	 * @param params  手机号码
	 * @param response
	 */
	public ResultJson getVerity(ApiParams params);
	
	
	/**
	 * 设置密码
	 * @param params
	 * @return
	 */
	public ResultJson setPassword(ApiParams params);
	
}
