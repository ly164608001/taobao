package com.lxhrainy.myjz.front.web.buyer.certification;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lxhrainy.core.common.controller.BaseController;

/**
 * 实名认证控制层
 * @author xueyunteng
 *
 */
@RequestMapping("/front/buyer/certification")
@Controller
public class certificationController extends BaseController {
	
	/**
	 * 实名认证页面
	 * @return
	 */
	@RequestMapping("/prepare")
	public ModelAndView prepare(){
		mv.addObject("loginUser", this.getCurrentUser());
		mv.setViewName("front/buyer/certification/certification");
		return mv;
	}
	
}