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
import com.lxhrainy.core.utils.AESUtil;
import com.lxhrainy.core.utils.DateUtil;
import com.lxhrainy.core.utils.StringUtil;
import com.lxhrainy.core.utils.oConvertUtils;
import com.lxhrainy.myjz.admin.adv.model.AdvertInfo;
import com.lxhrainy.myjz.admin.adv.service.IAdvertInfoService;
import com.lxhrainy.myjz.admin.basic.model.BasicBank;
import com.lxhrainy.myjz.admin.buyer.model.AccountInfo;
import com.lxhrainy.myjz.admin.buyer.model.LevelInfo;
import com.lxhrainy.myjz.admin.buyer.oe.AccountVO;
import com.lxhrainy.myjz.admin.buyer.oe.LevelVO;
import com.lxhrainy.myjz.admin.buyer.service.IAccountService;
import com.lxhrainy.myjz.admin.buyer.service.ILevelService;
import com.lxhrainy.myjz.admin.task.model.ComplainType;
import com.lxhrainy.myjz.admin.task.model.TaskStatistics;
import com.lxhrainy.myjz.admin.task.model.Tips;
import com.lxhrainy.myjz.admin.trace.model.TraceRecord;
import com.lxhrainy.myjz.admin.trace.model.TraceWithdrawls;
import com.lxhrainy.myjz.admin.trace.oe.TraceRecordVO;
import com.lxhrainy.myjz.admin.trace.oe.TraceWithdrawlsVO;
import com.lxhrainy.myjz.admin.trace.service.ITraceRecordService;
import com.lxhrainy.myjz.admin.trace.service.ITraceWithdrawlsService;
import com.lxhrainy.myjz.admin.user.model.UserAccount;
import com.lxhrainy.myjz.admin.user.model.UserAuthInfo;
import com.lxhrainy.myjz.admin.user.model.UserConfig;
import com.lxhrainy.myjz.admin.user.model.UserMoney;
import com.lxhrainy.myjz.admin.user.oe.UserAccountVO;
import com.lxhrainy.myjz.admin.user.service.IUserAccountService;
import com.lxhrainy.myjz.admin.user.service.IUserAuthInfoService;
import com.lxhrainy.myjz.admin.user.service.IUserConfigService;
import com.lxhrainy.myjz.admin.user.service.IUserMoneyService;
import com.lxhrainy.myjz.common.constant.Global;

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
	@Autowired
	private ILevelService levelService;
	@Autowired
	private IAccountService accountService;
	@Autowired
	private IAdvertInfoService advertInfoService;
	@Autowired
	private ITraceWithdrawlsService withdrawlsService;
	@Autowired
	private ITraceRecordService traceRecordService;
	@Autowired
	private IUserAccountService userAccountService;
	@Autowired
	private IUserAuthInfoService authInfoService;
	
	@Override
	public ResultJson adlist(ApiParams params) {
		ResultJson rj = new ResultJson();
		rj.setError_code(ResultJson.ERROR_CODE_PARAMETERS);
		rj.setMessage("参数错误");
		JSONObject result = new JSONObject();
		List<JSONObject> list = new ArrayList<JSONObject>();
		List<AdvertInfo> adlist = advertInfoService.getAllList(null);
		for(AdvertInfo advert : adlist){
			JSONObject item = new JSONObject();
			item.put("content", advert.getContent());
			item.put("adid", advert.getId());
			item.put("title", advert.getTitle());
			item.put("time", advert.getTime());
			item.put("url", advert.getUrl());
			item.put("bgimgurl", advert.getImg());
			list.add(item);
		}
		result.put("list", list);
		result.put("isend", false);
		rj.addSuccessMsg("",result);
		return rj;
	}
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
	@Transactional(readOnly = false)
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
	@Transactional(readOnly = false)
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
	@Transactional(readOnly = false)
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
	/**
	 * {
	    "result":{
	        "message":0,用户未读消息条数
	        "task":[
	            {
	                "number":0,任务条数
	                "targetsubtype":0,任务平台类型	0:手机单;1:电脑单;
	                "targetplatfrom":0,任务目标副类型	0:常规单;1:流量单;
	                "targettype":0任务目标类型，targettype可与targetsubtype、targetplatfrom和用，允许组合	0:淘宝;1:京东;
	            }
	        ]
	    },
	    "message":"",
	    "code":0,
	    "success":false
	}
	 */
	@Override
	public ResultJson getNumbers(ApiParams params) {
		ResultJson rj = new ResultJson();
		rj.setError_code(ResultJson.ERROR_CODE_PARAMETERS);
		rj.setMessage("参数错误");
		if (oConvertUtils.isNotEmpty(params) 
				&& oConvertUtils.isNotEmpty(params.getPlatform())){
			UserInfo loginUser = ApiCacheUtil.getLoginUser();
			if (oConvertUtils.isNotEmpty(loginUser)) {
				JSONObject rs = new JSONObject();
				//用户未读消息条数
				SysNoticeVO vo = new SysNoticeVO();
				SysNotice model = new SysNotice();
				model.setType(ApiConstant.MSG_USER);
				model.setUser(loginUser);
				model.setStatus(ApiConstant.MSG_UNREAD);
				int message = sysNoticeService.getCountByCondition(vo);
				rs.put("message", message);
				JSONObject task = new JSONObject();
				//TODO 获取任务数
				TaskStatistics taskStatistics = new TaskStatistics();
				task.put("number", taskStatistics.getNumber());
				task.put("targetsubtype", taskStatistics.getTargetsubtype());
				task.put("targetplatfrom", taskStatistics.getTargetplatfrom());
				task.put("targettype", taskStatistics.getTargettype());
				rs.put("task", task);
				rj.addSuccessMsg("成功",rs);
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
			JSONObject buyerlevel = new JSONObject();
			List<JSONObject> tbtypelist = new ArrayList<JSONObject>();
			List<JSONObject> jdtypelist = new ArrayList<JSONObject>();
			//获取小号等级列表信息
			LevelVO levelVo = new LevelVO();
			List<LevelInfo> levelList = levelService.getAllList(levelVo);
			for(LevelInfo levelInfo : levelList){
				JSONObject level = new JSONObject();
				if(levelInfo.getType().intValue() == 1){
					level.put("id", levelInfo.getId());
					level.put("name", levelInfo.getName());
					tbtypelist.add(level);
				}else{
					level.put("id", levelInfo.getId());
					level.put("name", levelInfo.getName());
					jdtypelist.add(level);
				}
			}
			buyerlevel.put("0", tbtypelist);
			buyerlevel.put("1", jdtypelist);
			//TODO 获取投诉类型
			List<ComplainType> complainTypeList = new ArrayList<>();
			List<JSONObject> complainttype = new ArrayList<>();
			for(ComplainType complainType : complainTypeList){
				JSONObject complain = new JSONObject();
				complain.put("id", complainType.getId());
				complain.put("name", complainType.getName());
				complainttype.add(complain);
			}
			//TODO 获取提示信息
			JSONObject tips = new JSONObject();
			List<Tips> tipList = new ArrayList<>();
			for(Tips tip : tipList){
				//tips.put("withdrawnotice", "周一至周六上午11:00前申请，100元起提现在提现预计12点到账，首次提现不收取手续费，当日第二次以后每次收取1元手续费");
				tips.put(tip.getKeyword(), tip.getContent());
			}
			JSONObject rs = new JSONObject();
			rs.put("complainttype", complainttype);
			rs.put("tips", tips);
			rs.put("buyerlevel", buyerlevel);
			rj.addSuccessMsg("成功",rs);
		}
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
	@Override
	public ResultJson buyerAccountList(ApiParams params) {
		ResultJson rj = new ResultJson();
		rj.setError_code(ResultJson.ERROR_CODE_PARAMETERS);
		rj.setMessage("参数错误");
		if (oConvertUtils.isNotEmpty(params)) {
			UserInfo loginUser = ApiCacheUtil.getLoginUser();
			if (oConvertUtils.isNotEmpty(loginUser)) {
				int offsetid = oConvertUtils.getInt(params.getOffsetid());
				int count = oConvertUtils.getInt(params.getCount(),20);
				
				AccountVO vo = new AccountVO();
				AccountInfo model = new AccountInfo();
				model.setCreateuser(loginUser);
				vo.setOffsetid(offsetid);
				vo.setCount(count);
				
				List<AccountInfo> accountList = accountService.getListForMobile(vo);
				
				JSONObject result = new JSONObject();
				List<JSONObject> list = new ArrayList<JSONObject>();
				if (oConvertUtils.isNotEmpty(accountList) && accountList.size() > 0) {
					for (AccountInfo account : accountList) {
						JSONObject accountObject = new JSONObject();
						accountObject.put("account", account.getAccountno());
						accountObject.put("accountid", account.getId());
						accountObject.put("accounttype", ApiConstant.TAOBAO);
						accountObject.put("status", account.getStatus());
						if(account.getLevel() != null){
							String tags = account.getLevel().getName();
							if(account.getIdentification().intValue() == ApiConstant.YES){
								tags += ",实名";
							}
							accountObject.put("tags", tags);
						}else{
							accountObject.put("tags", "未实名");
						}
						list.add(accountObject);
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
	@Transactional(readOnly = false)
	public ResultJson buyerAccountAdd(ApiParams params) {
		ResultJson rj = new ResultJson();
		rj.setError_code(ResultJson.ERROR_CODE_PARAMETERS);
		rj.setMessage("参数错误");
		if (oConvertUtils.isNotEmpty(params)
				&& oConvertUtils.isNotEmpty(params.getAccount())
				&& oConvertUtils.isNotEmpty(params.getLevel())
				&& oConvertUtils.isNotEmpty(params.getLevelimage())) {
			UserInfo loginUser = ApiCacheUtil.getLoginUser();
			if (oConvertUtils.isNotEmpty(loginUser)) {
				AccountInfo accountInfo = new AccountInfo();
				accountInfo.setCreateuser(loginUser);
				accountInfo.setCreatetime(new Date());
				accountInfo.setAuditstatus(ApiConstant.AUDIT_INIT);
				accountInfo.setLevelpic(params.getLevelimage());
				LevelInfo level = new LevelInfo();
				level.setId(oConvertUtils.getInt(params.getLevel()));
				accountInfo.setLevel(level);
				accountInfo.setAccountno(params.getAccount());
				
				int result = -1;
				if(oConvertUtils.isNotEmpty(params.getAccountid())){
					accountInfo.setId(oConvertUtils.getInt(params.getAccountid()));
					result = accountService.update(accountInfo);
				}else{
					result = accountService.save(accountInfo);
				}
				if(result != -1){
					rj.setSuccess(true);
					rj.setError_code(ResultJson.SUCCESS);
					rj.setMessage("操作成功");
				}else{
					rj.setError_code(ResultJson.ERROR_CODE_GENERAL);
					rj.setSuccess(false);
					rj.setMessage("操作失败");
				}
			}
		}
		return rj;
	}
	@Override
	public ResultJson withdrawFee(ApiParams params) {
		ResultJson rj = new ResultJson();
		rj.setError_code(ResultJson.ERROR_CODE_PARAMETERS);
		rj.setMessage("参数错误");
		if (oConvertUtils.isNotEmpty(params)
				&& oConvertUtils.isNotEmpty(params.getBank())
				&& oConvertUtils.isNotEmpty(params.getCosttime())
				&& oConvertUtils.isNotEmpty(params.getMoney())) {
			JSONObject result = new JSONObject();
			if((oConvertUtils.getInt(params.getCosttime()) + 1) == ApiConstant.WITHDRAWLS_TYPE_NORMAL){
				//TODO 正常提现
				result.put("fee", "0.00");
			}else{
				//快速提现
				result.put("fee", "1.00");
			}
			rj.addSuccessMsg("成功",result);
		}
		return rj;
	}
	@Override
	public ResultJson withdrawal(ApiParams params) {
		ResultJson rj = new ResultJson();
		rj.setError_code(ResultJson.ERROR_CODE_PARAMETERS);
		rj.setMessage("参数错误");
		if (oConvertUtils.isNotEmpty(params)
				&& oConvertUtils.isNotEmpty(params.getBankid())
				&& oConvertUtils.isNotEmpty(params.getCosttime())
				&& oConvertUtils.isNotEmpty(params.getFee())
				&& oConvertUtils.isNotEmpty(params.getMoney())
				&& oConvertUtils.isNotEmpty(params.getPassword())) {
			UserInfo loginUser = ApiCacheUtil.getLoginUser();
			if (oConvertUtils.isNotEmpty(loginUser)) {
				//验证密码
				UserMoney userMoney = userMoneyService.getByUserId(loginUser.getId());
				if(encrptPassword(params.getPassword()).equals(userMoney.getPaypassword())){
					TraceWithdrawls withdrawls = new TraceWithdrawls();
					UserAccount account = new UserAccount();
					account.setId(oConvertUtils.getInt(params.getBankid()));
					withdrawls.setAccount(account);
					//withdrawls.setFinishtime(DateUtil.str2Date(params.getCosttime(), DateUtil.date_sdf));
					withdrawls.setMoney(oConvertUtils.getDouble(params.getMoney(),0.0));
					withdrawls.setCommission(oConvertUtils.getDouble(params.getFee(),0.0));
					withdrawls.setArrivalmoney(oConvertUtils.getDouble(params.getMoney(),0.0));
					withdrawls.setStatus(ApiConstant.WITHDRAWLS_STATUS_INIT);
					withdrawls.setUser(loginUser);
					withdrawls.setType(oConvertUtils.getInt(params.getCosttime()+1));
					withdrawls.setWithdrawalno(StringUtil.getRandomString(16));
					
					int result = withdrawlsService.save(withdrawls);
					
					if(result != -1){
						rj.setSuccess(true);
						rj.setError_code(ResultJson.SUCCESS);
						rj.setMessage("提现成功");
					}else{
						rj.setError_code(ResultJson.ERROR_CODE_GENERAL);
						rj.setSuccess(false);
						rj.setMessage("提现失败");
					}
					
				}else{
					rj.setError_code(ResultJson.ERROR_CODE_GENERAL);
					rj.setSuccess(false);
					rj.setMessage("密码错误");
				}
			}
		}
		return rj;
	}
	@Override
	public ResultJson withdrawList(ApiParams params) {
		ResultJson rj = new ResultJson();
		rj.setError_code(ResultJson.ERROR_CODE_PARAMETERS);
		rj.setMessage("参数错误");
		if (oConvertUtils.isNotEmpty(params)) {
			UserInfo loginUser = ApiCacheUtil.getLoginUser();
			if (oConvertUtils.isNotEmpty(loginUser)) {
				int offsetid = oConvertUtils.getInt(params.getOffsetid());
				int count = oConvertUtils.getInt(params.getCount(),20);
				
				TraceWithdrawlsVO vo = new TraceWithdrawlsVO();
				TraceWithdrawls model = new TraceWithdrawls();
				model.setUser(loginUser);
				vo.setOffsetid(offsetid);
				vo.setCount(count);
				
				List<TraceWithdrawls> withdrawlsList = withdrawlsService.getListForMobile(vo);
				
				JSONObject result = new JSONObject();
				List<JSONObject> list = new ArrayList<JSONObject>();
				if (oConvertUtils.isNotEmpty(withdrawlsList) && withdrawlsList.size() > 0) {
					for (TraceWithdrawls withdrawls : withdrawlsList) {
						JSONObject withdrawlsObject = new JSONObject();
						withdrawlsObject.put("account", withdrawls.getAccount().getAccountno());
						withdrawlsObject.put("desc", "");
						withdrawlsObject.put("fee", withdrawls.getCommission());
						withdrawlsObject.put("money", withdrawls.getMoney());
						withdrawlsObject.put("profit", withdrawls.getArrivalmoney());
						withdrawlsObject.put("status", withdrawls.getStatus());
						withdrawlsObject.put("time", withdrawls.getCreatetime());
						withdrawlsObject.put("withdrawid", withdrawls.getId());
						list.add(withdrawlsObject);
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
	public ResultJson incomeList(ApiParams params) {
		ResultJson rj = new ResultJson();
		rj.setError_code(ResultJson.ERROR_CODE_PARAMETERS);
		rj.setMessage("参数错误");
		if (oConvertUtils.isNotEmpty(params)) {
			UserInfo loginUser = ApiCacheUtil.getLoginUser();
			if (oConvertUtils.isNotEmpty(loginUser)) {
				int offsetid = oConvertUtils.getInt(params.getOffsetid());
				int count = oConvertUtils.getInt(params.getCount(),20);
				
				TraceRecordVO vo = new TraceRecordVO();
				TraceRecord model = new TraceRecord();
				model.setUser(loginUser);
				vo.setOffsetid(offsetid);
				vo.setCount(count);
				List<TraceRecord> traceRecordList = traceRecordService.getListForMobile(vo);
				JSONObject result = new JSONObject();
				List<JSONObject> list = new ArrayList<JSONObject>();
				if (oConvertUtils.isNotEmpty(traceRecordList) && traceRecordList.size() > 0) {
					for (TraceRecord traceRecord : traceRecordList) {
						JSONObject traceRecordObject = new JSONObject();
						//交易类型 1收入(任务奖金) 2支出(提现)
						traceRecordObject.put("iscost", traceRecord.getType().intValue()==ApiConstant.TRACE_TYPE_IN?true:false);
						traceRecordObject.put("incomeid", traceRecord.getId());
						traceRecordObject.put("money", traceRecord.getMoney());
						traceRecordObject.put("desc", traceRecord.getMemo());
						traceRecordObject.put("time", traceRecord.getTracetime());
						list.add(traceRecordObject);
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
	public ResultJson bankcardList(ApiParams params) {
		ResultJson rj = new ResultJson();
		rj.setError_code(ResultJson.ERROR_CODE_PARAMETERS);
		rj.setMessage("参数错误");
		if (oConvertUtils.isNotEmpty(params)) {
			UserInfo loginUser = ApiCacheUtil.getLoginUser();
			if (oConvertUtils.isNotEmpty(loginUser)) {
				int offsetid = oConvertUtils.getInt(params.getOffsetid());
				int count = oConvertUtils.getInt(params.getCount(),20);
				
				UserAccountVO vo = new UserAccountVO();
				UserAccount model = new UserAccount();
				model.setUser(loginUser);
				vo.setOffsetid(offsetid);
				vo.setCount(count);
				List<UserAccount> userAccountList = userAccountService.getListForMobile(vo);
				JSONObject result = new JSONObject();
				List<JSONObject> list = new ArrayList<JSONObject>();
				if (oConvertUtils.isNotEmpty(userAccountList) && userAccountList.size() > 0) {
					for (UserAccount userAccount : userAccountList) {
						JSONObject userAccountObject = new JSONObject();
						userAccountObject.put("bankid", userAccount.getId());
						userAccountObject.put("holder", userAccount.getAccountname());
						userAccountObject.put("bank", userAccount.getBank().getId());
						userAccountObject.put("card", userAccount.getAccountno());
						list.add(userAccountObject);
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
	public ResultJson bankcardAdd(ApiParams params) {
		ResultJson rj = new ResultJson();
		rj.setError_code(ResultJson.ERROR_CODE_PARAMETERS);
		rj.setMessage("参数错误");
		if (oConvertUtils.isNotEmpty(params)
				&& oConvertUtils.isNotEmpty(params.getBank())
				&& oConvertUtils.isNotEmpty(params.getBranch())
				&& oConvertUtils.isNotEmpty(params.getCard())
				&& oConvertUtils.isNotEmpty(params.getHolder())
				&& oConvertUtils.isNotEmpty(params.getPassword())
				&& oConvertUtils.isNotEmpty(params.getPlace())) {
			UserInfo loginUser = ApiCacheUtil.getLoginUser();
			if (oConvertUtils.isNotEmpty(loginUser)) {
				//验证密码
				UserMoney userMoney = userMoneyService.getByUserId(loginUser.getId());
				if(encrptPassword(params.getPassword()).equals(userMoney.getPaypassword())){
					UserAccount userAccount = new UserAccount();
					
					userAccount.setUser(loginUser);
					userAccount.setCreatetime(new Date());
					userAccount.setAccountname(params.getHolder());
					userAccount.setAccountno(params.getCard());
					userAccount.setRegion(params.getPlace());
					userAccount.setBankname(params.getBranch());
					BasicBank bank = new BasicBank();
					bank.setId(oConvertUtils.getInt(params.getBank()));
					userAccount.setBank(bank);
					
					int result = userAccountService.save(userAccount);
					
					if(result != -1){
						rj.setSuccess(true);
						rj.setError_code(ResultJson.SUCCESS);
						rj.setMessage("添加成功");
					}else{
						rj.setError_code(ResultJson.ERROR_CODE_GENERAL);
						rj.setSuccess(false);
						rj.setMessage("添加失败");
					}
					
				}else{
					rj.setError_code(ResultJson.ERROR_CODE_GENERAL);
					rj.setSuccess(false);
					rj.setMessage("密码错误");
				}
			}
		}
		return rj;
	}
	@Override
	public ResultJson bankcardDele(ApiParams params) {
		ResultJson rj = new ResultJson();
		rj.setError_code(ResultJson.ERROR_CODE_PARAMETERS);
		rj.setMessage("参数错误");
		if (oConvertUtils.isNotEmpty(params)
				&& oConvertUtils.isNotEmpty(params.getBankid())) {
			UserInfo loginUser = ApiCacheUtil.getLoginUser();
			if (oConvertUtils.isNotEmpty(loginUser)) {
				
				int result = userAccountService.deleteById(oConvertUtils.getInt(params.getBankid()));
				if(result != -1){
					rj.setSuccess(true);
					rj.setError_code(ResultJson.SUCCESS);
					rj.setMessage("删除成功");
				}else{
					rj.setError_code(ResultJson.ERROR_CODE_GENERAL);
					rj.setSuccess(false);
					rj.setMessage("删除失败");
				}
			}
		}
		return rj;
	}
	
	@Override
	@Transactional(readOnly = false)
	public ResultJson certificate(ApiParams params) {
		ResultJson rj = new ResultJson();
		rj.setError_code(ResultJson.ERROR_CODE_PARAMETERS);
		rj.setMessage("参数错误");
		if (oConvertUtils.isNotEmpty(params)
				&& oConvertUtils.isNotEmpty(params.getCertificate())
				&& oConvertUtils.isNotEmpty(params.getName())
				&& oConvertUtils.isNotEmpty(params.getType())) {
			UserInfo loginUser = ApiCacheUtil.getLoginUser();
			if (oConvertUtils.isNotEmpty(loginUser)) {
				int type = oConvertUtils.getInt(params.getType());
				if(type == ApiConstant.AUTH_TYPE_ID
						&& oConvertUtils.isNotEmpty(params.getIdentityfront())
						&& oConvertUtils.isNotEmpty(params.getIdentityhand())
						&& oConvertUtils.isNotEmpty(params.getLiveimage())){
					//身份证认证
					UserAuthInfo authInfo = new UserAuthInfo();
					authInfo.setUser(loginUser);
					authInfo.setCertificationtime(new Date());
					authInfo.setCertificationstatus(ApiConstant.AUDIT_INIT);
					authInfo.setType(ApiConstant.AUTH_TYPE_ID);
					authInfo.setDeleted(ApiConstant.NO);
					authInfo.setRealname(params.getName());
					authInfo.setCertificateno(params.getCertificate());
					authInfo.setCardphoto(params.getIdentityfront());
					authInfo.setHandcardphoto(params.getIdentityhand());
					authInfo.setLifephoto(params.getLiveimage());
					int result = authInfoService.save(authInfo);
					if(result != -1){
						rj.setSuccess(true);
						rj.setError_code(ResultJson.SUCCESS);
						rj.setMessage("认证信息提交成功");
					}else{
						rj.setError_code(ResultJson.ERROR_CODE_GENERAL);
						rj.setSuccess(false);
						rj.setMessage("认证信息提交失败");
					}
				}else if(type == ApiConstant.AUTH_TYPE_STU
						&& oConvertUtils.isNotEmpty(params.getStudentIdfront())
						&& oConvertUtils.isNotEmpty(params.getStudentIdhand())){
					//学生证
					UserAuthInfo authInfo = new UserAuthInfo();
					authInfo.setUser(loginUser);
					authInfo.setCertificationtime(new Date());
					authInfo.setCertificationstatus(ApiConstant.AUDIT_INIT);
					authInfo.setType(ApiConstant.AUTH_TYPE_STU);
					authInfo.setDeleted(ApiConstant.NO);
					authInfo.setRealname(params.getName());
					authInfo.setCertificateno(params.getCertificate());
					authInfo.setStuno(params.getCertificate());
					authInfo.setStucardphoto(params.getStudentIdfront());
					authInfo.setHandstucardphoto(params.getStudentIdhand());
					
					int result = authInfoService.save(authInfo);
					if(result != -1){
						rj.setSuccess(true);
						rj.setError_code(ResultJson.SUCCESS);
						rj.setMessage("认证信息提交成功");
					}else{
						rj.setError_code(ResultJson.ERROR_CODE_GENERAL);
						rj.setSuccess(false);
						rj.setMessage("认证信息提交失败");
					}
				}
			}
		}
		return rj;
	}
	@Override
	public ResultJson certificateInfo(ApiParams params) {
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
		UserAuthInfo authInfo = authInfoService.getByUserId(loginUser.getId());
		if (oConvertUtils.isNotEmpty(authInfo)) {
			
			JSONObject result = new JSONObject();
			//认证信息
			result.put("certificate", authInfo.getCertificateno());
			result.put("status", authInfo.getCertificationstatus());
			result.put("studentIdfront", authInfo.getStucardphoto());
			result.put("identityfront", authInfo.getCardphoto());
			result.put("studentIdhand", authInfo.getHandstucardphoto());
			result.put("type", authInfo.getType());
			result.put("identityhand", authInfo.getHandcardphoto());
			result.put("liveimage", authInfo.getLifephoto());
			result.put("name", authInfo.getRealname());
			result.put("desc", authInfo.getHandlememo());
			
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
	public ResultJson forgetPassword(ApiParams params) {
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
					mobileUser.setPassword(encrptPassword(params.getPassword()));
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
					mobileUserEntity.setPassword(encrptPassword(mobileUser.getPassword()));
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
						account.setPaypassword(encrptPassword(mobileUser.getPassword()));
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
	public ResultJson login(ApiParams mobileUser) {
		ResultJson rj = new ResultJson();
		rj.setError_code(ResultJson.ERROR_CODE_PARAMETERS);
		rj.setMessage("参数错误");
		if (oConvertUtils.isNotEmpty(mobileUser)) {
			if (oConvertUtils.isNotEmpty(mobileUser.getUsername()) 
					&& StringUtil.isNotEmpty(mobileUser.getPassword())
					&& StringUtil.isNotEmpty(mobileUser.getPlatform())
					&& StringUtil.isNotEmpty(mobileUser.getUuid())) {
				
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
					
					String password = encrptPassword(mobileUser.getPassword());
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
	public ResultJson editUserInfo(ApiParams params) {
		ResultJson rj = new ResultJson(ResultJson.ERROR_CODE_PARAMETERS,"参数错误");
		// 当前登录用户
		UserInfo loginUser = ApiCacheUtil.getLoginUser();
		if (oConvertUtils.isEmpty(loginUser)) {
			rj.setError_code(ResultJson.ERROR_CODE_USER_NOT_LOGIN);
			rj.setMessage("用户未登录");
			return rj;
		}
		if (oConvertUtils.isNotEmpty(params)) {
			UserInfo user = new UserInfo();
			user.setId(loginUser.getId());
			user.setIcon(params.getAvatarurl());
			user.getDetailInfo().setUser(loginUser);
			user.getDetailInfo().setSex("男".equals(params.getGender())?1:2);
			user.getDetailInfo().setApartment(params.getAddress());
			user.getDetailInfo().setBirthday(DateUtil.str2Date(params.getBirthday(), DateUtil.date_sdf));
			int result = userInfoService.updateUserInfo(user);
			if(result != -1){
				rj.setError_code(ResultJson.SUCCESS);
				rj.setSuccess(true);
				rj.setMessage("");
			}else{
				rj.setError_code(ResultJson.ERROR_CODE_GENERAL);
				rj.setSuccess(false);
				rj.setMessage("用户信息修改失败");
			}
		}
		return rj;
	}
	@Override
	public ResultJson getVerity(ApiParams params) {
		ResultJson rj = new ResultJson(ResultJson.ERROR_CODE_PARAMETERS,"参数错误");
		if (oConvertUtils.isNotEmpty(params) && StringUtil.isNotEmpty(params.getPhone())) {
			String phone = params.getPhone();
			int length = 6;
			String captcha = StringUtil.numRandom(length);
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
	public ResultJson setPassword(ApiParams params) {
		ResultJson rj = new ResultJson(ResultJson.ERROR_CODE_PARAMETERS,"参数错误");
		// 当前登录用户
		UserInfo loginUser = ApiCacheUtil.getLoginUser();
		if (oConvertUtils.isEmpty(loginUser)) {
			rj.setError_code(ResultJson.ERROR_CODE_USER_NOT_LOGIN);
			rj.setMessage("用户未登录");
			return rj;
		}
		if (oConvertUtils.isNotEmpty(params) 
				&& StringUtil.isNotEmpty(params.getOldpassword())
				&& StringUtil.isNotEmpty(params.getPassword())
				&& StringUtil.isNotEmpty(params.getType())) {
			//0:登录密码;1:交易密码;
			if(params.getType().equals("0")){
				//验证密码是否正确
				UserInfo user = userInfoService.checkUserLogin(loginUser.getUsername(), params.getOldpassword(), Global.FRONT);
				if(user != null){
					int result = userInfoService.updateUserPwd(user.getId(), params.getPassword());
					if(result != -1){
						rj.setError_code(ResultJson.SUCCESS);
						rj.setSuccess(true);
						rj.setMessage("登录密码修改成功");
					}else{
						rj.setError_code(ResultJson.ERROR_CODE_GENERAL);
						rj.setSuccess(false);
						rj.setMessage("登录密码修改失败");
					}
				}else{
					rj.setError_code(ResultJson.ERROR_CODE_GENERAL);
					rj.setMessage("旧密码填写错误");
				}
			}else if(params.getType().equals("1")){
				//验证密码是否正确
				UserMoney money =userMoneyService.getByUserId(loginUser.getId());
				if(encrptPassword(params.getOldpassword()).equals(money.getPaypassword())){
					UserMoney userMoney = new UserMoney();
					userMoney.setId(money.getId());
					userMoney.setPaypassword(encrptPassword(params.getPassword()));
					int result = userMoneyService.update(userMoney);
					if(result != -1){
						rj.setError_code(ResultJson.SUCCESS);
						rj.setSuccess(true);
						rj.setMessage("交易密码修改成功");
					}else{
						rj.setError_code(ResultJson.ERROR_CODE_GENERAL);
						rj.setSuccess(false);
						rj.setMessage("交易密码修改失败");
					}
				}else{
					rj.setError_code(ResultJson.ERROR_CODE_GENERAL);
					rj.setMessage("旧密码填写错误");
				}
			}
		}
		return rj;
	}
	
	/**
	 * 加密密码
	 * @param password
	 * @return
	 */
	private String encrptPassword(String password) {
		try {
			return AESUtil.encrptString(password, "1234567812345678");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}

}
