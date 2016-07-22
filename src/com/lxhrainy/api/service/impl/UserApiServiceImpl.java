/**
 * 
 */
package com.lxhrainy.api.service.impl;

import java.io.IOException;
import java.io.Serializable;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.alibaba.fastjson.JSONObject;
import com.lxhrainy.api.model.ApiParams;
import com.lxhrainy.api.service.IUserApiService;
import com.lxhrainy.api.util.ApiCacheUtil;
import com.lxhrainy.api.util.ApiConstant;
import com.lxhrainy.api.util.ResultJson;
import com.lxhrainy.api.util.SmsUtil;
import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.core.oe.SysNoticeVO;
import com.lxhrainy.core.sys.dao.IUserInfoDao;
import com.lxhrainy.core.sys.model.SysNotice;
import com.lxhrainy.core.sys.model.UserInfo;
import com.lxhrainy.core.sys.service.ISysNoticeService;
import com.lxhrainy.core.sys.service.IUserInfoService;
import com.lxhrainy.core.utils.DateUtil;
import com.lxhrainy.core.utils.PasswordUtil;
import com.lxhrainy.core.utils.StringUtil;
import com.lxhrainy.core.utils.oConvertUtils;
import com.lxhrainy.myjz.admin.user.model.UserConfig;
import com.lxhrainy.myjz.admin.user.model.UserMoney;
import com.lxhrainy.myjz.admin.user.service.IUserConfigService;
import com.lxhrainy.myjz.admin.user.service.IUserMoneyService;

/**
 * 用户数据
 * @author dyno
 *
 */
@Service
@Transactional
public class UserApiServiceImpl extends AbstractBaseServiceImpl<IUserInfoDao, UserInfo, Integer> implements IUserApiService  {

	@Autowired
	private ISysNoticeService sysNoticeService;
	@Autowired
	private IUserConfigService userConfigService;
	@Autowired
	private IUserInfoService userInfoService;
	@Autowired
	private IUserMoneyService userMoneyService;
	
	@Override
	public ResultJson getVerity(ApiParams params) {
		ResultJson rj = new ResultJson(ResultJson.ERROR_CODE_PARAMETERS,"参数错误");
		if (oConvertUtils.isNotEmpty(params) && StringUtil.isNotEmpty(params.getPhone())) {
			String phone = params.getPhone();
			//int length = oConvertUtils.getInt(sysconfigService.getValueByKey("captcha.lenght"), 6);
			int length = 6;
			String captcha = StringUtil.numRandom(length);
			//String content = sysconfigService.getValueByKey("captcha.content");
			String content = "[蚂蚁兼职]亲，您的验证码是{0}，在3分钟内有效。如非本人操作请忽略本短信。";
			String msg = MessageFormat.format(content, captcha);
			try {
				if (SmsUtil.send(msg, phone)) {
					ApiCacheUtil.addCaptchaChache(phone, captcha + "-" + DateUtil.getMillis());
					rj.setError_code(ResultJson.SUCCESS);
					rj.setSuccess(true);
					rj.setMessage("验证码已发送");
				} else {
					rj.setError_code(ResultJson.ERROR_CODE_GENERAL);
					rj.setMessage("验证码发送失败，请稍后再试");
				}
			} catch (IOException e) {
				e.printStackTrace();
				rj.setError_code(ResultJson.ERROR_CODE_GENERAL);
				rj.setMessage("验证码发送失败，请稍后再试");
				return rj;
			}
		}
		return rj;
	}

