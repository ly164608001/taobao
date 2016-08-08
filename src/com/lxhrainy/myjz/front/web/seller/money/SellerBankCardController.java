package com.lxhrainy.myjz.front.web.seller.money;

import java.util.Date;
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
import com.lxhrainy.myjz.admin.basic.model.BasicBank;
import com.lxhrainy.myjz.admin.basic.service.IBasicBankService;
import com.lxhrainy.myjz.admin.user.model.UserAccount;
import com.lxhrainy.myjz.admin.user.service.IUserAccountService;
import com.lxhrainy.myjz.admin.user.service.IUserMoneyService;

/**
 * 银行卡控制层
 * @author xueyunteng
 *
 */
@RequestMapping("/front/seller/money")
@Controller
public class SellerBankCardController extends BaseController {
	
	@Autowired
	private IBasicBankService bankService;
	@Autowired
	private IUserMoneyService moneyService;
	@Autowired
	private IUserAccountService accountServcie;
	
	/**
	 * 添加银行卡
	 * @return
	 */
	@RequestMapping("/addBankCard")
	public ModelAndView addBankCard(){
		List<BasicBank> bankList = bankService.getAllList(null);
		
		mv.addObject("bankList", bankList);
		mv.setViewName("front/seller/money/addBankCard");
		return mv;
	}
	
	/**
	 * 添加保存银行卡
	 * @return
	 */
	@RequestMapping("/addSaveBankCard")
	@ResponseBody
	public JSONObject addSaveBankCard(UserAccount account, String paypassword){
		JSONObject rj = new JSONObject();
		rj.put("success", false);
		
		UserInfo loginUser = this.getCurrentUser();
		
		if(account == null || StringUtils.isEmpty(account.getAccountname()) || StringUtils.isEmpty(account.getAccountno())
				|| StringUtils.isEmpty(paypassword) || account.getBank() == null || account.getArea() == null  ){
			rj.put("msg", "信息填写不完整");
			return rj;
		}
		
		boolean isValidPPsw = moneyService.validatePaypassword(loginUser.getId(), paypassword);
		if(!isValidPPsw){
			rj.put("msg", "交易密码不正确");
			return rj;
		}
		
		account.setCreatetime(new Date());
		account.setUser(loginUser);
		accountServcie.save(account);
		rj.put("success", true);
		rj.put("msg", "添加成功");
		return rj;
	}
	
}