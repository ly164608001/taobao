package com.lxhrainy.myjz.front.web.buyer.account;

import java.util.Date;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.myjz.admin.buyer.model.AccountBasicInfo;
import com.lxhrainy.myjz.admin.buyer.service.IAccountBasicInfoService;
import com.lxhrainy.myjz.admin.buyer.service.IAccountService;
import com.lxhrainy.myjz.admin.user.service.IUserMoneyService;

/**
 * 买家小号控制层
 * @author xueyunteng
 *
 */
@RequestMapping("/front/buyer/account")
@Controller
public class BuyerAccountUpdateController extends BaseController {
	
	@Autowired
	private IAccountService accountService;
	@Autowired
	private IAccountBasicInfoService basicInfoService;
	@Autowired
	IUserMoneyService moneyService;
	
	/***
	 * 启用
	 * @param ID
	 */
	@RequestMapping("/able")
	@ResponseBody
	public JSONObject able(Integer id) {
		JSONObject rj = new JSONObject();
		accountService.able(id);
		rj.put("success", true);
		return rj;
	}
	
	/***
	 * 禁用
	 * @param ID
	 */
	@RequestMapping("/unable")
	@ResponseBody
	public JSONObject unable(Integer id) {
		JSONObject rj = new JSONObject();
		accountService.unable(id);
		rj.put("success", true);
		return rj;
	}
	
	/***
	 * 更新顺序
	 * @param ID
	 */
	@RequestMapping("/updatesort")
	@ResponseBody
	public JSONObject updateSort(Integer id,Integer sort) {
		JSONObject rj = new JSONObject();
		if(id != null && sort != null){
			accountService.updateSort(id,sort);
			rj.put("success", true);
		}else{
			rj.put("success", false);
			rj.put("msg", "参数不全");
		}
		
		return rj;
	}
	
	/***
	 * 更新基础信息
	 * @param ID
	 */
	@RequestMapping("/updateBaseInfo")
	@ResponseBody
	public JSONObject updateBaseInfo(AccountBasicInfo model, String paypassword) {
		JSONObject rj = new JSONObject();
		rj.put("success", false);
		//前端必须数据验证
		if(model == null || model.getId() == null ){
			rj.put("msg", "基础信息填写不全");
			return rj;
		}
		
		//填写的表单数据验证
		Date birthday = model.getBirthday();
		Integer sex = model.getSex();
		if(birthday == null || sex == null || StringUtils.isEmpty(paypassword)){
			rj.put("msg", "基础信息填写不全");
			return rj;
		}
		
		//验证交易密码
		int userid = this.getCurrentUser().getId();
		boolean isValidPsw = moneyService.validatePaypassword(userid, paypassword);
		if(!isValidPsw){
			rj.put("msg", "交易密码不正确");
			return rj;
		}
		
		//更新基础数据
		AccountBasicInfo oldModel = basicInfoService.getById(model.getId());
		oldModel.setSex(sex);
		oldModel.setBirthday(birthday);
		basicInfoService.update(oldModel);
		rj.put("success", true);
		
		return rj;
	}
	
	
}