	@Override
	public ResultJson register(ApiParams mobileUser) {
		ResultJson rj = new ResultJson();
		rj.setError_code(ResultJson.ERROR_CODE_PARAMETERS);
		rj.setMessage("参数错误");
		if (oConvertUtils.isNotEmpty(mobileUser)) {
			if (oConvertUtils.isNotEmpty(mobileUser.getUsername()) 
					&& StringUtil.isNotEmpty(mobileUser.getPassword())
					&& StringUtil.isNotEmpty(mobileUser.getName())
					&& StringUtil.isNotEmpty(mobileUser.getCaptcha())
					&& StringUtil.isNotEmpty(mobileUser.getQQ())
					&& StringUtil.isNotEmpty(mobileUser.getPhone())
					&& StringUtil.isNotEmpty(mobileUser.getUuid())
					&& StringUtil.isNotEmpty(mobileUser.getPlatform())) {
				// 验证验证码
				String captcha = ApiCacheUtil.getCaptchaChache(mobileUser.getUsername());
				if (StringUtil.isEmpty(captcha)) {
					rj.setError_code(ResultJson.ERROR_CODE_CAPTCHA);
					rj.setMessage("请获取验证码");
					return rj;
				} else {
					String[] captchaArray =  captcha.split("-");
					if (captchaArray.length == 2 ) {
						long a = (new Date().getTime() - Long.parseLong(captchaArray[1])) / 1000;
						if (!captchaArray[0].equals(mobileUser.getCaptcha())) {
							rj.setError_code(ResultJson.ERROR_CODE_CAPTCHA);
							rj.setMessage("验证码错误");
							return rj;
						} else if ( a > 180) {
							rj.setError_code(ResultJson.ERROR_CODE_CAPTCHA);
							rj.setMessage("验证码超时，请重新获取");
							return rj;
						}
					}
				}
				
				Integer type = 2;
				// 用户注册
				
				if (userInfoService.isExistUserName(mobileUser.getUsername(), type)) {
					rj.setError_code(ResultJson.ERROR_CODE_USER_EXIST);
					rj.setMessage("账号已注册,请直接登录");
					return rj;
				}
				
				if (StringUtil.isNotEmpty(mobileUser.getInviter()) 
						&& !userInfoService.isExistUserName(mobileUser.getInviter(),type)) {
					rj.setError_code(ResultJson.ERROR_CODE_INVITER_NOT_EXIST);
					rj.setMessage("邀请人不存在");
				} else {
					//TODO
					UserInfo mobileUserEntity = new UserInfo();
					mobileUserEntity.setPassword(PasswordUtil.encrypt(mobileUser.getUsername(), mobileUser.getPassword(), PasswordUtil.getStaticSalt()));
					mobileUserEntity.setUsername(mobileUser.getUsername());
					mobileUserEntity.setInviter(mobileUser.getInviter());
					mobileUserEntity.setType(type);
					mobileUserEntity.setPhone(mobileUser.getUsername());
					mobileUserEntity.setStatus(ApiConstant.API_USER_ALLOW);
					mobileUserEntity.setRegistertime(new Date());
					Serializable id = userInfoService.save(mobileUserEntity);
					if (oConvertUtils.isEmpty(id)) {
						rj.setError_code(ResultJson.ERROR_CODE_API);
						rj.setMessage("注册失败");
					} else {
						ApiCacheUtil.removeCaptchaChache(mobileUser.getUsername());
						UserMoney account = new UserMoney();
						account.setUser(mobileUserEntity);
						account.setAllbalance(0d);
						account.setFrozenbalance(0d);
						account.setUsablebalance(0d);
						userMoneyService.save(account);
						
						rj.setSuccess(true);
						rj.setError_code(ResultJson.SUCCESS);
						rj.setMessage("注册成功");
					}
				}
			}
		}
		return rj;
	}

