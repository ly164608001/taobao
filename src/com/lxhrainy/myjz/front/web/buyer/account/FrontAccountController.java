package com.lxhrainy.myjz.front.web.buyer.account;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lxhrainy.core.common.controller.BaseController;

/**
 * 买家小号控制层
 * @author xueyunteng
 *
 */
@RequestMapping("/front/buyer/account")
@Controller
public class FrontAccountController extends BaseController {
	
	/**
	 * 列表
	 * @return
	 */
	@RequestMapping("/accountList")
	public ModelAndView list(){
		mv.setViewName("front/buyer/account/accountList");
		return mv;
	}
	

}