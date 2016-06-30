package com.lxhrainy.api.service;

import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import com.lxhrainy.api.model.ApiParams;
import com.lxhrainy.api.util.ResultJson;
import com.lxhrainy.core.common.service.IBaseService;
import com.lxhrainy.core.sys.model.UserInfo;

public interface IUserApiService extends IBaseService<UserInfo, Integer>{
	/**
	 * 获取手机验证码
	 * @param params  手机号码
	 * @param response
	 */
	public ResultJson getVerity(ApiParams params);
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
	 * 用户登录
	 * @param user
	 */
	public ResultJson login(ApiParams mobileUser, HttpServletResponse response);
	/**
	 * 绑定推送令牌到账号接口
	 * @param user
	 */
	public ResultJson bindToken(ApiParams user);
	/**
	 * 修改密码
	 * @param params  电话号码
	 * 				      旧密码
	 * 				     新密码
	 */
	public ResultJson changePwd(ApiParams params);
	/**
	 * 重置密码
	 * @param params  电话号码,验证码,身份证号,新密码
	 */
	public ResultJson resetPwd(ApiParams params);
	/**
	 * 获取用户账户信息
	 * @param user
	 */
	public ResultJson accountInfo(ApiParams user);
	/**
	 * 获取用户信息
	 * @param user
	 * @return
	 */
	public ResultJson userInfo(ApiParams user);
	/**
	 * 认证司机信息
	 * @param user
	 */
	public ResultJson certifiedDriver(Map<String, String> params);
	/**
	 * 认证用户/公司信息
	 * @param userid 用户id(必须）
	 * 		   name 真实姓名
	 * 		   contact 联系电话
	 * 		   enterprise 企业名称
	 * 		   ent_address 公司所在地(省市县)
	 * 		   ent_detail_address 详细地址(街道-路-号)
	 * 		   ent_iconurl 营业执照照片id
	 * 		   identity 身份证号
	 * 		   identity_iconid 身份证照片id
	 * 		   identity_back_iconid 身份证背面照片id
	 */
	public ResultJson certifiedUser(Map<String, String> params);
	/**
	 * 认证车辆信息
	 * 	功能 ： 
	 * 		1、提交车辆信息（必填:plate，model,conductor）
	 *  	2、提交车辆附属信息
	 *  	3、用户提交车辆认证信息（必填：license_iconid，选填：operacert_iconid）	 
	 */
	public ResultJson certifiedCar(ApiParams params);
	/**
	 * GET方式 二进制图片数据
	 * @param request id
	 * @param response
	 */
	public void getimg(String id, HttpServletResponse response);
	/**
	 * 更新用户信息
	  * @param params : 
	 */
	public ResultJson updateInfo(ApiParams params);
	/**
	 * 提交支付账号密码设置
	 * @param params
	 */
	public ResultJson payPassword(ApiParams params);
	/**
	 * 绑定支付账号信息
	 * @param params
	 */
	public ResultJson bindPay(ApiParams params);
	/**
	 * 解除绑定支付账号信息
	 * @param params
	 */
	public ResultJson unbindPay(ApiParams params);	
	/**
	 * 申请充值
	 * @param params
	 * @return
	 */
	public ResultJson topup(ApiParams params);
	/**
	 * 订单支付请求
	 * @param params
	 * @return
	 */
	public ResultJson payOrder(ApiParams params);
	/**
	 * 申请提现
	 * @param params
	 * @return
	 */
	public ResultJson withdrawal(ApiParams params);
	/**
	 * 账单列表
	 * @param params
	 * @return
	 */
	public ResultJson billList(ApiParams params);
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
	
}
