package com.lxhrainy.myjz.front.web.seller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lxhrainy.core.common.controller.BaseController;


/**
 * 商家控制层
 * @author xueyunteng
 *
 */
@RequestMapping("/front/seller")
@Controller
public class SellerController extends BaseController {

	/**
	 * 首页
	 * @return
	 */
	@RequestMapping("/index")
	public ModelAndView login() {
		mv.setViewName("front/seller/index");
		return mv;
	}
	
	/**
	 * 首页提示
	 * @return
	 */
	@RequestMapping("/tip")
	public ModelAndView tip() {
		mv.setViewName("front/seller/tip");
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
		mv.setViewName("front/seller/main");
		return mv;
	}
	
}