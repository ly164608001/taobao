package com.lxhrainy.myjz.front.web.buyer.account;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.myjz.admin.buyer.service.IAccountService;

/**
 * 买家小号vpn控制层
 * @author xueyunteng
 *
 */
@RequestMapping("/front/buyer/account")
@Controller
public class AccountVpnController extends BaseController {
	
	@Autowired
	private IAccountService accountService;
	
	@RequestMapping("/vpn")
	public ModelAndView vpn(){
		mv.setViewName("front/buyer/account/vpn");
		return mv;
	}
	
}