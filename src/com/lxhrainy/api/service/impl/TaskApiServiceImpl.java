/**
 * 
 */
package com.lxhrainy.api.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.alibaba.fastjson.JSONObject;
import com.lxhrainy.api.model.ApiOrderParams;
import com.lxhrainy.api.service.ITaskApiService;
import com.lxhrainy.api.util.ApiCacheUtil;
import com.lxhrainy.api.util.ApiConstant;
import com.lxhrainy.api.util.ResultJson;
import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.core.sys.dao.IUserInfoDao;
import com.lxhrainy.core.sys.model.UserInfo;
import com.lxhrainy.core.utils.StringUtil;
import com.lxhrainy.core.utils.oConvertUtils;
import com.lxhrainy.myjz.admin.order.model.OrderInfo;
import com.lxhrainy.myjz.admin.order.oe.OrderInfoVO;
import com.lxhrainy.myjz.admin.order.service.IOrderInfoService;
import com.lxhrainy.myjz.admin.task.model.ComplainInfo;
import com.lxhrainy.myjz.admin.task.model.ComplainType;
import com.lxhrainy.myjz.admin.task.oe.ComplainInfoVO;
import com.lxhrainy.myjz.admin.task.service.IComplainInfoService;

/**
 * 业务数据
 * @author dyno
 *
 */
@Service
@Transactional
public class TaskApiServiceImpl extends AbstractBaseServiceImpl<IUserInfoDao, UserInfo, Integer> implements ITaskApiService  {
	@Autowired
	private IOrderInfoService orderInfoService;
	@Autowired
	private IComplainInfoService complainInfoService;
	