	@Override
	public ResultJson login(ApiParams mobileUser, HttpServletResponse response) {
		ResultJson rj = new ResultJson();
		rj.setError_code(ResultJson.ERROR_CODE_PARAMETERS);
		rj.setMessage("参数错误");
		if (oConvertUtils.isNotEmpty(mobileUser)) {
			if (oConvertUtils.isNotEmpty(mobileUser.getUsername()) 
					&& StringUtil.isNotEmpty(mobileUser.getPassword())
					&& StringUtil.isNotEmpty(mobileUser.getPlatform())
					&& StringUtil.isNotEmpty(mobileUser.getUuid())) {
				
				//Integer type = 2;
				
				UserInfo user = userInfoService.getByUsername(mobileUser.getUsername());
				if (user != null) {
					if (user.getStatus().intValue() == ApiConstant.API_USER_FORBIDDEN) {
						rj.setError_code(ResultJson.ERROR_CODE_USER_NO_AUTH);
						rj.setMessage("用户已被禁用，请联系管理员处理");
						return rj;
					}
					// 判断是否已登录
					UserInfo existLoginUser = ApiCacheUtil.getLoginUser();
					if (oConvertUtils.isNotEmpty(existLoginUser)) {
						if (oConvertUtils.isEmpty(existLoginUser.getUuid())) {
							ApiCacheUtil.removeUserChache();
						}
					}
					
					String password = PasswordUtil.encrypt(mobileUser.getUsername(), mobileUser.getPassword(), PasswordUtil.getStaticSalt());
					if (password.equals(user.getPassword())) {
						
						user.setUuid(mobileUser.getUuid());
						user.setPlatform(mobileUser.getPlatform());
						user.setLastlogintime(new Date());
						
						userInfoService.update(user);
						
						ApiCacheUtil.addUserChache(user);
						
						rj.setSuccess(true);
						rj.setError_code(ResultJson.SUCCESS);
						rj.setMessage("登录成功");
						Map<String, Object> result = new HashMap<String, Object>();
						result.put("usertoken", ApiCacheUtil.getUserToken(user));
						rj.setResult(result);
					} else {
						rj.setError_code(ResultJson.ERROR_CODE_PASSWORD);
						rj.setMessage("密码错误");
					}
				} else {
					rj.setError_code(ResultJson.ERROR_CODE_USER_NOT_EXIST);
					rj.setMessage("用户不存在，请先注册");
				}
			}
		}
		return rj;
	}

