package com.lxhrainy.myjz.front.web.buyer.money;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.core.sys.model.UserInfo;
import com.lxhrainy.core.sys.service.IUserInfoService;
import com.lxhrainy.myjz.admin.user.service.IUserMoneyService;

/**
 * 账户密码控制层
 * @author xueyunteng
 *
 */
@RequestMapping("/front/buyer/money")
@Controller
public class MoneyPasswordController extends BaseController {
	
	@Autowired
	private IUserInfoService userService;
	@Autowired
	private IUserMoneyService moneyService;
	
	/**
	 * 修改密码页面
	 * @return
	 */
	@RequestMapping("/modifyPassword")
	public ModelAndView modifyPassword(){
		mv.setViewName("front/buyer/money/modifyPassword");
		return mv;
	}
	
	/**
	 * 更新密码
	 * @return
	 */
	@RequestMapping("/updatePassword")
	@ResponseBody
	public JSONObject updatePassword(String oldPassword,String newPassword,String newPassword2){
		JSONObject rj = new JSONObject();
		rj.put("success", false);
		rj.put("msg", "");
		//信息验证
		rj = this.checkPasswords(rj, oldPassword, newPassword, newPassword2);
		if(!rj.get("msg").equals("")){
			return rj;
		}
		
		//验证原始密码正确性
		UserInfo user = this.getCurrentUser();
		int oprResult = userService.modifyPassword(user.getId(), oldPassword, newPassword);
		if(oprResult == -1){
			rj.put("msg", "原始密码错误");
			return rj;
		}
		
		rj.put("success", true);
		return rj;
	}
	
	/**
	 * 更新交易密码
	 * @return
	 */
	@RequestMapping("/updatePayPassword")
	@ResponseBody
	public JSONObject updatePayPassword(String oldPassword,String newPassword,String newPassword2){
		JSONObject rj = new JSONObject();
		rj.put("success", false);
		rj.put("msg", "");
		//信息验证
		rj = this.checkPasswords(rj, oldPassword, newPassword, newPassword2);
		if(!rj.get("msg").equals("")){
			return rj;
		}
		
		//验证原始密码正确性
		UserInfo user = this.getCurrentUser();
		int userid = user.getId();
		
		int oprResult = moneyService.updatePaypassword(userid,oldPassword,newPassword);
		if(oprResult == -1){
			rj.put("msg", "原始交易密码错误");
			return rj;
		}
		
		rj.put("success", true);
		return rj;
	}
	
	/**
	 * 验证表单提交的密码数据
	 * @param oldPassword
	 * @param newPassword
	 * @param newPassword2
	 * @return
	 */
	private JSONObject checkPasswords(JSONObject rj,String oldPassword,String newPassword,String newPassword2){
		if(StringUtils.isEmpty(oldPassword) || StringUtils.isEmpty(newPassword) || StringUtils.isEmpty(newPassword2)){
			rj.put("msg", "信息未填写完整");
			return rj;
		}
		if(newPassword.equals(oldPassword)){
			rj.put("msg", "新旧密码一致");
			return rj;
		}
		if(!newPassword.equals(newPassword2)){
			rj.put("msg", "新密码不一致");
			return rj;
		}
		
		return rj;
	}

}