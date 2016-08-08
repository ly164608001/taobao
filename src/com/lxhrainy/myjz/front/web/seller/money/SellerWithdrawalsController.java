package com.lxhrainy.myjz.front.web.seller.money;

import java.util.List;

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
import com.lxhrainy.myjz.admin.trace.service.ITraceWithdrawlsService;
import com.lxhrainy.myjz.admin.user.model.UserAccount;
import com.lxhrainy.myjz.admin.user.model.UserMoney;
import com.lxhrainy.myjz.admin.user.service.IUserAccountService;
import com.lxhrainy.myjz.admin.user.service.IUserMoneyService;

/**
 * 提现控制层
 * @author xueyunteng
 *
 */
@RequestMapping("/front/seller/money")
@Controller
public class SellerWithdrawalsController extends BaseController {
	
	@Autowired
	private IUserMoneyService moneyService;
	@Autowired
	private IUserAccountService accountServcie;
	@Autowired
	private ITraceWithdrawlsService withdrawlsService;
	
	/**
	 * 提现
	 * @return
	 */
	@RequestMapping("/withdrawals")
	public ModelAndView withdrawals(){
		UserInfo loginUser = this.getCurrentUser();
		int userid = loginUser.getId();
		//账户信息
		UserMoney moneyModel = moneyService.getByUserId(userid);
		//获取银行卡列表
		List<UserAccount> bankcardlist = accountServcie.getListByUser(userid);
		
		mv.addObject("bankcardlist", bankcardlist);
		mv.addObject("moneyInfo", moneyModel);
		mv.setViewName("front/seller/money/withdrawals");
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
		rj.put("success", false);
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
		
		//提现申请
		model.setUser(loginUser);
		int result = withdrawlsService.applyWithdrawls(model);
		if(result == -1){
			rj.put("msg", "可用余额不足，不可提现");
			return rj;
		}
		
		rj.put("success", true);
		rj.put("msg", "提现申请已提交");
		return rj;
	}
	
	

}