	@Override
	public ResultJson bindToken(ApiParams user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson changePwd(ApiParams params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson resetPwd(ApiParams params) {
		ResultJson rj = new ResultJson();
		if (oConvertUtils.isNotEmpty(params)) {
			if (oConvertUtils.isNotEmpty(params.getPhone()) 
					&& StringUtil.isNotEmpty(params.getPassword())
					&& StringUtil.isNotEmpty(params.getCaptcha())) {
				// 验证验证码
				String captcha = ApiCacheUtil.getCaptchaChache(params.getPhone());
				if (StringUtil.isEmpty(captcha)) {
					rj.setError_code(ResultJson.ERROR_CODE_CAPTCHA);
					rj.setMessage("请获取验证码");
					return rj;
				} else {
					String[] captchaArray =  captcha.split("-");
					if (captchaArray.length == 2 ) {
						long a = (new Date().getTime() - Long.parseLong(captchaArray[1])) / 1000;
						if (!captchaArray[0].equals(params.getCaptcha())) {
							rj.setError_code(ResultJson.ERROR_CODE_CAPTCHA);
							rj.setMessage("验证码错误");
							return rj;
						} else if ( a > 180) {
							rj.setError_code(ResultJson.ERROR_CODE_CAPTCHA);
							rj.setMessage("验证码超时，请重新获取");
							return rj;
						}
					}
				}
				ApiCacheUtil.removeCaptchaChache(params.getUsername());
				UserInfo mobileUser = userInfoService.getByPhone(params.getPhone());
				if (oConvertUtils.isNotEmpty(mobileUser)) {
					mobileUser.setPassword(PasswordUtil.encrypt(mobileUser.getUsername(), params.getPassword(), PasswordUtil.getStaticSalt()));
					userInfoService.update(mobileUser);
					ApiCacheUtil.updateUserChache(mobileUser);
					rj.setSuccess(true);
					rj.setError_code(ResultJson.SUCCESS);
					rj.setMessage("修改成功");
				} else {
					rj.setError_code(ResultJson.ERROR_CODE_USER_NOT_EXIST);
					rj.setMessage("用户不存在");
				} 
				
			} else {
				rj.setError_code(ResultJson.ERROR_CODE_PARAMETERS);
				rj.setMessage("参数错误");
			}
		}
		return rj;
	}

	@Override
	public ResultJson accountInfo(ApiParams user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson userInfo(ApiParams user) {
		ResultJson rj = new ResultJson();
		rj.setError_code(ResultJson.ERROR_CODE_PARAMETERS);
		rj.setMessage("参数错误");
		// 当前登录用户
		UserInfo loginUser = ApiCacheUtil.getLoginUser();
		if (oConvertUtils.isEmpty(loginUser)) {
			rj.setError_code(ResultJson.ERROR_CODE_USER_NOT_LOGIN);
			rj.setMessage("用户未登录");
			return rj;
		}
		UserInfo mobileUser = userInfoService.getPersonInfo(loginUser.getId());
		if (oConvertUtils.isNotEmpty(mobileUser)) {
			
			UserMoney account = userMoneyService.getByUserId(mobileUser.getId());
			
			JSONObject result = new JSONObject();
			//基本信息
			result.put("QQ", mobileUser.getDetailInfo().getQq());
			result.put("address", mobileUser.getDetailInfo().getApartment());
			result.put("avatarurl", mobileUser.getIcon());
			result.put("birthday", mobileUser.getDetailInfo().getBirthday());
			result.put("gender", mobileUser.getDetailInfo().getSex().intValue()==1?"男":"女");
			result.put("name", mobileUser.getDetailInfo().getRealname());
			result.put("phone", mobileUser.getPhone());
			// 账户信息
			Map<String,Object> accountMap = new HashMap<String,Object>();
			accountMap.put("balance", account.getAllbalance());
			//TODO 今日预计 收益
			accountMap.put("earnings", 0.00);
			accountMap.put("withdraw", account.getFrozenbalance());
			result.put("account", accountMap);
			rj.setSuccess(true);
			rj.setError_code(ResultJson.SUCCESS);
			rj.setMessage("");
			rj.setResult(result);
		} else {
			rj.setError_code(ResultJson.ERROR_CODE_USER_NOT_EXIST);
			rj.setMessage("用户不存在");
		}
		return rj;
	}

	@Override
	public ResultJson certifiedUser(Map<String, String> params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson updateInfo(ApiParams params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson payPassword(ApiParams params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson bindPay(ApiParams params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson unbindPay(ApiParams params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson topup(ApiParams params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson payOrder(ApiParams params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson withdrawal(ApiParams params) {
		ResultJson rj = new ResultJson();
		rj.setError_code(ResultJson.ERROR_CODE_PARAMETERS);
		rj.setMessage("参数错误");
		if (oConvertUtils.isNotEmpty(params) 
				&& StringUtil.isNotEmpty(params.getBankid())
				&& StringUtil.isNotEmpty(params.getFee())
				&& StringUtil.isNotEmpty(params.getMoney())
				&& StringUtil.isNotEmpty(params.getPassword())
				&& StringUtil.isNotEmpty(params.getCosttime())){
			double money = oConvertUtils.getDouble(params.getMoney(), 0);
			if (money == 0) {
				rj.setError_code(ResultJson.ERROR_CODE_PARAMETERS);
				rj.setMessage("提款金额错误");
				return rj;
			}
			UserInfo loginUser = ApiCacheUtil.getLoginUser();
			if (oConvertUtils.isNotEmpty(loginUser)) {
				//TODO 获取用户支付密码进行验证
				UserMoney userMoney = userMoneyService.getByUserId(loginUser.getId());
				if (oConvertUtils.isNotEmpty(userMoney)) {
					/*String password = PasswordUtil.encrypt(mobileUser.getUsername(), params.getPassword(), PasswordUtil.getStaticSalt());
					if (!password.equals(account.getPaypassword())) {
						rj.setError_code(ResultJson.ERROR_CODE_PASSWORD);
						rj.setMessage("支付密码错误");
						return rj;
					}*/
					/*TraceEntity traceEntity = mobileAccountService.withdrawal(account, type, money);
					if (oConvertUtils.isNotEmpty(traceEntity)) {
						
						WithdrawalEntity withdrawalEntity = new WithdrawalEntity();
						withdrawalEntity.setAccount(params.getAccount());
						withdrawalEntity.setCreatetime(DateUtils.getDate());
						withdrawalEntity.setMemo(params.getName());
						withdrawalEntity.setMobileuser(mobileUser);
						withdrawalEntity.setMoney(money);
						withdrawalEntity.setStatus(1);
						//withdrawalEntity.setSerial(WithdrawalEntity.getNo());
						withdrawalEntity.setType(type);
						withdrawalEntity.setTraceEntity(traceEntity);
						save(withdrawalEntity);
						
						if (oConvertUtils.isNotEmpty(withdrawalEntity)) {
							traceEntity.setMemo("提现账号：" + params.getAccount() + "   姓名：" + params.getName());
							JSONObject jsonObject = new JSONObject();
							jsonObject.put("serial_num", traceEntity.getTraceno());
						    jsonObject.put("product", "提现");
							rj.addSuccessMsg("申请成功，请等待管理员处理", jsonObject);
							return rj;
						}
					}*/
					rj.setError_code(ResultJson.ERROR_CODE_GENERAL);
					rj.setMessage("申请失败");
				} else {
					rj.setError_code(ResultJson.ERROR_CODE_USER_NOT_EXIST);
					rj.setMessage("账号不存在");
				}
			} else {
				rj.setError_code(ResultJson.ERROR_CODE_USER_NOT_EXIST);
				rj.setMessage("用户不存在");
			} 
		}
		return rj;
	}

	@Override
	public ResultJson billList(ApiParams params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson adlist(ApiParams params) {
		ResultJson rj = new ResultJson();
		rj.setError_code(ResultJson.ERROR_CODE_PARAMETERS);
		rj.setMessage("参数错误");
		JSONObject result = new JSONObject();
		List<JSONObject> list = new ArrayList<JSONObject>();
		//TODO 获取广告列表
		List<Object> adlist = new ArrayList<>();
		for(Object advert : adlist){
			JSONObject item = new JSONObject();
			item.put("content", "");
			item.put("adid", "");
			item.put("title", "");
			item.put("time", "");
			item.put("url", "");
			list.add(item);
		}
		result.put("list", list);
		result.put("isend", false);
		rj.addSuccessMsg("",result);
		return rj;
	}

	@Override
	public ResultJson noticelist(ApiParams params) {
		ResultJson rj = new ResultJson();
		rj.setError_code(ResultJson.ERROR_CODE_PARAMETERS);
		rj.setMessage("参数错误");
				
		SysNoticeVO vo = new SysNoticeVO();
		SysNotice model = new SysNotice();
		model.setType(ApiConstant.MSG_WEB);
		vo.setCount(ApiConstant.MSG_WEB_NUM);
		
		List<SysNotice> notices = sysNoticeService.getListForMobile(vo);
		
		JSONObject result = new JSONObject();
		List<JSONObject> list = new ArrayList<JSONObject>();
		if (oConvertUtils.isNotEmpty(notices) && notices.size() > 0) {
			for (SysNotice notice : notices) {
				JSONObject noticeObject = new JSONObject();
				noticeObject.put("content", notice.getContent());
				noticeObject.put("time", notice.getCreatetime());
				noticeObject.put("title", notice.getTitle());
				noticeObject.put("noticid", notice.getId());
				noticeObject.put("url", notice.getUrl());
				list.add(noticeObject);
			}
		}
		result.put("isend", false);
		result.put("list", list);
		rj.addSuccessMsg("成功",result);
		
		return rj;
	}

	/**
	 * 消息列表
	 */
	@Override
	public ResultJson msglist(ApiParams params) {
		ResultJson rj = new ResultJson();
		rj.setError_code(ResultJson.ERROR_CODE_PARAMETERS);
		rj.setMessage("参数错误");
		if (oConvertUtils.isNotEmpty(params) 
				&& oConvertUtils.isNotEmpty(params.getMessagetype())
				&& StringUtil.isNumeric(params.getMessagetype())){
			int offsetid = oConvertUtils.getInt(params.getOffsetid());
			int count = oConvertUtils.getInt(params.getCount(),20);
			UserInfo loginUser = ApiCacheUtil.getLoginUser();
			if (oConvertUtils.isNotEmpty(loginUser)) {
				
				SysNoticeVO vo = new SysNoticeVO();
				SysNotice model = new SysNotice();
				model.setType(oConvertUtils.getInt(params.getMessagetype()));
				model.setUser(loginUser);
				vo.setOffsetid(offsetid);
				vo.setCount(count);
				
				List<SysNotice> notices = sysNoticeService.getListForMobile(vo);
				
				JSONObject result = new JSONObject();
				List<JSONObject> list = new ArrayList<JSONObject>();
				if (oConvertUtils.isNotEmpty(notices) && notices.size() > 0) {
					for (SysNotice notice : notices) {
						JSONObject noticeObject = new JSONObject();
						boolean isread = notice.getStatus().intValue() == 0? false:true;
						noticeObject.put("isread", isread);
						noticeObject.put("content", notice.getContent());
						noticeObject.put("messagetype", notice.getType());
						noticeObject.put("time", notice.getCreatetime());
						noticeObject.put("title", notice.getTitle());
						noticeObject.put("messageid", notice.getId());
						noticeObject.put("url", notice.getUrl());
						list.add(noticeObject);
					}
				}
				if(list.size() == count){
					result.put("isend", false);
				}else{
					result.put("isend", true);
				}
				result.put("list", list);
				rj.addSuccessMsg("成功",result);
			}
		}
		return rj;
	}

	@Override
	public ResultJson msgread(ApiParams params) {
		ResultJson rj = new ResultJson();
		rj.setError_code(ResultJson.ERROR_CODE_PARAMETERS);
		rj.setMessage("参数错误");
		if (oConvertUtils.isNotEmpty(params) 
				&& oConvertUtils.isNotEmpty(params.getMessagetype())
				&& StringUtil.isNumeric(params.getMessagetype())){
			int offsetid = oConvertUtils.getInt(params.getOffsetid());
			int messageid = oConvertUtils.getInt(params.getMessageid());

			UserInfo loginUser = ApiCacheUtil.getLoginUser();
			if (oConvertUtils.isNotEmpty(loginUser)) {
				
				SysNoticeVO vo = new SysNoticeVO();
				SysNotice model = new SysNotice();
				model.setType(oConvertUtils.getInt(params.getMessagetype()));
				model.setUser(loginUser);
				if(messageid != 0){
					model.setId(messageid);
				}else if(offsetid != 0){
					vo.setOffsetid(offsetid);
				}
				boolean result = sysNoticeService.updateFromMobile(vo);
				if(result){
					JSONObject rs = new JSONObject();
					rj.addSuccessMsg("成功",rs);
				}else{
					rj.setError_code(ResultJson.ERROR_CODE_API);
					rj.addFailureMsg("网络异常，请稍后再试");
				}
			}
		}
		return rj;
	}

	@Override
	public ResultJson msgdel(ApiParams params) {
		ResultJson rj = new ResultJson();
		rj.setError_code(ResultJson.ERROR_CODE_PARAMETERS);
		rj.setMessage("参数错误");
		if (oConvertUtils.isNotEmpty(params) 
				&& oConvertUtils.isNotEmpty(params.getMessagetype())
				&& StringUtil.isNumeric(params.getMessagetype())
				&& (oConvertUtils.isNotEmpty(params.getMessageid()) || oConvertUtils.isNotEmpty(params.getOffsetid()))){
			int offsetid = oConvertUtils.getInt(params.getOffsetid());
			int messageid = oConvertUtils.getInt(params.getMessageid());

			UserInfo loginUser = ApiCacheUtil.getLoginUser();
			if (oConvertUtils.isNotEmpty(loginUser)) {
				
				SysNoticeVO vo = new SysNoticeVO();
				SysNotice model = new SysNotice();
				model.setType(oConvertUtils.getInt(params.getMessagetype()));
				model.setUser(loginUser);
				if(messageid != 0){
					model.setId(messageid);
				}else if(offsetid != 0){
					vo.setOffsetid(offsetid);
				}
				boolean result = sysNoticeService.delMsgFromMobile(vo);
				if(result){
					JSONObject rs = new JSONObject();
					rj.addSuccessMsg("成功",rs);
				}else{
					rj.setError_code(ResultJson.ERROR_CODE_API);
					rj.addFailureMsg("网络异常，请稍后再试");
				}
			}
		}
		return rj;
	}

	@Override
	public ResultJson msgset(ApiParams params) {
		ResultJson rj = new ResultJson();
		rj.setError_code(ResultJson.ERROR_CODE_PARAMETERS);
		rj.setMessage("参数错误");
		if (oConvertUtils.isNotEmpty(params) 
				&& oConvertUtils.isNotEmpty(params.getEnable())){
			boolean enable = params.getEnable();
			UserInfo loginUser = ApiCacheUtil.getLoginUser();
			
			if (oConvertUtils.isNotEmpty(loginUser)) {
				UserConfig config = new UserConfig();
				config.setUser(loginUser);
				config.setMessage(enable?"YES":"NO");
				//更新设置信息
				boolean result = userConfigService.updateMsgSet(config);
				if(result){
					JSONObject rs = new JSONObject();
					rj.addSuccessMsg("成功",rs);
				}else{
					rj.setError_code(ResultJson.ERROR_CODE_API);
					rj.addFailureMsg("网络异常，请稍后再试");
				}
			}
		}
		return rj;
	}

	@Override
	public ResultJson getSysConfig(ApiParams params) {

		ResultJson rj = new ResultJson();
		rj.setError_code(ResultJson.ERROR_CODE_PARAMETERS);
		rj.setMessage("参数错误");
		if (oConvertUtils.isNotEmpty(params) 
				&& oConvertUtils.isNotEmpty(params.getPlatform())){
			JSONObject complainttype = new JSONObject();
			JSONObject tbtypelist = new JSONObject();
			//TODO 获取小号等级列表信息
			complainttype.put("0", tbtypelist);
			//TODO 投诉类型
			JSONObject buyerlevel = new JSONObject();
			//TODO 提示信息
			JSONObject tips = new JSONObject();
			tips.put("withdrawnotice", "周一至周六上午11:00前申请，100元起提现在提现预计12点到账，首次提现不收取手续费，当日第二次以后每次收取1元手续费");
			JSONObject rs = new JSONObject();
			rs.put("complainttype", complainttype);
			rs.put("tips", tips);
			rs.put("buyerlevel", buyerlevel);
			rj.addSuccessMsg("成功",rs);
		}
		return rj;
	}

	@Override
	public ResultJson bankcardList(ApiParams params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson bankcardAdd(ApiParams params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson bankcardDele(ApiParams params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson withdrawFee(ApiParams params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson incomeList(ApiParams params) {
		// TODO Auto-generated method stub
		return null;
	}

}