	@Override
	public ResultJson taskList(ApiOrderParams params) {
		ResultJson rj = new ResultJson();
		rj.setError_code(ResultJson.ERROR_CODE_PARAMETERS);
		rj.setMessage("参数错误");
		if (oConvertUtils.isNotEmpty(params) 
				&& oConvertUtils.isNotEmpty(params.getIsmine())
				&& StringUtil.isNumeric(params.getStatus())
				&& StringUtil.isNumeric(params.getTargetplatfrom())
				&& StringUtil.isNumeric(params.getTargetsubtype())
				&& StringUtil.isNumeric(params.getTargettype())
				&& StringUtil.isNumeric(params.getTasktype())){
			int offsetid = oConvertUtils.getInt(params.getOffsetid());
			int count = oConvertUtils.getInt(params.getCount(),20);
			UserInfo loginUser = ApiCacheUtil.getLoginUser();
			if (oConvertUtils.isNotEmpty(loginUser)) {
				
				OrderInfoVO vo = new OrderInfoVO();
				OrderInfo model = new OrderInfo();
				//model.setType(oConvertUtils.getInt(params.getMessagetype()));
				model.setReceiveruser(loginUser);
				vo.setModel(model);
				vo.setOffsetid(offsetid);
				vo.setCount(count);
				
				List<OrderInfo> orderList = orderInfoService.getListForMobile(vo);
				
				JSONObject result = new JSONObject();
				List<JSONObject> list = new ArrayList<JSONObject>();
				if (oConvertUtils.isNotEmpty(orderList) && orderList.size() > 0) {
					for (OrderInfo order : orderList) {
						JSONObject orderObject = new JSONObject();
						//0:常规单;1:流量单;
						orderObject.put("targetsubtype", "0");
						orderObject.put("taskid", order.getId());
						orderObject.put("seller", order.getCreateuser().getUsername());
						//0:进行中;1:已完成;2:全部;
						orderObject.put("status", order.getStatus());
						//时间，不为空表示该任务是倒计时任务
						orderObject.put("time", order.getPublictime());
						orderObject.put("account", "");
						orderObject.put("edit", "");
						orderObject.put("total", "");
						orderObject.put("accountid", "");
						orderObject.put("own", "");
						orderObject.put("issuper", "");
						orderObject.put("guarantees", "");
						orderObject.put("targetplatfrom", "");
						orderObject.put("complaintstate", "");
						orderObject.put("producturl", "");
						orderObject.put("edittitle", "");
						orderObject.put("used", "");
						orderObject.put("targettype", "");
						orderObject.put("sellerid", "");
						orderObject.put("price", "");
						
						orderObject.put("attributes", "");
						
						orderObject.put("accounttype", "");
						list.add(orderObject);
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
	public ResultJson taskAction(ApiOrderParams params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson getTask(ApiOrderParams params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson complain(ApiOrderParams params) {
		ResultJson rj = new ResultJson();
		rj.setError_code(ResultJson.ERROR_CODE_PARAMETERS);
		rj.setMessage("参数错误");
		if (oConvertUtils.isNotEmpty(params)
				&& StringUtil.isNumeric(params.getComplaintype())
				&& StringUtil.isNumeric(params.getTaskid())
				&& oConvertUtils.isNotEmpty(params.getSellerid())
				&& oConvertUtils.isNotEmpty(params.getContent())
				&& oConvertUtils.isNotEmpty(params.getProveimage())){
			UserInfo loginUser = ApiCacheUtil.getLoginUser();
			if(loginUser != null){
				ComplainInfo complain = new ComplainInfo();
				complain.setCreatetime(new Date());
				complain.setCreateuser(loginUser);
				complain.setProveimage(params.getProveimage());
				UserInfo seller = new UserInfo();
				seller.setId(oConvertUtils.getInt(params.getSellerid()));
				complain.setSeller(seller);
				ComplainType type = new ComplainType();
				type.setId(oConvertUtils.getInt(params.getComplaintype()));
				complain.setComplainType(type);
				complain.setStatus(ApiConstant.COMPLAIN_INIT);
				OrderInfo task = new OrderInfo();
				task.setId(oConvertUtils.getInt(params.getTaskid()));
				complain.setTask(task);
				complain.setContent(params.getContent());
				
				int result = complainInfoService.save(complain);
				if(result != -1){
					rj.setSuccess(true);
					rj.setError_code(ResultJson.SUCCESS);
					rj.setMessage("申诉成功");
				}else{
					rj.setError_code(ResultJson.ERROR_CODE_API);
					rj.setMessage("申诉失败");
				}
			}else{
				rj.setError_code(ResultJson.ERROR_CODE_USER_NOT_LOGIN);
				rj.setMessage("用户未登录");
				rj.setSuccess(false);
			}
		}
		return rj;
	}

	@Override
	public ResultJson taskActionInfo(ApiOrderParams params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson complainList(ApiOrderParams params) {
		ResultJson rj = new ResultJson();
		rj.setError_code(ResultJson.ERROR_CODE_PARAMETERS);
		rj.setMessage("参数错误");
		if (oConvertUtils.isNotEmpty(params) 
				&& oConvertUtils.isNotEmpty(params.getIssend())){
			int offsetid = oConvertUtils.getInt(params.getOffsetid());
			int count = oConvertUtils.getInt(params.getCount(),20);
			UserInfo loginUser = ApiCacheUtil.getLoginUser();
			if (oConvertUtils.isNotEmpty(loginUser)) {
				
				ComplainInfoVO vo = new ComplainInfoVO();
				ComplainInfo model = new ComplainInfo();
				if("0".equals(params.getIssend())){
					model.setCreateuser(loginUser);
				}else{
					model.setSeller(loginUser);
				}
				vo.setModel(model);
				vo.setOffsetid(offsetid);
				vo.setCount(count);
				
				List<ComplainInfo> complainList = complainInfoService.getListForMobile(vo);
				
				JSONObject result = new JSONObject();
				List<JSONObject> list = new ArrayList<JSONObject>();
				if (oConvertUtils.isNotEmpty(complainList) && complainList.size() > 0) {
					for (ComplainInfo complain : complainList) {
						JSONObject orderObject = new JSONObject();
						//0:淘宝;1:京东;
						orderObject.put("targettype", "0");
						orderObject.put("targetsubtype", complain.getTask().getTargetsubtype());
						orderObject.put("taskid", complain.getTask().getId());
						orderObject.put("seller", complain.getSeller().getUsername());
						//-1:申诉失败;0:等待处理;1:申诉成功;
						orderObject.put("status", complain.getStatus());
						//时间
						orderObject.put("time", complain.getCreatetime());
						orderObject.put("content", complain.getContent());
						orderObject.put("complaintype", complain.getComplainType().getId());
						orderObject.put("complainid", complain.getId());
						orderObject.put("issend", params.getIssend());
						orderObject.put("proveimage", params.getProveimage());
						list.add(orderObject);
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
	
}
