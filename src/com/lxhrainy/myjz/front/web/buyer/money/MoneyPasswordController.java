package com.lxhrainy.myjz.front.web.buyer.money;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lxhrainy.core.common.controller.BaseController;

/**
 * 账户密码控制层
 * @author xueyunteng
 *
 */
@RequestMapping("/front/buyer/money")
@Controller
public class MoneyPasswordController extends BaseController {
	
	@RequestMapping("/modifyPassword")
	public ModelAndView modifyPassword(){
		mv.setViewName("front/buyer/money/modifyPassword");
		return mv;
	}
	

}