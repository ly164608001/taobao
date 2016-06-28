/**
 * 
 */
package com.lxhrainy.api.service.impl;

import java.util.ArrayList;
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
import com.lxhrainy.api.util.ResultJson;
import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.core.oe.SysNoticeVO;
import com.lxhrainy.core.sys.dao.IUserInfoDao;
import com.lxhrainy.core.sys.model.SysNotice;
import com.lxhrainy.core.sys.model.UserInfo;
import com.lxhrainy.core.sys.service.ISysNoticeService;
import com.lxhrainy.core.utils.StringUtil;
import com.lxhrainy.core.utils.oConvertUtils;

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
	
	@Override
	public ResultJson getVerity(ApiParams params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson register(ApiParams mobileUser) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson login(ApiParams mobileUser, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return null;
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
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson accountInfo(ApiParams user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson userInfo(ApiParams user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson certifiedDriver(Map<String, String> params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson certifiedUser(Map<String, String> params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson certifiedCar(ApiParams params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void getimg(String id, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
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
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson billList(ApiParams params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson adlist(ApiParams params) {
		// TODO Auto-generated method stub
		return null;
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
					result.put("isend", "no");
				}else{
					result.put("isend", "yes");
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
					rj.addFailureMsg("接口异常，请稍后再试");
				}
			}
		}
		return rj;
	}

}
