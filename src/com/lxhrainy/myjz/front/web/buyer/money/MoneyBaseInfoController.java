package com.lxhrainy.myjz.front.web.buyer.money;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lxhrainy.core.common.controller.BaseController;

/**
 * 账户-基本资料控制层
 * @author xueyunteng
 *
 */
@RequestMapping("/front/buyer/money")
@Controller
public class MoneyBaseInfoController extends BaseController {
	
	@RequestMapping("/baseinfo")
	public ModelAndView detail(){
		mv.setViewName("front/buyer/money/moneyBaseinfo");
		return mv;
	}
	

}