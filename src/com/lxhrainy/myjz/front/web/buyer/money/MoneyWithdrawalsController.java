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
import com.lxhrainy.myjz.admin.trace.model.TraceWithdrawls;
import com.lxhrainy.myjz.admin.user.model.UserMoney;
import com.lxhrainy.myjz.admin.user.service.IUserMoneyService;

/**
 * 提现控制层
 * @author xueyunteng
 *
 */
@RequestMapping("/front/buyer/money")
@Controller
public class MoneyWithdrawalsController extends BaseController {
	
	@Autowired
	private IUserMoneyService moneyService;
	
	/**
	 * 添加银行卡
	 * @return
	 */
	@RequestMapping("/addBankCard")
	public ModelAndView addBankCard(){
		
		mv.setViewName("front/buyer/money/addBankCard");
		return mv;
	}
	
	/**
	 * 提现
	 * @return
	 */
	@RequestMapping("/withdrawals")
	public ModelAndView withdrawals(){
		UserMoney moneyModel = moneyService.getByUserId(this.getCurrentUser().getId());
		
		mv.addObject("moneyInfo", moneyModel);
		mv.setViewName("front/buyer/money/withdrawals");
		return mv;
	}
	
	/**
	 * 提现申请提交
	 * @return
	 */
	@RequestMapping("/doWithdrawals")
	@ResponseBody
	public JSONObject doWithdrawals(String paypassword,TraceWithdrawls model){
		JSONObject rj = new JSONObject();
		rj.put("seccess", false);
		UserInfo loginUser = this.getCurrentUser();
		
		if(StringUtils.isEmpty(paypassword) || model == null || model.getMoney() == null){
			rj.put("msg", "提现申请信息填写不完整");
			return rj;
		}
		
		boolean isValidPaypsw = moneyService.validatePaypassword(loginUser.getId(), paypassword);
		if(!isValidPaypsw){
			rj.put("msg", "交易密码不正确");
			return rj;
		}
		
		return rj;
	}
	
	

}