package com.lxhrainy.myjz.front.web.buyer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lxhrainy.core.common.controller.BaseController;


/**
 * 刷手控制层
 * @author xueyunteng
 *
 */
@RequestMapping("/front/buyer")
@Controller
public class BuyerController extends BaseController {

	/**
	 * 刷手首页
	 * @return
	 */
	@RequestMapping("/index")
	public ModelAndView login() {
		mv.setViewName("front/buyer/index");
		return mv;
	}
	
	/**
	 * 首页提示
	 * @return
	 */
	@RequestMapping("/tip")
	public ModelAndView tip() {
		mv.setViewName("front/buyer/tip");
		return mv;
	}
	
	/**
	 * main页面
	 * @param url 初始化iframe跳转的url
	 * @return
	 */
	@RequestMapping("/main")
	public ModelAndView center(String url) {
		mv.addObject("initUrl", url);
		mv.setViewName("front/buyer/main");
		return mv;
	}
	
}