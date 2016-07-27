package com.lxhrainy.myjz.front.web.buyer.money;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.core.sys.service.IUserInfoService;

/**
 * 账户-基本资料控制层
 * @author xueyunteng
 *
 */
@RequestMapping("/front/buyer/money")
@Controller
public class MoneyBaseInfoController extends BaseController {
	
	@Autowired
	IUserInfoService userService;
	
	@RequestMapping("/baseinfo")
	public ModelAndView detail(){
		int userid = this.getCurrentUser().getId();
		mv.addObject("model", userService.getPersonInfo(userid));
		mv.setViewName("front/buyer/money/moneyBaseinfo");
		return mv;
	}
	

}