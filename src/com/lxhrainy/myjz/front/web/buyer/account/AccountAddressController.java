package com.lxhrainy.myjz.front.web.buyer.account;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.myjz.admin.buyer.model.AccountReceiptAddress;
import com.lxhrainy.myjz.admin.buyer.service.IAccountReceiptAddressService;
import com.lxhrainy.myjz.admin.buyer.service.IAccountService;

/**
 * 买家小号收获地址控制层
 * @author xueyunteng
 *
 */
@RequestMapping("/front/buyer/account")
@Controller
public class AccountAddressController extends BaseController {
	
	@Autowired
	private IAccountService accountService;
	@Autowired
	private IAccountReceiptAddressService addressService;
	
	/**
	 * 收获地址
	 * @return
	 */
	@RequestMapping("/address")
	public ModelAndView address(int accountid){
		AccountReceiptAddress model = addressService.getByAccountid(accountid);
		
		mv.addObject("model", model);
		mv.setViewName("front/buyer/account/address");
		return mv;
	}
	
	/**
	 * 收获地址新增保存
	 * @return
	 */
	@RequestMapping("/addressSave")
	public JSONObject addressSave(AccountReceiptAddress model){
		JSONObject rj = new JSONObject();
		if(model == null ){
			
		}
		return rj;
	}
	
}