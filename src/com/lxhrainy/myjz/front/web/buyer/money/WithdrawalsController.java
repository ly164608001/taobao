package com.lxhrainy.myjz.front.web.buyer.money;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lxhrainy.core.common.controller.BaseController;

/**
 * 提现控制层
 * @author xueyunteng
 *
 */
@RequestMapping("/front/buyer/money")
@Controller
public class WithdrawalsController extends BaseController {
	
	/**
	 * 提现
	 * @return
	 */
	@RequestMapping("/withdrawals")
	public ModelAndView withdrawals(){
		mv.setViewName("front/buyer/money/withdrawals");
		return mv;
	}

}