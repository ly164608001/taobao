package com.lxhrainy.myjz.front.web.buyer.money;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lxhrainy.core.common.controller.BaseController;

/**
 * 账户明细控制层
 * @author xueyunteng
 *
 */
@RequestMapping("/front/buyer/money")
@Controller
public class MoneyDetailController extends BaseController {
	
	/**
	 * 账户明细
	 * @return
	 */
	@RequestMapping("/moneyDetail")
	public ModelAndView detail(){
		mv.setViewName("front/buyer/money/moneyDetail");
		return mv;
	}
	

}