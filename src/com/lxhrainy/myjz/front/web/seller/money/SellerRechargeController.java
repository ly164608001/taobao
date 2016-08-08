package com.lxhrainy.myjz.front.web.seller.money;

import java.util.Date;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.core.sys.model.UserInfo;
import com.lxhrainy.myjz.admin.trace.model.TraceRecharge;
import com.lxhrainy.myjz.admin.trace.service.ITraceRechargeService;
import com.lxhrainy.myjz.admin.user.model.UserMoney;
import com.lxhrainy.myjz.admin.user.service.IUserAccountService;
import com.lxhrainy.myjz.admin.user.service.IUserMoneyService;
import com.lxhrainy.myjz.common.constant.Global;

/**
 * 充值控制层
 * @author xueyunteng
 *
 */
@RequestMapping("/front/seller/money")
@Controller
public class SellerRechargeController extends BaseController {
	
	@Autowired
	private IUserMoneyService moneyService;
	@Autowired
	private IUserAccountService accountServcie;
	@Autowired
	private ITraceRechargeService rechargeService;
	
	/**
	 * 充值
	 * @return
	 */
	@RequestMapping("/recharge")
	public ModelAndView recharge(){
		UserInfo loginUser = this.getCurrentUser();
		int userid = loginUser.getId();
		//账户信息
		UserMoney moneyModel = moneyService.getByUserId(userid);
		
		mv.addObject("alipayAccount", Global.PLAT_ALIPAY_ACCOUNT);
		mv.addObject("alipayName", Global.PLAT_ALIPAY_NAME);
		mv.addObject("username", loginUser.getUsername());
		mv.addObject("money", moneyModel);
		mv.setViewName("front/seller/money/recharge");
		return mv;
	}
	
	/**
	 * 充值申请提交
	 * @return
	 */
	@RequestMapping("/doRecharge")
	@ResponseBody
	public JSONObject doRecharge(TraceRecharge model){
		JSONObject rj = new JSONObject();
		rj.put("success", false);
		UserInfo loginUser = this.getCurrentUser();
		
		if(model == null || model.getMoney() == null || model.getChannel() == null
				|| StringUtils.isEmpty(model.getPayaccount()) || StringUtils.isEmpty(model.getPayno()) ){
			rj.put("msg", "充值转账申请信息填写不完整");
			return rj;
		}
		
		model.setCreateuser(loginUser);
		model.setCreatetime(new Date());
		model.setStatus(Global.AUDIT_INIT);
		rechargeService.save(model);
		
		rj.put("success", true);
		rj.put("msg", "充值转账申请已提交");
		return rj;
	}
	
	

}